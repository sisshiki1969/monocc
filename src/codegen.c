#include "monocc.h"

// Globals

int label_count = 0;

// Loop

typedef struct Loop Loop;

struct Loop {
    Loop *next;
    char *continue_dest;
    char *break_dest;
    /// Link to switch node.
    Node *node;
};

Loop *labels = NULL;

// Methods for handling Node.

bool is_binary_op(NodeKind kind) {
    switch(kind) {
    case ND_ADD:
    case ND_SUB:
    case ND_MUL:
    case ND_DIV:
    case ND_EQ:
    case ND_NEQ:
    case ND_GE:
    case ND_GT:
        return true;
    }
    return false;
}

bool is_expr(NodeKind kind) {
    switch(kind) {
    case ND_IF:
    case ND_WHILE:
    case ND_BLOCK:
    case ND_FOR:
    case ND_SWITCH:
    case ND_CASE:
    case ND_DEFAULT:
    case ND_BREAK:
    case ND_CONTINUE:
    case ND_RETURN:
    case ND_FDECL:
        return false;
    }
    return true;
}

/// Generate a new label as a string.
char *new_label() {
    char *label = (char *)malloc(10);
    if(!label)
        error("Could not allocate memmory.");
    sprintf(label, ".L%06d", label_count++);
    return label;
}

/// Emit assembly for label.
void emit_label(char *label) { printf("%s:\n", label); }
void emit_jmp(char *label) { printf("\tjmp  %s\n", label); }

void push_loop() {
    char *continue_label = new_label();
    char *break_label = new_label();
    Loop *label = (Loop *)calloc(1, sizeof(Loop));
    label->break_dest = break_label;
    label->continue_dest = continue_label;
    label->next = labels;
    labels = label;
}

void push_loop_switch(Node *node) {
    char *break_label = new_label();
    Loop *label = (Loop *)calloc(1, sizeof(Loop));
    label->break_dest = break_label;
    label->continue_dest = NULL;
    label->node = node;
    label->next = labels;
    labels = label;
}

void pop_loop() { labels = labels->next; }

char *get_continue(Token *token) {
    if(!labels)
        error_at_token(token,
                       "a continue statement may only be used within a loop.");
    return labels->continue_dest;
}

char *get_break(Token *token) {
    if(!labels)
        error_at_token(
            token,
            "a break statement may only be used within a loop or switch.");
    return labels->break_dest;
}

Node *get_inner_switch() {
    Loop *cursor = labels;
    while(cursor && !cursor->node)
        cursor = cursor->next;
    if(!cursor)
        error("get_inner_switch(): Internal error.");
    return cursor->node;
}

/// Calculate required register size.
int reg_size(Type *type) {
    int data_size = sizeof_type(type);
    if(data_size == 8)
        return 0;
    else if(data_size == 4)
        return 1;
    else if(data_size == 1)
        return 3;
    else
        error("Internal error in reg_size(): Illegal data size (%d bytes).",
              data_size);
}

/// Load [RAX] to RAX.(size sensitive)
void emit_deref_rax(Node *node) {
    switch(reg_size(type(node))) {
    case 0:
        printf("\tmov  rax, [rax]\n");
        break;
    case 1:
        printf("\tmov  eax, [rax]\n");
        break;
    case 3:
        printf("\tmovsx eax, BYTE PTR [rax]\n");
        break;
    default:
        error_at_node(node, "Size of the variable is unknown.");
    }
}

/// Push address of local var.
void emit_lvar_addr(LVar *lvar) {
    printf("\tmov  rax, rbp\n");
    printf("\tsub  rax, %d\n", lvar->offset);
    printf("\tpush rax\n");
}

/// Generate address of a local variable.
void gen_lval(Node *node) {
    if(node->kind == ND_LVAR) {
        emit_lvar_addr(node->lvar);
        return;
    } else if(node->kind == ND_GVAR) {
        printf("\tlea  rax, %.*s[rip]\n", node->token->len, node->token->str);
        printf("\tpush rax\n");
        return;
    } else if(node->kind == ND_DEREF) {
        gen(node->lhs);
    } else if(node->kind == ND_STR) {
        printf("\tlea  rax, .LS%06d[rip]\n", node->int_val);
        printf("\tpush rax\n");
        return;
    } else {
        error_at_node(node, "Expected l-value.");
    }
}

// Codegen

void gen_if(Node *node) {
    char *else_str = new_label();
    char *end_str = new_label();
    gen(node->lhs);
    printf("\tpop  rax\n");
    printf("\tcmp  rax, 0\n");
    printf("\tje   %s\n", else_str);
    gen_stmt(node->rhs);
    emit_jmp(end_str);
    emit_label(else_str);
    gen_stmt(node->xhs);
    emit_label(end_str);
}

void gen_while(Node *node) {
    push_loop();
    char *cond_str = get_continue(node->token);
    char *end_str = get_break(node->token);
    emit_label(cond_str);
    gen(node->lhs);
    printf("\tpop  rax\n");
    printf("\tcmp  rax, 0\n");
    printf("\tje   %s\n", end_str);
    gen_stmt(node->rhs);
    emit_jmp(cond_str);
    emit_label(end_str);
    pop_loop();
}

void gen_for(Node *node) {
    push_loop();
    char *loop_label = new_label();
    char *post_label = get_continue(node->token);
    char *end_label = get_break(node->token);
    gen(node->lhs);
    emit_label(loop_label);
    gen(node->rhs);
    printf("\tpop  rax\n");
    printf("\tcmp  rax, 0\n");
    printf("\tje   %s\n", end_label);
    gen_stmt(node->nodes->data[0]);
    emit_label(post_label);
    gen(node->xhs);
    if(node->xhs)
        printf("\tpop  rax\n");
    emit_jmp(loop_label);
    emit_label(end_label);
    pop_loop();
}

void gen_block(Node *node) {
    if(!node)
        return;
    Vector *vec = node->nodes;
    int len = vec_len(vec);
    for(int i = 0; i < len; i++)
        gen_stmt(vec->data[i]);
}

void gen_call(Node *node) {
    // TODO: Currently, only TK_IDENT is allowed as a callee.
    int len = vec_len(node->nodes);
    Node **args = node->nodes->data;
    for(int i = len - 1; i >= 0; i--) {
        gen(args[i]);
    }
    for(int i = 0; i < len; i++) {
        printf("\tpop  %s\n", registers[0][i]);
    }
    Token *name = node->lhs->token; // node->lhs: callee

    char *label1 = new_label();
    char *label2 = new_label();
    printf("\tmov  rax, rsp\n");
    printf("\tand  rax, 15\n");
    printf("\tjnz  %s\n", label1);
    printf("\tmov  rax, 0\n");
    printf("\tcall %.*s\n", name->len, name->str);
    emit_jmp(label2);

    emit_label(label1);
    printf("\tsub  rsp, 8\n");
    printf("\tmov  rax, 0\n");
    printf("\tcall %.*s\n", name->len, name->str);
    printf("\tadd  rsp, 8\n");

    emit_label(label2);
    printf("\tpush rax\n");
}

void gen_fdecl(Node *node) {
    if(!node->lhs)
        return;

    printf("%.*s:\n", node->token->len, node->token->str);

    printf("\tpush rbp\n");
    printf("\tmov  rbp, rsp\n");
    int offset = (node->offset + 15) / 16 * 16;
    printf("\tsub  rsp, %d\n", offset);

    int len = vec_len(node->nodes);
    Node **params = node->nodes->data;
    for(int i = 0; i < len; i++) {
        printf("\tmov  [rbp - %d], %s\n", params[i]->lvar->offset,
               registers[reg_size(type(params[i]))][i]);
    }

    gen_block(node->lhs);

    printf("\tmov  rsp, rbp\n");
    printf("\tpop  rbp\n");
    printf("\tret\n");
}

void gen_stmt(Node *node) {
    if(node) {
        gen(node);
        if(is_expr(node->kind))
            printf("\tpop  rax\n");
    }
}

void gen(Node *node) {
    if(!node)
        return;
    Node *parent;
    char *label;
    int i;
    Type *l_ty;
    Type *r_ty;
    char reg_l[4][4] = {"rax", "eax", "ax", "al"};
    char reg_r[4][4] = {"rdi", "edi", "di", "dil"};

    if(is_binary_op(node->kind)) {
        gen(node->lhs);
        gen(node->rhs);
        Type *l_ty = type(node->lhs);
        Type *r_ty = type(node->rhs);

        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        char *cmp_op;

        int reg_mode;
        switch(node->kind) {
        case ND_ADD:
            if(is_arythmetic(l_ty) && is_arythmetic(r_ty)) {
                printf("\tadd  rax, rdi\n");
            } else if(is_ptr(l_ty) && is_int(r_ty)) {
                printf("\timul rdi, %d\n", sizeof_type(l_ty->ptr_to));
                printf("\tadd  rax, rdi\n");
            } else if(is_int(l_ty) && is_ptr(r_ty)) {
                printf("\timul rax, %d\n", sizeof_type(r_ty->ptr_to));
                printf("\tadd  rax, rdi\n");
            } else
                error_at_node(node, "Illegal operation. (Type mismatch)");
            break;
        case ND_SUB:
            if(is_arythmetic(l_ty) && is_arythmetic(r_ty)) {
                printf("\tsub  rax, rdi\n");
            } else if(is_ptr(l_ty) && is_ptr(r_ty)) {
                printf("\tsub  rax, rdi\n");
                printf("\tcqo\n");
                printf("\tmov  rdi, %d\n", sizeof_type(l_ty->ptr_to));
                printf("\tidiv rdi\n");
            } else if(is_ptr(l_ty) && is_int(r_ty)) {
                printf("\timul rdi, %d\n", sizeof_type(l_ty->ptr_to));
                printf("\tsub  rax, rdi\n");
            } else
                error_at_node(node, "Illegal operation. (Type mismatch)");
            break;
        case ND_MUL:
            if(is_int(l_ty) && is_int(r_ty)) {
                printf("\timul rax, rdi\n");
            } else
                error_at_node(node,
                              "Illegal operation. (Not an arythmetic type)");
            break;
        case ND_DIV:
            if(is_int(l_ty) && is_int(r_ty)) {
                printf("\tcqo\n");
                printf("\tidiv rax, rdi\n");
            } else
                error_at_node(node,
                              "Illegal operation. (Not an arythmetic type)");
            break;
        case ND_EQ:
        case ND_NEQ:
        case ND_GE:
        case ND_GT:
            if(is_int(l_ty) && is_int(r_ty)) {
                reg_mode = 1;
            } else if(is_ptr(l_ty) && is_ptr(r_ty)) {
                reg_mode = 0;
            } else
                error_at_node(node, "Illegal operation. (Type mismatch)");
            switch(node->kind) {
            case ND_EQ:
                cmp_op = "e";
                break;
            case ND_NEQ:
                cmp_op = "ne";
                break;
            case ND_GE:
                cmp_op = "ge";
                break;
            case ND_GT:
                cmp_op = "g";
                break;
            }
            printf("\tcmp  %s, %s\n", reg_l[reg_mode], reg_r[reg_mode]);
            printf("\tset%s al\n", cmp_op);
            printf("\tmovzb %s, al\n", reg_l[reg_mode]);
            break;
        default:
            error_at_token(node->token, "gen(): Unimplemented binary op.");
        }
        printf("\tpush rax\n");
        return;
    }
    switch(node->kind) {
    // statement
    case ND_IF:
        gen_if(node);
        return;
    case ND_WHILE:
        gen_while(node);
        return;
    case ND_FOR:
        gen_for(node);
        return;
    case ND_SWITCH:
        push_loop_switch(node);
        // evaluate const-expr and save as a local var.
        emit_lvar_addr(node->lvar);
        gen(node->lhs);
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        printf("\tmov  [rax], edi\n");
        gen_stmt(node->rhs);
        emit_jmp(get_break(NULL));
        for(i = 0; i < vec_len(node->nodes); i++) {
            parent = node->nodes->data[i];
            emit_label(parent->label);
            gen_stmt(parent);
        }
        emit_label(get_break(NULL));
        pop_loop();
        return;
    case ND_BLOCK:
        gen_block(node);
        return;
    case ND_RETURN:
        // TODO: return without expression returns undefined value.
        if(node->lhs) {
            gen(node->lhs);
            printf("\tpop  rax\n");
        }

        printf("\tmov  rsp, rbp\n");
        printf("\tpop  rbp\n");
        printf("\tret\n");
        return;
    case ND_CASE:
        parent = get_inner_switch();
        gen(node->lhs);
        emit_lvar_addr(parent->lvar);
        printf("\tpop  rax\n");
        printf("\tmov  eax, [rax]\n");
        printf("\tpop  rdi\n");
        printf("\tcmp  eax, edi\n");
        label = new_label();
        printf("\tje   %s\n", label);
        node->rhs->label = label;
        vec_push(parent->nodes, node->rhs);
        return;
    case ND_DEFAULT:
        label = new_label();
        emit_jmp(label);
        node->lhs->label = label;
        vec_push(parent->nodes, node->lhs);
        return;

    // expression
    case ND_NUM:
        printf("\tpush %d\n", node->int_val);
        return;
    case ND_LVAR:
    case ND_GVAR:
        gen_lval(node);
        printf("\tpop  rax\n");
        emit_deref_rax(node);
        printf("\tpush rax\n");
        return;
    case ND_ASSIGN:
        l_ty = type(node->lhs);
        r_ty = type(node->rhs);
        if(!is_assignable_type(l_ty, r_ty)) {
            fprintf(stderr, "Left: ");
            print_type(stderr, l_ty);
            fprintf(stderr, "\nRight: ");
            print_type(stderr, r_ty);
            fprintf(stderr, "\n");
            error_at_node(node->lhs, "Type mismatch in assignment operation.");
        }
        gen_lval(node->lhs);
        gen(node->rhs);
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        printf("\tmov  [rax], %s\n", reg_r[reg_size(type(node->lhs))]);
        printf("\tpush rdi\n");
        return;
    case ND_CALL:
        gen_call(node);
        return;
    case ND_FDECL:
        gen_fdecl(node);
        return;
    case ND_ADDR:
        gen_lval(node->lhs);
        return;
    case ND_STR:
        gen_lval(node);
        return;
    case ND_DEREF:
        if(!is_ptr(type(node->lhs)))
            error_at_node(
                node->lhs,
                "Illegal operation. (dereference of non-pointer type)");
        gen(node->lhs);
        printf("\tpop  rax\n");
        emit_deref_rax(node);
        printf("\tpush rax\n");
        return;
    case ND_BREAK:
        emit_jmp(get_break(node->token));
        return;
    case ND_CONTINUE:
        emit_jmp(get_continue(node->token));
        return;
    }

    error_at_token(node->token, "gen(): Unimplemented NodeKind.");
}

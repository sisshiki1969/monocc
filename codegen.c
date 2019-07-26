#include "monocc.h"

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
    sprintf(label, ".L%06d", labels++);
    return label;
}

/// Generate address of a local variable.
void gen_lval(Node *node) {
    if(node->kind == ND_LVAR) {
        printf("\tmov  rax, rbp\n");
        printf("\tsub  rax, %d\n", node->ident_offset);
        printf("\tpush rax\n");
        return;
    } else if(node->kind == ND_DEREF) {
        gen(node->lhs);
        printf("\tpush rax\n");
    } else {
        error_at_node(node, "Invalid left hand side value.");
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
    printf("\tjmp  %s\n", end_str);
    printf("%s:\n", else_str);
    gen_stmt(node->xhs);
    printf("%s:\n", end_str);
}

void gen_while(Node *node) {
    char *cond_str = new_label();
    char *end_str = new_label();
    printf("%s:\n", cond_str);
    gen(node->lhs);
    printf("\tpop  rax\n");
    printf("\tcmp  rax, 0\n");
    printf("\tje   %s\n", end_str);
    gen_stmt(node->rhs);
    printf("\tjmp  %s\n", cond_str);
    printf("%s:\n", end_str);
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
    for(int i = 0; i < len; i++) {
        gen(args[i]);
        printf("\tpop  %s\n", registers[i]);
    }
    Token *name = node->lhs->token; // node->lhs: callee
    printf("\tmov  rax, 0\n");
    printf("\tcall %.*s\n", name->len, name->str);
    printf("\tpush rax\n");
}

void gen_fdecl(Node *node) {
    int max_offset = 8;
    if(locals) {
        max_offset = locals->offset + 8;
    }

    printf("%.*s:\n", node->token->len, node->token->str);

    printf("\tpush rbp\n");
    printf("\tmov  rbp, rsp\n");
    printf("\tsub  rsp, %d\n", max_offset);

    int len = vec_len(node->nodes);
    Node **params = node->nodes->data;
    for(int i = 0; i < len; i++) {
        printf("\tmov  [rbp - %d], %s\n", params[i]->ident_lvar->offset,
               registers[i]);
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

Type *type(Node *node);

void gen(Node *node) {
    switch(node->kind) {
    // statement
    case ND_IF:
        gen_if(node);
        return;
    case ND_WHILE:
        gen_while(node);
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

    // expression
    case ND_NUM:
        printf("\tpush %d\n", node->int_val);
        return;
    case ND_LVAR:
        gen_lval(node);
        printf("\tpop  rax\n");
        printf("\tmov  rax, [rax]\n");
        printf("\tpush rax\n");
        return;
    case ND_ASSIGN:
        gen_lval(node->lhs);
        gen(node->rhs);
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        printf("\tmov  [rax], rdi\n");
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
    case ND_DEREF:
        gen(node->lhs);
        printf("\tpop  rax\n");
        printf("\tmov  rax, [rax]\n");
        printf("\tpush rax\n");
        return;
    }
    if(is_binary_op(node->kind)) {
        gen(node->lhs);
        gen(node->rhs);
        Type *l_ty = type(node->lhs);
        Type *r_ty = type(node->rhs);
        int size;
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        switch(node->kind) {
        case ND_ADD:
            if(l_ty->ty == INT && r_ty->ty == INT) {
                printf("\tadd  rax, rdi\n");
            } else if(l_ty->ty == PTR && r_ty->ty == INT) {
                if(l_ty->ptr_to->ty == INT)
                    size = 4;
                else
                    size = 8;
                printf("\timul rdi, %d\n", size);
                printf("\tadd  rax, rdi\n");
            } else
                error_at_node(node, "Illegal operation. (Type mismatch)");
            break;
        case ND_SUB:
            printf("\tsub  rax, rdi\n");
            break;
        case ND_MUL:
            printf("\timul rax, rdi\n");
            break;
        case ND_DIV:
            printf("\tcqo\n");
            printf("\tidiv rax, rdi\n");
            break;
        case ND_EQ:
            printf("\tcmp  rax, rdi\n");
            printf("\tsete al\n");
            printf("\tmovzb rax, al\n");
            break;
        case ND_NEQ:
            printf("\tcmp  rax, rdi\n");
            printf("\tsetne al\n");
            printf("\tmovzb rax, al\n");
            break;
        case ND_GE:
            printf("\tcmp  rax, rdi\n");
            printf("\tsetge al\n");
            printf("\tmovzb rax, al\n");
            break;
        case ND_GT:
            printf("\tcmp  rax, rdi\n");
            printf("\tsetg al\n");
            printf("\tmovzb rax, al\n");
            break;
        default:
            error_at_token(node->token, "gen(): Unimplemented binary op.");
        }
        printf("\tpush rax\n");
        return;
    }
    error_at_token(node->token, "gen(): Unimplemented NodeKind.");
}

Type *type(Node *node) {
    Type *ty;
    switch(node->kind) {
    // statement
    case ND_IF:
    case ND_WHILE:
    case ND_BLOCK:
    case ND_RETURN:
        error("Can not determine a type of statement.");
    // declaration
    case ND_FDECL:
        error("Can not determine a type of declaration.");

    // expression
    case ND_NUM:
        return new_type_int();
    case ND_LVAR:
        return node->ident_lvar->type;
    case ND_ASSIGN:
        return type(node->lhs);
    case ND_CALL:
        return new_type_int();
    case ND_ADDR:
        return new_type_ptr_to(type(node->lhs));
    case ND_DEREF:
        ty = type(node->lhs);
        if(ty->ty != PTR)
            error_at_node(node, "Can not dereference.\n");
        return ty->ptr_to;
    case ND_ADD:
    case ND_SUB:
        return type(node->lhs);
    case ND_MUL:
    case ND_DIV:
    case ND_EQ:
    case ND_NEQ:
    case ND_GE:
    case ND_GT:
        return new_type_int();
    }
    error_at_node(node, "type(): Unimplemented NodeKind.");
}
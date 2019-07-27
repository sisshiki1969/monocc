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

// Util methods for Type.

bool is_int(Type *type) { return type->ty == INT; }

bool is_ptr(Type *type) { return type->ty == PTR; }

int sizeof_type(Type *type) {
    if(type->ty == INT)
        return 4;
    else
        return 8;
}

bool is_same_type(Type *l_type, Type *r_type) {
    while(l_type) {
        if(l_type->ty != r_type->ty)
            return false;
        if(l_type->ty != PTR)
            return true;
        l_type = l_type->ptr_to;
        r_type = r_type->ptr_to;
    }
    error("Internal error: Invalid type structure.");
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
    Type *l_ty;
    Type *r_ty;
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
        l_ty = type(node->lhs);
        r_ty = type(node->rhs);
        if(!is_same_type(l_ty, r_ty)) {
            printf("Left: ");
            print_type(l_ty);
            printf("\nRight: ");
            print_type(r_ty);
            printf("\n");
            error_at_node(node->lhs, "Type mismatch in assignment operation.");
        }
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
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        switch(node->kind) {
        case ND_ADD:
            if(is_int(l_ty) && is_int(r_ty)) {
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
            if(is_int(l_ty) && is_int(r_ty)) {
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
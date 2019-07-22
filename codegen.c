#include "monocc.h"

// Methods for handling Node.

bool is_binary_op(NodeKind kind)
{
    switch (kind)
    {
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

bool is_expr(NodeKind kind)
{
    switch (kind)
    {
    case ND_IF:
    case ND_WHILE:
    case ND_BLOCK:
    case ND_RETURN:
        return false;
    }
    return true;
}

void pop_rax_if_expr(NodeKind kind)
{
    if (is_expr(kind))
        printf("\tpop  rax\n");
}

/// Generate a new label as a string.
char *new_label()
{
    char *label = (char *)malloc(10);
    if (!label)
        error("Could not allocate memmory.");
    sprintf(label, ".L%06d", labels++);
    return label;
}

/// Generate address of a local variable.
void gen_lval(Node *node)
{
    if (node->kind != ND_LVAR)
        error("Invalid left hand side value for assignment expr.");
    printf("\tmov  rax, rbp\n");
    printf("\tsub  rax, %d\n", node->ident_offset);
    printf("\tpush rax\n");
    return;
}

// Codegen

void gen_if(Node *node)
{
    char *else_str = new_label();
    char *end_str = new_label();
    gen(node->lhs);
    printf("\tpop  rax\n");
    printf("\tcmp  rax, 0\n");
    printf("\tje   %s\n", else_str);
    if (node->rhs)
    {
        gen(node->rhs);
        pop_rax_if_expr(node->rhs->kind);
    }
    printf("\tjmp  %s\n", end_str);
    printf("%s:\n", else_str);
    if (node->xhs)
    {
        gen(node->xhs);
        pop_rax_if_expr(node->xhs->kind);
    }
    printf("%s:\n", end_str);
}

void gen_while(Node *node)
{
    char *cond_str = new_label();
    char *end_str = new_label();
    printf("%s:\n", cond_str);
    gen(node->lhs);
    printf("\tpop  rax\n");
    printf("\tcmp  rax, 0\n");
    printf("\tje   %s\n", end_str);
    if (node->rhs)
    {
        gen(node->rhs);
        pop_rax_if_expr(node->rhs->kind);
    }
    printf("\tjmp  %s\n", cond_str);
    printf("%s:\n", end_str);
}

void gen_block(Node *node)
{
    if (!node)
        return;
    Vector *vec = node->nodes;
    int len = vec_len(vec);
    for (int i = 0; i < len; i++)
    {
        Node *node = vec->data[i];
        gen(node);
        pop_rax_if_expr(node->kind);
    }
}

void gen(Node *node)
{
    switch (node->kind)
    {
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
        if (node->lhs)
        {
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
    }
    if (is_binary_op(node->kind))
    {
        gen(node->lhs);
        gen(node->rhs);
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        switch (node->kind)
        {
        case ND_ADD:
            printf("\tadd  rax, rdi\n");
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
            error("Unimplemented binary op.");
        }
        printf("\tpush rax\n");
        return;
    }
    error("Unimplemented NodeKind.");
}
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
void gen(Node *node)
{
    if (node->kind == ND_NUM)
    {
        printf("\tpush %d\n", node->int_val);
        return;
    }
    if (node->kind == ND_LVAR)
    {
        gen_lval(node);
        printf("\tpop  rax\n");
        printf("\tmov  rax, [rax]\n");
        printf("\tpush rax\n");
        return;
    }
    if (node->kind == ND_ASSIGN)
    {
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
            printf("\tsetgt al\n");
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
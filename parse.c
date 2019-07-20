#include "monocc.h"

// Method for Node

Node *new_node(NodeKind kind, Node *lhs, Node *rhs)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = lhs;
    node->rhs = rhs;
    return node;
}

Node *new_node_num(int val)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_NUM;
    node->int_val = val;
    return node;
}

Node *new_node_lvar(int offset)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_LVAR;
    node->ident_offset = offset;
    return node;
}

// Methods for handling Token.

/// If current token is EOF, return true.
/// Otherwise return false.
bool at_eof()
{
    return token->kind == TK_EOF;
}

/// If current token is `kind`, take it ans return true.
/// Otherwise, return false.
bool take_if(TokenKind kind)
{
    if (token->kind == kind)
    {
        token = token->next;
        return true;
    }
    return false;
}

TokenKind peek()
{
    return token->kind;
}

/// If current token is `kind`, take it.
/// Otherwise, raise error.
void expect(TokenKind kind)
{
    if (token->kind != kind)
    {
        error("expext(): Unexpected token");
    }
    token = token->next;
}

/// If current token is a number, take it and return int_val.
/// Otherwise, raise error.
int expect_number()
{
    if (token->kind != TK_NUM)
    {
        error("Unexpected token: Number is expected.");
    }
    int num = token->int_val;
    token = token->next;
    return num;
}

/// If current token is a local variable, take it and return lvar_offset.
/// Otherwise, raise error.
int expect_lvar()
{
    if (token->kind != TK_IDENT)
    {
        error("Unexpected token: Identifier is expected.");
    }
    int offset = 8;
    token = token->next;
    return offset;
}

Node *parse_expr();

Node *parse_prim_expr()
{
    if (at_eof())
    {
        error("Unexpected EOF");
    }
    if (peek() == TK_NUM)
    {
        return new_node_num(expect_number());
    }
    if (take_if(TK_OP_PAREN))
    {
        Node *node = parse_expr();
        expect(TK_CL_PAREN);
        return node;
    }
    if (peek() == TK_IDENT)
    {
        return new_node_lvar(expect_lvar());
    }
    print_tokens(token);
    print_nodes();
    error("parse_prom_expr(): Unexpected token.");
}

Node *parse_unary_expr()
{
    if (take_if(TK_ADD))
    {
        return parse_prim_expr();
    }
    else if (take_if(TK_SUB))
    {
        Node *node = new_node(ND_SUB, new_node_num(0), parse_prim_expr());
        return node;
    }
    else
    {
        return parse_prim_expr();
    }
}

Node *parse_mul_expr()
{
    Node *node = parse_unary_expr();
    Node *rhs;

    while (true)
    {
        if (take_if(TK_MUL))
        {
            rhs = parse_unary_expr();
            node = new_node(ND_MUL, node, rhs);
            continue;
        }
        else if (take_if(TK_DIV))
        {
            rhs = parse_unary_expr();
            node = new_node(ND_DIV, node, rhs);
            continue;
        }
        return node;
    }
}

Node *parse_add_expr()
{
    Node *node = parse_mul_expr();
    Node *rhs;

    while (true)
    {
        if (take_if(TK_ADD))
        {
            rhs = parse_mul_expr();
            node = new_node(ND_ADD, node, rhs);
            continue;
        }
        else if (take_if(TK_SUB))
        {
            rhs = parse_mul_expr();
            node = new_node(ND_SUB, node, rhs);
            continue;
        }
        return node;
    }
}

Node *parse_rel_expr()
{
    Node *node = parse_add_expr();
    Node *rhs;

    for (;;)
    {
        if (take_if(TK_GE))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GE, node, rhs);
            continue;
        }
        else if (take_if(TK_GT))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GT, node, rhs);
            continue;
        }
        else if (take_if(TK_LE))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GE, rhs, node);
            continue;
        }
        else if (take_if(TK_LT))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GT, rhs, node);
            continue;
        }
        return node;
    }
}

Node *parse_eq_expr()
{
    Node *node = parse_rel_expr();
    Node *rhs;

    for (;;)
    {
        if (take_if(TK_EQ))
        {
            rhs = parse_rel_expr();
            node = new_node(ND_EQ, node, rhs);
            continue;
        }
        else if (take_if(TK_NEQ))
        {
            rhs = parse_rel_expr();
            node = new_node(ND_NEQ, node, rhs);
            continue;
        }
        return node;
    }
}

Node *parse_assign_expr()
{
    Node *node = parse_eq_expr();

    if (take_if(TK_ASSIGN))
        node = new_node(ND_ASSIGN, node, parse_assign_expr());
    return node;
}

Node *parse_expr()
{
    Node *node = parse_assign_expr();
    return node;
}

Node *parse_stmt()
{
    Node *node = parse_expr();
    if (at_eof())
        return node;
    expect(TK_SEMI);
    return node;
}

void parse_program()
{
    int i = 0;
    while (!at_eof())
    {
        code[i++] = parse_stmt();
    }
    code[i] = NULL;
}

void print_node(Node *node)
{
    if (node->kind == ND_NUM)
    {
        printf("(%d)", node->int_val);
        return;
    }
    if (is_binary_op(node->kind))
    {
        switch (node->kind)
        {
        case ND_ADD:
            printf("( + ");
            break;
        case ND_SUB:
            printf("( - ");
            break;
        case ND_MUL:
            printf("( * ");
            break;
        case ND_DIV:
            printf("( / ");
            break;
        case ND_EQ:
            printf("( == ");
            break;
        case ND_NEQ:
            printf("( != ");
            break;
        case ND_GE:
            printf("( >= ");
            break;
        case ND_GT:
            printf("( > ");
            break;
        default:
            error("Unknown node.");
        }
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(" )");
        return;
    }
    if (node->kind == ND_ASSIGN)
    {
        printf("( = ");
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(" )");
        return;
    }
    if (node->kind == ND_LVAR)
    {
        printf("( LVAR %d )", node->ident_offset);
        return;
    }
    error("Unknown node.");
}

void print_nodes()
{
    Node *node;
    int i = 0;
    while (node = code[i++])
    {
        printf("// ");
        print_node(node);
        printf("\n");
    }
}
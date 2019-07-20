#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>
#include <stdarg.h>

typedef enum
{
    TK_RESERVED,
    TK_NUM,
    TK_ADD,
    TK_SUB,
    TK_MUL,
    TK_DIV,
    TK_EQ,
    TK_NEQ,
    TK_GE,
    TK_GT,
    TK_LE,
    TK_LT,
    TK_OP_PAREN,
    TK_CL_PAREN,
    TK_EOF,
} TokenKind;

typedef struct Token Token;

struct Token
{
    TokenKind kind;
    Token *next;
    int int_val;
    char *str;
};

Token *token;

typedef struct Node Node;

typedef enum
{
    ND_NUM,
    ND_ADD,
    ND_SUB,
    ND_MUL,
    ND_DIV,
    ND_EQ,
    ND_NEQ,
    ND_GE,
    ND_GT,
} NodeKind;

struct Node
{
    NodeKind kind;
    Node *lhs;
    Node *rhs;
    int int_val;
};

/// Create a new token.
Token *new_token(TokenKind kind, Token *cur, char *str)
{
    Token *new_token = calloc(1, sizeof(Token));
    new_token->kind = kind;
    new_token->str = str;
    cur->next = new_token;
    return new_token;
}

void error(char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

// Methods for Token

/// Print tokens.
void print_tokens(Token *token)
{
    printf("// ");
    while (token)
    {
        switch (token->kind)
        {
        case TK_NUM:
            printf("%d ", token->int_val);
            break;
        case TK_ADD:
            printf("+ ");
            break;
        case TK_SUB:
            printf("- ");
            break;
        case TK_MUL:
            printf("* ");
            break;
        case TK_DIV:
            printf("/ ");
            break;
        case TK_EQ:
            printf("== ");
            break;
        case TK_NEQ:
            printf("!= ");
            break;
        case TK_GT:
            printf("> ");
            break;
        case TK_GE:
            printf(">= ");
            break;
        case TK_LT:
            printf("< ");
            break;
        case TK_LE:
            printf("<= ");
            break;
        case TK_OP_PAREN:
            printf("( ");
            break;
        case TK_CL_PAREN:
            printf(") ");
            break;
        case TK_EOF:
            printf(" <EOF>");
            break;
        default:
            error("Unknown TokenKind.");
            break;
        }
        token = token->next;
    }
    printf("\n");
}

/// Tokenize the input string.
Token tokenize(char *p)
{
    Token head;
    head.next = NULL;
    Token *cur = &head;

    while (*p)
    {
        if (isspace(*p))
        {
            p++;
            continue;
        }
        if (isdigit(*p))
        {
            char *org_p = p;
            int num = *p - '0';
            p++;
            while (isdigit(*p))
            {
                num *= 10;
                num += *p - '0';
                p++;
            }
            cur = new_token(TK_NUM, cur, org_p);
            cur->int_val = num;
            continue;
        }
        if (*p == '+')
        {
            cur = new_token(TK_ADD, cur, p++);
            continue;
        }
        if (*p == '-')
        {
            cur = new_token(TK_SUB, cur, p++);
            continue;
        }
        if (*p == '*')
        {
            cur = new_token(TK_MUL, cur, p++);
            continue;
        }
        if (*p == '/')
        {
            cur = new_token(TK_DIV, cur, p++);
            continue;
        }
        if (*p == '=')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_EQ, cur, p++);
                continue;
            }
            else
            {
                error("Unimplemented op '='");
            }
        }
        if (*p == '>')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_GE, cur, p++);
                continue;
            }
            else
            {
                cur = new_token(TK_GT, cur, p);
                continue;
            }
        }
        if (*p == '<')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_LE, cur, p++);
                continue;
            }
            else
            {
                cur = new_token(TK_LT, cur, p);
                continue;
            }
        }
        if (*p == '!')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_NEQ, cur, p++);
                continue;
            }
            else
            {
                error("Unimplemented op '!'");
            }
        }
        if (*p == '(')
        {
            cur = new_token(TK_OP_PAREN, cur, p++);
            continue;
        }
        if (*p == ')')
        {
            cur = new_token(TK_CL_PAREN, cur, p++);
            continue;
        }
        error("Unexpected character. %c", *p);
    }
    cur = new_token(TK_EOF, cur, p++);
    print_tokens(head.next);
    return head;
}

/// If current token is EOF, return true.
/// Otherwise return false.
bool is_eof()
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
        error("Unexpected token");
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

Node *parse_expr();

Node *parse_prim_expr()
{
    if (is_eof())
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
    error("Unexpected token.");
}

Node *parse_mul_expr()
{
    Node *node = parse_prim_expr();
    Node *rhs;

    while (true)
    {
        if (take_if(TK_MUL))
        {
            rhs = parse_prim_expr();
            node = new_node(ND_MUL, node, rhs);
            continue;
        }
        else if (take_if(TK_DIV))
        {
            rhs = parse_prim_expr();
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

Node *parse_expr()
{
    Node *node = parse_eq_expr();
    return node;
}

void print_nodes(Node *node)
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
        print_nodes(node->lhs);
        printf(" ");
        print_nodes(node->rhs);
        printf(" )");
        return;
    }

    error("Unknown node.");
}

// Codegen

void gen(Node *node)
{
    if (node->kind == ND_NUM)
    {
        printf("\tpush %d\n", node->int_val);
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
int main(int argc, char **argv)
{
    if (argc != 2)
    {
        fprintf(stderr, "No arguments.");
        return 1;
    }

    char *p = argv[1];
    token = tokenize(p).next;

    Node *node = parse_expr();

    printf("// ");
    print_nodes(node);
    printf("\n");

    printf(".intel_syntax noprefix\n");
    printf(".global main\n");
    printf("main:\n");

    gen(node);

    printf("\tpop  rax\n");
    printf("\tret\n");
    return 0;
}

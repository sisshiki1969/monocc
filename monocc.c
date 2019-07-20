#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>
#include <stdarg.h>

typedef enum
{
    TK_RESERVED,
    TK_ADD,
    TK_SUB,
    TK_NUM,
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
    while (token)
    {
        if (token->kind == TK_NUM)
        {
            printf("//%d\n", token->int_val);
        }
        else if (token->kind == TK_ADD)
        {
            printf("//+\n");
        }
        else if (token->kind == TK_SUB)
        {
            printf("//-\n");
        }
        else if (token->kind == TK_EOF)
        {
            printf("//<EOF>\n");
        }
        else
        {
            error("Unknown TokenKind.");
        }
        token = token->next;
    }
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

Node *parse_additive_expr()
{
    Node *node;
    while (!is_eof())
    {
        if (peek() == TK_NUM)
        {
            node = new_node_num(expect_number());
            continue;
        }
        if (take_if(TK_ADD))
        {
            Node *rhs = new_node_num(expect_number());
            node = new_node(ND_ADD, node, rhs);
            continue;
        }
        else if (take_if(TK_SUB))
        {
            Node *rhs = new_node_num(expect_number());
            node = new_node(ND_SUB, node, rhs);
            continue;
        }
        error("Unexpected token.");
    }
    return node;
}

void print_nodes(Node *node)
{
    if (node->kind == ND_NUM)
    {
        printf("(%d)", node->int_val);
        return;
    }
    if (node->kind == ND_ADD)
    {
        printf("( + ");
        print_nodes(node->lhs);
        printf(" ");
        print_nodes(node->rhs);
        printf(" )");
        return;
    }
    if (node->kind == ND_SUB)
    {
        printf("( - ");
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
    if (node->kind == ND_ADD)
    {
        gen(node->lhs);
        gen(node->rhs);
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        printf("\tadd  rax, rdi\n");
        printf("\tpush rax\n");
        return;
    }
    if (node->kind == ND_SUB)
    {
        gen(node->lhs);
        gen(node->rhs);
        printf("\tpop  rdi\n");
        printf("\tpop  rax\n");
        printf("\tsub  rax, rdi\n");
        printf("\tpush rax\n");
        return;
    }
    error("Unimplemented node.");
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

    Node *node = parse_additive_expr();
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

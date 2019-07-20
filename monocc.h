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

Token *new_token(TokenKind kind, Token *cur, char *str);

void error(char *fmt, ...);

// Methods for Token

void print_tokens(Token *token);

Token tokenize(char *p);

bool is_eof();
bool take_if(TokenKind kind);
TokenKind peek();
void expect(TokenKind kind);
int expect_number();

// Methods for Node

Node *new_node(NodeKind kind, Node *lhs, Node *rhs);

Node *new_node_num(int val);

bool is_binary_op(NodeKind kind);

Node *parse_prim_expr();
Node *parse_unary_expr();
Node *parse_mul_expr();
Node *parse_add_expr();
Node *parse_rel_expr();
Node *parse_eq_expr();
Node *parse_expr();

void print_nodes(Node *node);

// Codegen

void gen(Node *node);

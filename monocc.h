#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>
#include <string.h>
#include <stdarg.h>

typedef enum
{
    TK_RESERVED,
    TK_IDENT,
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
    TK_ASSIGN,
    TK_SEMI,
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
    int len;
};

typedef struct LVar LVar;

struct LVar
{
    LVar *next;
    char *name;
    int len;
    int offset;
    bool is_initialized;
};

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
    ND_ASSIGN,
    ND_LVAR,
} NodeKind;

struct Node
{
    NodeKind kind;
    Node *lhs;
    Node *rhs;
    /// Value in integer valid for ND_NUM only.
    int int_val;
    /// Offset valid for ND_LVAR only.
    LVar *ident_lvar;
    /// Offset valid for ND_LVAR only.
    int ident_offset;
};

Token *new_token(TokenKind kind, Token *cur, char *str, int len);

void error(char *fmt, ...);

// Methods for Token

void print_tokens(Token *token);

Token tokenize(char *p);

bool at_eof();
bool consume_if(TokenKind kind);
TokenKind peek();
void expect(TokenKind kind);
int consume_number();

// Methods for Node

Node *new_node(NodeKind kind, Node *lhs, Node *rhs);

Node *new_node_num(int val);

bool is_binary_op(NodeKind kind);

void parse_program();

void print_nodes();

// Codegen

void gen(Node *node);

// Globals

Token *token;
Node *code[100];
LVar *locals;

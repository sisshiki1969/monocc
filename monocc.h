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
    TK_OP_BRACE,
    TK_CL_BRACE,
    TK_COMMA,
    TK_IF,
    TK_ELSE,
    TK_WHILE,
    TK_FOR,
    TK_RETURN,
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
};

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
    ND_CALL,
    ND_IF,
    ND_WHILE,
    ND_RETURN,
    ND_BLOCK,
    ND_FDECL,
    ND_IDENT,
} NodeKind;

typedef struct Node Node;
typedef struct Vector Vector;

struct Node
{
    NodeKind kind;
    Node *lhs;
    Node *rhs;
    Node *xhs;
    /// Value in integer valid for ND_NUM only.
    int int_val;
    /// ptr to LVar (valid for ND_LVAR only).
    LVar *ident_lvar;
    /// Offset (valid for ND_LVAR only).
    int ident_offset;
    Vector *nodes;
    Token *token;
};

typedef struct Vector Vector;

struct Vector
{
    Node **data;
    int len;
    int capacity;
};

Token *new_token(TokenKind kind, Token *cur, char *str, int len);

void error(char *fmt, ...);

// Methods for Token

void print_tokens(Token *token);
void tokenize(char *p);

// Methods for Node

Node *new_node(NodeKind kind, Node *lhs, Node *rhs);
Node *new_node_num(int val);
bool is_binary_op(NodeKind kind);
bool is_expr(NodeKind kind);
void parse_program(bool from_cl);
void print_nodes();
void print_node(Node *node);
void print_locals();

// Methods for Vector

Vector *vec_new();
int vec_len(Vector *vec);
void vec_push(Vector *vec, void *data);
void test_vec();

// Codegen

void gen(Node *node);
void gen_stmt(Node *node);

// Globals

Token *token;
Vector *ext_declarations;
LVar *locals;
int labels;

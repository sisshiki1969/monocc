#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum {
    TK_RESERVED,
    TK_IDENT,
    TK_NUM,
    TK_ADD,
    TK_SUB,
    TK_MUL,
    TK_DIV,
    TK_ADDR,
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
    TK_OP_BRACKET,
    TK_CL_BRACKET,
    TK_COMMA,

    TK_IF,
    TK_ELSE,
    TK_WHILE,
    TK_FOR,
    TK_RETURN,
    TK_SIZEOF,

    TK_INT,

    TK_EOF,
} TokenKind;

typedef struct Token Token;

struct Token {
    TokenKind kind;
    Token *next;
    int int_val;
    char *str;
    int len;
};

typedef struct Type Type;

struct Type {
    enum { INT, PTR, ARRAY } ty;
    Type *ptr_to;
    int array_size;
};

typedef struct LVar LVar;

struct LVar {
    LVar *next;
    Token *token;
    Type *type;
    int offset;
};

typedef enum {
    ND_IDENT,
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
    ND_ADDR,
    ND_DEREF,
    ND_LVAR,
    ND_CALL,

    ND_IF,
    ND_WHILE,
    ND_RETURN,
    ND_BLOCK,
    ND_FDECL,
} NodeKind;

typedef struct Node Node;
typedef struct Vector Vector;

struct Node {
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

typedef struct {
    int start;
    int end;
} Span;

typedef struct Vector Vector;

struct Vector {
    Node **data;
    int len;
    int capacity;
};

Token *new_token(TokenKind kind, Token *cur, char *str, int len);

void error(char *fmt, ...);
void error_at_char(char *source, char *fmt, ...);
void error_at_token(Token *token, char *fmt, ...);
void error_at_node(Node *node, char *fmt, ...);

// Methods for Token

void print_tokens(Token *token);
void tokenize(char *p);

// Methods for Node

Node *new_node(NodeKind kind, Node *lhs, Node *rhs, Token *token);
Node *new_node_num(int val, Token *token);
bool is_binary_op(NodeKind kind);
bool is_expr(NodeKind kind);
void parse_program();
void print_nodes();
void print_node(Node *node);
void print_locals();
void print_type(FILE *stream, Type *type);

Type *new_type_int();
Type *new_type_ptr_to(Type *ptr_to);
Type *new_type_array(Type *ptr_to, int size);
int sizeof_type(Type *type);
Type *type(Node *node);
Node *get_ptr_if_array(Node *node);

bool is_int(Type *type);
bool is_ptr(Type *type);
bool is_array(Type *type);

// Methods for Vector

Vector *vec_new();
int vec_len(Vector *vec);
void vec_push(Vector *vec, void *data);
void test_vec();

// Codegen

void gen(Node *node);
void gen_stmt(Node *node);

// Globals

char *source_text;
char registers[5][4];
Token *token;
Vector *ext_declarations;
LVar *locals;
int labels;

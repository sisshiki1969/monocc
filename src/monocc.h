#include <ctype.h>
#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Token

typedef enum {
    TK_RESERVED,
    TK_IDENT,
    TK_NUM,
    TK_STR,

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
    TK_ASSIGN_ADD,
    TK_ASSIGN_SUB,
    TK_ASSIGN_MUL,
    TK_ASSIGN_DIV,
    TK_INC,
    TK_DEC,
    TK_SEMI,
    TK_OP_PAREN,
    TK_CL_PAREN,
    TK_OP_BRACE,
    TK_CL_BRACE,
    TK_OP_BRACKET,
    TK_CL_BRACKET,
    TK_COMMA,
    TK_COLON,

    TK_IF,
    TK_ELSE,
    TK_WHILE,
    TK_FOR,
    TK_SWITCH,
    TK_CASE,
    TK_DEFAULT,
    TK_BREAK,
    TK_CONTINUE,
    TK_RETURN,
    TK_SIZEOF,

    TK_INT,
    TK_CHAR,
    TK_VOID,

    TK_EOF,

    TK_MACRO,
} TokenKind;

typedef struct Token Token;

struct Token {
    TokenKind kind;
    Token *next;
    int int_val;
    char *str;
    int len;
};

// Type

typedef struct Type Type;

struct Type {
    enum { VOID, INT, CHAR, PTR, ARRAY, FUNC } ty;
    Type *ptr_to;
    /// array size for ARRAY
    int array_size;
    /// parameter list for FUNC
    Type *params;
    Token *token;
};

// Node

typedef enum {
    ND_IDENT,
    ND_NUM,
    ND_STR,

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
    ND_GVAR,
    ND_CALL,

    ND_IF,
    ND_WHILE,
    ND_FOR,
    ND_SWITCH,
    ND_CASE,
    ND_DEFAULT,
    ND_RETURN,
    ND_BREAK,
    ND_CONTINUE,
    ND_BLOCK,
    ND_FDECL,
} NodeKind;

// Local variables

typedef struct LVar LVar;

struct LVar {
    LVar *next;
    Token *token;
    Type *type;
    int offset;
    int out_of_scope;
    int scope;
};

typedef struct Node Node;
typedef struct Vector Vector;

struct Node {
    NodeKind kind;
    Node *lhs;
    Node *rhs;
    Node *xhs;
    /// Value in integer valid for ND_NUM only.
    int int_val;
    /// Pomtter to LVar (valid for ND_LVAR only).
    LVar *lvar;
    /// Max offset of local vars (valid for ND_FDECL only).
    int offset;
    char *label;
    Vector *nodes;
    Token *token;
    Type *type;
};

// Global variables and functions

typedef struct Global Global;

struct Global {
    Global *next;
    Token *token;
    Type *type;
    Node *body;
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

int get_line(char *p);
void error(char *fmt, ...);
void error_at_char(char *source, char *fmt, ...);
void error_at_token(Token *token, char *fmt, ...);
void error_at_node(Node *node, char *fmt, ...);

// Methods for Token

void print_tokens(Token *token);
void tokenize();

// Methods for Node

Node *new_node_binary(NodeKind kind, Node *lhs, Node *rhs, Token *token);
Node *new_node_num(int val, Token *token);
bool is_binary_op(NodeKind kind);
bool is_expr(NodeKind kind);
void parse_program();

// for debug and test.

void assert_expect(int line, int expected, int actual);
void print_nodes();
void print_node(Node *node);
void print_locals();
void print_globals();
void print_strings();
void print_funcs();
void print_type(FILE *stream, Type *type);

void test_vec();
void test_expression();

// Methods for Type

Type *new_type_int();
Type *new_type_char();
Type *new_type_ptr_to(Type *ptr_to);
Type *new_type_array(Type *ptr_to, int size);
Type *new_type_func(Type *return_type);
Type *new_type_from_token(Token *token);
int sizeof_type(Type *type);
Type *type(Node *node);
Node *get_ptr_if_array(Node *node);

bool is_char(Type *type);
bool is_int(Type *type);
bool is_ptr(Type *type);
bool is_array(Type *type);
bool is_func(Type *type);
bool is_arythmetic(Type *type);
bool is_identical_type(Type *l_type, Type *r_type);
bool is_assignable_type(Type *l_type, Type *r_type);

// Methods for Vector

Vector *vec_new();
int vec_len(Vector *vec);
void vec_push(Vector *vec, Node *data);

// Codegen

void gen(Node *node);
void gen_stmt(Node *node);

// Globals

char *source_text;
char registers[4][5][4];
Token *token;
Vector *ext_declarations;
Vector *strings;
LVar *locals;
Global *globals;
Global *functions;

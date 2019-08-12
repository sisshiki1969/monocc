#include <ctype.h>
#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef FILE
typedef struct {
    char mode;
    char *ptr;
    int rcount;
    int wcount;
    char *base;
    int bufsiz;
    int fd;
    char smallbuf[1];
} FILE;
void *calloc(int n, int size);
int isalnum(int c);
int strlen(char *s);
char *strchr(char *s, int c);
int strncmp(char *str, char *reserved, int len);
int isspace(int p);
void memcpy(char *dest, char *src, int len);
#endif

// Token

typedef enum {
    TK_IDENT,
    TK_NUM,
    TK_STR,

    TK_ADD,
    TK_SUB,
    TK_MUL,
    TK_DIV,

    TK_EQ,
    TK_NEQ,
    TK_GT,
    TK_GE,
    TK_LT,
    TK_LE,

    TK_ASSIGN,
    TK_ASSIGN_ADD,
    TK_ASSIGN_SUB,
    TK_ASSIGN_MUL,
    TK_ASSIGN_DIV,

    TK_INC,
    TK_DEC,

    TK_LAND,
    TK_LOR,
    TK_AND,
    TK_OR,
    TK_NOT,

    TK_SEMI,
    TK_OP_PAREN,
    TK_CL_PAREN,
    TK_OP_BRACE,
    TK_CL_BRACE,
    TK_OP_BRACKET,
    TK_CL_BRACKET,
    TK_COMMA,
    TK_COLON,
    TK_DOT,
    TK_ARROW,
    TK_ELLIPSIS,

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
    TK_BOOL,
    TK_VOID,
    TK_STRUCT,
    TK_ENUM,
    TK_UNION,

    TK_TYPEDEF,

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
typedef struct MemberInfo MemberInfo;
typedef struct Type Type;

struct MemberInfo {
    MemberInfo *next;
    Token *ident;
    Type *type;
    int offset;
};

struct Type {
    enum { VOID, INT, CHAR, BOOL, PTR, ARRAY, FUNC, STRUCT, ENUM, ENUM_EL } ty;
    Type *ptr_to;
    /// array size for ARRAY
    int array_size;
    /// parameter list for FUNC
    MemberInfo *params;
    /// member list for STRUCT
    MemberInfo *member;
    int offset;
    // Type *next;
    Token *tag_name;
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

    ND_LAND,
    ND_LOR,
    ND_NOT,

    ND_ASSIGN,
    ND_ADDR,
    ND_DEREF,
    ND_LVAR,
    ND_GVAR,
    ND_CALL,
    ND_MEMBER,

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
    LVar *scope;
    bool scope_head;
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

// Tag name

typedef struct TagName TagName;

struct TagName {
    TagName *next;
    Token *ident;
    Type *type;
};

TagName *find_tag(Token *token);

typedef struct Typedef Typedef;

struct Typedef {
    Typedef *next;
    Type *type;
    Token *ident;
};

Type *find_typedef(Token *ident);

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

char *read_file(char *path);

Token *new_token(TokenKind kind, Token *cur, char *str, int len);

int get_line(char *p);
void error(char *fmt, ...);
void error_at_char(char *source, char *fmt, ...);
void error_at_token(Token *token, char *fmt, ...);
void error_at_node(Node *node, char *fmt, ...);

// Methods for Token

void print_tokens(Token *token);
void tokenize(char *source, bool is_main);

// Methods for Node

Node *new_node_binary(NodeKind kind, Node *lhs, Node *rhs, Token *token);
Node *new_node_num(int val, Token *token);
bool is_binary_op(NodeKind kind);
bool is_expr(NodeKind kind);
void parse_program();

// for debug and test.

void assert_expect(int line, int expected, int actual);
void print_token(Token *token);
void print_nodes();
void print_node(Node *node);
void print_locals();
void print_globals();
void print_strings();
void print_funcs();
void print_structs();
void print_struct_member(FILE *stream, MemberInfo *member);
void print_type(FILE *stream, Type *type);
void error_types(Type *l_ty, Type *r_ty);
void print_typedefs();

void test_vec();
void test_expression();

// Methods for Type

Type *new_type_int();
Type *new_type_bool();
Type *new_type_void();
Type *new_type_char();
Type *new_type_ptr_to(Type *ptr_to);
Type *new_type_array(Type *ptr_to, int size);
Type *new_type_func(Type *return_type);
Type *new_type_struct();
Type *new_type_enum();
Type *new_type_enum_el(int i);
int sizeof_type(Type *type);
Type *type(Node *node);
Node *get_ptr_if_array(Node *node);

bool is_char(Type *type);
bool is_int(Type *type);
bool is_ptr(Type *type);
bool is_array(Type *type);
bool is_func(Type *type);
bool is_struct(Type *type);
bool is_enum(Type *type);
bool is_enum_el(Type *type);
bool is_ptr_to_char(Type *type);
bool is_array_of_char(Type *type);
bool is_arythmetic(Type *type);
bool is_identical_type(Type *l_type, Type *r_type);
bool is_compatible_type(Type *l_type, Type *r_type);
bool is_assignable_type(Type *l_type, Type *r_type);

int alignof_type(Type *type);
int align_to(int n, int align);

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
LVar *scope;
TagName *tagnames;
Typedef *tdef_names;
Global *globals;
Global *functions;

struct List {
    struct List *next;
};
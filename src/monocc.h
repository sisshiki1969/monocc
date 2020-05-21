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

typedef struct {
  int gp_offset;
  int fp_offset;
  void *overflow_arg_area;
  void *reg_save_area;
} va_list[1];

#define va_start(ap, last) __builtin_va_start(ap, last)
#define va_end(ap) 0

#define __GNUC_VA_LIST 1
typedef va_list __gnuc_va_list;

typedef int size_t;
void *calloc(int n, int size);
void *malloc(int size);
void *realloc(void *ptr, int size);
int isalnum(int c);
int strlen(char *s);
char *strchr(char *s, int c);
char *strrchr(char *s, int c);
char *strstr(char *s1, char *s2);
int strncmp(char *str, char *reserved, int len);
int strcmp(char *str1, char *str2);
char *strcpy(char *dest, char *src);
char *strncpy(char *dest, char *src, size_t n);
int isspace(int p);
int isdigit(int p);
int isalpha(int p);
void memcpy(void *dest, void *src, int len);
int memcmp(void *dest, void *src, int len);
int printf(char *fmt, ...);
int fprintf(FILE *stream, char *fmt, ...);
int vfprintf(FILE *stream, char *format, va_list arg);

int sprintf(char *str, char *fmt, ...);
FILE *fopen(char *p, char *mode);
int fseek(FILE *fp, int n, int seek_end);
void fread(char *buf, int size, int n, FILE *fp);
int ftell(FILE *fp);
void fclose(FILE *fp);
char *strerror(int n);
void exit(int status);
extern FILE *stderr;
extern FILE *stdout;
extern int *__errno_location();

#define true 1
#define false 0
#define NULL ((void *)0)
#define SEEK_END 2
#define SEEK_SET 0
#define errno (*__errno_location())

#endif

// File info

typedef struct FileInfo FileInfo;

struct FileInfo {
  FileInfo *next;
  char *file_name;
  char *start;
  char *end;
  int no;
};

// Token

typedef enum TokenKind TokenKind;

enum TokenKind {
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
  TK_XOR,
  TK_NOT,
  TK_SHR,
  TK_SHL,

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
  TK_TILDA,
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
  TK_SHORT,
  TK_LONG,
  TK_STRUCT,
  TK_ENUM,
  TK_UNION,
  TK_SIGNED,
  TK_UNSIGNED,

  TK_EXTERN,
  TK_TYPEDEF,

  TK_EOF,

  TK_MACRO,
};

typedef struct Token Token;
typedef struct MemberInfo MemberInfo;
typedef struct Type Type;

struct Token {
  TokenKind kind;
  Token *next;
  long num_val;
  Type *num_ty;
  char *str;
  int len;
};

// Type

struct MemberInfo {
  MemberInfo *next;
  Token *ident;
  Type *type;
  int offset;
};

struct Type {
  enum {
    VOID,
    CHAR,
    BOOL,
    SHORT,
    USHORT,
    INT,
    UINT,
    LONG,
    ULONG,
    PTR,
    ARRAY,
    FUNC,
    STRUCT,
    ENUM,
    ENUM_EL
  } ty;
  Type *ptr_to;
  /// array size for ARRAY
  int array_size;
  /// parameter list for FUNC
  MemberInfo *params;
  /// member list for STRUCT
  MemberInfo *member;
  /// memory offset
  int offset;
  // Type *next;
  Token *tag_name;
  // true if func is variadic
  bool variadic;
};

// Node

typedef enum {
  ND_IDENT,
  ND_NUM,

  ND_STR,
  ND_INIT,

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
  ND_AND,
  ND_OR,
  ND_XOR,
  ND_SHR,
  ND_SHL,
  ND_CMP,

  ND_ASSIGN,
  ND_ADDR,
  ND_DEREF,
  ND_LVAR,
  ND_GVAR,
  ND_CALL,
  ND_MEMBER,
  ND_CAST,

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
typedef struct Global Global;
typedef struct Function Function;

struct Node {
  NodeKind kind;
  Node *lhs;
  Node *rhs;
  Node *xhs;
  /// Value in integer valid for ND_NUM only.
  long num_val;
  /// StringId for ND_STR only.
  int str_id;
  /// Pomtter to LVar (valid for ND_LVAR only).
  LVar *lvar;
  /// Max offset of local vars (valid for ND_FDECL only).
  int offset;
  char *label;
  Vector *nodes;
  Token *token;
  Type *type;
  Function *func;
};

// Global variables and functions

struct Global {
  Global *next;
  Token *token;
  Type *type;
  Node *body;
  bool is_extern;
};

struct Function {
  Function *next;
  Token *token;
  Type *type;
  Node *body;
  bool is_extern;
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

typedef struct Vector Vector;

struct Vector {
  Node **data;
  int len;
  int capacity;
};

char *read_file(char *path);

Token *new_token(TokenKind kind, Token *cur, char *str, int len);

int get_line(char *p, char *source);
int get_file_no(char *p);
void error(char *fmt, ...);
void error_at_char(FileInfo *fi, char *source, char *fmt, ...);
void error_at_token(Token *token, char *fmt, ...);
void error_at_node(Node *node, char *fmt, ...);

// Methods for Token

typedef struct TokContext TokContext;
struct TokContext {
  FileInfo *file_info;
  Token *cur;
  char *p;
};

TokContext *new_tok_context(FileInfo *file_info, Token *cur, char *p);
void print_tokens(FILE *stream, Token *token);
void tokenize(char *file, char *source, bool is_main);
bool cmp_token(Token *t1, Token *t2);
bool cmp_token_str(Token *t, char *c);
bool read_if(TokContext *ctx, int c);
Token *read_token(TokContext *ctx);

// Methods for Node

Node *new_node_binary(NodeKind kind, Node *lhs, Node *rhs, Token *token);
Node *new_node_num(long val, Token *token);
bool is_binary_op(NodeKind kind);
bool is_expr(NodeKind kind);
void parse_program();

// for debug and test.

void assert_expect(int line, long expected, long actual);
void print_token(FILE *stream, Token *token);
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
Type *new_type_uint();
Type *new_type_short();
Type *new_type_ushort();
Type *new_type_long();
Type *new_type_ulong();
Type *new_type_bool();
Type *new_type_void();
Type *new_type_char();
Type *new_type_ptr_to(Type *ptr_to);
Type *new_type_array(Type *ptr_to, int size);
Type *new_type_func(Type *return_type);
Type *new_type_struct();
Type *new_type_enum();
Type *new_type_enum_el(Token *ident, int i);
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
bool is_arith(Type *type);
bool is_signed(Type *type);
bool is_identical_type(Type *l_type, Type *r_type);
bool is_compatible_type(Type *l_type, Type *r_type);
bool is_assignable_type(Type *l_type, Type *r_type);

Type *get_common_type(Type *ty1, Type *ty2);
int alignof_type(Type *type);
int align_to(int n, int align);

// Methods for Vector

Vector *vec_new();
int vec_len(Vector *vec);
void vec_push(Vector *vec, Node *data);

// Codegen

void gen(Node *node);
void gen_stmt(Node *node);
void emit_global(Type *type, Node *init);

// Macros

void pp();

typedef struct Macro Macro;

struct Macro {
  Macro *next;
  Token *token;
  Token *params;
  Token *subst;
};

Macro *new_macro(Token *token, Token *args, Token *subst);
Macro *find_macro(Token *token);

// Globals

Global *new_gvar(Token *ident, Type *type);
Function *new_func(Token *ident, Type *type, Node *body);

extern char *source_text;
extern char *registers[4][6];
extern bool verbose;

extern FileInfo *file_informations;
extern Token *token;
extern Vector *ext_declarations;
extern Vector *strings;
extern LVar *locals;
extern LVar *scope;
extern TagName *tagnames;
extern Typedef *tdef_names;
extern Global *globals;
extern Function *functions;

extern char *output_file_name;
extern FILE *output;

extern Type ty_int;
extern Type ty_uint;
extern Type ty_short;
extern Type ty_ushort;
extern Type ty_long;
extern Type ty_ulong;
extern Type ty_char;
extern Type ty_bool;
extern Type ty_void;
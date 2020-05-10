#include "monocc.h"

// Globals

/// the level of switch-statement.
int switch_level;

// Methods for Node

/// number(int)
/// kind: ND_NUM
/// int_val: int value
/// token: Token *token
/// type: int
Node *new_node_num(int val, Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_NUM;
  node->int_val = val;
  node->token = token;
  node->type = new_type_int();
  return node;
}

/// string literal
/// kind: ND_STR
/// int_val: int StringID
/// token: Token *token
/// type: char *
/// label: char *string
/// offset: number of chars in *label
Node *new_node_str(Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_STR;
  node->token = token;
  int len = 0;
  for (Token *t = token; t; t = t->next) len += t->len;
  node->type = new_type_array(new_type_char(), len);
  node->int_val = vec_len(strings);
  vec_push(strings, node);

  node->label = (char *)calloc(1, len + 1);
  char *dest = node->label;
  for (Token *t = token; t; t = t->next) {
    char *src = t->str;
    for (int i = 0; i < t->len; i++) {
      if (*src != '\\') {
        *dest++ = *src++;
      } else {
        i++;
        src++;
        switch (*src++) {
          case '0':
            *dest++ = '\0';
            break;
          case 'a':
            *dest++ = '\a';
            break;
          case 'b':
            *dest++ = '\b';
            break;
          case 'f':
            *dest++ = '\f';
            break;
          case 'n':
            *dest++ = '\n';
            break;
          case 'r':
            *dest++ = '\r';
            break;
          case 't':
            *dest++ = '\t';
            break;
          case '\\':
            *dest++ = '\\';
            break;
          case '\'':
            *dest++ = '\'';
            break;
          case '\"':
            *dest++ = '\"';
            break;
          default:
            error_at_token(token, "Unsupported escape sequence.");
        }
      }
    }
  }
  *dest = '\0';
  node->offset = (int)(dest - node->label) + 1;

  return node;
}

/// function designator
/// kind: ND_IDENT
/// token: Token *token
/// type:
Node *new_node_ident(Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_IDENT;
  node->token = token;
  return node;
}

/// local variable
/// kind: ND_LVAR
/// lvar: LVar *lvar
/// token: Token *token
/// type: lvar->type
Node *new_node_lvar(LVar *lvar, Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_LVAR;
  node->lvar = lvar;
  node->token = token;
  node->type = lvar->type;
  return node;
}

/// global variable
/// kind: ND_GVAR
/// lvar: LVar *lvar
/// token: Token *token
/// type: gvar->type
Node *new_node_gvar(Global *gvar, Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_GVAR;
  node->token = token;
  node->type = gvar->type;
  return node;
}

/// Generate Node for binary op.
/// If either or both of operands is an array, convert it to ptr to the array.
/// kind: NodeKind
/// lhs: operand 1
/// rhs: operand 2
/// token: Token *op_token (indicates operator)
/// type: type of the result value.
Node *new_node_binary(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = kind;
  node->lhs = get_ptr_if_array(lhs);
  node->rhs = get_ptr_if_array(rhs);
  node->token = op_token;
  // node->type = type(node);
  return node;
}

/// Generate Node from lhs and rhs.
/// for DEREF, ADDR, ASSIGN, MEMBER
Node *new_node_expr(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = kind;
  node->lhs = lhs;
  node->rhs = rhs;
  node->token = op_token;
  // node->type = type(node);
  return node;
}

/// member
MemberInfo *get_member_type(Type *type, Token *ident);
Node *new_node_member(Node *lhs, Token *ident) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_MEMBER;
  node->lhs = lhs;
  node->token = ident;
  Type *ty = type(lhs);
  if (!is_struct(ty))
    error_at_node(lhs, "The expression must have a struct or union type.");
  MemberInfo *mem = get_member_type(ty, ident);
  if (!mem) error_at_token(ident, "The member does not exists in the struct.");
  node->offset = mem->offset;
  node->type = mem->type;
  return node;
}

/// Generate Node.
/// for BREAK, CONTINUE
Node *new_node(NodeKind kind, Token *op_token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = kind;
  node->token = op_token;
  return node;
}

/// function call
/// kind: ND_CALL
/// lhs: callee (ND_IDENT)
/// nodes: vector of arguments
/// token: Token *token
/// type: return type of callee
Node *new_node_call(Node *callee, Vector *vec, Token *token) {
  // TODO: Currently, only ND_IDENT is allowed as a callee.
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_CALL;
  node->lhs = callee;
  node->nodes = vec;
  node->token = token;
  node->type = callee->type;
  return node;
}

/// if-then-else statement
/// kind: ND_IF
/// lhs: Node *cond
/// rhs: Node *then
/// xhs: Node *else
/// token: Token *token
Node *new_node_if_then(Node *cond_, Node *then_, Node *else_) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_IF;
  node->lhs = cond_;
  node->rhs = then_;
  node->xhs = else_;
  node->token = token;
  return node;
}

LVar *new_lvar(Token *token, Type *type);

Node *new_node_switch(Node *expr, Node *stmt, Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_SWITCH;
  node->lvar = new_lvar(token, new_type_int());
  node->lhs = expr;
  node->rhs = stmt;
  node->nodes = vec_new();
  node->token = token;
  return node;
}

Node *new_node_case(Node *const_expr, Node *body, Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_CASE;
  node->lhs = const_expr;
  node->rhs = body;
  node->token = token;
  return node;
}

Node *new_node_default(Node *body, Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_DEFAULT;
  node->lhs = body;
  node->token = token;
  return node;
}

/// while statement
/// kind: ND_WHITE
/// lhs: Node *cond
/// rhs: Node *do
/// token: Token *token
Node *new_node_while(Node *cond_, Node *do_) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_WHILE;
  node->lhs = cond_;
  node->rhs = do_;
  node->token = token;
  return node;
}

/// for statement
/// kind: ND_FOR
/// lhs: Node *init
/// rhs: Node *cond
/// xhs: Node *post
/// nodes: [ Node *body ]
/// token: Token *token
Node *new_node_for(Node *init_, Node *cond_, Node *post_, Node *body_,
                   Token *token) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_FOR;
  node->lhs = init_;
  node->rhs = cond_;
  node->xhs = post_;
  Vector *vec = vec_new();
  vec_push(vec, body_);
  node->nodes = vec;
  node->token = token;
  return node;
}

/// compound statement
/// kind: ND_BLOCK
/// nodes: Vector *stmts
/// token: current token
Node *new_node_block(Vector *stmts) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_BLOCK;
  node->nodes = stmts;
  node->token = token;
  return node;
}

void add_stmt_to_block(Node *block, Node *node) {
  if (block->kind == ND_BLOCK) {
    if (node) vec_push(block->nodes, node);
    return;
  } else
    error_at_node(block, "Must be block.");
}

/// func declaration
/// kind: ND_FDECL
/// lhs: Node *body
/// nodes: Vector *params
/// offset: int max_offset
/// token: Token *name
/// type: Type *type
Node *new_node_fdecl(Token *name, Vector *params, int max_offset, Node *body,
                     Type *type) {
  Node *node = calloc(1, sizeof(Node));
  node->kind = ND_FDECL;
  node->lhs = body;
  node->nodes = params;
  node->offset = max_offset;
  node->token = name;
  node->type = type;
  return node;
}

// Methods for handling Token.

/// Return TokenKind of the current token.
bool peek(TokenKind kind) { return token->kind == kind; }

/// Return TokenKind of the next token.
TokenKind peek_next() { return token->next->kind; }

/// If current token is EOF, return true.
/// Otherwise return false.
bool at_eof() { return token->kind == TK_EOF; }

/// Consume the current token and return it.
Token *consume() {
  Token *ret = token;
  token = token->next;
  return ret;
}

/// If current token is `kind`, consume and return true.
/// Otherwise, return false.
bool consume_if(TokenKind kind) {
  if (token->kind == kind) {
    token = token->next;
    return true;
  }
  return false;
}

/// If current token is a number, consume and return int_val.
/// Otherwise, raise error.
int consume_number() {
  if (token->kind != TK_NUM) {
    error_at_token(token, "Unexpected token: Number is expected.");
  }
  int num = token->int_val;
  token = token->next;
  return num;
}

/// If current token is an identifier, consume and return token.
/// Otherwise, raise error.
Token *consume_ident() {
  if (token->kind != TK_IDENT) {
    error_at_token(token, "Expected identifier.");
  }
  Token *ident = token;
  token = token->next;
  return ident;
}

/// If current token is `kind`, consume and return it.
/// Otherwise, raise error.
Token *expect(TokenKind kind) {
  if (token->kind != kind) {
    error_at_token(token, "Unexpected token.");
  }
  Token *ret = token;
  token = token->next;
  return ret;
}

bool cmp_token(Token *t1, Token *t2) {
  if (t1->len == t2->len && memcmp(t1->str, t2->str, t1->len) == 0) {
    return true;
  }
  return false;
}

bool cmp_token_str(Token *t, char *c) {
  if (t->len == strlen(c) && memcmp(t->str, c, t->len) == 0) {
    return true;
  }
  return false;
}

/// Examine whether the Token is type-specifier.
bool is_type_specifier(Token *token) {
  switch (token->kind) {
    case TK_INT:
    case TK_CHAR:
    case TK_BOOL:
    case TK_VOID:
    case TK_STRUCT:
    case TK_ENUM:
      return true;
  }
  if (find_typedef(token)) return true;
  return false;
}

// LVar

/// Generate LVar from token and put it to the local var list.
LVar *new_lvar(Token *token, Type *type) {
  LVar *lvar = calloc(1, sizeof(LVar));
  lvar->token = token;
  int offset;
  int size = sizeof_type(type);
  if (size == 0) {
    print_structs();
    error_at_token(token, "Inncomplete type is not allowed.");
  }
  if (locals) {
    offset = locals->offset + size;
  } else {
    offset = size;
  }
  lvar->offset = offset;
  lvar->type = type;
  lvar->next = locals;
  locals = lvar;
  lvar->scope = scope;
  scope = lvar;

  return lvar;
}

LVar *find_lvar(Token *token) {
  for (LVar *var = scope; var; var = var->scope) {
    if (cmp_token(var->token, token)) {
      return var;
    }
  }
  return NULL;
}

bool find_lvar_in_scope(Token *token) {
  for (LVar *var = scope; var; var = var->scope) {
    if (var->scope_head) return false;
    if (cmp_token(var->token, token)) {
      return true;
    }
  }
  return false;
}

// Global variables.

Global *new_gvar(Token *ident, Type *type) {
  Global *global = calloc(1, sizeof(Global));
  global->next = globals;
  global->token = ident;
  global->type = type;
  globals = global;
  return global;
}

Global *find_gvar(Token *token) {
  for (Global *var = globals; var; var = var->next) {
    if (cmp_token(var->token, token)) {
      return var;
    }
  }
  return NULL;
}

// functions.

Global *new_func(Token *ident, Type *type, Node *body) {
  Global *func = calloc(1, sizeof(Global));
  func->next = functions;
  func->token = ident;
  func->type = type;
  func->body = body;
  functions = func;
  return func;
}

Global *find_func(Token *token) {
  for (Global *func = functions; func; func = func->next) {
    if (cmp_token(func->token, token)) {
      return func;
    }
  }
  return NULL;
}

// tag-names.

TagName *new_tag(Token *ident, Type *type) {
  if (!ident) return NULL;
  TagName *tag = calloc(1, sizeof(TagName));
  type->tag_name = ident;
  tag->next = tagnames;
  tag->ident = ident;
  tag->type = type;
  tagnames = tag;
}

TagName *find_tag(Token *token) {
  if (!token) return NULL;
  for (TagName *tag = tagnames; tag; tag = tag->next) {
    if (cmp_token(tag->ident, token)) {
      return tag;
    }
  }
  return NULL;
}

Typedef *new_typedef(Token *ident, Type *type) {
  if (!ident) return NULL;
  Typedef *tdef = calloc(1, sizeof(Typedef));
  tdef->next = tdef_names;
  tdef->ident = ident;
  tdef->type = type;
  tdef_names = tdef;
}

Type *find_typedef(Token *ident) {
  if (!ident) return NULL;
  Typedef *tdef = tdef_names;
  while (tdef) {
    if (cmp_token(tdef->ident, ident)) {
      return tdef->type;
    }
    tdef = tdef->next;
  }
  return NULL;
}

MemberInfo *get_member_type(Type *type, Token *ident) {
  if (!is_struct(type)) error_at_token(ident, "Not a struct.");
  MemberInfo *member;
  if (!type->tag_name) {
    if (!type->member)
      error_at_token(ident, "No tag name and the type has no member.");
    member = type->member;
  } else {
    TagName *tag = find_tag(type->tag_name);
    if (!tag) error_at_token(ident, "Undefined tag name.");
    member = tag->type->member;
  }

  while (member) {
    if (cmp_token(member->ident, ident)) return member;
    member = member->next;
  }
  return NULL;
}

MemberInfo *new_member_info(Token *ident, Type *type) {
  MemberInfo *ty_ident = calloc(1, sizeof(MemberInfo));
  ty_ident->type = type;
  ty_ident->ident = ident;
  return ty_ident;
}

// Parser

Node *parse_expr();
Node *parse_cast_expr();
Node *parse_assign_expr();
Node *parse_block();
Node *parse_stmt();
Node *parse_block_item();
MemberInfo *parse_decl(bool);

Node *parse_prim_expr() {
  Token *cur_token = token;
  if (at_eof()) {
    error_at_token(token, "Unexpected EOF.");
  }
  if (peek(TK_NUM)) {
    return new_node_num(consume_number(), cur_token);
  }
  if (peek(TK_STR)) {
    Token *tok = consume();
    Token *t = tok;
    while (peek(TK_STR)) {
      t->next = consume();
      t = t->next;
    }
    t->next = NULL;
    Node *node = new_node_str(tok);

    return node;
  }
  if (consume_if(TK_OP_PAREN)) {
    Node *node = parse_expr();
    expect(TK_CL_PAREN);
    return node;
  }
  if (consume_if(TK_IDENT)) {
    LVar *lvar = find_lvar(cur_token);
    if (lvar) return new_node_lvar(lvar, cur_token);
    Global *gvar = find_gvar(cur_token);
    if (gvar) return new_node_gvar(gvar, cur_token);
    TagName *tag = find_tag(cur_token);
    if (tag && is_enum_el(tag->type)) {
      return new_node_num(tag->type->offset, cur_token);
    }
    if (peek(TK_OP_PAREN)) {
      if (find_func(cur_token)) return new_node_ident(cur_token);
    }
    error_at_token(cur_token, "Identifier is not defined.");
  }
  if (consume_if(TK_MACRO)) {
    if (strncmp(cur_token->str, "__LINE__", 8) == 0)
      return new_node_num(get_line(cur_token->str, source_text), cur_token);
  }
  if (is_type_specifier(token))
    error_at_token(token, "Can not use declaration here.");
  error_at_token(token, "parse_prim_expr(): Unexpected token.");
}

Node *parse_postfix_expr() {
  Node *node = parse_prim_expr();
  while (true) {
    Token *op_token = token;
    if (consume_if(TK_OP_PAREN)) {
      /*
      if (node->kind != ND_IDENT)
        error_at_node(node, "Currently, callee must be an identifier.");*/
      Global *fn_global = find_func(node->token);
      if (!fn_global) error_at_node(node, "Undefined identifier.");
      node->type = fn_global->type->ptr_to;
      Vector *vec = vec_new();
      Token *op_token = token;
      MemberInfo *param = fn_global->type->params;
      while (!peek(TK_CL_PAREN)) {
        // if(!param)
        //    error_at_token(token, "Too many arguments is func call.");
        Node *arg = parse_assign_expr();
        if (is_array(type(arg)))
          arg = new_node_expr(ND_ADDR, arg, NULL, arg->token);
        if (param && !is_compatible_type(param->type, type(arg))) {
          error_types(param->type, type(arg));
          error_at_node(arg, "The type of an argument is mismatch %s",
                        "with func parameter.");
        }
        vec_push(vec, arg);
        if (param) param = param->next;
        if (!consume_if(TK_COMMA)) break;
      }
      if (param) error_at_token(token, "Too few arguments is func call.");
      expect(TK_CL_PAREN);
      node = new_node_call(node, vec, node->token);
    } else if (consume_if(TK_OP_BRACKET)) {
      Node *index = parse_expr();
      node = new_node_binary(ND_ADD, node, index, token);
      node = new_node_expr(ND_DEREF, node, NULL, token);
      expect(TK_CL_BRACKET);
    } else if (consume_if(TK_INC)) {
      Node *rhs =
          new_node_binary(ND_ADD, node, new_node_num(1, op_token), op_token);
      node = new_node_expr(ND_ASSIGN, node, rhs, op_token);
      node = new_node_binary(ND_SUB, node, new_node_num(1, op_token), op_token);
    } else if (consume_if(TK_DEC)) {
      Node *rhs =
          new_node_binary(ND_SUB, node, new_node_num(1, op_token), op_token);
      node = new_node_expr(ND_ASSIGN, node, rhs, op_token);
      node = new_node_binary(ND_ADD, node, new_node_num(1, op_token), op_token);
    } else if (consume_if(TK_DOT)) {
      node = new_node_member(node, consume_ident());
    } else if (consume_if(TK_ARROW)) {
      if (!is_ptr(type(node))) error_at_node(node, "Must be a pointer.");
      node = new_node_binary(ND_DEREF, node, NULL, op_token);
      node = new_node_member(node, consume_ident());
    } else
      return node;
  }
}

Node *get_ptr_if_array(Node *node) {
  if (!node) return NULL;
  if (is_array(type(node))) {
    return new_node_expr(ND_ADDR, node, NULL, node->token);
  } else {
    return node;
  }
}

Node *parse_unary_expr() {
  Token *op_token = token;
  if (consume_if(TK_ADD)) {
    return parse_cast_expr();
  } else if (consume_if(TK_SUB)) {
    return new_node_binary(ND_SUB, new_node_num(0, token), parse_cast_expr(),
                           op_token);
  } else if (consume_if(TK_AND)) {
    return new_node_expr(ND_ADDR, parse_cast_expr(), NULL, op_token);
  } else if (consume_if(TK_MUL)) {
    Node *node = parse_cast_expr();
    return new_node_binary(ND_DEREF, node, NULL, op_token);
  } else if (consume_if(TK_SIZEOF)) {
    Type *ty;
    if (peek(TK_OP_PAREN) && is_type_specifier(token->next)) {
      expect(TK_OP_PAREN);
      ty = parse_decl(false)->type;
      expect(TK_CL_PAREN);
    } else {
      ty = type(parse_unary_expr());
    }
    return new_node_num(sizeof_type(ty), op_token);
  } else if (consume_if(TK_NOT)) {
    Node *node = new_node(ND_NOT, op_token);
    node->lhs = parse_cast_expr();
    node->type = new_type_int();
    return node;
  } else if (consume_if(TK_TILDA)) {
    Node *node = new_node(ND_CMP, op_token);
    node->lhs = parse_cast_expr();
    node->type = new_type_int();
    return node;
  } else {
    return parse_postfix_expr();
  }
}

Node *parse_cast_expr() {
  if (peek(TK_OP_PAREN) && is_type_specifier(token->next)) {
    expect(TK_OP_PAREN);
    Token *op_token = token;
    MemberInfo *info = parse_decl(false);
    expect(TK_CL_PAREN);
    Node *node = new_node(ND_CAST, op_token);
    node->type = info->type;
    node->lhs = parse_cast_expr();
    return node;
  }
  return parse_unary_expr();
}

Node *parse_mul_expr() {
  Node *node = parse_cast_expr();
  Node *rhs;

  while (true) {
    Token *op_token = token;
    if (consume_if(TK_MUL)) {
      rhs = parse_cast_expr();
      node = new_node_binary(ND_MUL, node, rhs, op_token);
      continue;
    } else if (consume_if(TK_DIV)) {
      rhs = parse_cast_expr();
      node = new_node_binary(ND_DIV, node, rhs, op_token);
      continue;
    }
    return node;
  }
}

Node *parse_add_expr() {
  Node *node = parse_mul_expr();

  while (true) {
    Token *op_token = token;
    if (consume_if(TK_ADD)) {
      node = new_node_binary(ND_ADD, node, parse_mul_expr(), op_token);
      continue;
    } else if (consume_if(TK_SUB)) {
      node = new_node_binary(ND_SUB, node, parse_mul_expr(), op_token);
      continue;
    }
    return node;
  }
}

Node *parse_shift_expr() {
  Node *node = parse_add_expr();

  while (true) {
    Token *op_token = token;
    if (consume_if(TK_SHR)) {
      node = new_node_binary(ND_SHR, node, parse_add_expr(), op_token);
      continue;
    } else if (consume_if(TK_SHL)) {
      node = new_node_binary(ND_SHL, node, parse_add_expr(), op_token);
      continue;
    }
    return node;
  }
}

Node *parse_rel_expr() {
  Node *node = parse_shift_expr();

  for (;;) {
    Token *op_token = token;
    if (consume_if(TK_GE)) {
      node = new_node_binary(ND_GE, node, parse_shift_expr(), op_token);
      continue;
    } else if (consume_if(TK_GT)) {
      node = new_node_binary(ND_GT, node, parse_shift_expr(), op_token);
      continue;
    } else if (consume_if(TK_LE)) {
      node = new_node_binary(ND_GE, parse_shift_expr(), node, op_token);
      continue;
    } else if (consume_if(TK_LT)) {
      node = new_node_binary(ND_GT, parse_shift_expr(), node, op_token);
      continue;
    }
    return node;
  }
}

Node *parse_eq_expr() {
  Node *node = parse_rel_expr();
  for (;;) {
    Token *op_token = token;
    if (consume_if(TK_EQ)) {
      node = new_node_binary(ND_EQ, node, parse_rel_expr(), op_token);
      continue;
    } else if (consume_if(TK_NEQ)) {
      node = new_node_binary(ND_NEQ, node, parse_rel_expr(), op_token);
      continue;
    }
    return node;
  }
}

Node *parse_and_expr() {
  Node *node = parse_eq_expr();
  for (;;) {
    Token *op_token = token;
    if (consume_if(TK_AND)) {
      node = new_node_binary(ND_AND, node, parse_eq_expr(), op_token);
      continue;
    }
    return node;
  }
}

Node *parse_xor_expr() {
  Node *node = parse_and_expr();
  for (;;) {
    Token *op_token = token;
    if (consume_if(TK_XOR)) {
      node = new_node_binary(ND_XOR, node, parse_and_expr(), op_token);
      continue;
    }
    return node;
  }
}

Node *parse_or_expr() {
  Node *node = parse_xor_expr();
  for (;;) {
    Token *op_token = token;
    if (consume_if(TK_OR)) {
      node = new_node_binary(ND_OR, node, parse_xor_expr(), op_token);
      continue;
    }
    return node;
  }
}

Node *parse_land_expr() {
  Node *node = parse_or_expr();
  for (;;) {
    Token *op_token = token;
    if (consume_if(TK_LAND)) {
      node = new_node_binary(ND_LAND, node, parse_or_expr(), op_token);
      continue;
    }
    return node;
  }
}

Node *parse_lor_expr() {
  Node *node = parse_land_expr();
  for (;;) {
    Token *op_token = token;
    if (consume_if(TK_LOR)) {
      node = new_node_binary(ND_LOR, node, parse_land_expr(), op_token);
      continue;
    }
    return node;
  }
}
Node *parse_assign_expr() {
  Node *node = parse_lor_expr();
  Node *rhs;
  Token *op_token = token;
  if (consume_if(TK_ASSIGN)) {
    rhs = get_ptr_if_array(parse_assign_expr());
  } else if (consume_if(TK_ASSIGN_ADD)) {
    rhs = new_node_binary(ND_ADD, node, parse_assign_expr(), op_token);
  } else if (consume_if(TK_ASSIGN_SUB)) {
    rhs = new_node_binary(ND_SUB, node, parse_assign_expr(), op_token);
  } else if (consume_if(TK_ASSIGN_MUL)) {
    rhs = new_node_binary(ND_MUL, node, parse_assign_expr(), op_token);
  } else if (consume_if(TK_ASSIGN_DIV)) {
    rhs = new_node_binary(ND_DIV, node, parse_assign_expr(), op_token);
  } else
    return node;
  return new_node_expr(ND_ASSIGN, node, rhs, op_token);
}

Node *parse_expr() {
  Node *node = parse_assign_expr();
  return node;
}

Node *parse_for() {
  Token *op_token = token;
  Node *init = NULL;
  Node *cond;
  Node *post;
  Node *body;
  expect(TK_FOR);
  expect(TK_OP_PAREN);
  if (scope) scope->scope_head = true;
  LVar *save_scope = scope;

  if (!consume_if(TK_SEMI)) {
    if (is_type_specifier(token)) {
      init = parse_block_item();
    } else {
      init = parse_expr();
      expect(TK_SEMI);
    }
  }

  if (!peek(TK_SEMI)) {
    cond = parse_expr();
  } else {
    cond = new_node_num(1, token);
  }
  expect(TK_SEMI);
  if (peek(!TK_CL_PAREN))
    post = parse_expr();
  else
    post = NULL;
  expect(TK_CL_PAREN);

  body = parse_stmt();

  scope = save_scope;
  return new_node_for(init, cond, post, body, op_token);
}

Node *parse_stmt() {
  if (consume_if(TK_SEMI)) return NULL;
  Node *node;
  Node *then_;
  Token *op_token = token;
  switch (token->kind) {
    case TK_RETURN:
      expect(TK_RETURN);
      if (consume_if(TK_SEMI))
        return new_node_binary(ND_RETURN, NULL, NULL, op_token);
      else {
        node = parse_expr();
        expect(TK_SEMI);
        return new_node_binary(ND_RETURN, node, NULL, op_token);
      }
    case TK_IF:
      expect(TK_IF);
      expect(TK_OP_PAREN);
      node = parse_expr();
      expect(TK_CL_PAREN);
      then_ = parse_stmt();
      if (consume_if(TK_ELSE))
        return new_node_if_then(node, then_, parse_stmt());
      else
        return new_node_if_then(node, then_, NULL);
    case TK_SWITCH:
      switch_level++;
      expect(TK_SWITCH);
      expect(TK_OP_PAREN);
      node = parse_eq_expr();  // this should be a conditional-expr.
      expect(TK_CL_PAREN);
      then_ = parse_stmt();
      switch_level--;
      return new_node_switch(node, then_, op_token);
    case TK_WHILE:
      expect(TK_WHILE);
      expect(TK_OP_PAREN);
      node = parse_expr();
      expect(TK_CL_PAREN);
      return new_node_while(node, parse_stmt());
    case TK_FOR:
      return parse_for();
    case TK_OP_BRACE:
      return parse_block();
    case TK_BREAK:
      expect(TK_BREAK);
      expect(TK_SEMI);
      return new_node(ND_BREAK, op_token);
    case TK_CONTINUE:
      expect(TK_CONTINUE);
      expect(TK_SEMI);
      return new_node(ND_CONTINUE, op_token);
    case TK_CASE:
      if (switch_level == 0)
        error_at_token(op_token,
                       "a case label may only be used within a switch.");
      expect(TK_CASE);
      node = parse_expr();
      expect(TK_COLON);
      then_ = new_node_block(vec_new());
      while (!peek(TK_CASE) && !peek(TK_DEFAULT) && !peek(TK_CL_BRACE))
        add_stmt_to_block(then_, parse_stmt());
      return new_node_case(node, then_, op_token);
    case TK_DEFAULT:
      if (switch_level == 0)
        error_at_token(op_token,
                       "a default label may only be used within a switch.");
      expect(TK_DEFAULT);
      expect(TK_COLON);
      node = parse_stmt();
      return new_node_default(node, op_token);
  }
  node = parse_expr();
  expect(TK_SEMI);
  return node;
}

Node *parse_local_declaration() {
  MemberInfo *ty_ident = parse_decl(false);
  Token *ident = ty_ident->ident;
  Type *type = ty_ident->type;

  if (!ident) {
    if (!is_struct(type))
      error_at_token(token, "Expected an identifier.");
    else
      return NULL;
  }
  Node *node = NULL;
  if (is_func(type))
    error_at_token(ident, "Functions can be declared only in the top level.");
  Token *op_token = token;
  if (consume_if(TK_ASSIGN)) {
    node = parse_assign_expr();
    if (is_array_of_char(type) && node->kind == ND_STR) {
      type->array_size = node->offset;
    } else {
      node = get_ptr_if_array(node);
    }
    node =
        new_node_expr(ND_ASSIGN, new_node_lvar(new_lvar(ident, type), op_token),
                      node, op_token);
  } else {
    new_lvar(ident, type);
  }
  expect(TK_SEMI);
  return node;
}

Node *parse_block_item() {
  if (consume_if(TK_TYPEDEF)) {
    MemberInfo *ty_ident = parse_decl(true);
    Token *ident = ty_ident->ident;
    Type *type = ty_ident->type;
    if (!ident) error_at_token(token, "Expected identifier.");
    new_typedef(ident, type);
    expect(TK_SEMI);
    return NULL;
  }
  if (is_type_specifier(token)) {
    // local var declaration
    return parse_local_declaration();
  }
  return parse_stmt();
}

Node *parse_block() {
  expect(TK_OP_BRACE);
  Vector *vec = vec_new();
  if (scope) scope->scope_head = true;
  LVar *save_scope = scope;

  while (!peek(TK_CL_BRACE)) {
    Node *node = parse_block_item();
    if (node) vec_push(vec, node);
  }
  expect(TK_CL_BRACE);
  scope = save_scope;

  return new_node_block(vec);
}

MemberInfo *parse_declaretor(Type *type) {
  // declarator
  while (consume_if(TK_MUL)) {
    type = new_type_ptr_to(type);
  }

  Type anchor;
  MemberInfo *outer = NULL;
  Token *ident = NULL;
  // direct-declarator
  if (peek(TK_IDENT)) {
    ident = expect(TK_IDENT);
    if (find_lvar_in_scope(ident))
      error_at_token(ident, "Duplicate definition of local variable.");
  } else if (consume_if(TK_OP_PAREN)) {
    outer = parse_declaretor(&anchor);
    expect(TK_CL_PAREN);
  }
  // direct-declarator [ assignment-expression ]
  Type head;
  head.ptr_to = type;
  Type *cursor = &head;
  while (consume_if(TK_OP_BRACKET)) {
    int size = 0;
    if (!peek(TK_CL_BRACKET))
      // this should be assignment-expression
      size = expect(TK_NUM)->int_val;
    cursor->ptr_to = new_type_array(type, size);
    cursor = cursor->ptr_to;
    expect(TK_CL_BRACKET);
  }
  type = head.ptr_to;

  if (consume_if(TK_OP_PAREN)) {
    type = new_type_func(type);
    MemberInfo head;
    head.next = NULL;
    MemberInfo *cursor = &head;
    while (!peek(TK_CL_PAREN)) {
      if (peek(TK_ELLIPSIS)) {
        consume();
        break;
      }
      MemberInfo *pinfo = parse_decl(false);
      if (is_array(pinfo->type))
        pinfo->type = new_type_ptr_to(pinfo->type->ptr_to);
      cursor->next = pinfo;
      cursor = pinfo;
      if (!consume_if(TK_COMMA)) break;
    }
    type->params = head.next;
    expect(TK_CL_PAREN);
  }

  if (outer) {
    Type *cursor = outer->type;
    while (cursor->ptr_to != &anchor) cursor = cursor->ptr_to;
    cursor->ptr_to = type;
    type = outer->type;
    ident = outer->ident;
  }

  return new_member_info(ident, type);
}

Type *parse_enum_specifier() {
  Type *type = new_type_enum();
  if (peek(TK_IDENT)) type->tag_name = consume_ident();
  MemberInfo head;
  head.next = NULL;
  MemberInfo *cursor = &head;
  if (consume_if(TK_OP_BRACE)) {
    int i = 0;
    while (!peek(TK_CL_BRACE)) {
      Type *new = new_type_enum_el(i++);
      new->tag_name = consume_ident();
      cursor->next = new_member_info(new->tag_name, new);
      cursor = cursor->next;
      new_tag(new->tag_name, new);
      if (!consume_if(TK_COMMA)) break;
    }
    expect(TK_CL_BRACE);
  }
  type->member = head.next;
  new_tag(type->tag_name, type);
  return type;
}

Type *parse_struct_specifier(bool allow_undefined_tag) {
  Type *struct_ty = new_type_struct();
  // struct-or-union-specifier
  TagName *tag = NULL;
  // tag_name: Token of tag-name
  Token *tag_name = NULL;
  if (peek(TK_IDENT)) tag_name = consume();
  if (consume_if(TK_OP_BRACE)) {
    // struct-declaration-list
    if (find_tag(tag_name))
      error_at_token(tag_name, "Duplicate definition of a tag name.");
    tag = new_tag(tag_name, struct_ty);
    // struct-specifier
    MemberInfo head;
    head.next = NULL;
    MemberInfo *cursor = &head;
    int offset = 0;
    while (!consume_if(TK_CL_BRACE)) {
      // struct-declaration
      MemberInfo *ty_ident = parse_decl(false);
      Token *ident = ty_ident->ident;
      Type *type = ty_ident->type;
      if (!ident) error_at_token(token, "Missing Identifier.");
      // check duplicate member definition
      MemberInfo *ty = head.next;
      while (ty) {
        if (cmp_token(ty->ident, ident))
          error_at_token(ident, "Duplicate member.");
        ty = ty->next;
      }

      int align = alignof_type(type);
      offset = align_to(offset, align);
      ty_ident->offset = offset;
      offset += sizeof_type(type);
      cursor->next = ty_ident;
      cursor = ty_ident;
      expect(TK_SEMI);
    }
    struct_ty->member = head.next;
    if (tag) tag->type = struct_ty;
    return struct_ty;
  } else {
    if (!tag_name)
      error_at_token(token, "Expected either of a tag name  or a definition.");
    tag = find_tag(tag_name);
    if (!tag) {
      if (allow_undefined_tag) {
        struct_ty->tag_name = tag_name;
      } else
        error_at_token(tag_name, "Tag name is not defined.");
    } else {
      struct_ty = tag->type;
    }
    return struct_ty;
  }
}

Type *parse_type_specifier(bool allow_undefined_tag) {
  Token *token = consume();
  Type *ty;
  switch (token->kind) {
    case TK_INT:
      return new_type_int();
    case TK_CHAR:
      return new_type_char();
    case TK_BOOL:
      return new_type_bool();
    case TK_VOID:
      return new_type_void();
    case TK_STRUCT:
      return parse_struct_specifier(allow_undefined_tag);
    case TK_ENUM:
      return parse_enum_specifier();
    case TK_IDENT:
      // typedef-name
      ty = find_typedef(token);
      if (ty) return ty;
  }

  error_at_token(token, "Expected type specifier or typedef name.");
}

MemberInfo *parse_decl(bool allow_undefined_tag) {
  // declaration-specifiers
  if (!is_type_specifier(token))
    error_at_token(token, "Expected type specifier or typedef name.");

  Type *type = parse_type_specifier(allow_undefined_tag);
  return parse_declaretor(type);
}

Node *parse_func_definition(MemberInfo *ty_ident) {
  Node *decl;
  Token *ident = ty_ident->ident;
  Type *type = ty_ident->type;
  Global *func = new_func(ident, type, NULL);
  // function definition
  Vector *params = vec_new();
  MemberInfo *cursor = type->params;
  while (cursor) {
    vec_push(params, new_node_lvar(new_lvar(cursor->ident, cursor->type),
                                   cursor->ident));
    cursor = cursor->next;
  }
  Node *body = parse_block();
  int max_offset = 0;
  if (locals) max_offset = locals->offset;
  decl = new_node_fdecl(ident, params, max_offset, body, type);
  func->body = decl;
  return decl;
}

Node *parse_initializer_list() {
  Token *op_token = token;
  if (consume_if(TK_OP_BRACE)) {
    Vector *vec = vec_new();
    while (!peek(TK_CL_BRACE)) {
      vec_push(vec, parse_initializer_list());
      if (!consume_if(TK_COMMA)) break;
    }
    expect(TK_CL_BRACE);
    Node *node = new_node(ND_INIT, op_token);
    node->nodes = vec;
    return node;
  } else {
    Node *node = parse_assign_expr();
    return node;
  }
}

void parse_program() {
  ext_declarations = vec_new();
  while (!at_eof()) {
    locals = NULL;
    scope = NULL;
    switch_level = 0;
    Node *decl;
    if (consume_if(TK_MACRO)) continue;
    if (consume_if(TK_TYPEDEF)) {
      MemberInfo *ty_ident = parse_decl(true);
      if (!ty_ident->ident) error_at_token(token, "Expected identifier.");
      new_typedef(ty_ident->ident, ty_ident->type);
      expect(TK_SEMI);
      continue;
    }
    bool is_extern = false;
    if (consume_if(TK_EXTERN)) {
      is_extern = true;
    }
    MemberInfo *ty_ident = parse_decl(false);
    Token *ident = ty_ident->ident;
    Type *type = ty_ident->type;
    if (!ident) {
      if (is_struct(type) || is_enum(type)) {
        // struct XXX { ... };
        expect(TK_SEMI);
        continue;
      } else
        // error for "int;"
        error_at_token(token, "Expected an identifier.");
    }

    if (!is_func(type)) {
      // gloval var declaration
      Token *op_token = token;
      Global *gvar = find_gvar(ident);
      if (gvar) {
        if (gvar->body)
          error_at_token(ident, "Reinitialization of global variable.");
        if (!is_identical_type(gvar->type, type))
          error_at_token(ident, "Conflicting types.");
      } else
        gvar = new_gvar(ident, type);
      gvar->is_extern = is_extern;
      if (consume_if(TK_ASSIGN)) {
        if (is_extern)
          error_at_token(op_token,
                         "Can not initialize variables with 'extern'.");
        if (peek(TK_OP_BRACE)) {
          gvar->body = parse_initializer_list();
        } else
          gvar->body = parse_assign_expr();
      }
      if (is_array_of_char(gvar->type)) {
        if (!gvar->body) {
          // char s[];
          if (gvar->type->array_size == 0)
            error_at_token(gvar->token, "Incomplete type is not allowed.");
        } else if (gvar->body->kind == ND_STR) {
          // char s[] = "...";
          if (gvar->type->array_size == 0)
            gvar->type->array_size = gvar->body->offset;
        } else
          error_at_node(gvar->body, "Unsupported initializer.");
      }
      expect(TK_SEMI);
      continue;
    } else if (consume_if(TK_SEMI)) {
      // function declaration
      Global *func = new_func(ident, type, NULL);
      continue;
    } else if (peek(TK_OP_BRACE)) {
      // function definition

      decl = parse_func_definition(ty_ident);
      fprintf(output, "// ");
      print_node(decl);
      fprintf(output, "\n");
      print_locals();
      vec_push(ext_declarations, decl);
    } else
      error_at_token(token, "U6nexpected token.");
  }
}

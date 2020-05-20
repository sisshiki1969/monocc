#include "monocc.h"

// Globals

int label_count = 0;
bool verbose;

char reg_rax[4][4] = {"rax", "eax", "ax", "al"};
char reg_rdi[4][4] = {"rdi", "edi", "di", "dil"};

// Loop

typedef struct Loop Loop;

struct Loop {
  Loop *next;
  char *continue_dest;
  char *break_dest;
  /// Link to switch node.
  Node *node;
};

Node *current_fn;

Loop *labels = NULL;

// Methods for handling Node.

bool is_binary_op(NodeKind kind) {
  switch (kind) {
    case ND_ADD:
    case ND_SUB:
    case ND_MUL:
    case ND_DIV:
    case ND_EQ:
    case ND_NEQ:
    case ND_GE:
    case ND_GT:
    case ND_LAND:
    case ND_LOR:
    case ND_AND:
    case ND_OR:
    case ND_XOR:
    case ND_SHR:
    case ND_SHL:
      return true;
  }
  return false;
}

bool is_expr(NodeKind kind) {
  switch (kind) {
    case ND_IF:
    case ND_WHILE:
    case ND_BLOCK:
    case ND_FOR:
    case ND_SWITCH:
    case ND_CASE:
    case ND_DEFAULT:
    case ND_BREAK:
    case ND_CONTINUE:
    case ND_RETURN:
    case ND_FDECL:
      return false;
  }
  return true;
}

/// Generate a new label as a string.
char *new_label() {
  char *label = (char *)malloc(10);
  if (!label) error("Could not allocate memmory.");
  sprintf(label, ".L%06d", label_count++);
  return label;
}

/// Emit assembly for label.
void emit_label(char *label) { fprintf(output, "%s:\n", label); }
void emit_jmp(char *label) { fprintf(output, "\tjmp  %s\n", label); }

void emit_return_label(Node *fn) {
  fprintf(output, ".L.return.%.*s:\n", fn->token->len, fn->token->str);
}
void emit_return(Node *fn) {
  fprintf(output, "\tjmp  .L.return.%.*s\n", fn->token->len, fn->token->str);
}

void push_loop() {
  char *continue_label = new_label();
  char *break_label = new_label();
  Loop *label = (Loop *)calloc(1, sizeof(Loop));
  label->break_dest = break_label;
  label->continue_dest = continue_label;
  label->next = labels;
  labels = label;
}

void push_loop_switch(Node *node) {
  char *break_label = new_label();
  Loop *label = (Loop *)calloc(1, sizeof(Loop));
  label->break_dest = break_label;
  label->continue_dest = NULL;
  label->node = node;
  label->next = labels;
  labels = label;
}

void pop_loop() { labels = labels->next; }

char *get_continue(Token *token) {
  if (!labels)
    error_at_token(token,
                   "a continue statement may only be used within a loop.");
  return labels->continue_dest;
}

char *get_break(Token *token) {
  if (!labels)
    error_at_token(
        token, "a break statement may only be used within a loop or switch.");
  return labels->break_dest;
}

Node *get_inner_switch() {
  Loop *cursor = labels;
  while (cursor && !cursor->node) cursor = cursor->next;
  if (!cursor) error("get_inner_switch(): Internal error.");
  return cursor->node;
}

/// Calculate required register size.
int reg_size(Type *type) {
  int data_size = sizeof_type(type);
  if (data_size == 8)
    return 0;
  else if (data_size == 4)
    return 1;
  else if (data_size == 2)
    return 2;
  else if (data_size == 1)
    return 3;
  else
    error("Internal error in reg_size(): Illegal data size (%d bytes).",
          data_size);
}

/// rax <- [rax]
void load(Node *node) {
  Type *ty = type(node);
  switch (reg_size(ty)) {
    case 0:
      fprintf(output, "\tmov  rax, [rax]\n");
      break;
    case 1:
      fprintf(output, "\tmov  eax, [rax]\n");
      break;
    case 2:
      if (is_signed(ty)) {
        fprintf(output, "\tmovsx  eax, WORD PTR [rax]\n");
      } else {
        fprintf(output, "\tmovzx  eax, WORD PTR [rax]\n");
      }
      break;
    case 3:
      if (is_signed(ty)) {
        fprintf(output, "\tmovsx eax, BYTE PTR [rax]\n");
      } else {
        fprintf(output, "\tmovzx eax, BYTE PTR [rax]\n");
      }
      break;
    default:
      error_at_node(node, "Size of the variable is unknown.");
  }
  fprintf(output, "\tpush rax\n");
}

void cast(Type *ty_from, Type *ty_to) {
  // if (!is_arith(ty_from) || !is_arith(ty_to)) return;
  int sz_from = reg_size(ty_from);
  int sz_to = reg_size(ty_to);
  if (sz_from <= sz_to) {
    return;
  }
  char *mnemonic;
  if (is_signed(ty_to)) {
    mnemonic = "movsx";
  } else {
    mnemonic = "movzx";
  };
  switch (reg_size(ty_from)) {
    case 0:
      break;
    case 1:
      fprintf(output, "\tpop  rax\n");
      if (is_signed(ty_to)) {
        fprintf(output, "\tmovsx rax, eax\n");
      } else {
        fprintf(output, "\tmov  eax, eax\n");
      }
      fprintf(output, "\tpush rax\n");
      break;
    case 2:
    case 3:
      fprintf(output, "\tpop  rax\n");
      fprintf(output, "\t%s rax, %s\n", mnemonic, reg_rax[reg_size(ty_from)]);
      fprintf(output, "\tpush rax\n");
      break;
    default:
      break;
  }
}

/// Push address of local var.
/// using reg: none.
void emit_lvar_addr(LVar *lvar) {
  fprintf(output, "\tlea  rax, [rbp - %d]\n", lvar->offset);
}

/// Generate address.
/// using reg: none.
void gen_addr_to_rax(Node *node) {
  if (node->kind == ND_LVAR) {
    emit_lvar_addr(node->lvar);
    return;
  } else if (node->kind == ND_GVAR) {
    fprintf(output, "\tlea  rax, %.*s[rip]\n", node->token->len,
            node->token->str);
    return;
  } else if (node->kind == ND_DEREF) {
    gen(node->lhs);
    fprintf(output, "\tpop  rax\n");
  } else if (node->kind == ND_STR) {
    fprintf(output, "\tlea  rax, .LS%06d[rip]\n", node->str_id);
    return;
  } else if (node->kind == ND_MEMBER) {
    gen_addr_to_rax(node->lhs);
    fprintf(output, "\tadd  rax, %d\n", node->offset);
  } else {
    error_at_node(node, "Can not get address.");
  }
}

void gen_addr(Node *node) {
  gen_addr_to_rax(node);
  fprintf(output, "\tpush rax\n");
}

/// Pop val from stack,
/// and store val to [rax].
/// If ty is struct, do memcpy.
/// Type *ty: Type of [rax].
void store(Type *ty) {
  if (is_struct(ty)) {
    fprintf(output, "\tpop  rsi\n");

    int size = sizeof_type(ty);
    int i = 0;
    while (i <= size - 8) {
      fprintf(output, "\tmov  rdi, QWORD PTR [rsi + %d]\n", i);
      fprintf(output, "\tmov  QWORD PTR [rax + %d], rdi\n", i);
      i += 8;
    }
    while (i < size) {
      fprintf(output, "\tmov  dil, BYTE PTR [rsi + %d]\n", i);
      fprintf(output, "\tmov  BYTE PTR [rax + %d], dil\n", i);
      i++;
    }
    fprintf(output, "\tpush rax\n");
  } else {
    fprintf(output, "\tpop  rdi\n");
    fprintf(output, "\tmov  [rax], %s\n", reg_rdi[reg_size(ty)]);
    fprintf(output, "\tpush rdi\n");
  }
}

// Codegen

void gen_if(Node *node) {
  char *else_str = new_label();
  char *end_str = new_label();
  gen(node->lhs);
  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  rax, 0\n");
  fprintf(output, "\tje   %s\n", else_str);
  gen_stmt(node->rhs);
  emit_jmp(end_str);
  emit_label(else_str);
  gen_stmt(node->xhs);
  emit_label(end_str);
}

void gen_while(Node *node) {
  push_loop();
  char *cond_str = get_continue(node->token);
  char *end_str = get_break(node->token);
  emit_label(cond_str);
  gen(node->lhs);
  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  rax, 0\n");
  fprintf(output, "\tje   %s\n", end_str);
  gen_stmt(node->rhs);
  emit_jmp(cond_str);
  emit_label(end_str);
  pop_loop();
}

void gen_for(Node *node) {
  push_loop();
  char *loop_label = new_label();
  char *post_label = get_continue(node->token);
  char *end_label = get_break(node->token);
  gen(node->lhs);
  emit_label(loop_label);
  gen(node->rhs);
  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  rax, 0\n");
  fprintf(output, "\tje   %s\n", end_label);
  gen_stmt(node->nodes->data[0]);
  emit_label(post_label);
  gen(node->xhs);
  if (node->xhs) fprintf(output, "\tpop  rax\n");
  emit_jmp(loop_label);
  emit_label(end_label);
  pop_loop();
}

void gen_block(Node *node) {
  if (!node) return;
  Vector *vec = node->nodes;
  int len = vec_len(vec);
  for (int i = 0; i < len; i++) gen_stmt(vec->data[i]);
}

void builtin_va_start(Node *node) {
  // void va_start(va_list ap, parmN);
  // typedef struct {
  //  int gp_offset;
  //  int fp_offset;
  //  void *overflow_arg_area;
  //  void *reg_save_area;
  //} va_list[1];
  int gp = vec_len(node->nodes);
  int fp = 0;
  // rdi = ap
  // ap->gp_offset = gp * 8
  fprintf(output, "\tmov  DWORD PTR [rdi], %d\n", gp * 8);
  // ap->fp_offset = 48 + fp * 8
  fprintf(output, "\tmov  DWORD PTR [rdi + 4], %d\n", 48 + fp * 8);
  // ap->reg_save_area = rbp - 128 (address for first arg(rdi))
  fprintf(output, "\tmov  [rdi + 16], rbp\n");
  fprintf(output, "\tsub  QWORD PTR [rdi + 16], 128\n");
  // this is dummy.
  fprintf(output, "\tpush rax\n");
  return;
}

void gen_call(Node *node) {
  // function call
  // kind: ND_CALL
  // lhs: callee (ND_IDENT)
  // nodes: vector of arguments
  // token: Token *token
  // type: return type of callee
  // TODO: Currently, only ND_IDENT is allowed as a callee.
  int len = vec_len(node->nodes);
  Node **args = node->nodes->data;
  for (int i = len - 1; i >= 0; i--) {
    gen(args[i]);
  }
  for (int i = 0; i < len; i++) {
    fprintf(output, "\tpop  %s\n", registers[0][i]);
  }
  Token *name;
  if (node->lhs->kind == ND_IDENT) {
    name = node->lhs->token;
    if (cmp_token_str(name, "__builtin_va_start")) {
      builtin_va_start(node);
      return;
    }
  } else {
    error_at_node(node->lhs, "Currently, callee must be function designator.");
  }

  char *label1 = new_label();
  char *label2 = new_label();
  fprintf(output, "\tmov  rax, rsp\n");
  fprintf(output, "\tand  rax, 15\n");
  fprintf(output, "\tjnz  %s\n", label1);
  fprintf(output, "\tmov  rax, 0\n");
  fprintf(output, "\tcall %.*s\n", name->len, name->str);
  emit_jmp(label2);

  emit_label(label1);
  fprintf(output, "\tsub  rsp, 8\n");
  fprintf(output, "\tmov  rax, 0\n");
  fprintf(output, "\tcall %.*s\n", name->len, name->str);
  fprintf(output, "\tadd  rsp, 8\n");

  emit_label(label2);
  fprintf(output, "\tpush rax\n");
}

void gen_fdecl(Node *node) {
  if (!node->lhs) return;
  current_fn = node;

  fprintf(output, "%.*s:\n", node->token->len, node->token->str);
  // Prologue
  fprintf(output, "\tpush rbp\n");
  fprintf(output, "\tmov  rbp, rsp\n");
  int offset = ((node->offset - 1) & (-16)) + 16;
  fprintf(output, "\tsub  rsp, %d\n", offset);
  fprintf(output, "\tmov  [rbp -  8], r12\n");
  fprintf(output, "\tmov  [rbp - 16], r13\n");
  fprintf(output, "\tmov  [rbp - 24], r14\n");
  fprintf(output, "\tmov  [rbp - 32], r15\n");

  if (node->type->variadic) {
    fprintf(output, "\tmov  [rbp - 128], rdi\n");
    fprintf(output, "\tmov  [rbp - 120], rsi\n");
    fprintf(output, "\tmov  [rbp - 112], rdx\n");
    fprintf(output, "\tmov  [rbp - 104], rcx\n");
    fprintf(output, "\tmov  [rbp -  96], r8\n");
    fprintf(output, "\tmov  [rbp -  88], r9\n");
  }

  int len = vec_len(node->nodes);
  Node **params = node->nodes->data;
  for (int i = 0; i < len; i++) {
    fprintf(output, "\tmov  [rbp - %d], %s\n", params[i]->lvar->offset,
            registers[reg_size(type(params[i]))][i]);
  }

  gen_block(node->lhs);

  // Epilogue
  emit_return_label(node);
  fprintf(output, "\tmov  r12, [rbp -  8]\n");
  fprintf(output, "\tmov  r13, [rbp - 16]\n");
  fprintf(output, "\tmov  r14, [rbp - 24]\n");
  fprintf(output, "\tmov  r15, [rbp - 32]\n");
  fprintf(output, "\tmov  rsp, rbp\n");
  fprintf(output, "\tpop  rbp\n");
  fprintf(output, "\tret\n");
}

void gen_stmt(Node *node) {
  if (node) {
    gen(node);
    if (is_expr(node->kind)) fprintf(output, "\tpop  rax\n");
  }
}

void gen_land(Node *node) {
  Type *l_ty = type(node->lhs);
  Type *r_ty = type(node->rhs);
  int reg_mode;
  char *false_label = new_label();
  char *exit_label = new_label();
  gen(node->lhs);

  if (is_arith(l_ty)) {
    reg_mode = 1;
  } else if (is_ptr(l_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_rax[reg_mode]);
  fprintf(output, "\tje   %s\n", false_label);

  gen(node->rhs);

  if (is_arith(r_ty)) {
    reg_mode = 1;
  } else if (is_ptr(r_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_rax[reg_mode]);
  fprintf(output, "\tje   %s\n", false_label);

  fprintf(output, "\tmov  rax, 1\n");
  emit_jmp(exit_label);

  emit_label(false_label);
  fprintf(output, "\tmov  rax, 0\n");
  emit_label(exit_label);
}

void gen_lor(Node *node) {
  Type *l_ty = type(node->lhs);
  Type *r_ty = type(node->rhs);
  int reg_mode;
  char *true_label = new_label();
  char *exit_label = new_label();
  gen(node->lhs);

  if (is_arith(l_ty)) {
    reg_mode = 1;
  } else if (is_ptr(l_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_rax[reg_mode]);
  fprintf(output, "\tjne  %s\n", true_label);

  gen(node->rhs);

  if (is_arith(r_ty)) {
    reg_mode = 1;
  } else if (is_ptr(r_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_rax[reg_mode]);
  fprintf(output, "\tjne  %s\n", true_label);

  fprintf(output, "\tmov  rax, 0\n");
  emit_jmp(exit_label);

  emit_label(true_label);
  fprintf(output, "\tmov  rax, 1\n");
  emit_label(exit_label);
}

void gen_lnot(Node *node) {
  Type *l_ty = type(node->lhs);
  int reg_mode;
  char *false_label = new_label();
  char *exit_label = new_label();
  gen(node->lhs);

  if (is_arith(l_ty)) {
    reg_mode = 1;
  } else if (is_ptr(l_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_rax[reg_mode]);
  fprintf(output, "\tjne  %s\n", false_label);

  fprintf(output, "\tmov  rax, 1\n");
  emit_jmp(exit_label);

  emit_label(false_label);
  fprintf(output, "\tmov  rax, 0\n");
  emit_label(exit_label);
}

void gen_init(Type *l_ty, Node *node) { fprintf(output, "\tpush 0\n"); }

// Local var initializer.
void gen_initialize(Type *l_ty, int offset, Node *rhs) {
  if (is_array(l_ty) && is_array(type(rhs))) {
    Vector *vec = rhs->nodes;
    Type *ty = l_ty->ptr_to;
    int size = l_ty->array_size;
    for (int i = 0; i < vec_len(vec); i++) {
      if (size <= i) break;
      if (vec->data[i]->kind == ND_INIT) {
        gen_initialize(ty, offset, vec->data[i]);
      } else {
        gen(vec->data[i]);
        fprintf(output, "\tlea  rax, [rbp - %d]\n", offset);
        store(ty);
      }
      offset -= sizeof_type(ty);
    }
  } else if (is_struct(l_ty) && is_struct(type(rhs))) {
    Vector *vec = rhs->nodes;
    MemberInfo *member = l_ty->member;
    for (int i = 0; i < vec_len(vec); i++) {
      if (vec->data[i]->kind == ND_INIT) {
        gen_initialize(member->type, offset - member->offset, vec->data[i]);
      } else {
        gen(vec->data[i]);
        fprintf(output, "\tlea  rax, [rbp - %d]\n", offset - member->offset);
        store(member->type);
      }
      member = member->next;
    }
  } else {
    error_at_node(rhs, "Unsupported initializer.");
  }
}

void gen_assign(Node *lhs, Node *rhs) {
  Type *l_ty = type(lhs);

  if (rhs->kind == ND_INIT) {
    if (lhs->kind != ND_LVAR) error_at_node(rhs, "Unsupported initializer.");
    gen_initialize(l_ty, lhs->lvar->offset, rhs);
    return;
  }

  Type *r_ty = type(rhs);
  if (is_array_of_char(l_ty) && is_array_of_char(r_ty)) {
    // initialization of char[] by string
    if (lhs->kind != ND_LVAR || rhs->kind != ND_STR)
      error_at_node(lhs, "Invalid assignment.");
    int offset = lhs->lvar->offset;
    char *p = rhs->label;
    int len = strlen(p);

    while (len >= 4) {
      int data = 0;
      for (int i = 0; i < 4; i++) {
        data += *p << (8 * i);
        p++;
      }
      fprintf(output, "\tmov  DWORD PTR [rbp - %d], %d\n", offset, data);
      offset -= 4;
      len -= 4;
    }

    while (len >= 0) {
      fprintf(output, "\tmov  BYTE PTR [rbp - %d], %d\n", offset--, *p++);
      len--;
    }
    fprintf(output, "\tpush rdi\n");
    return;
  }

  if (!is_assignable_type(l_ty, r_ty)) {
    error_types(l_ty, r_ty);
    error_at_node(lhs, "Type mismatch in assignment operation.");
  }

  gen(rhs);
  gen_addr_to_rax(lhs);
  store(l_ty);
}

void gen(Node *node) {
  if (!node) return;
  if (verbose) {
    int line = get_line(node->token->str, source_text);
    int file_no = get_file_no(node->token->str);
    fprintf(output, "// Line %d ", line);
    print_node(node);
    fprintf(output, "\n");
    fprintf(output, "\t.loc %d %d\n", file_no, line);
  }

  if (is_binary_op(node->kind)) {
    Type *l_ty = type(node->lhs);
    Type *r_ty = type(node->rhs);
    int reg_mode;
    if (node->kind == ND_LAND) {
      gen_land(node);
      fprintf(output, "\tpush  rax\n");
      return;
    }
    if (node->kind == ND_LOR) {
      gen_lor(node);
      fprintf(output, "\tpush  rax\n");
      return;
    }
    gen(node->lhs);
    gen(node->rhs);

    fprintf(output, "\tpop  rdi\n");
    fprintf(output, "\tpop  rax\n");
    char *cmp_op;

    switch (node->kind) {
      case ND_ADD:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\tadd  rax, rdi\n");
        } else if (is_ptr(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\timul rdi, %d\n", sizeof_type(l_ty->ptr_to));
          fprintf(output, "\tadd  rax, rdi\n");
        } else if (is_arith(l_ty) && is_ptr(r_ty)) {
          fprintf(output, "\timul rax, %d\n", sizeof_type(r_ty->ptr_to));
          fprintf(output, "\tadd  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Type mismatch)");
        break;
      case ND_SUB:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\tsub  rax, rdi\n");
        } else if (is_ptr(l_ty) && is_ptr(r_ty)) {
          fprintf(output, "\tsub  rax, rdi\n");
          fprintf(output, "\tcqo\n");
          fprintf(output, "\tmov  rdi, %d\n", sizeof_type(l_ty->ptr_to));
          fprintf(output, "\tidiv rdi\n");
        } else if (is_ptr(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\timul rdi, %d\n", sizeof_type(l_ty->ptr_to));
          fprintf(output, "\tsub  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Type mismatch)");
        break;
      case ND_MUL:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\timul rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_DIV:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\tcqo\n");
          fprintf(output, "\tidiv rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_AND:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\tand  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_OR:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\tor   rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_XOR:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\txor  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_SHR:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\tmov  cl , dil\n");
          fprintf(output, "\tshr  rax, cl\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_SHL:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          fprintf(output, "\tmov  cl , dil\n");
          fprintf(output, "\tshl  rax, cl\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;

      case ND_EQ:
      case ND_NEQ:
      case ND_GE:
      case ND_GT:
        if (is_arith(l_ty) && is_arith(r_ty)) {
          reg_mode = 1;
        } else if (is_ptr(l_ty) && is_ptr(r_ty)) {
          reg_mode = 0;
        } else
          error_at_node(node, "Illegal operation. (Type mismatch)");
        switch (node->kind) {
          case ND_EQ:
            cmp_op = "e";
            break;
          case ND_NEQ:
            cmp_op = "ne";
            break;
          case ND_GE:
            cmp_op = "ge";
            break;
          case ND_GT:
            cmp_op = "g";
            break;
        }
        fprintf(output, "\tcmp  %s, %s\n", reg_rax[reg_mode],
                reg_rdi[reg_mode]);
        fprintf(output, "\tset%s al\n", cmp_op);
        fprintf(output, "\tmovzb %s, al\n", reg_rax[reg_mode]);
        break;
      default:
        error_at_token(node->token, "gen(): Unimplemented binary op.");
    }
    fprintf(output, "\tpush rax\n");
    return;
  }
  char *label;
  Node *parent;
  switch (node->kind) {
    // statement
    case ND_IF:
      gen_if(node);
      return;
    case ND_WHILE:
      gen_while(node);
      return;
    case ND_FOR:
      gen_for(node);
      return;
    case ND_SWITCH:
      push_loop_switch(node);
      // evaluate const-expr and save as a local var.
      emit_lvar_addr(node->lvar);
      fprintf(output, "\tpush rax\n");
      gen(node->lhs);
      fprintf(output, "\tpop  rdi\n");
      fprintf(output, "\tpop  rax\n");
      fprintf(output, "\tmov  [rax], edi\n");
      gen_stmt(node->rhs);
      emit_jmp(get_break(NULL));
      for (int i = 0; i < vec_len(node->nodes); i++) {
        Node *parent = node->nodes->data[i];
        emit_label(parent->label);
        gen_stmt(parent);
      }
      emit_label(get_break(NULL));
      pop_loop();
      return;
    case ND_BLOCK:
      gen_block(node);
      return;
    case ND_RETURN:
      // TODO: return without expression returns undefined value.
      if (node->lhs) {
        gen(node->lhs);
        fprintf(output, "\tpop  rax\n");
      }
      emit_return(current_fn);
      return;
    case ND_CASE:
      parent = get_inner_switch();
      gen(node->lhs);
      emit_lvar_addr(parent->lvar);
      fprintf(output, "\tmov  eax, [rax]\n");
      fprintf(output, "\tpop  rdi\n");
      fprintf(output, "\tcmp  eax, edi\n");
      label = new_label();
      fprintf(output, "\tje   %s\n", label);
      node->rhs->label = label;
      vec_push(parent->nodes, node->rhs);
      return;
    case ND_DEFAULT:
      label = new_label();
      emit_jmp(label);
      node->lhs->label = label;
      vec_push(parent->nodes, node->lhs);
      return;
    case ND_BREAK:
      emit_jmp(get_break(node->token));
      return;
    case ND_CONTINUE:
      emit_jmp(get_continue(node->token));
      return;

    // expression
    case ND_NUM:
      fprintf(output, "\tpush %ld\n", node->num_val);
      return;
    case ND_LVAR:
    case ND_GVAR:
    case ND_MEMBER:
      if (is_struct(type(node))) {
        gen_addr(node);
      } else {
        gen_addr_to_rax(node);
        load(node);
      }
      return;
    case ND_ADDR:
      gen_addr(node->lhs);
      return;
    case ND_DEREF:
      if (!is_ptr(type(node->lhs)))
        error_at_node(node->lhs,
                      "Illegal operation. (dereference of non-pointer type)");
      gen(node->lhs);
      if (!is_struct(type(node))) {
        fprintf(output, "\tpop  rax\n");
        load(node);
      }
      return;
    case ND_CAST:
      gen(node->lhs);
      cast(type(node->lhs), type(node));
      return;
    case ND_ASSIGN:
      gen_assign(node->lhs, node->rhs);
      return;
    case ND_CALL:
      gen_call(node);
      return;
    case ND_FDECL:
      gen_fdecl(node);
      return;

    case ND_STR:
      gen_addr(node);
      return;
    case ND_NOT:
      gen_lnot(node);
      fprintf(output, "\tpush rax\n");
      return;
    case ND_CMP:
      gen(node->lhs);
      fprintf(output, "\tpop  rax\n");
      fprintf(output, "\tnot  rax\n");
      fprintf(output, "\tpush rax\n");
      return;
  }
  error_at_token(node->token, "gen(): Unimplemented NodeKind.");
}

void emit_basic_global(Type *type, Node *init) {
  if (!init) {
    // char str[];  => incomplete type
    if (is_array(type) && type->array_size == 0)
      error_at_token(init->token, "Incomplete type is not allowed.");
    fprintf(output, "\t.zero %d\n", sizeof_type(type));
    return;
  }
  long i = 0;
  Vector *vec;
  MemberInfo *member;
  int offset = 0;
  switch (type->ty) {
    case CHAR:
      if (init->kind != ND_NUM)
        error_at_node(init,
                      "Calculation in an initializer is not supported yet.");
      fprintf(output, "\t.byte %ld\n", init->num_val);
      return;
    case SHORT:
    case USHORT:
      if (init->kind != ND_NUM)
        error_at_node(init,
                      "Calculation in an initializer is not supported yet.");
      fprintf(output, "\t.word %ld\n", init->num_val);
      return;
    case INT:
    case UINT:
      if (init->kind != ND_NUM)
        error_at_node(init,
                      "Calculation in an initializer is not supported yet.");
      fprintf(output, "\t.long %ld\n", init->num_val);
      return;
    case LONG:
    case ULONG:
      if (init->kind != ND_NUM)
        error_at_node(init,
                      "Calculation in an initializer is not supported yet.");
      fprintf(output, "\t.quad %ld\n", init->num_val);
      return;
    case ARRAY:
      if (type->ptr_to->ty == CHAR) {
        if (init->kind == ND_STR) {
          // char str[] = "sample";
          int str_size = 1;
          fprintf(output, "\t.string \"");
          for (Token *t = init->token; t; t = t->next) {
            fprintf(output, "%.*s", t->len, t->str);
            str_size += t->len;
          }
          fprintf(output, "\"\n");
          int ary_size = type->array_size;
          if (ary_size > str_size)
            fprintf(output, "\t.zero %d\n", ary_size - str_size);
          return;
        }
      }
      if (init->kind != ND_INIT)
        error_at_node(init, "Unsupported initializer.");
      vec = init->nodes;
      type = type->ptr_to;
      for (int i = 0; i < vec_len(vec); i++) {
        emit_basic_global(type, vec->data[i]);
      }
      return;
    case STRUCT:
      if (init->kind != ND_INIT)
        error_at_node(init, "Unsupported initializer.");
      vec = init->nodes;
      member = type->member;
      for (int i = 0; i < vec_len(vec); i++) {
        if (member->offset > offset) {
          fprintf(output, "\t.zero %d\n", member->offset - offset);
          offset = member->offset;
        }
        emit_basic_global(member->type, vec->data[i]);
        offset += sizeof_type(member->type);
        member = member->next;
      }
      if (sizeof_type(type) > offset) {
        fprintf(output, "\t.zero %d\n", sizeof_type(type) - offset);
      }
      return;
    default:
      if (is_ptr_to_char(type)) {
        // char *str = "sample";
        if (init->kind == ND_STR)
          fprintf(output, "\t.quad .LS%06d\n", init->str_id);
        else
          error_at_node(init, "Unsupported initializer.");
      } else {
        fprintf(output, "\t.zero %d\n", sizeof_type(type));
      }
  }
}

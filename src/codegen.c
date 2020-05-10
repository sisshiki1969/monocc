#include "monocc.h"

// Globals

int label_count = 0;
bool verbose;

// Loop

typedef struct Loop Loop;

struct Loop {
  Loop *next;
  char *continue_dest;
  char *break_dest;
  /// Link to switch node.
  Node *node;
};

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
  else if (data_size == 1)
    return 3;
  else
    error("Internal error in reg_size(): Illegal data size (%d bytes).",
          data_size);
}

/// Load [RAX] to RAX.(size sensitive)
/// using reg: none.
void emit_deref_rax(Node *node) {
  switch (reg_size(type(node))) {
    case 0:
      fprintf(output, "\tmov  rax, [rax]\n");
      break;
    case 1:
      fprintf(output, "\tmov  eax, [rax]\n");
      break;
    case 3:
      fprintf(output, "\tmovsx eax, BYTE PTR [rax]\n");
      break;
    default:
      error_at_node(node, "Size of the variable is unknown.");
  }
}

/// Push address of local var.
/// using reg: none.
void emit_lvar_addr(LVar *lvar) {
  fprintf(output, "\tlea  rax, [rbp - %d]\n", lvar->offset);
}

/// Generate address.
/// using reg: none.
void gen_lval_to_rax(Node *node) {
  if (node->kind == ND_LVAR) {
    emit_lvar_addr(node->lvar);
    return;
  } else if (node->kind == ND_GVAR) {
    fprintf(output, "\tlea  rax, %.*s[rip]\n", node->token->len,
            node->token->str);
    return;
  } else if (node->kind == ND_DEREF) {
    gen(node->lhs);
    fprintf(output, "\tpop rax\n");
  } else if (node->kind == ND_STR) {
    fprintf(output, "\tlea  rax, .LS%06d[rip]\n", node->int_val);
    return;
  } else if (node->kind == ND_MEMBER) {
    gen_lval_to_rax(node->lhs);
    fprintf(output, "\tadd  rax, %d\n", node->offset);
  } else {
    error_at_node(node, "Expected l-value.");
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

void gen_call(Node *node) {
  // TODO: Currently, only TK_IDENT is allowed as a callee.
  int len = vec_len(node->nodes);
  Node **args = node->nodes->data;
  for (int i = len - 1; i >= 0; i--) {
    gen(args[i]);
  }
  for (int i = 0; i < len; i++) {
    fprintf(output, "\tpop  %s\n", registers[0][i]);
  }
  Token *name = node->lhs->token;  // node->lhs: callee
  if (cmp_token_str(name, "__builtin_va_start")) {
    error_at_token(name, "woo!");
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

  fprintf(output, "%.*s:\n", node->token->len, node->token->str);

  fprintf(output, "\tpush rbp\n");
  fprintf(output, "\tmov  rbp, rsp\n");
  int offset = (node->offset & (-16)) + 16;
  fprintf(output, "\tsub  rsp, %d\n", offset);

  int len = vec_len(node->nodes);
  Node **params = node->nodes->data;
  for (int i = 0; i < len; i++) {
    fprintf(output, "\tmov  [rbp - %d], %s\n", params[i]->lvar->offset,
            registers[reg_size(type(params[i]))][i]);
  }

  gen_block(node->lhs);

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

char reg_l[4][4] = {"rax", "eax", "ax", "al"};
char reg_r[4][4] = {"rdi", "edi", "di", "dil"};

void gen_land(Node *node) {
  Type *l_ty = type(node->lhs);
  Type *r_ty = type(node->rhs);
  int reg_mode;
  char *false_label = new_label();
  char *exit_label = new_label();
  gen(node->lhs);

  if (is_aryth(l_ty)) {
    reg_mode = 1;
  } else if (is_ptr(l_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_l[reg_mode]);
  fprintf(output, "\tje   %s\n", false_label);

  gen(node->rhs);

  if (is_aryth(r_ty)) {
    reg_mode = 1;
  } else if (is_ptr(r_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_l[reg_mode]);
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

  if (is_aryth(l_ty)) {
    reg_mode = 1;
  } else if (is_ptr(l_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_l[reg_mode]);
  fprintf(output, "\tjne  %s\n", true_label);

  gen(node->rhs);

  if (is_aryth(r_ty)) {
    reg_mode = 1;
  } else if (is_ptr(r_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_l[reg_mode]);
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

  if (is_aryth(l_ty)) {
    reg_mode = 1;
  } else if (is_ptr(l_ty)) {
    reg_mode = 0;
  } else
    error_at_node(node, "Illegal operation. (Type mismatch)");

  fprintf(output, "\tpop  rax\n");
  fprintf(output, "\tcmp  %s, 0\n", reg_l[reg_mode]);
  fprintf(output, "\tjne  %s\n", false_label);

  fprintf(output, "\tmov  rax, 1\n");
  emit_jmp(exit_label);

  emit_label(false_label);
  fprintf(output, "\tmov  rax, 0\n");
  emit_label(exit_label);
}

void gen(Node *node) {
  if (!node) return;
  if (verbose) {
    // int line = get_line(node->token->str, source_text);
    fprintf(output, "// Line %d ", get_line(node->token->str, source_text));
    print_node(node);
    fprintf(output, "\n");
    fprintf(output, "\t.loc %d %d\n", get_file_no(node->token->str),
            get_line(node->token->str, source_text));
  }

  Node *parent;
  char *label;
  int i;
  Type *l_ty;
  Type *r_ty;

  if (is_binary_op(node->kind)) {
    l_ty = type(node->lhs);
    r_ty = type(node->rhs);
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
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\tadd  rax, rdi\n");
        } else if (is_ptr(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\timul rdi, %d\n", sizeof_type(l_ty->ptr_to));
          fprintf(output, "\tadd  rax, rdi\n");
        } else if (is_aryth(l_ty) && is_ptr(r_ty)) {
          fprintf(output, "\timul rax, %d\n", sizeof_type(r_ty->ptr_to));
          fprintf(output, "\tadd  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Type mismatch)");
        break;
      case ND_SUB:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\tsub  rax, rdi\n");
        } else if (is_ptr(l_ty) && is_ptr(r_ty)) {
          fprintf(output, "\tsub  rax, rdi\n");
          fprintf(output, "\tcqo\n");
          fprintf(output, "\tmov  rdi, %d\n", sizeof_type(l_ty->ptr_to));
          fprintf(output, "\tidiv rdi\n");
        } else if (is_ptr(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\timul rdi, %d\n", sizeof_type(l_ty->ptr_to));
          fprintf(output, "\tsub  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Type mismatch)");
        break;
      case ND_MUL:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\timul rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_DIV:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\tcqo\n");
          fprintf(output, "\tidiv rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_AND:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\tand  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_OR:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\tor   rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_XOR:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\txor  rax, rdi\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_SHR:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\tmov  cl , dil\n");
          fprintf(output, "\tshr  rax, cl\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;
      case ND_SHL:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
          fprintf(output, "\tmov  cl , dil\n");
          fprintf(output, "\tshl  rax, cl\n");
        } else
          error_at_node(node, "Illegal operation. (Not an arythmetic type)");
        break;

      case ND_EQ:
      case ND_NEQ:
      case ND_GE:
      case ND_GT:
        if (is_aryth(l_ty) && is_aryth(r_ty)) {
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
        fprintf(output, "\tcmp  %s, %s\n", reg_l[reg_mode], reg_r[reg_mode]);
        fprintf(output, "\tset%s al\n", cmp_op);
        fprintf(output, "\tmovzb %s, al\n", reg_l[reg_mode]);
        break;
      default:
        error_at_token(node->token, "gen(): Unimplemented binary op.");
    }
    fprintf(output, "\tpush rax\n");
    return;
  }
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
      for (i = 0; i < vec_len(node->nodes); i++) {
        parent = node->nodes->data[i];
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

      fprintf(output, "\tmov  rsp, rbp\n");
      fprintf(output, "\tpop  rbp\n");
      fprintf(output, "\tret\n");
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
      fprintf(output, "\tpush %d\n", node->int_val);
      return;
    case ND_LVAR:
    case ND_GVAR:
      gen_lval_to_rax(node);
      emit_deref_rax(node);
      fprintf(output, "\tpush rax\n");
      return;
    case ND_MEMBER:
      gen_lval_to_rax(node);
      emit_deref_rax(node);
      fprintf(output, "\tpush rax\n");
      return;
    case ND_CAST:
      gen(node->lhs);
      return;
    case ND_ASSIGN:
      l_ty = type(node->lhs);
      r_ty = type(node->rhs);
      if (is_array_of_char(l_ty) && is_array_of_char(r_ty)) {
        // initialization of char[] by string
        if (node->lhs->kind != ND_LVAR || node->rhs->kind != ND_STR)
          error_at_node(node, "Invalid assignment.");
        int offset = node->lhs->lvar->offset;
        char *p = node->rhs->label;
        int len = strlen(p);

        while (len >= 4) {
          int data = 0;
          for (i = 0; i < 4; i++) {
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
      } else if (!is_assignable_type(l_ty, r_ty)) {
        error_types(l_ty, r_ty);
        error_at_node(node->lhs, "Type mismatch in assignment operation.");
      }

      gen_lval_to_rax(node->lhs);
      fprintf(output, "\tpush rax\n");
      if (is_struct(l_ty) && is_struct(r_ty)) {
        gen_lval_to_rax(node->rhs);
        fprintf(output, "\tpush rax\n");
        fprintf(output, "\tpop  rdi\n");
        fprintf(output, "\tpop  rsi\n");

        int size = sizeof_type(l_ty);
        int i = 0;
        while (i <= size - 8) {
          fprintf(output, "\tmov  rax, QWORD PTR [rdi + %d]\n", i);
          fprintf(output, "\tmov  QWORD PTR [rsi + %d], rax\n", i);
          i += 8;
        }
        while (i < size) {
          fprintf(output, "\tmov  al, BYTE PTR [rdi + %d]\n", i);
          fprintf(output, "\tmov  BYTE PTR [rsi + %d], al\n", i);
          i++;
        }
        fprintf(output, "\tpush rdi\n");
      } else {
        gen(node->rhs);
        fprintf(output, "\tpop  rdi\n");
        fprintf(output, "\tpop  rax\n");
        fprintf(output, "\tmov  [rax], %s\n", reg_r[reg_size(type(node->lhs))]);
        fprintf(output, "\tpush rdi\n");
      }
      return;
    case ND_CALL:
      gen_call(node);
      return;
    case ND_FDECL:
      gen_fdecl(node);
      return;
    case ND_ADDR:
      gen_lval_to_rax(node->lhs);
      fprintf(output, "\tpush rax\n");
      return;
    case ND_STR:
      gen_lval_to_rax(node);
      fprintf(output, "\tpush rax\n");
      return;
    case ND_DEREF:
      if (!is_ptr(type(node->lhs)))
        error_at_node(node->lhs,
                      "Illegal operation. (dereference of non-pointer type)");
      gen(node->lhs);
      fprintf(output, "\tpop  rax\n");
      emit_deref_rax(node);
      fprintf(output, "\tpush rax\n");
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

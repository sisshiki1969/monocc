#include "monocc.h"

Type ty_int;
Type ty_uint;
Type ty_short;
Type ty_ushort;
Type ty_long;
Type ty_ulong;
Type ty_char;
Type ty_bool;
Type ty_void;

// Methods for Type;
Type *new_type_int() { return &ty_int; }

Type *new_type_uint() { return &ty_uint; }

Type *new_type_short() { return &ty_short; }

Type *new_type_ushort() { return &ty_ushort; }

Type *new_type_long() { return &ty_long; }

Type *new_type_ulong() { return &ty_ulong; }

Type *new_type_char() { return &ty_char; }

Type *new_type_bool() { return &ty_bool; }

Type *new_type_void() { return &ty_void; }

Type *new_type_ptr_to(Type *ptr_to) {
  Type *type = calloc(1, sizeof(Type));
  type->ty = PTR;
  type->ptr_to = ptr_to;
  return type;
}

Type *new_type_array(Type *ptr_to, int size) {
  Type *type = calloc(1, sizeof(Type));
  type->ty = ARRAY;
  type->ptr_to = ptr_to;
  type->array_size = size;
  return type;
}

Type *new_type_func(Type *return_type) {
  Type *type = calloc(1, sizeof(Type));
  type->ty = FUNC;
  type->ptr_to = return_type;
  type->variadic = false;
  return type;
}

Type *new_type_struct() {
  Type *type = calloc(1, sizeof(Type));
  type->ty = STRUCT;
  return type;
}

Type *new_type_enum() {
  Type *type = calloc(1, sizeof(Type));
  type->ty = ENUM;
  return type;
}

Type *new_type_enum_el(Token *ident, int i) {
  Type *type = calloc(1, sizeof(Type));
  type->ty = ENUM_EL;
  type->tag_name = ident;
  type->offset = i;
  return type;
}

bool is_int(Type *type) { return type->ty == INT; }
bool is_char(Type *type) { return type->ty == CHAR; }
bool is_bool(Type *type) { return type->ty == BOOL; }
bool is_void(Type *type) { return type->ty == VOID; }
bool is_ptr(Type *type) { return type->ty == PTR; }
bool is_array(Type *type) { return type->ty == ARRAY; }
bool is_func(Type *type) { return type->ty == FUNC; }
bool is_struct(Type *type) { return type->ty == STRUCT; }
bool is_enum(Type *type) { return type->ty == ENUM; }
bool is_enum_el(Type *type) { return type->ty == ENUM_EL; }
bool is_ptr_to_char(Type *type) {
  return is_ptr(type) && is_char(type->ptr_to);
}
bool is_array_of_char(Type *type) {
  return is_array(type) && is_char(type->ptr_to);
}
bool is_arith(Type *type) {
  switch (type->ty) {
    case INT:
    case UINT:
    case SHORT:
    case USHORT:
    case LONG:
    case ULONG:
    case CHAR:
    case BOOL:
    case ENUM:
      return true;
  }
  return false;
}

bool is_signed(Type *type) {
  switch (type->ty) {
    case CHAR:
    case INT:
    case SHORT:
    case LONG:
      return true;
  }
  return false;
}

Type *get_common_type(Type *ty1, Type *ty2) {
  if (sizeof_type(ty1) < 4) ty1 = new_type_int();
  if (sizeof_type(ty2) < 4) ty2 = new_type_int();

  if (is_signed(ty1) == is_signed(ty2)) {
    if (sizeof_type(ty1) < sizeof_type(ty2)) {
      return ty2;
    } else {
      return ty1;
    }
  }

  if (is_signed(ty1)) {
    if (sizeof_type(ty2) >= sizeof_type(ty1)) {
      return ty2;
    } else {
      return ty1;
    };
  } else {
    if (sizeof_type(ty1) >= sizeof_type(ty2)) {
      return ty1;
    } else {
      return ty2;
    };
  }
}

int align_to(int n, int align) { return (n + align - 1) & ~(align - 1); }

int alignof_struct(Type *type) {
  MemberInfo *cursor = type->member;
  TagName *tag = find_tag(type->tag_name);
  if (!tag) {
    if (!type->member) error("anonymous struct with no members.");
  } else
    cursor = tag->type->member;
  int align = 0;
  while (cursor) {
    int a = alignof_type(cursor->type);
    if (a > align) align = a;
    cursor = cursor->next;
  }
  return align;
}

int alignof_type(Type *type) {
  switch (type->ty) {
    case VOID:
      return 0;
    case CHAR:
    case BOOL:
      return 1;
    case SHORT:
    case USHORT:
      return 2;
    case INT:
    case UINT:
    case ENUM_EL:
    case ENUM:
      return 4;
    case PTR:
    case LONG:
    case ULONG:
      return 8;
    case ARRAY:
      return alignof_type(type->ptr_to);
    case STRUCT:
      return alignof_struct(type);
    default:
      error("Internal error: can not calculate align of unknown type ID=%d.",
            type->ty);
  }
}

/// Calculate sizwe of struct.
int sizeof_struct(Type *type) {
  MemberInfo *cursor;
  TagName *tag = find_tag(type->tag_name);
  if (!tag) {
    if (!type->member) error("anonymous struct with no members.");
    cursor = type->member;
  } else
    cursor = tag->type->member;
  int size = 0;
  while (cursor) {
    size = align_to(size, alignof_type(cursor->type));
    size += sizeof_type(cursor->type);  // sizeof_type(cursor);
    cursor = cursor->next;
  }
  return align_to(size, alignof_type(type));
}

int sizeof_type(Type *type) {
  switch (type->ty) {
    case VOID:
      return 0;
    case CHAR:
    case BOOL:
      return 1;
    case SHORT:
    case USHORT:
      return 2;
    case INT:
    case UINT:
    case ENUM_EL:
    case ENUM:
      return 4;
    case PTR:
    case LONG:
    case ULONG:
      return 8;
    case ARRAY:
      return type->array_size * sizeof_type(type->ptr_to);
    case STRUCT:
      return sizeof_struct(type);
    default:
      error("Internal error: can not calculate size of unknown type ID=%d",
            type->ty);
  }
}

bool is_identical_type(Type *l_type, Type *r_type) {
  if (l_type->ty != r_type->ty) return false;
  if (is_void(l_type) && is_void(r_type)) return true;
  if (is_arith(l_type)) return true;
  if (is_array(l_type))
    return is_identical_type(l_type->ptr_to, r_type->ptr_to);
  if (is_struct(l_type)) {
    MemberInfo *l_mem = l_type->member;
    MemberInfo *r_mem = r_type->member;
    while (l_mem && r_mem) {
      if (!is_identical_type(l_mem->type, r_mem->type)) return false;
      l_mem = l_mem->next;
      r_mem = r_mem->next;
    }
    return !r_mem && !l_mem;
  }
  if (is_ptr(l_type)) {
    return is_identical_type(l_type->ptr_to, r_type->ptr_to);
  }
  if (is_func(l_type)) {
    return is_identical_type(l_type->ptr_to, r_type->ptr_to);
  }
  return false;
}

bool is_compatible_type(Type *l_type, Type *r_type) {
  if (is_arith(l_type) && is_arith(r_type)) return true;
  if (is_arith(l_type) && !is_arith(r_type)) return false;
  if (!is_arith(l_type) && is_arith(r_type)) return false;
  if (is_ptr(l_type) && is_ptr(r_type)) {
    if (is_void(l_type->ptr_to) || is_void(r_type->ptr_to)) return true;
    return is_identical_type(l_type->ptr_to, r_type->ptr_to);
  }
  if (is_func(l_type) && is_func(r_type))
    return is_identical_type(l_type, r_type);
  return false;
}

bool is_assignable_type(Type *l_type, Type *r_type) {
  if (is_array(l_type)) {
    l_type = l_type->ptr_to;
  }
  if (is_void(l_type) || is_void(r_type)) return false;
  if (is_arith(l_type) && is_arith(r_type)) return true;
  if (is_ptr(l_type) && is_arith(r_type)) return true;
  if (is_ptr(l_type) && is_ptr(r_type) && is_void(r_type->ptr_to)) return true;
  while (l_type) {
    if (l_type->ty != r_type->ty) return false;
    if (l_type->ty != PTR && l_type->ty != ARRAY) return true;
    l_type = l_type->ptr_to;
    r_type = r_type->ptr_to;
  }
  error("Internal error: Invalid type structure.");
}

bool is_comparable_type(Type *l_type, Type *r_type) {
  if ((is_arith(l_type) || is_ptr(l_type)) &&
      (is_arith(r_type) || is_ptr(r_type)))
    return true;

  return false;
}

void error_types(Type *l_ty, Type *r_ty) {
  fprintf(stderr, "\nLeft: ");
  print_type(stderr, l_ty);
  fprintf(stderr, "\nRight: ");
  print_type(stderr, r_ty);
  fprintf(stderr, "\n");
}

Type *type(Node *node) {
  if (!node) return NULL;
  if (node->type) return node->type;
  Type *l_ty;
  Type *r_ty;
  switch (node->kind) {
    // statement
    case ND_IF:
    case ND_WHILE:
    case ND_BLOCK:
    case ND_BREAK:
    case ND_CONTINUE:
      error("Can not determine a type of statement.");
    case ND_RETURN:
      return NULL;
    // declaration
    case ND_FDECL:
      error("Can not determine a type of declaration.");

    // expression
    case ND_NUM:
      // return new_type_int();
    case ND_LVAR:
      // return node->lvar->type;
      error_at_node(node, "Internal error: type of node is missing.");
    case ND_ASSIGN:
      node->type = type(node->lhs);
      return node->type;
    case ND_CALL:
      return node->type;
    case ND_CAST:
      return node->type;
    case ND_ADDR:
      l_ty = type(node->lhs);
      if (is_array(l_ty))
        node->type = new_type_ptr_to(l_ty->ptr_to);
      else
        node->type = new_type_ptr_to(l_ty);
      return node->type;
    case ND_DEREF:
      l_ty = type(node->lhs);
      if (is_ptr(l_ty)) {
        node->type = l_ty->ptr_to;
        return node->type;
      } else
        error_at_node(node,
                      "Operand of dereference operator must be a pointer.\n");
  }

  l_ty = type(node->lhs);
  r_ty = type(node->rhs);
  switch (node->kind) {
    case ND_AND:
    case ND_OR:
    case ND_XOR:
    case ND_SHR:
    case ND_SHL:
      if (is_arith(l_ty) && is_arith(r_ty)) {
        node->type = get_common_type(l_ty, r_ty);
      } else
        error_at_node(node, "Illegal operation. (Type mismatch)");
      return node->type;
    case ND_ADD:
      if (is_arith(l_ty) && is_arith(r_ty)) {
        node->type = get_common_type(l_ty, r_ty);
      } else if (is_ptr(l_ty) && is_arith(r_ty)) {
        node->type = l_ty;
      } else if (is_arith(l_ty) && is_ptr(r_ty)) {
        node->type = r_ty;
      } else
        error_at_node(node, "Illegal operation. (Type mismatch)");
      return node->type;
    case ND_SUB:
      if (is_arith(l_ty) && is_arith(r_ty))
        node->type = get_common_type(l_ty, r_ty);
      else if (is_ptr(l_ty) && is_arith(r_ty))
        node->type = l_ty;
      else if (is_ptr(l_ty) && is_ptr(r_ty))
        node->type = new_type_int();
      else {
        error_types(l_ty, r_ty);
        error_at_node(node, "Illegal operation. (Type mismatch)");
      }
      return node->type;
    case ND_MUL:
    case ND_DIV:
      if (is_arith(l_ty) && is_arith(r_ty))
        node->type = get_common_type(l_ty, r_ty);
      else
        error_at_node(node, "Illegal operation. (Type mismatch)");
      return node->type;
    case ND_EQ:
    case ND_NEQ:
    case ND_GE:
    case ND_GT:
    case ND_LAND:
    case ND_LOR:
    case ND_NOT:
      if (!is_comparable_type(l_ty, r_ty)) {
        error_types(l_ty, r_ty);
        error_at_node(node, "Illegal operation. (Type mismatch)");
      }
      node->type = new_type_int();
      return node->type;
  }
  error_at_node(node, "type(): Unimplemented NodeKind.");
}

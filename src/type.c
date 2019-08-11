#include "monocc.h"

// Methods for Type;

Type *new_type_int() {
    Type *type = calloc(1, sizeof(Type));
    type->ty = INT;
    return type;
}

Type *new_type_char() {
    Type *type = calloc(1, sizeof(Type));
    type->ty = CHAR;
    return type;
}

Type *new_type_bool() {
    Type *type = calloc(1, sizeof(Type));
    type->ty = BOOL;
    return type;
}

Type *new_type_void() {
    Type *type = calloc(1, sizeof(Type));
    type->ty = VOID;
    return type;
}

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
    return type;
}

Type *new_type_struct() {
    Type *type = calloc(1, sizeof(Type));
    type->ty = STRUCT;
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
bool is_ptr_to_char(Type *type) {
    return is_ptr(type) && is_char(type->ptr_to);
}
bool is_array_of_char(Type *type) {
    return is_array(type) && is_char(type->ptr_to);
}
bool is_arythmetic(Type *type) {
    switch(type->ty) {
    case INT:
    case CHAR:
    case BOOL:
        return true;
    }
    return false;
}

int align_to(int n, int align) { return (n + align - 1) & ~(align - 1); }

int alignof_struct(Type *type) {
    Type *cursor = type->member;
    int align = 0;
    while(cursor) {
        int a = alignof_type(cursor);
        if(a > align)
            align = a;
        cursor = cursor->next;
    }
    return align;
}

int alignof_type(Type *type) {
    switch(type->ty) {
    case VOID:
        return 0;
    case CHAR:
        return 1;
    case INT:
        return 4;
    case PTR:
        return 8;
    case ARRAY:
        return alignof_type(type->ptr_to);
    case STRUCT:
        return alignof_struct(type);
    default:
        error("Internal error: can not calculate align of unknown type "
              "'%.*s'.",
              type->var_name->len, type->var_name->str);
    }
}

int sizeof_struct(Type *type) {
    Type *cursor;
    TagName *tag = find_tag(type->tag_name);
    if(!tag) {
        if(!type->member)
            error("anonymous struct with no members.");
        cursor = type->member;
    } else
        cursor = tag->type->member;
    int size = 0;
    while(cursor) {
        size = align_to(size, alignof_type(cursor));
        size += sizeof_type(cursor); // sizeof_type(cursor);
        cursor = cursor->next;
    }
    return align_to(size, alignof_struct(type));
}

int sizeof_type(Type *type) {
    switch(type->ty) {
    case VOID:
        return 0;
    case CHAR:
    case BOOL:
        return 1;
    case INT:
        return 4;
    case PTR:
        return 8;
    case ARRAY:
        return type->array_size * sizeof_type(type->ptr_to);
    case STRUCT:
        return sizeof_struct(type);
    default:
        error("Internal error: can not calculate size of unknown type "
              "'%.*s'.",
              type->var_name->len, type->var_name->str);
    }
}

bool is_identical_type(Type *l_type, Type *r_type) {
    if(l_type->ty != r_type->ty)
        return false;
    if(is_arythmetic(l_type))
        return true;
    if(is_array(l_type))
        return is_identical_type(l_type->ptr_to, r_type->ptr_to);
    if(is_struct(l_type)) {
        Type *l_memty = l_type->member;
        Type *r_memty = r_type->member;
        while(l_memty) {
            if(!is_identical_type(l_memty, r_memty))
                return false;
            l_memty = l_memty->next;
            r_memty = r_memty->next;
        }
        if(!r_memty)
            return true;
        else
            return false;
    }
    if(is_ptr(l_type)) {
        return is_identical_type(l_type->ptr_to, r_type->ptr_to);
    }
    if(is_func(l_type)) {
        return is_identical_type(l_type->ptr_to, r_type->ptr_to);
    }
    return false;
}

bool is_compatible_type(Type *l_type, Type *r_type) {
    if(is_arythmetic(l_type) && is_arythmetic(r_type))
        return true;
    if(is_arythmetic(l_type) && !is_arythmetic(r_type))
        return false;
    if(!is_arythmetic(l_type) && is_arythmetic(r_type))
        return false;
    if(is_ptr(l_type) && is_ptr(r_type))
        return is_identical_type(l_type->ptr_to, r_type->ptr_to);
    if(is_func(l_type) && is_func(r_type))
        return is_identical_type(l_type, r_type);
    return false;
}

bool is_assignable_type(Type *l_type, Type *r_type) {
    if(is_array(l_type)) {
        l_type = l_type->ptr_to;
    }
    if(is_void(l_type) || is_void(r_type))
        return false;
    if(is_arythmetic(l_type) && is_arythmetic(r_type))
        return true;
    if(is_ptr(l_type) && is_arythmetic(r_type))
        return true;
    if(is_ptr(l_type) && is_ptr(r_type) && is_void(r_type->ptr_to))
        return true;
    while(l_type) {
        if(l_type->ty != r_type->ty)
            return false;
        if(l_type->ty != PTR && l_type->ty != ARRAY)
            return true;
        l_type = l_type->ptr_to;
        r_type = r_type->ptr_to;
    }
    error("Internal error: Invalid type structure.");
}

bool is_comparable_type(Type *l_type, Type *r_type) {
    if((is_arythmetic(l_type) || is_ptr(l_type)) &&
       (is_arythmetic(r_type) || is_ptr(r_type)))
        return true;
    else
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
    if(!node)
        return NULL;
    if(node->type)
        return node->type;
    Type *l_ty;
    Type *r_ty;
    switch(node->kind) {
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
        return type(node->lhs);
    case ND_CALL:
        return node->type;
    case ND_ADDR:
        l_ty = type(node->lhs);
        if(is_array(l_ty))
            node->type = new_type_ptr_to(l_ty->ptr_to);
        else
            node->type = new_type_ptr_to(l_ty);
        return node->type;
    case ND_DEREF:
        l_ty = type(node->lhs);
        if(is_ptr(l_ty)) {
            node->type = l_ty->ptr_to;
            return node->type;
        } else
            error_at_node(
                node, "Operand of dereference operator must be a pointer.\n");
    }

    l_ty = type(node->lhs);
    r_ty = type(node->rhs);
    switch(node->kind) {
    case ND_ADD:
        if(is_arythmetic(l_ty) && is_arythmetic(r_ty)) {
            node->type = l_ty;
        } else if(is_ptr(l_ty) && is_int(r_ty)) {
            node->type = l_ty;
        } else if(is_int(l_ty) && is_ptr(r_ty)) {
            node->type = r_ty;
        } else
            error_at_node(node, "Illegal operation. (Type mismatch)");
        return node->type;
    case ND_SUB:
        if(is_int(l_ty) && is_int(r_ty))
            node->type = l_ty;
        else if(is_ptr(l_ty) && is_int(r_ty))
            node->type = l_ty;
        else if(is_ptr(l_ty) && is_ptr(r_ty))
            node->type = new_type_int();
        else
            error_at_node(node, "Illegal operation. (Type mismatch)");
        return node->type;
    case ND_MUL:
    case ND_DIV:
        if(is_int(l_ty) && is_int(r_ty))
            node->type = l_ty;
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
        if(!is_comparable_type(l_ty, r_ty))
            error_at_node(node, "Illegal operation. (Type mismatch)");
        node->type = new_type_int();
        return node->type;
    }
    error_at_node(node, "type(): Unimplemented NodeKind.");
}

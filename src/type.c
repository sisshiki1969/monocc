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

Type *new_type_from_token(Token *token) {
    switch(token->kind) {
    case TK_INT:
        return new_type_int();
    case TK_CHAR:
        return new_type_char();
    }
    error_at_token(token, "Unimplemented type.");
}

bool is_int(Type *type) { return type->ty == INT; }
bool is_char(Type *type) { return type->ty == CHAR; }
bool is_ptr(Type *type) { return type->ty == PTR; }
bool is_array(Type *type) { return type->ty == ARRAY; }
bool is_arythmetic(Type *type) {
    switch(type->ty) {
    case INT:
    case CHAR:
        return true;
    }
    return false;
}

int sizeof_type(Type *type) {
    switch(type->ty) {
    case CHAR:
        return 1;
    case INT:
        return 4;
    case PTR:
        return 8;
    case ARRAY:
        return type->array_size * sizeof_type(type->ptr_to);
    default:
        error("Internal error: can not calculate size of unknown type.");
    }
}

bool is_identical_type(Type *l_type, Type *r_type) {
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

bool is_assignable_type(Type *l_type, Type *r_type) {
    if(l_type->ty == ARRAY) {
        l_type = l_type->ptr_to;
    }
    if(is_arythmetic(l_type) && is_arythmetic(r_type))
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
    if(is_int(l_type) && is_int(r_type))
        return true;
    else if(is_ptr(l_type) && is_ptr(r_type))
        return true;
    else
        return false;
}

Type *type(Node *node) {
    if(node->type)
        return node->type;
    Type *l_ty;
    Type *r_ty;
    switch(node->kind) {
    // statement
    case ND_IF:
    case ND_WHILE:
    case ND_BLOCK:
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
        // return node->ident_lvar->type;
        error_at_node(node, "Internal error: type of node is missing.");
    case ND_ASSIGN:
        return type(node->lhs);
    case ND_CALL:
        return new_type_int();
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
        if(!is_comparable_type(l_ty, r_ty))
            error_at_node(node, "Illegal operation. (Type mismatch)");
        node->type = new_type_int();
        return node->type;
    }
    error_at_node(node, "type(): Unimplemented NodeKind.");
}
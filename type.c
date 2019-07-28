#include "monocc.h"

// Methods for Type;

Type *new_type_int() {
    Type *type = calloc(1, sizeof(Type));
    type->ty = INT;
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
    }
    error_at_token(token, "Unimplemented type.");
}

bool is_int(Type *type) { return type->ty == INT; }
bool is_ptr(Type *type) { return type->ty == PTR; }
bool is_array(Type *type) { return type->ty == ARRAY; }

int sizeof_type(Type *type) {
    switch(type->ty) {
    case INT:
        return 4;
    case PTR:
        return 8;
    case ARRAY:
        return type->array_size * sizeof_type(type->ptr_to);
    }
}

bool is_identical_type(Type *l_type, Type *r_type) {
    while(l_type) {
        if(l_type->ty != r_type->ty)
            return false;
        if(l_type->ty == INT)
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
    while(l_type) {
        if(l_type->ty != r_type->ty)
            return false;
        if(l_type->ty == INT)
            return true;
        l_type = l_type->ptr_to;
        r_type = r_type->ptr_to;
    }
    error("Internal error: Invalid type structure.");
}

Type *type(Node *node) {
    Type *ty;
    switch(node->kind) {
    // statement
    case ND_IF:
    case ND_WHILE:
    case ND_BLOCK:
    case ND_RETURN:
        error("Can not determine a type of statement.");
    // declaration
    case ND_FDECL:
        error("Can not determine a type of declaration.");

    // expression
    case ND_NUM:
        return new_type_int();
    case ND_LVAR:
        return node->ident_lvar->type;
    case ND_ASSIGN:
        return type(node->lhs);
    case ND_CALL:
        return new_type_int();
    case ND_ADDR:
        ty = type(node->lhs);
        if(is_array(ty))
            return new_type_ptr_to(ty->ptr_to);
        else
            return new_type_ptr_to(ty);
    case ND_DEREF:
        ty = type(node->lhs);
        if(is_ptr(ty))
            return ty->ptr_to;
        else
            error_at_node(node, "Can not dereference.\n");

    case ND_ADD:
    case ND_SUB:
        return type(node->lhs);
    case ND_MUL:
    case ND_DIV:
    case ND_EQ:
    case ND_NEQ:
    case ND_GE:
    case ND_GT:
        return new_type_int();
    }
    error_at_node(node, "type(): Unimplemented NodeKind.");
}
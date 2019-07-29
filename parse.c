#include "monocc.h"

// Methods for Node

Node *new_node_num(int val, Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_NUM;
    node->int_val = val;
    node->token = token;
    node->type = new_type_int();
    return node;
}

Node *new_node_ident(Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_IDENT;
    node->token = token;
    return node;
}

Node *new_node_lvar(LVar *lvar, Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_LVAR;
    node->ident_lvar = lvar;
    node->ident_offset = lvar->offset;
    node->token = token;
    node->type = lvar->type;
    return node;
}

/// Generate Node from lhs and rhs, with typing and auto converting of array to
/// ptr.
Node *new_node_binary(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = get_ptr_if_array(lhs);
    node->rhs = get_ptr_if_array(rhs);
    node->token = op_token;
    node->type = type(node);
    return node;
}

/// Generate Node from lhs and rhs, without auto converting of array to ptr.
Node *new_node_expr(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = lhs;
    node->rhs = rhs;
    node->token = op_token;
    node->type = type(node);
    return node;
}

Node *new_node_call(Node *callee, Vector *vec, Token *token) {
    // TODO: Currently, only TK_IDENT is allowed as a callee.
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_CALL;
    node->lhs = callee;
    node->nodes = vec;
    node->token = token;
    return node;
}

Node *new_node_if_then(Node *cond_, Node *then_, Node *else_) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_IF;
    node->lhs = cond_;
    node->rhs = then_;
    node->xhs = else_;
    node->token = token;
    return node;
}

Node *new_node_while(Node *cond_, Node *do_) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_WHILE;
    node->lhs = cond_;
    node->rhs = do_;
    node->token = token;
    return node;
}

Node *new_node_block(Vector *vec) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_BLOCK;
    node->nodes = vec;
    node->token = token;
    return node;
}

Node *new_node_fdecl(Token *name, Vector *params, Node *body) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_FDECL;
    node->lhs = body;
    node->nodes = params;
    node->token = name;
    return node;
}

// Methods for handling Token.

// Return TokenKind of the current token.
TokenKind peek() { return token->kind; }

// Return TokenKind of the next token.
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
    if(token->kind == kind) {
        token = token->next;
        return true;
    }
    return false;
}

/// If current token is a number, consume and return int_val.
/// Otherwise, raise error.
int consume_number() {
    if(token->kind != TK_NUM) {
        error_at_token(token, "Unexpected token: Number is expected.");
    }
    int num = token->int_val;
    token = token->next;
    return num;
}

/// If current token is `kind`, consume and return it.
/// Otherwise, raise error.
Token *expect(TokenKind kind) {
    if(token->kind != kind) {
        error_at_token(token, "Unexpected token.");
    }
    Token *ret = token;
    token = token->next;
    return ret;
}

/// Examine whether the Token is type-specifier.
bool is_type_specifier(TokenKind kind) {
    switch(kind) {
    case TK_INT:
        return true;
    }
    return false;
}

// LVar

/// Generate LVar from token and put it to the local var list.
LVar *new_lvar(Token *token, Type *type) {
    LVar *lvar = calloc(1, sizeof(LVar));
    lvar->next = locals;
    lvar->token = token;
    int offset;
    int size = 8;
    if(type->ty == ARRAY) {
        size = size * type->array_size;
    }
    if(locals) {
        offset = locals->offset + size;
    } else {
        offset = size;
    }
    lvar->offset = offset;
    lvar->type = type;
    locals = lvar;
    return lvar;
}

LVar *find_lvar(Token *token) {
    for(LVar *var = locals; var; var = var->next) {
        if(var->token->len == token->len &&
           memcmp(var->token->str, token->str, token->len) == 0) {
            return var;
        }
    }
    return NULL;
}

// Global variables.

Global *new_global(Token *ident, Type *type) {
    Global *global = calloc(1, sizeof(Global));
    global->next = globals;
    global->token = ident;
    global->type = type;
    globals = global;
    return global;
}

// functions.

Global *new_func(Token *ident, Type *type, Node *func_decl) {
    Global *func = calloc(1, sizeof(Global));
    func->next = functions;
    func->token = ident;
    func->type = type;
    functions = func;
    return func;
}

// Parser

Node *parse_expr();
Node *parse_assign_expr();
Node *parse_block();

Node *parse_prim_expr() {
    Token *cur_token = token;
    if(at_eof()) {
        error_at_token(token, "Unexpected EOF.");
    }
    if(peek() == TK_NUM) {
        return new_node_num(consume_number(), cur_token);
    }
    if(consume_if(TK_OP_PAREN)) {
        Node *node = parse_expr();
        expect(TK_CL_PAREN);
        return node;
    }
    if(consume_if(TK_IDENT)) {
        return new_node_ident(cur_token);
    }
    error_at_token(token, "parse_prom_expr(): Unexpected token.");
}

Node *parse_postfix_expr() {
    Node *node = parse_prim_expr();
    if(peek() == TK_OP_PAREN) {
        if(node->kind != ND_IDENT)
            error_at_node(node, "Currently, callee must be an identifier.");
        expect(TK_OP_PAREN);
        Vector *vec = vec_new();
        while(peek() != TK_CL_PAREN) {
            vec_push(vec, parse_assign_expr());
            if(!consume_if(TK_COMMA))
                break;
        }
        expect(TK_CL_PAREN);
        node = new_node_call(node, vec, node->token);
    } else if(peek() == TK_OP_BRACKET) {
        LVar *lvar = find_lvar(node->token);
        if(!lvar) {
            error_at_token(node->token, "Identifier %.*s is not defined.",
                           node->token->len, node->token->str);
        }
        Node *lvar_node = new_node_lvar(lvar, node->token);
        expect(TK_OP_BRACKET);
        Node *index = parse_expr();
        node = new_node_binary(ND_ADD, lvar_node, index, token);
        expect(TK_CL_BRACKET);
        node = new_node_expr(ND_DEREF, node, NULL, token);
    } else if(node->kind == ND_IDENT) {
        LVar *lvar = find_lvar(node->token);
        if(!lvar) {
            error_at_token(node->token, "Identifier %.*s is not defined.",
                           node->token->len, node->token->str);
        }
        node = new_node_lvar(lvar, node->token);
    }
    return node;
}

Node *get_ptr_if_array(Node *node) {
    if(!node)
        return NULL;
    if(is_array(type(node))) {
        return new_node_expr(ND_ADDR, node, NULL, node->token);
    } else {
        return node;
    }
}

Node *parse_unary_expr() {
    Token *op_token = token;
    if(consume_if(TK_ADD)) {
        return parse_unary_expr();
    } else if(consume_if(TK_SUB)) {
        return new_node_binary(ND_SUB, new_node_num(0, token),
                               parse_unary_expr(), op_token);
    } else if(consume_if(TK_ADDR)) {
        return new_node_expr(ND_ADDR, parse_unary_expr(), NULL, op_token);
    } else if(consume_if(TK_MUL)) {
        Node *node = parse_unary_expr();
        return new_node_binary(ND_DEREF, node, NULL, op_token);
    } else if(consume_if(TK_SIZEOF)) {
        return new_node_num(sizeof_type(type(parse_unary_expr())), op_token);
    } else {
        return parse_postfix_expr();
    }
}

Node *parse_mul_expr() {
    Node *node = parse_unary_expr();
    Node *rhs;

    while(true) {
        Token *op_token = token;
        if(consume_if(TK_MUL)) {
            rhs = parse_unary_expr();
            node = new_node_binary(ND_MUL, node, rhs, op_token);
            continue;
        } else if(consume_if(TK_DIV)) {
            rhs = parse_unary_expr();
            node = new_node_binary(ND_DIV, node, rhs, op_token);
            continue;
        }
        return node;
    }
}

Node *parse_add_expr() {
    Node *node = parse_mul_expr();

    while(true) {
        Token *op_token = token;
        if(consume_if(TK_ADD)) {
            node = new_node_binary(ND_ADD, node, parse_mul_expr(), op_token);
            continue;
        } else if(consume_if(TK_SUB)) {
            node = new_node_binary(ND_SUB, node, parse_mul_expr(), op_token);
            continue;
        }
        return node;
    }
}

Node *parse_rel_expr() {
    Node *node = parse_add_expr();

    for(;;) {
        Token *op_token = token;
        if(consume_if(TK_GE)) {
            node = new_node_binary(ND_GE, node, parse_add_expr(), op_token);
            continue;
        } else if(consume_if(TK_GT)) {
            node = new_node_binary(ND_GT, node, parse_add_expr(), op_token);
            continue;
        } else if(consume_if(TK_LE)) {
            node = new_node_binary(ND_GE, parse_add_expr(), node, op_token);
            continue;
        } else if(consume_if(TK_LT)) {
            node = new_node_binary(ND_GT, parse_add_expr(), node, op_token);
            continue;
        }
        return node;
    }
}

Node *parse_eq_expr() {
    Node *node = parse_rel_expr();

    for(;;) {
        Token *op_token = token;
        if(consume_if(TK_EQ)) {
            node = new_node_binary(ND_EQ, node, parse_rel_expr(), op_token);
            continue;
        } else if(consume_if(TK_NEQ)) {
            node = new_node_binary(ND_NEQ, node, parse_rel_expr(), op_token);
            continue;
        }
        return node;
    }
}

Node *parse_assign_expr() {
    Node *node = parse_eq_expr();
    Token *op_token = token;
    if(consume_if(TK_ASSIGN)) {
        Node *rhs = get_ptr_if_array(parse_assign_expr());
        node = new_node_expr(ND_ASSIGN, node, rhs, op_token);
    }
    return node;
}

Node *parse_expr() {
    Node *node = parse_assign_expr();
    return node;
}

/// Information of declaration.
struct DeclInfo {
    Token *token;
    Type *type;
};

typedef struct DeclInfo DeclInfo;

DeclInfo *new_decl_info(Token *token, Type *type) {
    DeclInfo *info = calloc(1, sizeof(DeclInfo));
    info->token = token;
    info->type = type;
    return info;
}

DeclInfo *parse_decl() {
    // declaration-specifiers
    Type *type = new_type_from_token(consume());

    // declarator
    while(peek() == TK_MUL) {
        expect(TK_MUL);
        type = new_type_ptr_to(type);
    }

    // direct-declarator
    Token *ident_token = expect(TK_IDENT);
    if(find_lvar(ident_token))
        error_at_token(ident_token, "Redefinition of variable.");

    // direct-declarator [ assignment-expression ]
    // TODO: support multi-dimensional array
    if(peek() == TK_OP_BRACKET) {
        expect(TK_OP_BRACKET);
        int size = 0;
        if(peek() != TK_CL_BRACKET)
            // this should be assignment-expression
            size = expect(TK_NUM)->int_val;
        type = new_type_array(type, size);
        expect(TK_CL_BRACKET);
    }

    return new_decl_info(ident_token, type);
}

Node *parse_stmt() {
    if(consume_if(TK_SEMI))
        return NULL;
    Node *node;
    Node *then_;
    Token *op_token = token;
    switch(token->kind) {
    case TK_RETURN:
        expect(TK_RETURN);
        if(consume_if(TK_SEMI))
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
        if(consume_if(TK_ELSE))
            return new_node_if_then(node, then_, parse_stmt());
        else
            return new_node_if_then(node, then_, NULL);
    case TK_WHILE:
        expect(TK_WHILE);
        expect(TK_OP_PAREN);
        node = parse_expr();
        expect(TK_CL_PAREN);
        return new_node_while(node, parse_stmt());
    case TK_OP_BRACE:
        return parse_block();
    }
    node = parse_expr();
    if(at_eof())
        return node;
    expect(TK_SEMI);
    return node;
}

Node *parse_block() {
    expect(TK_OP_BRACE);
    Vector *vec = vec_new();
    while(peek() != TK_CL_BRACE) {
        Node *node;
        if(is_type_specifier(peek())) {
            DeclInfo *info = parse_decl();

            LVar *lvar = new_lvar(info->token, info->type);
            node = new_node_lvar(lvar, info->token);
            expect(TK_SEMI);
        } else {
            node = parse_stmt();
        }
        if(node)
            vec_push(vec, node);
    }
    expect(TK_CL_BRACE);
    return new_node_block(vec);
}

Node *parse_func_definition(DeclInfo *info) {
    expect(TK_OP_PAREN);
    Vector *params = vec_new();
    locals = NULL;
    Type *func_type = new_type_func(info->type);
    Type *param_type = func_type;
    while(peek() != TK_CL_PAREN) {
        DeclInfo *p_info = parse_decl();
        vec_push(params, new_node_lvar(new_lvar(p_info->token, p_info->type),
                                       p_info->token));
        param_type->params = p_info->type;
        param_type = p_info->type;
        if(!consume_if(TK_COMMA))
            break;
    }
    expect(TK_CL_PAREN);
    Node *decl = new_node_fdecl(info->token, params, parse_block());
    new_func(info->token, func_type, decl);
    return decl;
}

void parse_program() {
    ext_declarations = vec_new();
    while(!at_eof()) {
        DeclInfo *info = parse_decl();
        Node *decl = parse_func_definition(info);
        printf("// ");
        print_node(decl);
        printf("\n");
        print_locals();
        vec_push(ext_declarations, decl);
    }
}

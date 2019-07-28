#include "monocc.h"

// Method for Node

Node *new_node_num(int val, Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_NUM;
    node->int_val = val;
    node->token = token;
    return node;
}

Node *new_node_ident(Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = TK_IDENT;
    node->token = token;
    return node;
}

Node *new_node_lvar(LVar *lvar, Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_LVAR;
    node->ident_lvar = lvar;
    node->ident_offset = lvar->offset;
    node->token = token;
    return node;
}

/// Generate Node from lhs and rhs, with auto converting of array to ptr.
Node *new_node(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = get_ptr_if_array(lhs);
    node->rhs = get_ptr_if_array(rhs);
    node->token = op_token;
    return node;
}

/// Generate Node from lhs and rhs, without auto converting of array to ptr.
Node *new_node_without_conv(NodeKind kind, Node *lhs, Node *rhs,
                            Token *op_token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = lhs;
    node->rhs = rhs;
    node->token = op_token;
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

/// If current token is EOF, return true.
/// Otherwise return false.
bool at_eof() { return token->kind == TK_EOF; }

/// If current token is `kind`, take it ans return true.
/// Otherwise, return false.
bool consume_if(TokenKind kind) {
    if(token->kind == kind) {
        token = token->next;
        return true;
    }
    return false;
}

TokenKind peek() { return token->kind; }

TokenKind peek_next() { return token->next->kind; }

/// If current token is `kind`, take it.
/// Otherwise, raise error.
Token *expect(TokenKind kind) {
    if(token->kind != kind) {
        error_at_token(token, "Unexpected token.");
    }
    Token *ret = token;
    token = token->next;
    return ret;
}

/// If current token is a number, take it and return int_val.
/// Otherwise, raise error.
int consume_number() {
    if(token->kind != TK_NUM) {
        error_at_token(token, "Unexpected token: Number is expected.");
    }
    int num = token->int_val;
    token = token->next;
    return num;
}

/// Taken the current token and return it.
Token *consume() {
    Token *ret = token;
    token = token->next;
    return ret;
}

bool is_type_specifier(TokenKind kind) {
    switch(kind) {
    case TK_INT:
        return true;
    }
    return false;
}

// LVar

/// Generate LVar from token and put it to the locals list.
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

// Global

Global *new_global(Token *ident, Type *type) {
    Global *global = calloc(1, sizeof(Global));
    global->next = globals;
    global->token = ident;
    global->type = type;
    globals = global;
    return global;
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
    if(peek() == TK_IDENT) {
        // TODO:func() should be parsed in postfix-expr.
        if(peek_next() == TK_OP_PAREN) {
            // TODO: Currently, only TK_IDENT is allowed as a callee.
            Node *name = new_node_ident(expect(TK_IDENT));
            expect(TK_OP_PAREN);
            Vector *vec = vec_new();
            while(peek() != TK_CL_PAREN) {
                vec_push(vec, parse_assign_expr());
                if(!consume_if(TK_COMMA))
                    break;
            }
            expect(TK_CL_PAREN);
            return new_node_call(name, vec, cur_token);
        } else if(peek_next() == TK_OP_BRACKET) {
            // TODO:a[] should be parsed in postfix-expr.
            LVar *lvar = find_lvar(consume());
            if(!lvar) {
                error_at_token(cur_token, "Identifier %.*s is not defined.",
                               cur_token->len, cur_token->str);
            }
            Node *node = new_node_lvar(lvar, cur_token);
            expect(TK_OP_BRACKET);
            Node *index = parse_expr();
            node = new_node(ND_ADD, node, index, token);
            expect(TK_CL_BRACKET);
            return new_node_without_conv(ND_DEREF, node, NULL, token);
        } else {
            LVar *lvar = find_lvar(consume());
            if(!lvar) {
                error_at_token(cur_token, "Identifier %.*s is not defined.",
                               cur_token->len, cur_token->str);
            }
            return new_node_lvar(lvar, cur_token);
        }
    }
    error_at_token(token, "parse_prom_expr(): Unexpected token.");
}

Node *get_ptr_if_array(Node *node) {
    if(!node)
        return NULL;
    if(is_array(type(node))) {
        return new_node_without_conv(ND_ADDR, node, NULL, node->token);
    } else {
        return node;
    }
}

Node *parse_unary_expr() {
    Token *op_token = token;
    if(consume_if(TK_ADD)) {
        return parse_unary_expr();
    } else if(consume_if(TK_SUB)) {
        return new_node(ND_SUB, new_node_num(0, token), parse_unary_expr(),
                        op_token);
    } else if(consume_if(TK_ADDR)) {
        return new_node_without_conv(ND_ADDR, parse_unary_expr(), NULL,
                                     op_token);
    } else if(consume_if(TK_MUL)) {
        Node *node = parse_unary_expr();
        return new_node(ND_DEREF, node, NULL, op_token);
    } else if(consume_if(TK_SIZEOF)) {
        return new_node_num(sizeof_type(type(parse_unary_expr())), op_token);
    } else {
        return parse_prim_expr();
    }
}

Node *parse_mul_expr() {
    Node *node = parse_unary_expr();
    Node *rhs;

    while(true) {
        Token *op_token = token;
        if(consume_if(TK_MUL)) {
            rhs = parse_unary_expr();
            node = new_node(ND_MUL, node, rhs, op_token);
            continue;
        } else if(consume_if(TK_DIV)) {
            rhs = parse_unary_expr();
            node = new_node(ND_DIV, node, rhs, op_token);
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
            node = new_node(ND_ADD, node, parse_mul_expr(), op_token);
            continue;
        } else if(consume_if(TK_SUB)) {
            node = new_node(ND_SUB, node, parse_mul_expr(), op_token);
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
            node = new_node(ND_GE, node, parse_add_expr(), op_token);
            continue;
        } else if(consume_if(TK_GT)) {
            node = new_node(ND_GT, node, parse_add_expr(), op_token);
            continue;
        } else if(consume_if(TK_LE)) {
            node = new_node(ND_GE, parse_add_expr(), node, op_token);
            continue;
        } else if(consume_if(TK_LT)) {
            node = new_node(ND_GT, parse_add_expr(), node, op_token);
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
            node = new_node(ND_EQ, node, parse_rel_expr(), op_token);
            continue;
        } else if(consume_if(TK_NEQ)) {
            node = new_node(ND_NEQ, node, parse_rel_expr(), op_token);
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
        node = new_node_without_conv(ND_ASSIGN, node, rhs, op_token);
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
            return new_node(ND_RETURN, NULL, NULL, op_token);
        else {
            node = parse_expr();
            expect(TK_SEMI);
            return new_node(ND_RETURN, node, NULL, op_token);
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

Node *parse_func_definition() {
    DeclInfo *info = parse_decl();
    expect(TK_OP_PAREN);
    Vector *params = vec_new();
    locals = NULL;
    Type *func_type = new_type_func(info->type);
    Type *param_type = func_type;
    new_global(info->token, func_type);
    while(peek() != TK_CL_PAREN) {
        DeclInfo *p_info = parse_decl();
        // expect(TK_INT);
        // Token *param = expect(TK_IDENT);
        vec_push(params, new_node_lvar(new_lvar(p_info->token, p_info->type),
                                       p_info->token));
        param_type->params = p_info->type;
        param_type = p_info->type;
        if(!consume_if(TK_COMMA))
            break;
    }
    expect(TK_CL_PAREN);
    Node *body = parse_block();
    return new_node_fdecl(info->token, params, body);
}

void parse_program() {
    ext_declarations = vec_new();
    while(!at_eof()) {
        Node *decl = parse_func_definition();
        printf("// ");
        print_node(decl);
        printf("\n");
        print_locals();
        vec_push(ext_declarations, decl);
    }
}

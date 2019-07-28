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

Node *new_node(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
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

Token *consume() {
    Token *ret = token;
    token = token->next;
    return ret;
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
        offset = 8 + size;
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
        } else {
            LVar *lvar = find_lvar(token);
            if(!lvar) {
                error_at_token(token, "Identifier %.*s is not defined.",
                               token->len, token->str);
            }
            token = token->next;
            return new_node_lvar(lvar, cur_token);
        }
    }
    error_at_token(token, "parse_prom_expr(): Unexpected token.");
}

Node *parse_unary_expr() {
    Token *op_token = token;
    if(consume_if(TK_ADD)) {
        return parse_unary_expr();
    } else if(consume_if(TK_SUB)) {
        return new_node(ND_SUB, new_node_num(0, token), parse_unary_expr(),
                        op_token);
    } else if(consume_if(TK_ADDR)) {
        return new_node(ND_ADDR, parse_unary_expr(), NULL, op_token);
    } else if(consume_if(TK_MUL)) {
        return new_node(ND_DEREF, parse_unary_expr(), NULL, op_token);
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
    Node *rhs;

    while(true) {
        Token *op_token = token;
        if(consume_if(TK_ADD)) {
            rhs = parse_mul_expr();
            node = new_node(ND_ADD, node, rhs, op_token);
            continue;
        } else if(consume_if(TK_SUB)) {
            rhs = parse_mul_expr();
            node = new_node(ND_SUB, node, rhs, op_token);
            continue;
        }
        return node;
    }
}

Node *parse_rel_expr() {
    Node *node = parse_add_expr();
    Node *rhs;

    for(;;) {
        Token *op_token = token;
        if(consume_if(TK_GE)) {
            rhs = parse_add_expr();
            node = new_node(ND_GE, node, rhs, op_token);
            continue;
        } else if(consume_if(TK_GT)) {
            rhs = parse_add_expr();
            node = new_node(ND_GT, node, rhs, op_token);
            continue;
        } else if(consume_if(TK_LE)) {
            rhs = parse_add_expr();
            node = new_node(ND_GE, rhs, node, op_token);
            continue;
        } else if(consume_if(TK_LT)) {
            rhs = parse_add_expr();
            node = new_node(ND_GT, rhs, node, op_token);
            continue;
        }
        return node;
    }
}

Node *parse_eq_expr() {
    Node *node = parse_rel_expr();
    Node *rhs;

    for(;;) {
        Token *op_token = token;
        if(consume_if(TK_EQ)) {
            rhs = parse_rel_expr();
            node = new_node(ND_EQ, node, rhs, op_token);
            continue;
        } else if(consume_if(TK_NEQ)) {
            rhs = parse_rel_expr();
            node = new_node(ND_NEQ, node, rhs, op_token);
            continue;
        }
        return node;
    }
}

Node *parse_assign_expr() {
    Node *node = parse_eq_expr();
    Token *op_token = token;
    if(consume_if(TK_ASSIGN)) {
        node = new_node(ND_ASSIGN, node, parse_assign_expr(), op_token);
    }
    return node;
}

Node *parse_expr() {
    Node *node = parse_assign_expr();
    return node;
}

Node *parse_decl() {
    Type *type;
    expect(TK_INT);
    type = new_type_int();

    while(peek() == TK_MUL) {
        expect(TK_MUL);
        type = new_type_ptr_to(type);
    }

    Token *token = expect(TK_IDENT);
    if(find_lvar(token))
        error_at_token(token, "Redefinition of variable.");

    if(peek() == TK_OP_BRACKET) {
        expect(TK_OP_BRACKET);
        int size = expect(TK_NUM)->int_val;
        type = new_type_array(type, size);
        expect(TK_CL_BRACKET);
    }
    LVar *lvar = new_lvar(token, type);
    Token *name_token = token;
    token = token->next;
    Node *node = new_node_lvar(lvar, name_token);
    expect(TK_SEMI);
    return node;
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
        if(peek() == TK_INT) {
            node = parse_decl();
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
    locals = NULL;
    expect(TK_INT);
    Type *type = new_type_int();
    Token *name = expect(TK_IDENT);
    expect(TK_OP_PAREN);
    Vector *params = vec_new();
    while(peek() != TK_CL_PAREN) {
        expect(TK_INT);
        Token *param = expect(TK_IDENT);
        vec_push(params, new_node_lvar(new_lvar(param, type), param));
        if(!consume_if(TK_COMMA))
            break;
    }
    expect(TK_CL_PAREN);
    Node *body = parse_block();
    return new_node_fdecl(name, params, body);
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

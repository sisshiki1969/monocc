#include "monocc.h"

// Method for Node

Node *new_node_num(int val) {
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

Node *new_node_lvar(LVar *lvar) {
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

Node *new_node_call(Node *callee, Vector *vec) {
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

Token *consume() {
    Token *ret = token;
    token = token->next;
    return ret;
}

// LVar

/// Generate LVar from token and put it to the locals list.
LVar *new_lvar(Token *token) {
    LVar *lvar = calloc(1, sizeof(LVar));
    lvar->next = locals;
    lvar->name = token->str;
    lvar->len = token->len;
    int offset = 8;
    if(locals)
        offset = locals->offset + 8;
    lvar->offset = offset;
    locals = lvar;
    return lvar;
}

LVar *find_lvar(Token *token) {
    for(LVar *var = locals; var; var = var->next) {
        if(var->len == token->len &&
           memcmp(var->name, token->str, var->len) == 0) {
            return var;
        }
    }
    return NULL;
}

void print_locals() {
    LVar *var = locals;
    while(var) {
        printf("// %.*s offset:%d\n", var->len, var->name, var->offset);
        var = var->next;
    }
}

/// If current token is a local variable, take it and return LVar struct.
/// Otherwise, raise error.
LVar *consume_lvar() {
    if(token->kind != TK_IDENT) {
        error_at_token(token, "Identifier is expected.");
    }
    LVar *lvar = find_lvar(token);
    if(!lvar) {
        lvar = new_lvar(token);
    }
    token = token->next;
    return lvar;
}

// Parser

Node *parse_expr();
Node *parse_assign_expr();
Node *parse_stmt();
Node *parse_decl();

Node *parse_prim_expr() {
    if(at_eof()) {
        error_at_token(token, "Unexpected EOF.");
    }
    if(peek() == TK_NUM) {
        return new_node_num(consume_number());
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
            return new_node_call(name, vec);
        } else {
            LVar *lvar = find_lvar(token);
            if(!lvar) {
                error_at_token(token, "Identifier %.*s is not defined.",
                               token->len, token->str);
            }
            token = token->next;
            return new_node_lvar(lvar);
        }
    }
    error_at_token(token, "parse_prom_expr(): Unexpected token.");
}

Node *parse_unary_expr() {
    Token *op_token = token;
    if(consume_if(TK_ADD)) {
        return parse_unary_expr();
    } else if(consume_if(TK_SUB)) {
        return new_node(ND_SUB, new_node_num(0), parse_unary_expr(), op_token);
    } else if(consume_if(TK_ADDR)) {
        return new_node(ND_ADDR, parse_unary_expr(), NULL, op_token);
    } else if(consume_if(TK_MUL)) {
        return new_node(ND_DEREF, parse_unary_expr(), NULL, op_token);
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

Node *parse_decl() {
    expect(TK_INT);
    if(token->kind != TK_IDENT) {
        error_at_token(token, "Identifier is expected.");
    }
    LVar *lvar = find_lvar(token);
    if(lvar)
        error_at_token(token, "Redefinition of variable.");
    lvar = new_lvar(token);
    token = token->next;
    Node *node = new_node_lvar(lvar);
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

Node *parse_func_definition() {
    locals = NULL;
    expect(TK_INT);
    Token *name = expect(TK_IDENT);
    expect(TK_OP_PAREN);
    Vector *params = vec_new();
    while(peek() != TK_CL_PAREN) {
        expect(TK_INT);
        Token *param = expect(TK_IDENT);
        vec_push(params, new_node_lvar(new_lvar(param)));
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

void print_node(Node *node) {
    if(node == NULL) {
        printf("NULL ");
        return;
    }
    if(is_binary_op(node->kind)) {
        switch(node->kind) {
        case ND_ADD:
            printf("(+ ");
            break;
        case ND_SUB:
            printf("(- ");
            break;
        case ND_MUL:
            printf("(* ");
            break;
        case ND_DIV:
            printf("(/ ");
            break;
        case ND_EQ:
            printf("(== ");
            break;
        case ND_NEQ:
            printf("(!= ");
            break;
        case ND_GE:
            printf("(>= ");
            break;
        case ND_GT:
            printf("(> ");
            break;
        default:
            error("Unknown binary node.");
        }
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(")");
        return;
    }
    switch(node->kind) {
    case ND_ADDR:
        printf("(ADDR ");
        print_node(node->lhs);
        printf(")");
        return;
    case ND_DEREF:
        printf("(DEREF ");
        print_node(node->lhs);
        printf(")");
        return;
    }
    if(node->kind == ND_CALL) {
        Token *name = node->lhs->token;
        printf("(CALL %.*s (", name->len, name->str);
        Vector *vec = node->nodes;
        int len = vec_len(vec);
        for(int i = 0; i < len; i++) {
            print_node(vec->data[i]);
            printf(":");
        }
        printf(") )");
        return;
    }
    if(node->kind == ND_NUM) {
        printf("(%d)", node->int_val);
        return;
    }
    if(node->kind == ND_ASSIGN) {
        printf("(= ");
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(")");
        return;
    }
    if(node->kind == ND_IF) {
        printf("(IF ");
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(" ");
        print_node(node->xhs);
        printf(")");
        return;
    }
    if(node->kind == ND_WHILE) {
        printf("( WHILE");
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(")");
        return;
    }
    if(node->kind == ND_BLOCK) {
        printf("( BLOCK");
        if(node->nodes) {
            Vector *vec = node->nodes;
            int len = vec_len(vec);
            for(int i = 0; i < len; i++) {
                print_node(vec->data[i]);
                printf(":");
            }
        }
        printf(")");
        return;
    }
    if(node->kind == ND_LVAR) {
        printf("(LVAR %d)", node->ident_offset);
        return;
    }
    if(node->kind == ND_RETURN) {
        printf("(RETURN ");
        print_node(node->lhs);
        printf(")");
        return;
    }
    if(node->kind == ND_FDECL) {
        printf("(FDECL %.*s (", node->token->len, node->token->str);
        if(node->nodes) {
            Vector *params = node->nodes;
            int len = vec_len(params);
            for(int i = 0; i < len; i++) {
                print_node(params->data[i]);
                printf(":");
            }
        }
        printf(") ");
        print_node(node->lhs);
        printf(")");
        return;
    }
    error("print_node(): Unknown node.");
}

void print_nodes() {
    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++) {
        Node *node = ext_declarations->data[i];
        printf("// ");
        print_node(node);
        printf("\n");
    }
}

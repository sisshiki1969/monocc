#include "monocc.h"

// Methods for Node

/// number(int)
/// kind: ND_NUM
/// int_val: int value
/// token: Token *token
/// type: int
Node *new_node_num(int val, Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_NUM;
    node->int_val = val;
    node->token = token;
    node->type = new_type_int();
    return node;
}

/// string literal
/// kind: ND_STR
/// int_val: int length
/// token: Token *token
/// type: char *
Node *new_node_str(Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_STR;
    node->token = token;
    node->type = new_type_array(new_type_char(), token->len);
    node->int_val = vec_len(strings);
    vec_push(strings, node);
    return node;
}

/// function designator
/// kind: ND_IDENT
/// token: Token *token
/// type:
Node *new_node_ident(Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_IDENT;
    node->token = token;
    return node;
}

/// local variable
/// kind: ND_LVAR
/// lvar: LVar *lvar
/// token: Token *token
/// type: lvar->type
Node *new_node_lvar(LVar *lvar, Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_LVAR;
    node->lvar = lvar;
    node->token = token;
    node->type = lvar->type;
    return node;
}

/// global variable
/// kind: ND_GVAR
/// lvar: LVar *lvar
/// token: Token *token
/// type: gvar->type
Node *new_node_gvar(Global *gvar, Token *token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_GVAR;
    node->token = token;
    node->type = gvar->type;
    return node;
}

/// Generate Node for binary op.
/// If either or both of operands is an array, convert it to ptr to the array.
/// kind: NodeKind
/// lhs: operand 1
/// rhs: operand 2
/// token: Token *op_token (indicates operator)
/// type: type of the result value.
Node *new_node_binary(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = get_ptr_if_array(lhs);
    node->rhs = get_ptr_if_array(rhs);
    node->token = op_token;
    node->type = type(node);
    return node;
}

/// Generate Node from lhs and rhs.
/// for DEREF, ADDR, ASSIGN
Node *new_node_expr(NodeKind kind, Node *lhs, Node *rhs, Token *op_token) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = lhs;
    node->rhs = rhs;
    node->token = op_token;
    node->type = type(node);
    return node;
}

/// function call
/// kind: ND_CALL
/// lhs: callee (ND_IDENT)
/// nodes: vector of arguments
/// token: Token *token
/// type: return type of callee
Node *new_node_call(Node *callee, Vector *vec, Token *token) {
    // TODO: Currently, only ND_IDENT is allowed as a callee.
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_CALL;
    node->lhs = callee;
    node->nodes = vec;
    node->token = token;
    node->type = callee->type;
    return node;
}

/// if-then-else statement
/// kind: ND_IF
/// lhs: Node *cond
/// rhs: Node *then
/// xhs: Node *else
/// token: Token *token
Node *new_node_if_then(Node *cond_, Node *then_, Node *else_) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_IF;
    node->lhs = cond_;
    node->rhs = then_;
    node->xhs = else_;
    node->token = token;
    return node;
}

/// while statement
/// kind: ND_WHITE
/// lhs: Node *cond
/// rhs: Node *do
/// token: Token *token
Node *new_node_while(Node *cond_, Node *do_) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_WHILE;
    node->lhs = cond_;
    node->rhs = do_;
    node->token = token;
    return node;
}

/// compound statement
/// kind: ND_BLOCK
/// nodes: Vector *stmts
/// token: Token *token
Node *new_node_block(Vector *stmts) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_BLOCK;
    node->nodes = stmts;
    node->token = token;
    return node;
}

/// func declaration
/// kind: ND_FDECL
/// lhs: Node *body
/// nodes: Vector *params
/// offset: int max_offset
/// token: Token *name
Node *new_node_fdecl(Token *name, Vector *params, int max_offset, Node *body) {
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_FDECL;
    node->lhs = body;
    node->nodes = params;
    node->offset = max_offset;
    node->token = name;
    return node;
}

// Methods for handling Token.

/// Return TokenKind of the current token.
TokenKind peek() { return token->kind; }

/// Return TokenKind of the next token.
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
    case TK_CHAR:
    case TK_VOID:
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
    int size = sizeof_type(type);
    if(locals) {
        offset = locals->offset + size;
    } else {
        offset = size;
    }
    lvar->offset = offset;
    lvar->type = type;
    lvar->out_of_scope = 0;
    lvar->scope;
    locals = lvar;
    return lvar;
}

LVar *find_lvar(Token *token) {
    for(LVar *var = locals; var; var = var->next) {
        if(!var->out_of_scope && var->token->len == token->len &&
           memcmp(var->token->str, token->str, token->len) == 0) {
            return var;
        }
    }
    return NULL;
}

void check_duplicate_lvar(Token *token) {
    for(LVar *var = locals; var; var = var->next) {
        if(var->scope != scope || var->out_of_scope)
            break;
        if(var->token->len == token->len &&
           memcmp(var->token->str, token->str, token->len) == 0)
            error_at_token(token, "Redefinition of variable.");
    }
}

// Global variables.

Global *new_gvar(Token *ident, Type *type) {
    Global *global = calloc(1, sizeof(Global));
    global->next = globals;
    global->token = ident;
    global->type = type;
    globals = global;
    return global;
}

Global *find_gvar(Token *token) {
    for(Global *var = globals; var; var = var->next) {
        if(var->token->len == token->len &&
           memcmp(var->token->str, token->str, token->len) == 0) {
            return var;
        }
    }
    return NULL;
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

Global *find_func(Token *token) {
    for(Global *func = functions; func; func = func->next) {
        if(func->token->len == token->len &&
           memcmp(func->token->str, token->str, token->len) == 0) {
            return func;
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
    if(peek() == TK_STR) {
        return new_node_str(consume());
    }
    if(consume_if(TK_OP_PAREN)) {
        Node *node = parse_expr();
        expect(TK_CL_PAREN);
        return node;
    }
    if(consume_if(TK_IDENT)) {
        LVar *lvar = find_lvar(cur_token);
        if(lvar)
            return new_node_lvar(lvar, cur_token);
        Global *gvar = find_gvar(cur_token);
        if(gvar)
            return new_node_gvar(gvar, cur_token);
        if(peek() == TK_OP_PAREN) {
            if(find_func(cur_token))
                return new_node_ident(cur_token);
        }
        error_at_token(cur_token, "Identifier %.*s is not defined.",
                       cur_token->len, cur_token->str);
    }
    if(consume_if(TK_MACRO)) {
        return new_node_num(get_line(cur_token->str), cur_token);
    }
    error_at_token(token, "parse_prim_expr(): Unexpected token.");
}

Node *parse_postfix_expr() {
    Node *node = parse_prim_expr();
    while(true) {
        if(consume_if(TK_OP_PAREN)) {
            if(node->kind != ND_IDENT)
                error_at_node(node, "Currently, callee must be an identifier.");
            Global *fn_global = find_func(node->token);
            if(!fn_global)
                error_at_node(node, "Undefined identifier.");
            node->type = fn_global->type->ptr_to;
            Vector *vec = vec_new();
            while(peek() != TK_CL_PAREN) {
                vec_push(vec, parse_assign_expr());
                if(!consume_if(TK_COMMA))
                    break;
            }
            expect(TK_CL_PAREN);
            node = new_node_call(node, vec, node->token);
            continue;
        }
        if(consume_if(TK_OP_BRACKET)) {
            Node *index = parse_expr();
            node = new_node_binary(ND_ADD, node, index, token);
            node = new_node_expr(ND_DEREF, node, NULL, token);
            expect(TK_CL_BRACKET);
        } else
            return node;
    }
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
    while(consume_if(TK_MUL)) {
        type = new_type_ptr_to(type);
    }

    // direct-declarator
    Token *ident_token = expect(TK_IDENT);
    check_duplicate_lvar(ident_token);

    // direct-declarator [ assignment-expression ]
    Type head;
    head.ptr_to = type;
    Type *cursor = &head;
    while(consume_if(TK_OP_BRACKET)) {
        int size = 1;
        if(peek() != TK_CL_BRACKET)
            // this should be assignment-expression
            size = expect(TK_NUM)->int_val;
        cursor->ptr_to = new_type_array(type, size);
        cursor = cursor->ptr_to;
        expect(TK_CL_BRACKET);
    }
    type = head.ptr_to;

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
    expect(TK_SEMI);
    return node;
}

Node *parse_block() {
    expect(TK_OP_BRACE);
    Vector *vec = vec_new();
    LVar *save_locals = locals;
    scope++;
    while(peek() != TK_CL_BRACE) {
        Node *node;
        if(is_type_specifier(peek())) {
            // local var declaration
            DeclInfo *info = parse_decl();

            LVar *lvar = new_lvar(info->token, info->type);
            node = NULL;
            expect(TK_SEMI);
        } else {
            node = parse_stmt();
        }
        if(node)
            vec_push(vec, node);
    }
    expect(TK_CL_BRACE);
    LVar *cursor = locals;
    while(cursor != save_locals) {
        cursor->out_of_scope = 1;
        cursor = cursor->next;
    }
    scope--;
    return new_node_block(vec);
}

Node *parse_func_definition(DeclInfo *info) {
    expect(TK_OP_PAREN);
    Vector *params = vec_new();
    Type *func_type = new_type_func(info->type);
    Global *func = new_func(info->token, func_type, NULL);
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
    Node *decl;
    if(consume_if(TK_SEMI)) {
        // function declaration
        decl = NULL; // new_node_fdecl(info->token, params, 0, NULL);
    } else {
        // function definition
        Node *body = parse_block();
        int max_offset = 0;
        if(locals)
            max_offset = locals->offset;
        decl = new_node_fdecl(info->token, params, max_offset, body);
    }
    func->func_decl = decl;
    return decl;
}

void *parse_gvar_declaration(DeclInfo *info) {
    if(find_gvar(info->token))
        error_at_token(info->token, "Redefinition of global variable");
    new_gvar(info->token, info->type);
    expect(TK_SEMI);
}

void parse_program() {
    ext_declarations = vec_new();
    while(!at_eof()) {
        locals = NULL;
        scope = 0;
        Node *decl;
        DeclInfo *info = parse_decl();
        if(peek() == TK_OP_PAREN)
            decl = parse_func_definition(info);
        else if(peek() == TK_SEMI) {
            parse_gvar_declaration(info);
            continue;
        } else
            error_at_token(token, "Unexpected token.");
        if(!decl)
            continue;
        printf("// ");
        print_node(decl);
        printf("\n");
        print_locals();
        vec_push(ext_declarations, decl);
    }
}

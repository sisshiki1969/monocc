#include "monocc.h"

// Method for Node

Node *new_node(NodeKind kind, Node *lhs, Node *rhs)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = kind;
    node->lhs = lhs;
    node->rhs = rhs;
    return node;
}

Node *new_node_num(int val)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_NUM;
    node->int_val = val;
    return node;
}

Node *new_node_lvar(LVar *lvar)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_LVAR;
    node->ident_lvar = lvar;
    node->ident_offset = lvar->offset;
    return node;
}

Node *new_node_if_then(Node *cond_, Node *then_, Node *else_)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_IF;
    node->lhs = cond_;
    node->rhs = then_;
    node->xhs = else_;
    return node;
}

Node *new_node_while(Node *cond_, Node *do_)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_WHILE;
    node->lhs = cond_;
    node->rhs = do_;
    return node;
}

Node *new_node_block(Vector *vec)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_BLOCK;
    node->nodes = vec;
    return node;
}

Node *new_node_call(Node *callee, Vector *vec)
{
    // TODO: Currently, only TK_IDENT is allowed as a callee.
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_CALL;
    node->lhs = callee;
    node->nodes = vec;
    return node;
}

Node *new_node_fdecl(Token *name, Vector *params, Node *body)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = ND_FDECL;
    node->lhs = body;
    node->nodes = params;
    node->token = name;
    return node;
}

Node *new_node_ident(Token *token)
{
    Node *node = calloc(1, sizeof(Node));
    node->kind = TK_IDENT;
    node->token = token;
    return node;
}

// Methods for handling Token.

/// If current token is EOF, return true.
/// Otherwise return false.
bool at_eof()
{
    return token->kind == TK_EOF;
}

/// If current token is `kind`, take it ans return true.
/// Otherwise, return false.
bool consume_if(TokenKind kind)
{
    if (token->kind == kind)
    {
        token = token->next;
        return true;
    }
    return false;
}

TokenKind peek()
{
    return token->kind;
}

TokenKind peek_next()
{
    return token->next->kind;
}

/// If current token is `kind`, take it.
/// Otherwise, raise error.
Token *expect(TokenKind kind)
{
    if (token->kind != kind)
    {
        error("expect(): Unexpected token %.*s", token->len, token->str);
    }
    Token *ret = token;
    token = token->next;
    return ret;
}

/// If current token is a number, take it and return int_val.
/// Otherwise, raise error.
int consume_number()
{
    if (token->kind != TK_NUM)
    {
        error("Unexpected token: Number is expected.");
    }
    int num = token->int_val;
    token = token->next;
    return num;
}

Token *consume()
{
    Token *ret = token;
    token = token->next;
    return ret;
}

// LVar

/// Generate LVar from token and put it to the locals list.
LVar *new_lvar(Token *token)
{
    LVar *lvar = calloc(1, sizeof(LVar));
    lvar->next = locals;
    lvar->name = token->str;
    lvar->len = token->len;
    int offset = 8;
    if (locals)
        offset = locals->offset + 8;
    lvar->offset = offset;
    locals = lvar;
    return lvar;
}

LVar *find_lvar(Token *token)
{
    for (LVar *var = locals; var; var = var->next)
    {
        if (var->len == token->len && memcmp(var->name, token->str, var->len) == 0)
        {
            return var;
        }
    }
    return NULL;
}

void print_locals()
{
    LVar *var = locals;
    while (var)
    {
        printf("// %.*s offset:%d\n", var->len, var->name, var->offset);
        var = var->next;
    }
}

/// If current token is a local variable, take it and return LVar struct.
/// Otherwise, raise error.
LVar *consume_lvar()
{
    if (token->kind != TK_IDENT)
    {
        error("consume_lvar(): Identifier is expected.");
    }
    LVar *lvar = find_lvar(token);
    if (!lvar)
    {
        lvar = new_lvar(token);
    }
    token = token->next;
    return lvar;
}

// Parser

Node *parse_expr();
Node *parse_assign_expr();
Node *parse_stmt();

Node *parse_prim_expr()
{
    if (at_eof())
    {
        error("Unexpected EOF");
    }
    if (peek() == TK_NUM)
    {
        return new_node_num(consume_number());
    }
    if (consume_if(TK_OP_PAREN))
    {
        Node *node = parse_expr();
        expect(TK_CL_PAREN);
        return node;
    }
    if (peek() == TK_IDENT)
    {
        // TODO:func() should be parsed in postfix-expr.
        if (peek_next() == TK_OP_PAREN)
        {
            // TODO: Currently, only TK_IDENT is allowed as a callee.
            Node *name = new_node_ident(expect(TK_IDENT));
            expect(TK_OP_PAREN);
            Vector *vec = vec_new();
            while (peek() != TK_CL_PAREN)
            {
                vec_push(vec, parse_assign_expr());
                if (!consume_if(TK_COMMA))
                    break;
            }
            expect(TK_CL_PAREN);
            return new_node_call(name, vec);
        }
        else
        {
            LVar *var = consume_lvar();
            return new_node_lvar(var);
        }
    }
    error("parse_prom_expr(): Unexpected token '%.*s'.", token->len, token->str);
}

Node *parse_unary_expr()
{
    if (consume_if(TK_ADD))
    {
        return parse_prim_expr();
    }
    else if (consume_if(TK_SUB))
    {
        Node *node = new_node(ND_SUB, new_node_num(0), parse_prim_expr());
        return node;
    }
    else
    {
        return parse_prim_expr();
    }
}

Node *parse_mul_expr()
{
    Node *node = parse_unary_expr();
    Node *rhs;

    while (true)
    {
        if (consume_if(TK_MUL))
        {
            rhs = parse_unary_expr();
            node = new_node(ND_MUL, node, rhs);
            continue;
        }
        else if (consume_if(TK_DIV))
        {
            rhs = parse_unary_expr();
            node = new_node(ND_DIV, node, rhs);
            continue;
        }
        return node;
    }
}

Node *parse_add_expr()
{
    Node *node = parse_mul_expr();
    Node *rhs;

    while (true)
    {
        if (consume_if(TK_ADD))
        {
            rhs = parse_mul_expr();
            node = new_node(ND_ADD, node, rhs);
            continue;
        }
        else if (consume_if(TK_SUB))
        {
            rhs = parse_mul_expr();
            node = new_node(ND_SUB, node, rhs);
            continue;
        }
        return node;
    }
}

Node *parse_rel_expr()
{
    Node *node = parse_add_expr();
    Node *rhs;

    for (;;)
    {
        if (consume_if(TK_GE))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GE, node, rhs);
            continue;
        }
        else if (consume_if(TK_GT))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GT, node, rhs);
            continue;
        }
        else if (consume_if(TK_LE))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GE, rhs, node);
            continue;
        }
        else if (consume_if(TK_LT))
        {
            rhs = parse_add_expr();
            node = new_node(ND_GT, rhs, node);
            continue;
        }
        return node;
    }
}

Node *parse_eq_expr()
{
    Node *node = parse_rel_expr();
    Node *rhs;

    for (;;)
    {
        if (consume_if(TK_EQ))
        {
            rhs = parse_rel_expr();
            node = new_node(ND_EQ, node, rhs);
            continue;
        }
        else if (consume_if(TK_NEQ))
        {
            rhs = parse_rel_expr();
            node = new_node(ND_NEQ, node, rhs);
            continue;
        }
        return node;
    }
}

Node *parse_assign_expr()
{
    Node *node = parse_eq_expr();

    if (consume_if(TK_ASSIGN))
    {
        node = new_node(ND_ASSIGN, node, parse_assign_expr());
    }
    return node;
}

Node *parse_expr()
{
    Node *node = parse_assign_expr();
    return node;
}

Node *parse_block()
{
    expect(TK_OP_BRACE);
    Vector *vec = vec_new();
    while (peek() != TK_CL_BRACE)
    {
        Node *node = parse_stmt();
        if (node)
            vec_push(vec, node);
    }
    expect(TK_CL_BRACE);
    return new_node_block(vec);
}

Node *parse_stmt()
{
    if (consume_if(TK_SEMI))
        return NULL;
    Node *node;
    Node *then_;
    switch (token->kind)
    {
    case TK_RETURN:
        expect(TK_RETURN);
        if (consume_if(TK_SEMI))
            return new_node(ND_RETURN, NULL, NULL);
        else
        {
            node = parse_expr();
            expect(TK_SEMI);
            return new_node(ND_RETURN, node, NULL);
        }
    case TK_IF:
        expect(TK_IF);
        expect(TK_OP_PAREN);
        node = parse_expr();
        expect(TK_CL_PAREN);
        then_ = parse_stmt();
        if (consume_if(TK_ELSE))
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
    if (at_eof())
        return node;
    expect(TK_SEMI);
    return node;
}

Node *parse_func_definition()
{
    locals = NULL;
    Token *name = expect(TK_IDENT);
    expect(TK_OP_PAREN);
    Vector *params = vec_new();
    while (peek() != TK_CL_PAREN)
    {
        Token *param = expect(TK_IDENT);
        vec_push(params, new_node_lvar(new_lvar(param)));
        if (!consume_if(TK_COMMA))
            break;
    }
    expect(TK_CL_PAREN);
    Node *body = parse_block();
    return new_node_fdecl(name, params, body);
}

void parse_program()
{
    ext_declarations = vec_new();
    while (!at_eof())
    {
        Node *decl = parse_func_definition();
        printf("// ");
        print_node(decl);
        printf("\n");
        print_locals();
        vec_push(ext_declarations, decl);
    }
}

void print_node(Node *node)
{
    if (node == NULL)
    {
        printf("NULL ");
        return;
    }
    if (is_binary_op(node->kind))
    {
        switch (node->kind)
        {
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
    if (node->kind == ND_CALL)
    {
        Token *name = node->lhs->token;
        printf("(CALL %.*s (", name->len, name->str);
        Vector *vec = node->nodes;
        int len = vec_len(vec);
        for (int i = 0; i < len; i++)
        {
            print_node(vec->data[i]);
            printf(":");
        }
        printf(") )");
        return;
    }
    if (node->kind == ND_NUM)
    {
        printf("(%d)", node->int_val);
        return;
    }
    if (node->kind == ND_ASSIGN)
    {
        printf("(= ");
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(")");
        return;
    }
    if (node->kind == ND_IF)
    {
        printf("(IF ");
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(" ");
        print_node(node->xhs);
        printf(")");
        return;
    }
    if (node->kind == ND_WHILE)
    {
        printf("( WHILE");
        print_node(node->lhs);
        printf(" ");
        print_node(node->rhs);
        printf(")");
        return;
    }
    if (node->kind == ND_BLOCK)
    {
        printf("( BLOCK");
        if (node->nodes)
        {
            Vector *vec = node->nodes;
            int len = vec_len(vec);
            for (int i = 0; i < len; i++)
            {
                print_node(vec->data[i]);
                printf(":");
            }
        }
        printf(")");
        return;
    }
    if (node->kind == ND_LVAR)
    {
        printf("(LVAR %d)", node->ident_offset);
        return;
    }
    if (node->kind == ND_RETURN)
    {
        printf("(RETURN ");
        print_node(node->lhs);
        printf(")");
        return;
    }
    if (node->kind == ND_FDECL)
    {
        printf("(FDECL %.*s (", node->token->len, node->token->str);
        if (node->nodes)
        {
            Vector *params = node->nodes;
            int len = vec_len(params);
            for (int i = 0; i < len; i++)
            {
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

void print_nodes()
{
    int len = vec_len(ext_declarations);
    for (int i = 0; i < len; i++)
    {
        Node *node = ext_declarations->data[i];
        printf("// ");
        print_node(node);
        printf("\n");
    }
}

#include "monocc.h"

/// Print tokens.
void print_token(Token *token) {
    switch(token->kind) {
    case TK_NUM:
    case TK_IDENT:
    case TK_ADD:
    case TK_SUB:
    case TK_MUL:
    case TK_DIV:
    case TK_ADDR:
    case TK_EQ:
    case TK_NEQ:
    case TK_GT:
    case TK_GE:
    case TK_LT:
    case TK_LE:
    case TK_ASSIGN:
    case TK_ASSIGN_ADD:
    case TK_ASSIGN_SUB:
    case TK_ASSIGN_MUL:
    case TK_ASSIGN_DIV:
    case TK_INC:
    case TK_DEC:
    case TK_OP_PAREN:
    case TK_CL_PAREN:
    case TK_OP_BRACE:
    case TK_CL_BRACE:
    case TK_OP_BRACKET:
    case TK_CL_BRACKET:
    case TK_COMMA:
    case TK_COLON:
    case TK_SIZEOF:
    case TK_DOT:
    case TK_ARROW:
    case TK_SEMI:
        printf("[%.*s]", token->len, token->str);
        break;
    // Reserved words
    case TK_IF:
    case TK_ELSE:
    case TK_WHILE:
    case TK_FOR:
    case TK_SWITCH:
    case TK_CASE:
    case TK_DEFAULT:
    case TK_BREAK:
    case TK_CONTINUE:
    case TK_RETURN:
    case TK_INT:
    case TK_CHAR:
    case TK_VOID:
    case TK_STRUCT:
    case TK_MACRO:
        printf("<%.*s>", token->len, token->str);
        break;
    case TK_EOF:
        printf("<EOF>");
        break;
    case TK_STR:
        printf("\"%.*s\"", token->len, token->str);
        break;
    default:
        error_at_token(token, "print_tokens(): Unknown TokenKind.");
        break;
    }
}

/// Print tokens.
void print_tokens(Token *token) {
    printf("// ");
    while(token) {
        print_token(token);
        if(token->kind == TK_SEMI)
            printf("\n// ");
        token = token->next;
    }
    printf("\n");
}

/// Print node.
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
    case ND_MEMBER:
        printf("(MEMBER ");
        print_node(node->lhs);
        printf(" %.*s %d)", node->token->len, node->token->str,
               node->type->offset);
        return;
    case ND_BREAK:
        printf("BREAK ");
        return;
    case ND_CONTINUE:
        printf("CONTINUE ");
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
        printf(" %d ", node->int_val);
        return;
    }
    if(node->kind == ND_STR) {
        printf(" \"%.*s\" ", node->token->len, node->token->str);
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
    if(node->kind == ND_SWITCH) {
        printf("(SWITCH cond: ");
        print_node(node->lhs);
        printf(" body: ");
        print_node(node->rhs);
        printf(")");
        return;
    }

    if(node->kind == ND_CASE) {
        printf("(CASE cond:");
        print_node(node->lhs);
        printf(" body:");
        print_node(node->rhs);
        printf(")");
        return;
    }

    if(node->kind == ND_DEFAULT) {
        printf("(DEFAULT body:");
        print_node(node->lhs);
        printf(")");
        return;
    }

    if(node->kind == ND_WHILE) {
        printf("(WHILE cond:");
        print_node(node->lhs);
        printf("body: ");
        print_node(node->rhs);
        printf(")");
        return;
    }
    if(node->kind == ND_FOR) {
        printf("(FOR init: ");
        print_node(node->lhs);
        printf("cond: ");
        print_node(node->rhs);
        printf(" post: ");
        print_node(node->xhs);
        printf(" body ");
        print_node(node->nodes->data[0]);
        printf(")");
        return;
    }
    if(node->kind == ND_BLOCK) {
        printf("(BLOCK");
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
        printf("(LVAR %d)", node->lvar->offset);
        return;
    }
    if(node->kind == ND_GVAR) {
        printf("(GVAR %.*s)", node->token->len, node->token->str);
        return;
    }
    if(node->kind == ND_RETURN) {
        printf("(RETURN ");
        print_node(node->lhs);
        printf(")");
        return;
    }
    if(node->kind == ND_FDECL) {
        printf("FDECL %.*s ", node->token->len, node->token->str);
        print_type(stdout, node->type, false);
        printf("\n//    ");
        if(node->nodes) {
            Vector *params = node->nodes;
            int len = vec_len(params);
            for(int i = 0; i < len; i++) {
                print_node(params->data[i]);
                printf(" ");
            }
        }
        printf("\n//    ");
        print_node(node->lhs);
        printf(")");
        return;
    }
    error("print_node(): Unknown node.");
}

/// Print all nodes in `ext_declaration`.
void print_nodes() {
    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++) {
        Node *node = ext_declarations->data[i];
        printf("// ");
        print_node(node);
        printf("\n");
    }
}

/// Print Type to stream.
void print_type(FILE *stream, Type *type, bool recursive_flag) {
    if(type->ty == INT) {
        fprintf(stream, "int ");
    } else if(type->ty == CHAR) {
        fprintf(stream, "char ");
    } else if(type->ty == VOID) {
        fprintf(stream, "void ");
    } else if(type->ty == PTR) {
        fprintf(stream, "* ");
        print_type(stream, type->ptr_to, false);
    } else if(type->ty == ARRAY) {
        fprintf(stream, "[%d] ", type->array_size);
        print_type(stream, type->ptr_to, false);
    } else if(type->ty == FUNC) {
        fprintf(stream, "func ");
        Type *param = type->params;
        fprintf(stream, "( ");
        bool first = true;
        while(param) {
            if(!first)
                fprintf(stream, ", ");
            first = false;
            print_type(stream, param, false);
            param = param->next;
        }
        fprintf(stream, ") ");
        print_type(stream, type->ptr_to, false);
    } else if(type->ty == STRUCT) {
        fprintf(stream, "struct ");
        if(type->tag_name) {
            fprintf(stream, "<%.*s> ", type->tag_name->len,
                    type->tag_name->str);
            if(!recursive_flag)
                return;
        }
        Type *member = type->member;
        fprintf(stream, "{ ");
        bool first = true;
        while(member) {
            if(!first)
                fprintf(stream, ", ");
            first = false;
            if(is_struct(member) && member->tag_name) {
                fprintf(stream, "struct %.*s ", member->tag_name->len,
                        member->tag_name->str);
            } else {
                print_type(stream, member, false);
                if(member->var_name)
                    fprintf(stream, "<%.*s:%d>", member->var_name->len,
                            member->var_name->str, member->offset);
                else
                    fprintf(stream, "<>");
            }
            member = member->next;
        }
        fprintf(stream, "} ");
    } else
        error("print_type(): Unknown Type.");
}

/// Print local variables in `locals`.
void print_locals() {
    LVar *var = locals;
    while(var) {
        fprintf(stdout, "//    %.*s  offset:%d  ", var->token->len,
                var->token->str, var->offset);
        print_type(stdout, var->type, false);
        fprintf(stdout, "\n");
        var = var->next;
    }
    fprintf(stdout, "\n");
}

void print_globals() {
    Global *global = globals;
    fprintf(stdout, "// Globals\n");
    while(global) {
        fprintf(stdout, "// %.*s ", global->token->len, global->token->str);
        print_type(stdout, global->type, false);
        fprintf(stdout, "\n");
        global = global->next;
    }
}

void print_funcs() {
    Global *func = functions;
    fprintf(stdout, "// Functions\n");
    while(func) {
        fprintf(stdout, "// %.*s ", func->token->len, func->token->str);
        print_type(stdout, func->type, false);
        fprintf(stdout, "\n");
        func = func->next;
    }
}

void print_strings() {
    fprintf(stdout, "// Stringss\n");
    int i = 0;
    while(i < vec_len(strings)) {
        fprintf(stdout, "// \"%.*s\"\n", strings->data[i]->token->len,
                strings->data[i]->token->str);
        i++;
    }
}

void print_structs() {
    TagName *tag = tagnames;
    fprintf(stdout, "// Structs\n");
    while(tag) {
        if(tag->ident)
            fprintf(stdout, "// %.*s ", tag->ident->len, tag->ident->str);
        else
            fprintf(stdout, "// anonymus ");
        print_type(stdout, tag->type, true);
        fprintf(stdout, "\n");
        tag = tag->next;
    }
}
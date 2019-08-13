#include "monocc.h"

/// Print tokens.
void print_token(Token *token) {
    switch(token->kind) {
    case TK_IDENT:
    case TK_NUM:

    case TK_ADD:
    case TK_SUB:
    case TK_MUL:
    case TK_DIV:

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

    case TK_LAND:
    case TK_LOR:
    case TK_AND:
    case TK_OR:
    case TK_NOT:
    case TK_XOR:
    case TK_SHR:
    case TK_SHL:

    case TK_SEMI:
    case TK_OP_PAREN:
    case TK_CL_PAREN:
    case TK_OP_BRACE:
    case TK_CL_BRACE:
    case TK_OP_BRACKET:
    case TK_CL_BRACKET:
    case TK_COMMA:
    case TK_COLON:
    case TK_DOT:
    case TK_ARROW:
    case TK_ELLIPSIS:
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
    case TK_SIZEOF:

    case TK_INT:
    case TK_CHAR:
    case TK_BOOL:
    case TK_VOID:
    case TK_STRUCT:
    case TK_ENUM:
    case TK_UNION:

    case TK_TYPEDEF:
    case TK_EXTERN:
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
        case ND_SUB:
        case ND_MUL:
        case ND_DIV:
        case ND_EQ:
        case ND_NEQ:
        case ND_GE:
        case ND_GT:
        case ND_LAND:
        case ND_LOR:
        case ND_AND:
        case ND_OR:
        case ND_XOR:
        case ND_SHR:
        case ND_SHL:
            printf("(%.*s ", node->token->len, node->token->str);
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
    case ND_NOT:
        printf("(! ");
        print_node(node->lhs);
        printf(")");
        return;
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
    case ND_CAST:
        printf("(CAST ");
        print_type(stdout, node->type);
        printf(" ");
        print_node(node->lhs);
        printf(")");
        return;
    case ND_MEMBER:
        printf("(MEMBER ");
        print_node(node->lhs);
        printf(" %.*s %d)", node->token->len, node->token->str, node->offset);
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
    if(node->kind == ND_INIT) {
        Vector *vec = node->nodes;
        bool first = true;
        printf("{");
        for(int i = 0; i < vec_len(vec); i++) {
            if(!first)
                printf(",");
            first = false;
            print_node(vec->data[i]);
            // printf(" ");
        }
        printf("}");
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
        print_type(stdout, node->type);
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

void print_struct_member(FILE *stream, MemberInfo *member);

/// Print Type to stream.
void print_type(FILE *stream, Type *type) {
    if(type->ty == INT) {
        fprintf(stream, "int ");
    } else if(type->ty == CHAR) {
        fprintf(stream, "char ");
    } else if(type->ty == BOOL) {
        fprintf(stream, "bool ");
    } else if(type->ty == VOID) {
        fprintf(stream, "void ");
    } else if(type->ty == PTR) {
        fprintf(stream, "* ");
        print_type(stream, type->ptr_to);
    } else if(type->ty == ARRAY) {
        fprintf(stream, "[%d] ", type->array_size);
        print_type(stream, type->ptr_to);
    } else if(type->ty == FUNC) {
        fprintf(stream, "func ");
        MemberInfo *param = type->params;
        fprintf(stream, "( ");
        bool first = true;
        while(param) {
            if(!first)
                fprintf(stream, ", ");
            first = false;
            if(param->type)
                print_type(stream, param->type);
            else
                fprintf(stream, "NULL_TYPE");
            if(param->ident)
                fprintf(stream, " %.*s ", param->ident->len, param->ident->str);
            else
                fprintf(stream, "- ");
            param = param->next;
        }
        fprintf(stream, ") ");
        print_type(stream, type->ptr_to);
    } else if(type->ty == STRUCT) {
        fprintf(stream, "struct ");
        if(type->tag_name) {
            fprintf(stream, "<%.*s> ", type->tag_name->len,
                    type->tag_name->str);
        } else {
            fprintf(stream, "<> { ");
            print_struct_member(stream, type->member);
            fprintf(stream, "}");
        }
        // Type *member = type->member;
    } else if(type->ty == ENUM) {
        fprintf(stream, "enum ");
        if(type->tag_name) {
            fprintf(stream, "<%.*s> ", type->tag_name->len,
                    type->tag_name->str);
        }
    } else if(type->ty == ENUM_EL) {
        fprintf(stream, "enum_el ");
        if(type->tag_name) {
            fprintf(stream, "<%.*s:%d> ", type->tag_name->len,
                    type->tag_name->str, type->offset);
        }
    } else
        error("print_type(): Unknown Type.");
}

void print_struct_member(FILE *stream, MemberInfo *member) {
    bool first = true;
    while(member) {
        if(!first)
            fprintf(stream, ", ");
        first = false;
        print_type(stream, member->type);
        if(member->ident)
            fprintf(stream, "<%.*s:%d>", member->ident->len, member->ident->str,
                    member->offset);
        else
            fprintf(stream, "<>");
        member = member->next;
    }
}

void print_enum_member(MemberInfo *member) {
    bool first = true;
    while(member) {
        if(!first)
            fprintf(stdout, ", ");
        first = false;
        print_type(stdout, member->type);
        member = member->next;
    }
}

/// Print local variables in `locals`.
void print_locals() {
    LVar *var = locals;
    while(var) {
        fprintf(stdout, "//    %.*s  offset:%d  ", var->token->len,
                var->token->str, var->offset);
        print_type(stdout, var->type);
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
        print_type(stdout, global->type);
        print_node(global->body);
        fprintf(stdout, "\n");
        global = global->next;
    }
}

void print_funcs() {
    Global *func = functions;
    fprintf(stdout, "// Functions\n");
    while(func) {
        fprintf(stdout, "// %.*s ", func->token->len, func->token->str);
        print_type(stdout, func->type);
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
    fprintf(stdout, "\n// Tagnames\n");
    while(tag) {
        if(tag->ident)
            fprintf(stdout, "// %.*s ", tag->ident->len, tag->ident->str);
        else
            fprintf(stdout, "// anonymus ");
        if(is_struct(tag->type)) {
            fprintf(stdout, "struct { ");
            print_struct_member(stdout, tag->type->member);
            fprintf(stdout, "}\n");
        } else if(is_enum(tag->type)) {
            fprintf(stdout, "enum { ");
            print_enum_member(tag->type->member);
            fprintf(stdout, "}\n");
        } else if(is_enum_el(tag->type)) {
            fprintf(stdout, "enum_el { %d }\n", tag->type->offset);
        }
        tag = tag->next;
    }
}

void print_typedefs() {
    fprintf(stdout, "\n// Typedef\n");
    Typedef *tdef = tdef_names;
    while(tdef) {
        fprintf(stdout, "// %.*s ", tdef->ident->len, tdef->ident->str);
        print_type(stdout, tdef->type);
        fprintf(stdout, "\n");
        tdef = tdef->next;
    }
}
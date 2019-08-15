#include "monocc.h"

// Methods for Token

/// Create a new token.
Token *new_token(TokenKind kind, Token *cur, char *str, int len) {
    Token *new_token = calloc(1, sizeof(Token));
    new_token->kind = kind;
    new_token->str = str;
    new_token->len = len;
    cur->next = new_token;
    return new_token;
}

/// Create a new token and copy source token to the new token..
Token *dup_token(Token *src) {
    Token *new = calloc(1, sizeof(Token));
    new->kind = src->kind;
    new->str = src->str;
    new->len = src->len;
    new->int_val = src->int_val;
    new->next = NULL;
    return new;
}

/// Create a new token.
Token *macro_token(char *str, int len) {
    Token *new_token = calloc(1, sizeof(Token));
    new_token->kind = TK_IDENT;
    new_token->str = str;
    new_token->len = len;
    return new_token;
}

bool is_ident_char(char c) { return isalnum(c) || c == '_'; }

bool is_reserved(char *str, int len, char *reserved) {
    return len == strlen(reserved) && strncmp(str, reserved, len) == 0;
}

FileInfo *new_file_info(char *file_name, char *start) {
    FileInfo *fi = calloc(1, sizeof(FileInfo));
    fi->next = file_informations;
    fi->file_name = file_name;
    fi->start = start;
    file_informations = fi;
    return fi;
}

Macro *macros;

Macro *new_macro(Token *token, Token *subst) {
    Macro *m = calloc(1, sizeof(Macro));
    m->token = token;
    m->subst = subst;
    m->next = macros;
    macros = m;
}

Token *dup_tokens(Token *src) {
    Token head;
    head.next = NULL;
    Token *t = &head;
    for(; src; src = src->next) {
        t->next = dup_token(src);
        t = t->next;
    }
    return head.next;
}

Token *find_macro(Token *token) {
    for(Macro *m = macros; m; m = m->next) {
        if(token->len == m->token->len &&
           strncmp(token->str, m->token->str, token->len) == 0) {
            return dup_tokens(m->subst);
        }
    }
    return NULL;
}

typedef struct TokContext TokContext;
struct TokContext {
    FileInfo *file_info;
    Token *current_token;
    char *char_ptr;
};

TokContext *new_tok_context(FileInfo *file_info, Token *current_token,
                            char *char_ptr) {
    TokContext *ctx = calloc(1, sizeof(TokContext));
    ctx->file_info = file_info;
    ctx->current_token = current_token;
    ctx->char_ptr = char_ptr;
    return ctx;
}

Token *read_token(TokContext *ctx);

/// Tokenize the input string.
/// char *file; file name
/// char *p; ptr to source text.
/// bool is_main; false if the included code by #include.
void tokenize(char *file, char *p, bool is_main) {
    Token head;
    head.next = NULL;
    Token *cur = &head;
    FileInfo *fi = new_file_info(file, p);

    while(*p) {
        // fprintf(stderr, "%c", *p);
        if(isspace(*p)) {
            p++;
            continue;
        }
        if(*p == '#') {
            char *cursor = strchr(p++, '\n');
            while(*p == ' ' || *p == '\t')
                p++;
            int len = 0;
            while(is_ident_char(*(p + len)))
                len++;
            if(is_reserved(p, len, "include")) {
                p += len;
                while(*p == ' ' || *p == '\t')
                    p++;
                if(*p == '"') {
                    // get directory name of the current file.
                    char *cur_dir;
                    char *f = strrchr(file, '/');
                    if(!f)
                        cur_dir = "./";
                    else {
                        cur_dir = calloc(1, f - file + 2);
                        strncpy(cur_dir, file, f - file + 1);
                    }
                    // fprintf(stderr, "directory: %s\n", cur_dir);
                    // concat the include file name to the directory name.
                    char *end = strchr(p + 1, '"');
                    int len = end - p - 1;
                    char *file_name = calloc(1, strlen(cur_dir) + len + 1);
                    strcpy(file_name, cur_dir);
                    strncpy(file_name + strlen(cur_dir), p + 1, len);

                    // fprintf(stderr, "include <%s>\n", file_name);
                    char *text = read_file(file_name);
                    tokenize(file_name, text, false);
                }
            } else if(is_reserved(p, len, "define")) {
                fprintf(stderr, "macro define: ");
                p += len;
                while(*p == ' ' || *p == '\t')
                    p++;
                int len = 0;
                while(is_ident_char(*(p + len)))
                    len++;
                Token *tok = macro_token(p, len);
                print_token(stderr, tok);
                fprintf(stderr, "=>");
                p += len;

                Token head;
                head.next = NULL;
                Token *cursor = &head;
                TokContext *ctx = new_tok_context(fi, cursor, p);
                while(*(ctx->char_ptr) != '\n') {
                    print_token(stderr, read_token(ctx));
                }
                if(!head.next)
                    error_at_token(tok, "No substitute token.");
                new_macro(tok, head.next);

                fprintf(stderr, "\n");
            }
            // cur = new_token(TK_MACRO, cur, p, cursor - p);
            p = cursor + 1;
            continue;
        }
        if(strncmp(p, "//", 2) == 0) {
            p += 2;
            char *next = strchr(p, '\n');
            if(!next) {
                p = strchr(p, '\n');
            } else
                p = next + 1;
            continue;
        }
        if(strncmp(p, "__LINE__", 8) == 0) {
            cur = new_token(TK_MACRO, cur, p, 8);
            p += 8;
            continue;
        }
        if(isdigit(*p)) {
            int num = *p - '0';
            int len = 1;
            while(isdigit(*(p + len))) {
                num *= 10;
                num += *(p + len) - '0';
                len++;
            }
            cur = new_token(TK_NUM, cur, p, len);
            p += len;
            cur->int_val = num;
            continue;
        }
        if(isalpha(*p) || *p == '_') {
            int len = 1;
            while(is_ident_char(*(p + len)))
                len++;

            if(is_reserved(p, len, "return")) {
                cur = new_token(TK_RETURN, cur, p, len);
            } else if(is_reserved(p, len, "if")) {
                cur = new_token(TK_IF, cur, p, len);
            } else if(is_reserved(p, len, "else")) {
                cur = new_token(TK_ELSE, cur, p, len);
            } else if(is_reserved(p, len, "while")) {
                cur = new_token(TK_WHILE, cur, p, len);
            } else if(is_reserved(p, len, "for")) {
                cur = new_token(TK_FOR, cur, p, len);
            } else if(is_reserved(p, len, "switch")) {
                cur = new_token(TK_SWITCH, cur, p, len);
            } else if(is_reserved(p, len, "case")) {
                cur = new_token(TK_CASE, cur, p, len);
            } else if(is_reserved(p, len, "default")) {
                cur = new_token(TK_DEFAULT, cur, p, len);
            } else if(is_reserved(p, len, "break")) {
                cur = new_token(TK_BREAK, cur, p, len);
            } else if(is_reserved(p, len, "continue")) {
                cur = new_token(TK_CONTINUE, cur, p, len);
            } else if(is_reserved(p, len, "int")) {
                cur = new_token(TK_INT, cur, p, len);
            } else if(is_reserved(p, len, "char")) {
                cur = new_token(TK_CHAR, cur, p, len);
            } else if(is_reserved(p, len, "bool")) {
                cur = new_token(TK_BOOL, cur, p, len);
            } else if(is_reserved(p, len, "void")) {
                cur = new_token(TK_VOID, cur, p, len);
            } else if(is_reserved(p, len, "sizeof")) {
                cur = new_token(TK_SIZEOF, cur, p, len);
            } else if(is_reserved(p, len, "struct")) {
                cur = new_token(TK_STRUCT, cur, p, len);
            } else if(is_reserved(p, len, "enum")) {
                cur = new_token(TK_ENUM, cur, p, len);
            } else if(is_reserved(p, len, "union")) {
                cur = new_token(TK_UNION, cur, p, len);
            } else if(is_reserved(p, len, "typedef")) {
                cur = new_token(TK_TYPEDEF, cur, p, len);
            } else if(is_reserved(p, len, "extern")) {
                cur = new_token(TK_EXTERN, cur, p, len);
            } else {
                cur = new_token(TK_IDENT, cur, p, len);
            }
            p += len;
            continue;
        }
        if(*p == '+') {
            if(*(p + 1) == '=') {
                cur = new_token(TK_ASSIGN_ADD, cur, p, 2);
                p += 2;
            } else if(*(p + 1) == '+') {
                cur = new_token(TK_INC, cur, p, 2);
                p += 2;
            } else
                cur = new_token(TK_ADD, cur, p++, 1);
            continue;
        }
        if(*p == '-') {
            if(*(p + 1) == '=') {
                cur = new_token(TK_ASSIGN_SUB, cur, p, 2);
                p += 2;
            } else if(*(p + 1) == '-') {
                cur = new_token(TK_DEC, cur, p, 2);
                p += 2;
            } else if(*(p + 1) == '>') {
                cur = new_token(TK_ARROW, cur, p, 2);
                p += 2;
            } else
                cur = new_token(TK_SUB, cur, p++, 1);
            continue;
        }
        if(*p == '*') {
            if(*(p + 1) == '=') {
                cur = new_token(TK_ASSIGN_MUL, cur, p, 2);
                p += 2;
            } else
                cur = new_token(TK_MUL, cur, p++, 1);
            continue;
        }
        if(*p == '/') {
            if(*(p + 1) == '=') {
                cur = new_token(TK_ASSIGN_DIV, cur, p, 2);
                p += 2;
            } else
                cur = new_token(TK_DIV, cur, p++, 1);
            continue;
        }
        if(*p == ',') {
            cur = new_token(TK_COMMA, cur, p++, 1);
            continue;
        }
        if(*p == '~') {
            cur = new_token(TK_TILDA, cur, p++, 1);
            continue;
        }
        if(*p == '=') {
            p++;
            if(*p == '=') {
                cur = new_token(TK_EQ, cur, p - 1, 2);
                p++;
                continue;
            } else {
                cur = new_token(TK_ASSIGN, cur, p - 1, 1);
                continue;
            }
        }
        if(*p == '>') {
            p++;
            if(*p == '=') {
                cur = new_token(TK_GE, cur, p - 1, 2);
                p++;
                continue;
            } else if(*p == '>') {
                cur = new_token(TK_SHR, cur, p - 1, 2);
                p++;
                continue;
            } else {
                cur = new_token(TK_GT, cur, p - 1, 1);
                continue;
            }
        }
        if(*p == '<') {
            p++;
            if(*p == '=') {
                cur = new_token(TK_LE, cur, p - 1, 2);
                p++;
                continue;
            } else if(*p == '<') {
                cur = new_token(TK_SHL, cur, p - 1, 2);
                p++;
                continue;
            } else {
                cur = new_token(TK_LT, cur, p - 1, 1);
                continue;
            }
        }
        if(*p == '!') {
            p++;
            if(*p == '=') {
                cur = new_token(TK_NEQ, cur, p - 1, 2);
                p++;
                continue;
            } else {
                cur = new_token(TK_NOT, cur, p - 1, 1);
                continue;
            }
        }
        if(*p == ';') {
            cur = new_token(TK_SEMI, cur, p++, 1);
            continue;
        }
        if(*p == ':') {
            cur = new_token(TK_COLON, cur, p++, 1);
            continue;
        }
        if(*p == '(') {
            cur = new_token(TK_OP_PAREN, cur, p++, 1);
            continue;
        }
        if(*p == ')') {
            cur = new_token(TK_CL_PAREN, cur, p++, 1);
            continue;
        }
        if(*p == '{') {
            cur = new_token(TK_OP_BRACE, cur, p++, 1);
            continue;
        }
        if(*p == '}') {
            cur = new_token(TK_CL_BRACE, cur, p++, 1);
            continue;
        }
        if(*p == '[') {
            cur = new_token(TK_OP_BRACKET, cur, p++, 1);
            continue;
        }
        if(*p == ']') {
            cur = new_token(TK_CL_BRACKET, cur, p++, 1);
            continue;
        }
        if(*p == '^') {
            cur = new_token(TK_XOR, cur, p++, 1);
            continue;
        }
        if(*p == '&') {
            if(*(p + 1) == '&') {
                cur = new_token(TK_LAND, cur, p, 2);
                p += 2;
                continue;
            }
            cur = new_token(TK_AND, cur, p++, 1);
            continue;
        }
        if(*p == '|') {
            if(*(p + 1) == '|') {
                cur = new_token(TK_LOR, cur, p, 2);
                p += 2;
                continue;
            }
            cur = new_token(TK_OR, cur, p++, 1);
            continue;
        }
        if(*p == '.') {
            if(*(p + 1) == '.' && *(p + 2) == '.') {
                cur = new_token(TK_ELLIPSIS, cur, p, 3);
                p += 3;
                continue;
            }
            cur = new_token(TK_DOT, cur, p++, 1);
            continue;
        }
        if(*p == '"') {
            p++;
            char *src = p;
            while(*src && *src != '"') {
                if(*src != '\\') {
                    src++;
                } else {
                    src++;
                    switch(*src) {
                    case '0':
                    case 'a':
                    case 'b':
                    case 'f':
                    case 'n':
                    case 'r':
                    case 't':
                    case '\\':
                    case '\'':
                    case '\"':
                        src++;
                        break;
                    default:
                        error_at_char(fi, src - 1,
                                      "Unsupported escape sequence.");
                    }
                }
            }
            if(!*src)
                error_at_char(fi, src - 1, "Missing closing quote.");
            cur = new_token(TK_STR, cur, p, (int)(src - p));
            p = src + 1;
            continue;
        }
        if(*p == '\'') {
            char *org_p = p;
            p++;
            char ch;
            if(*p != '\\') {
                ch = *p;
            } else {
                p++;
                switch(*p) {
                case '0':
                    ch = '\0';
                    break;
                case 'a':
                    ch = '\a';
                    break;
                case 'b':
                    ch = '\b';
                    break;
                case 'f':
                    ch = '\f';
                    break;
                case 'n':
                    ch = '\n';
                    break;
                case 'r':
                    ch = '\r';
                    break;
                case 't':
                    ch = '\t';
                    break;
                case '\\':
                    ch = '\\';
                    break;
                case '\'':
                    ch = '\'';
                    break;
                case '\"':
                    ch = '\"';
                    break;
                default:
                    error_at_token(token, "Unsupported escape sequence.");
                }
            }

            p++;
            if(*p++ != '\'')
                error_at_char(fi, p - 1, "Unexpected token. Expected \"'\".");
            cur = new_token(TK_NUM, cur, org_p, p - org_p);
            cur->int_val = ch;
            continue;
        }
        error_at_char(fi, p, "Unexpected character.");
    }

    if(!token) {
        token = head.next;
    } else {
        Token *cursor = token;
        while(cursor->next)
            cursor = cursor->next;
        cursor->next = head.next;
    }
    if(is_main)
        cur = new_token(TK_EOF, cur, p, 1);
    fi->end = p;
}

Token *read_token(TokContext *ctx) {
    char *p = ctx->char_ptr;
    FileInfo *fi = ctx->file_info;
    Token *cur = ctx->current_token;
    while(*p == ' ' || *p == '\t') {
        p++;
    }
    if(strncmp(p, "//", 2) == 0) {
        p += 2;
        char *next = strchr(p, '\n');
        if(!next) {
            p = strchr(p, '\n');
        } else
            p = next + 1;
    } else if(strncmp(p, "__LINE__", 8) == 0) {
        cur = new_token(TK_MACRO, cur, p, 8);
        p += 8;
    } else if(isdigit(*p)) {
        int num = *p - '0';
        int len = 1;
        while(isdigit(*(p + len))) {
            num *= 10;
            num += *(p + len) - '0';
            len++;
        }
        cur = new_token(TK_NUM, cur, p, len);
        p += len;
        cur->int_val = num;
    } else if(isalpha(*p)) {
        int len = 1;
        while(is_ident_char(*(p + len)))
            len++;

        if(is_reserved(p, len, "return")) {
            cur = new_token(TK_RETURN, cur, p, len);
        } else if(is_reserved(p, len, "if")) {
            cur = new_token(TK_IF, cur, p, len);
        } else if(is_reserved(p, len, "else")) {
            cur = new_token(TK_ELSE, cur, p, len);
        } else if(is_reserved(p, len, "while")) {
            cur = new_token(TK_WHILE, cur, p, len);
        } else if(is_reserved(p, len, "for")) {
            cur = new_token(TK_FOR, cur, p, len);
        } else if(is_reserved(p, len, "switch")) {
            cur = new_token(TK_SWITCH, cur, p, len);
        } else if(is_reserved(p, len, "case")) {
            cur = new_token(TK_CASE, cur, p, len);
        } else if(is_reserved(p, len, "default")) {
            cur = new_token(TK_DEFAULT, cur, p, len);
        } else if(is_reserved(p, len, "break")) {
            cur = new_token(TK_BREAK, cur, p, len);
        } else if(is_reserved(p, len, "continue")) {
            cur = new_token(TK_CONTINUE, cur, p, len);
        } else if(is_reserved(p, len, "int")) {
            cur = new_token(TK_INT, cur, p, len);
        } else if(is_reserved(p, len, "char")) {
            cur = new_token(TK_CHAR, cur, p, len);
        } else if(is_reserved(p, len, "bool")) {
            cur = new_token(TK_BOOL, cur, p, len);
        } else if(is_reserved(p, len, "void")) {
            cur = new_token(TK_VOID, cur, p, len);
        } else if(is_reserved(p, len, "sizeof")) {
            cur = new_token(TK_SIZEOF, cur, p, len);
        } else if(is_reserved(p, len, "struct")) {
            cur = new_token(TK_STRUCT, cur, p, len);
        } else if(is_reserved(p, len, "enum")) {
            cur = new_token(TK_ENUM, cur, p, len);
        } else if(is_reserved(p, len, "union")) {
            cur = new_token(TK_UNION, cur, p, len);
        } else if(is_reserved(p, len, "typedef")) {
            cur = new_token(TK_TYPEDEF, cur, p, len);
        } else if(is_reserved(p, len, "extern")) {
            cur = new_token(TK_EXTERN, cur, p, len);
        } else {
            cur = new_token(TK_IDENT, cur, p, len);
        }
        p += len;
    } else if(*p == '+') {
        if(*(p + 1) == '=') {
            cur = new_token(TK_ASSIGN_ADD, cur, p, 2);
            p += 2;
        } else if(*(p + 1) == '+') {
            cur = new_token(TK_INC, cur, p, 2);
            p += 2;
        } else
            cur = new_token(TK_ADD, cur, p++, 1);
    } else if(*p == '-') {
        if(*(p + 1) == '=') {
            cur = new_token(TK_ASSIGN_SUB, cur, p, 2);
            p += 2;
        } else if(*(p + 1) == '-') {
            cur = new_token(TK_DEC, cur, p, 2);
            p += 2;
        } else if(*(p + 1) == '>') {
            cur = new_token(TK_ARROW, cur, p, 2);
            p += 2;
        } else
            cur = new_token(TK_SUB, cur, p++, 1);
    } else if(*p == '*') {
        if(*(p + 1) == '=') {
            cur = new_token(TK_ASSIGN_MUL, cur, p, 2);
            p += 2;
        } else
            cur = new_token(TK_MUL, cur, p++, 1);
    } else if(*p == '/') {
        if(*(p + 1) == '=') {
            cur = new_token(TK_ASSIGN_DIV, cur, p, 2);
            p += 2;
        } else
            cur = new_token(TK_DIV, cur, p++, 1);
    } else if(*p == ',') {
        cur = new_token(TK_COMMA, cur, p++, 1);
    } else if(*p == '=') {
        p++;
        if(*p == '=') {
            cur = new_token(TK_EQ, cur, p - 1, 2);
            p++;
        } else {
            cur = new_token(TK_ASSIGN, cur, p - 1, 1);
        }
    } else if(*p == '>') {
        p++;
        if(*p == '=') {
            cur = new_token(TK_GE, cur, p - 1, 2);
            p++;
        } else if(*p == '>') {
            cur = new_token(TK_SHR, cur, p - 1, 2);
            p++;
        } else {
            cur = new_token(TK_GT, cur, p - 1, 1);
        }
    } else if(*p == '<') {
        p++;
        if(*p == '=') {
            cur = new_token(TK_LE, cur, p - 1, 2);
            p++;
        } else if(*p == '<') {
            cur = new_token(TK_SHL, cur, p - 1, 2);
            p++;
        } else {
            cur = new_token(TK_LT, cur, p - 1, 1);
        }
    } else if(*p == '!') {
        p++;
        if(*p == '=') {
            cur = new_token(TK_NEQ, cur, p - 1, 2);
            p++;
        } else {
            cur = new_token(TK_NOT, cur, p - 1, 1);
        }
    } else if(*p == ';') {
        cur = new_token(TK_SEMI, cur, p++, 1);
    } else if(*p == ':') {
        cur = new_token(TK_COLON, cur, p++, 1);
    } else if(*p == '(') {
        cur = new_token(TK_OP_PAREN, cur, p++, 1);
    } else if(*p == ')') {
        cur = new_token(TK_CL_PAREN, cur, p++, 1);
    } else if(*p == '{') {
        cur = new_token(TK_OP_BRACE, cur, p++, 1);
    } else if(*p == '}') {
        cur = new_token(TK_CL_BRACE, cur, p++, 1);
    } else if(*p == '[') {
        cur = new_token(TK_OP_BRACKET, cur, p++, 1);
    } else if(*p == ']') {
        cur = new_token(TK_CL_BRACKET, cur, p++, 1);
    } else if(*p == '^') {
        cur = new_token(TK_XOR, cur, p++, 1);
    } else if(*p == '&') {
        if(*(p + 1) == '&') {
            cur = new_token(TK_LAND, cur, p, 2);
            p += 2;
        }
        cur = new_token(TK_AND, cur, p++, 1);
    } else if(*p == '|') {
        if(*(p + 1) == '|') {
            cur = new_token(TK_LOR, cur, p, 2);
            p += 2;
        }
        cur = new_token(TK_OR, cur, p++, 1);
    } else if(*p == '.') {
        if(*(p + 1) == '.' && *(p + 2) == '.') {
            cur = new_token(TK_ELLIPSIS, cur, p, 3);
            p += 3;
        }
        cur = new_token(TK_DOT, cur, p++, 1);
    } else if(*p == '"') {
        p++;
        char *src = p;
        while(*src && *src != '"') {
            if(*src != '\\') {
                src++;
            } else {
                src++;
                switch(*src) {
                case '0':
                case 'a':
                case 'b':
                case 'f':
                case 'n':
                case 'r':
                case 't':
                case '\\':
                case '\'':
                case '\"':
                    src++;
                    break;
                default:
                    error_at_char(fi, src - 1, "Unsupported escape sequence.");
                }
            }
        }
        if(!*src)
            error_at_char(fi, src - 1, "Missing closing quote.");
        cur = new_token(TK_STR, cur, p, (int)(src - p));
        p = src + 1;
    } else if(*p == '\'') {
        char *org_p = p;
        p++;
        char ch;
        if(*p != '\\') {
            ch = *p;
        } else {
            p++;
            switch(*p) {
            case '0':
                ch = '\0';
                break;
            case 'a':
                ch = '\a';
                break;
            case 'b':
                ch = '\b';
                break;
            case 'f':
                ch = '\f';
                break;
            case 'n':
                ch = '\n';
                break;
            case 'r':
                ch = '\r';
                break;
            case 't':
                ch = '\t';
                break;
            case '\\':
                ch = '\\';
                break;
            case '\'':
                ch = '\'';
                break;
            case '\"':
                ch = '\"';
                break;
            default:
                error_at_token(token, "Unsupported escape sequence.");
            }
        }

        p++;
        if(*p++ != '\'')
            error_at_char(fi, p - 1, "Unexpected token. Expected \"'\".");
        cur = new_token(TK_NUM, cur, org_p, p - org_p);
        cur->int_val = ch;
    }
    ctx->char_ptr = p;
    ctx->file_info = fi;
    ctx->current_token = cur;
    return cur;
}

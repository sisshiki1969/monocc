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

bool is_nondigit(char c) { return isalnum(c) || c == '_'; }

bool is_reserved(char *str, int len, char *reserved) {
    return len == strlen(reserved) && strncmp(str, reserved, len) == 0;
}

/// Tokenize the input string.
void tokenize() {
    char *p = source_text;
    Token head;
    head.next = NULL;
    Token *cur = &head;

    while(*p) {
        if(isspace(*p)) {
            p++;
            continue;
        }
        if(*p == '#') {
            char *cursor = strchr(p, '\n');
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
            char *org_p = p;
            int num = *p - '0';
            int len = 1;
            p++;
            while(isdigit(*p)) {
                num *= 10;
                num += *p - '0';
                len++;
                p++;
            }
            cur = new_token(TK_NUM, cur, org_p, len);
            cur->int_val = num;
            continue;
        }
        if(isalpha(*p)) {
            char *org_p = p;
            int len = 1;
            p++;
            while(is_nondigit(*p)) {
                len++;
                p++;
            }
            if(is_reserved(org_p, len, "return")) {
                cur = new_token(TK_RETURN, cur, org_p, len);
            } else if(is_reserved(org_p, len, "if")) {
                cur = new_token(TK_IF, cur, org_p, len);
            } else if(is_reserved(org_p, len, "else")) {
                cur = new_token(TK_ELSE, cur, org_p, len);
            } else if(is_reserved(org_p, len, "while")) {
                cur = new_token(TK_WHILE, cur, org_p, len);
            } else if(is_reserved(org_p, len, "for")) {
                cur = new_token(TK_FOR, cur, org_p, len);
            } else if(is_reserved(org_p, len, "switch")) {
                cur = new_token(TK_SWITCH, cur, org_p, len);
            } else if(is_reserved(org_p, len, "case")) {
                cur = new_token(TK_CASE, cur, org_p, len);
            } else if(is_reserved(org_p, len, "default")) {
                cur = new_token(TK_DEFAULT, cur, org_p, len);
            } else if(is_reserved(org_p, len, "break")) {
                cur = new_token(TK_BREAK, cur, org_p, len);
            } else if(is_reserved(org_p, len, "continue")) {
                cur = new_token(TK_CONTINUE, cur, org_p, len);
            } else if(is_reserved(org_p, len, "int")) {
                cur = new_token(TK_INT, cur, org_p, len);
            } else if(is_reserved(org_p, len, "char")) {
                cur = new_token(TK_CHAR, cur, org_p, len);
            } else if(is_reserved(org_p, len, "void")) {
                cur = new_token(TK_VOID, cur, org_p, len);
            } else if(is_reserved(org_p, len, "sizeof")) {
                cur = new_token(TK_SIZEOF, cur, org_p, len);
            } else if(is_reserved(org_p, len, "struct")) {
                cur = new_token(TK_STRUCT, cur, org_p, len);
            } else {
                cur = new_token(TK_IDENT, cur, org_p, len);
            }
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
                error_at_char(p, "Unexpected character.");
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
        if(*p == '&') {
            cur = new_token(TK_ADDR, cur, p++, 1);
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
                        error_at_char(src - 1, "Unsupported escape sequence.");
                    }
                }
            }
            if(!*src)
                error_at_char(src - 1, "Missing closing quote.");
            cur = new_token(TK_STR, cur, p, (int)(src - p));
            p = src + 1;
            continue;
        }
        if(*p == '\'') {
            p++;
            char ch = *p++;
            if(*p++ != '\'')
                error_at_char(p - 1, "Unexpected token. Expected \"'\".");
            cur = new_token(TK_NUM, cur, p - 2, 1);
            cur->int_val = ch;
            continue;
        }
        error_at_char(p, "Unexpected character.");
    }
    cur = new_token(TK_EOF, cur, p++, 1);

    token = head.next;
}

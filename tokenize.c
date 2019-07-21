#include "monocc.h"

// Methods for Token

/// Create a new token.
Token *new_token(TokenKind kind, Token *cur, char *str, int len)
{
    Token *new_token = calloc(1, sizeof(Token));
    new_token->kind = kind;
    new_token->str = str;
    new_token->len = len;
    cur->next = new_token;
    return new_token;
}

/// Print tokens.
void print_tokens(Token *token)
{
    printf("// ");
    while (token)
    {
        switch (token->kind)
        {
        case TK_NUM:
        case TK_IDENT:
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
        case TK_SEMI:
        case TK_OP_PAREN:
        case TK_CL_PAREN:
            printf("[%.*s]", token->len, token->str);
            break;
        case TK_EOF:
            printf("[EOF]");
            break;
        default:
            error("Unknown TokenKind.");
            break;
        }
        token = token->next;
    }
    printf("\n");
}

/// Tokenize the input string.
Token tokenize(char *p)
{
    Token head;
    head.next = NULL;
    Token *cur = &head;

    while (*p)
    {
        if (isspace(*p))
        {
            p++;
            continue;
        }
        if (isdigit(*p))
        {
            char *org_p = p;
            int num = *p - '0';
            int len = 1;
            p++;
            while (isdigit(*p))
            {
                num *= 10;
                num += *p - '0';
                len++;
                p++;
            }
            cur = new_token(TK_NUM, cur, org_p, len);
            cur->int_val = num;
            continue;
        }
        if (isalpha(*p))
        {
            char *org_p = p;
            int len = 1;
            p++;
            while (isalnum(*p) || *p == '_')
            {
                len++;
                p++;
            }
            cur = new_token(TK_IDENT, cur, org_p, len);
            continue;
        }
        if (*p == '+')
        {
            cur = new_token(TK_ADD, cur, p++, 1);
            continue;
        }
        if (*p == '-')
        {
            cur = new_token(TK_SUB, cur, p++, 1);
            continue;
        }
        if (*p == '*')
        {
            cur = new_token(TK_MUL, cur, p++, 1);
            continue;
        }
        if (*p == '/')
        {
            cur = new_token(TK_DIV, cur, p++, 1);
            continue;
        }
        if (*p == '=')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_EQ, cur, p - 1, 2);
                p++;
                continue;
            }
            else
            {
                cur = new_token(TK_ASSIGN, cur, p - 1, 1);
                continue;
            }
        }
        if (*p == '>')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_GE, cur, p - 1, 2);
                p++;
                continue;
            }
            else
            {
                cur = new_token(TK_GT, cur, p - 1, 1);
                continue;
            }
        }
        if (*p == '<')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_LE, cur, p - 1, 2);
                p++;
                continue;
            }
            else
            {
                cur = new_token(TK_LT, cur, p - 1, 1);
                continue;
            }
        }
        if (*p == '!')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_NEQ, cur, p - 1, 2);
                p++;
                continue;
            }
            else
            {
                error("Unimplemented op '!'");
            }
        }
        if (*p == ';')
        {
            cur = new_token(TK_SEMI, cur, p++, 1);
            continue;
        }
        if (*p == '(')
        {
            cur = new_token(TK_OP_PAREN, cur, p++, 1);
            continue;
        }
        if (*p == ')')
        {
            cur = new_token(TK_CL_PAREN, cur, p++, 1);
            continue;
        }
        error("Unexpected character. %c", *p);
    }
    cur = new_token(TK_EOF, cur, p++, 0);
    print_tokens(head.next);
    return head;
}

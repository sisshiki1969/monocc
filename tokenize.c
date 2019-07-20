#include "monocc.h"

// Methods for Token

/// Create a new token.
Token *new_token(TokenKind kind, Token *cur, char *str)
{
    Token *new_token = calloc(1, sizeof(Token));
    new_token->kind = kind;
    new_token->str = str;
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
            printf("%d ", token->int_val);
            break;
        case TK_ADD:
            printf("+ ");
            break;
        case TK_SUB:
            printf("- ");
            break;
        case TK_MUL:
            printf("* ");
            break;
        case TK_DIV:
            printf("/ ");
            break;
        case TK_EQ:
            printf("== ");
            break;
        case TK_NEQ:
            printf("!= ");
            break;
        case TK_GT:
            printf("> ");
            break;
        case TK_GE:
            printf(">= ");
            break;
        case TK_LT:
            printf("< ");
            break;
        case TK_LE:
            printf("<= ");
            break;
        case TK_OP_PAREN:
            printf("( ");
            break;
        case TK_CL_PAREN:
            printf(") ");
            break;
        case TK_EOF:
            printf(" <EOF>");
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
            p++;
            while (isdigit(*p))
            {
                num *= 10;
                num += *p - '0';
                p++;
            }
            cur = new_token(TK_NUM, cur, org_p);
            cur->int_val = num;
            continue;
        }
        if (*p == '+')
        {
            cur = new_token(TK_ADD, cur, p++);
            continue;
        }
        if (*p == '-')
        {
            cur = new_token(TK_SUB, cur, p++);
            continue;
        }
        if (*p == '*')
        {
            cur = new_token(TK_MUL, cur, p++);
            continue;
        }
        if (*p == '/')
        {
            cur = new_token(TK_DIV, cur, p++);
            continue;
        }
        if (*p == '=')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_EQ, cur, p++);
                continue;
            }
            else
            {
                error("Unimplemented op '='");
            }
        }
        if (*p == '>')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_GE, cur, p++);
                continue;
            }
            else
            {
                cur = new_token(TK_GT, cur, p);
                continue;
            }
        }
        if (*p == '<')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_LE, cur, p++);
                continue;
            }
            else
            {
                cur = new_token(TK_LT, cur, p);
                continue;
            }
        }
        if (*p == '!')
        {
            p++;
            if (*p == '=')
            {
                cur = new_token(TK_NEQ, cur, p++);
                continue;
            }
            else
            {
                error("Unimplemented op '!'");
            }
        }
        if (*p == '(')
        {
            cur = new_token(TK_OP_PAREN, cur, p++);
            continue;
        }
        if (*p == ')')
        {
            cur = new_token(TK_CL_PAREN, cur, p++);
            continue;
        }
        error("Unexpected character. %c", *p);
    }
    cur = new_token(TK_EOF, cur, p++);
    print_tokens(head.next);
    return head;
}

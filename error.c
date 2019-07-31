#include "monocc.h"

void error(char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

void error_at_char(char *err_char, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    int pos = err_char - source_text;
    fprintf(stderr, "%s\n", source_text);
    fprintf(stderr, "%*s^\n", pos, "");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

void error_at_token(Token *token, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    char *p = source_text;
    char *line_end;
    while(line_end = strchr(p, '\n')) {
        if(line_end > token->str)
            break;
        p = line_end + 1;
    }
    if(!line_end) {
        line_end = strchr(p, '\0');
    }

    int pos = token->str - p;
    fprintf(stderr, "%.*s\n", (int)(line_end - p), p);
    fprintf(stderr, "%*s%.*s\n", pos, "", token->len, "^^^^^^^^^^^^");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

Span *new_span(Token *token) {
    int start = (int)(token->str - source_text);
    Span *span = calloc(1, sizeof(Span));
    span->start = start;
    span->end = start + token->len;
    return span;
}

void merge_span(Span *span1, Span *span2) {
    if(!span1 || !span2) {
        fprintf(stderr, "null span\n");
        return;
    }
    // fprintf(stderr, "merge (%d:%d) (%d:%d)\n", span1->start, span1->end,
    //       span2->start, span2->end);
    if(span2->start < span1->start)
        span1->start = span2->start;
    if(span1->end < span2->end)
        span1->end = span2->end;
    return;
}

Span *get_node_span(Node *node) {
    Span *span;
    // print_node(node);
    switch(node->kind) {
    case ND_IDENT:
    case ND_NUM:
    case ND_LVAR:
    case ND_STR:
        span = new_span(node->token);
        break;
    case ND_ADD:
    case ND_SUB:
    case ND_MUL:
    case ND_DIV:
    case ND_EQ:
    case ND_NEQ:
    case ND_GE:
    case ND_GT:
    case ND_ASSIGN:
        span = new_span(node->token);
        merge_span(span, get_node_span(node->lhs));
        merge_span(span, get_node_span(node->rhs));
        break;
    case ND_ADDR:
    case ND_DEREF:
        span = new_span(node->token);
        merge_span(span, get_node_span(node->lhs));
        break;
    case ND_CALL:
        span = new_span(node->token);
        merge_span(span, get_node_span(node->lhs));
        break;
    default:
        fprintf(stderr, "node span is not determined for this Node type.\n");
        span = new_span(node->token);
    }
    // fprintf(stderr, "span (%d:%d)\n", span->start, span->end);
    return span;
}

void error_at_node(Node *node, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    Span *span = get_node_span(node);
    // fprintf(stderr, "span (%d:%d)\n", span->start, span->end);

    char *line_start = source_text;
    char *line_end;
    while(line_end = strchr(line_start, '\n')) {
        if(line_end > source_text + span->start)
            break;
        line_start = line_end + 1;
    }
    if(!line_end) {
        line_end = strchr(line_start, '\0');
    }

    int pos = span->start - (int)(line_start - source_text);
    fprintf(stderr, "%.*s\n", (int)(line_end - line_start), line_start);
    fprintf(stderr, "%*s%.*s\n", pos, "", span->end - span->start,
            "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

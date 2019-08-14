#include "monocc.h"

typedef struct PosInfo PosInfo;

struct PosInfo {
    int line;
    int pos_in_line;
    char *line_start;
    int line_len;
};

int get_line(char *p, char *source) {
    char *cursor;
    int line = 1;
    while(cursor = strchr(source, '\n')) {
        if(cursor > p)
            break;
        source = cursor + 1;
        line++;
    }
    return line;
}

PosInfo *get_pos(char *p, char *source) {
    char *cursor;
    int line = 1;
    while(cursor = strchr(source, '\n')) {
        if(cursor > p)
            break;
        source = cursor + 1;
        line++;
    }
    if(!cursor)
        cursor = strchr(p, '\0');

    PosInfo *pos = calloc(1, sizeof(PosInfo));
    pos->line = line;
    pos->pos_in_line = (int)(p - source);
    pos->line_start = source;
    pos->line_len = (int)(cursor - source);
    return pos;
}

FileInfo *get_file_info(char *p) {
    for(FileInfo *fi = file_informations; fi; fi = fi->next) {
        if(fi->start <= p && p <= fi->end)
            return fi;
    }
    error("Internal error: Can not find file.");
}

void error(char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

void print_error_line(FileInfo *fi, PosInfo *pos, int len) {
    fprintf(stderr, "error in file: %s\n", fi->file_name);
    fprintf(stderr, "line: %d\n", pos->line);
    fprintf(stderr, "%.*s\n", pos->line_len, pos->line_start);
    fprintf(stderr, "%*s%.*s\n", pos->pos_in_line, "", len,
            "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
}

/// Show an error on a character.
void error_at_char(FileInfo *fi, char *err_char, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    PosInfo *pos = get_pos(err_char, fi->start);
    print_error_line(fi, pos, 1);
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

void error_at_token(Token *token, char *fmt, ...) {
    FileInfo *fi = get_file_info(token->str);
    PosInfo *pos = get_pos(token->str, fi->start);

    print_error_line(fi, pos, token->len);
    fprintf(stderr, fmt);
    fprintf(stderr, "\n");
    exit(1);
}

typedef struct {
    char *start;
    char *end;
} Span;

Span *new_span(Token *token) {
    char *start = token->str;
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
    case ND_GVAR:
    case ND_STR:
    case ND_INIT:
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

    case ND_LAND:
    case ND_LOR:
    case ND_NOT:
    case ND_AND:
    case ND_OR:
    case ND_XOR:
    case ND_SHR:
    case ND_SHL:

    case ND_ASSIGN:
        span = new_span(node->token);
        merge_span(span, get_node_span(node->lhs));
        merge_span(span, get_node_span(node->rhs));
        break;
    case ND_ADDR:
    case ND_DEREF:
    case ND_MEMBER:
    case ND_CALL:
    case ND_CAST:
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
    FileInfo *fi = get_file_info(span->start);
    PosInfo *pos = get_pos(span->start, fi->start);

    print_error_line(fi, pos, (int)(span->end - span->start));
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

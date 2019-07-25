#include "monocc.h"

char registers[4][4] = {"rdi", "rsi", "rdx", "rcx"};

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

int main(int argc, char **argv) {
    if(argc < 2) {
        fprintf(stderr, "No arguments.");
        return 1;
    }

    if(argc == 2 && !strcmp(argv[1], "-test")) {
        test_vec();
        return 0;
    }

    char registers[4][4] = {"rdi", "rsi", "rdx", "rcx"};
    source_text = argv[1];

    tokenize(source_text);
    print_tokens(token);

    parse_program();
    // print_nodes();

    labels = 0;

    printf(".intel_syntax noprefix\n");
    printf(".global main\n");

    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++)
        gen_stmt(ext_declarations->data[i]);
}

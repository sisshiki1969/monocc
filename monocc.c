#include "monocc.h"

void error(char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

int main(int argc, char **argv)
{
    if (argc != 2)
    {
        fprintf(stderr, "No arguments.");
        return 1;
    }

    char *p = argv[1];
    token = tokenize(p).next;

    parse_program();

    print_nodes();

    int max_offset = 8;
    if (locals)
    {
        max_offset = locals->offset + 8;
    }
    labels = 0;

    printf(".intel_syntax noprefix\n");
    printf(".global main\n");
    printf("main:\n");

    printf("\tpush rbp\n");
    printf("\tmov  rbp, rsp\n");
    printf("\tsub  rsp, %d\n", max_offset);

    Node *node;
    int i = 0;
    while (node = code[i++])
    {
        gen(node);
        printf("\tpop  rax\n");
    }

    printf("\tmov  rsp, rbp\n");
    printf("\tpop  rbp\n");
    printf("\tret\n");
    return 0;
}

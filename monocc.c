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

    Node *node = parse_expr();

    printf("// ");
    print_nodes(node);
    printf("\n");

    printf(".intel_syntax noprefix\n");
    printf(".global main\n");
    printf("main:\n");

    gen(node);

    printf("\tpop  rax\n");
    printf("\tret\n");
    return 0;
}

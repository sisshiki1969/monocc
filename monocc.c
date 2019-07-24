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
    if (argc < 2)
    {
        fprintf(stderr, "No arguments.");
        return 1;
    }

    if (argc == 2 && !strcmp(argv[1], "-test"))
    {
        test_vec();
        return 0;
    }

    bool from_cl = false;
    char *p = argv[1];
    if (argc == 3 && !strcmp(argv[1], "-input"))
    {
        from_cl = true;
        p = argv[2];
    }

    tokenize(p);
    print_tokens(token);

    parse_program(from_cl);
    //print_nodes();

    labels = 0;

    printf(".intel_syntax noprefix\n");
    printf(".global main\n");

    int len = vec_len(ext_declarations);
    for (int i = 0; i < len; i++)
        gen_stmt(ext_declarations->data[i]);
}

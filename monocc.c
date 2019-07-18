#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    if (argc != 2)
    {
        fprintf(stderr, "No arguments.");
        return 1;
    }

    char *p = argv[1];

    printf(".intel_syntax noprefix\n");
    printf(".global main\n");
    printf("main:\n");

    printf("\tmov  rax, %ld\n", strtol(p, &p, 10));

    while (*p)
    {
        if (*p == '+')
        {
            p++;
            printf("\tadd  rax, %ld\n", strtol(p, &p, 10));
            continue;
        }

        if (*p == '-')
        {
            p++;
            printf("\tsub  rax, %ld\n", strtol(p, &p, 10));
            continue;
        }

        fprintf(stderr, "Unexpected character: '%c'\n", *p);
        return 1;
    }

    printf("\tret\n");
    return 0;
}
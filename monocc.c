#include "monocc.h"

char registers[2][5][4] = {{"rdi", "rsi", "rdx", "rcx", "r8"},
                           {"edi", "esi", "edx", "ecx", "r8d"}};

int main(int argc, char **argv) {
    if(argc < 2) {
        fprintf(stderr, "No arguments.");
        return 1;
    }

    if(argc == 2 && !strcmp(argv[1], "-test")) {
        test_vec();
        return 0;
    }

    source_text = argv[1];

    tokenize(source_text);
    print_tokens(token);

    parse_program();
    print_globals();
    print_funcs();
    // print_nodes();

    labels = 0;

    printf(".intel_syntax noprefix\n");
    printf(".global main\n");

    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++)
        gen_stmt(ext_declarations->data[i]);
}

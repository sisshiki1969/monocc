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

    strings = vec_new();

    parse_program();
    print_globals();
    print_funcs();
    print_strings();
    // print_nodes();

    labels = 0;

    printf("\n");
    printf(".intel_syntax noprefix\n");

    printf(".data\n");
    Global *global = globals;
    while(global) {
        printf("%.*s:\n", global->token->len, global->token->str);
        printf("\t.zero %d\n", sizeof_type(global->type));
        global = global->next;
    };

    int i = 0;
    while(i < vec_len(strings)) {
        printf(".LS%06d:\n", strings->data[i]->int_val);
        printf("\t.string \"%.*s\"\n", strings->data[i]->token->len,
               strings->data[i]->token->str);
        i++;
    }

    printf(".text\n");
    printf(".global main\n");
    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++)
        gen_stmt(ext_declarations->data[i]);
}

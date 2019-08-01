#include "monocc.h"

char registers[2][5][4] = {{"rdi", "rsi", "rdx", "rcx", "r8"},
                           {"edi", "esi", "edx", "ecx", "r8d"}};

/// Read file and return char* of data.
char *read_file(char *path) {
    FILE *fp = fopen(path, "r");
    if(!fp)
        error("cannot open %s: %s\n", path, strerror(errno));

    if(fseek(fp, 0, SEEK_END) == -1)
        error("%s: fseek: %s\n", path, strerror(errno));
    size_t size = ftell(fp);
    if(fseek(fp, 0, SEEK_SET) == -1)
        error("%s: fseek: %s\n", path, strerror(errno));

    char *buf = calloc(1, size + 2);
    fread(buf, size, 1, fp);

    if(size == 0 || buf[size - 1] != '\n')
        buf[size++] = '\n';
    buf[size] = '\0';
    fclose(fp);
    return buf;
}

void compile() {
    tokenize();
    print_tokens(token);

    strings = vec_new();

    parse_program();
    print_globals();
    print_funcs();
    print_strings();

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

int main(int argc, char **argv) {
    if(argc == 2 && strcmp(argv[1], "-test") == 0) {
        test_vec();
        return 0;
    } else if(argc == 3 && strcmp(argv[1], "-file") == 0) {
        source_text = read_file(argv[2]);
    } else if(argc == 2) {
        source_text = argv[1];
    } else {
        fprintf(stderr, "Invalid arguments.\n");
        return 1;
    }
    compile();
}

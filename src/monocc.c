#include "monocc.h"

char registers[4][5][4] = {{"rdi", "rsi", "rdx", "rcx", "r8"},
                           {"edi", "esi", "edx", "ecx", "r8d"},
                           {"di", "si", "dx", "cx", "r8w"},
                           {"dil", "sil", "dl", "cl", "r8b"}};

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
    fprintf(stderr, "monocc: file read\n");
    return buf;
}

void compile() {
    fprintf(stderr, "monocc: tokenize\n");
    tokenize();
    print_tokens(token);

    strings = vec_new();
    fprintf(stderr, "monocc: parse\n");
    parse_program();
    print_globals();
    print_funcs();
    print_strings();
    print_structs();
    print_typedefs();
    printf("\n");
    printf("\t.intel_syntax noprefix\n");

    printf("\t.data\n");
    Global *global = globals;

    fprintf(stderr, "monocc: emit globals...\n");
    while(global) {
        printf("%.*s:\n", global->token->len, global->token->str);
        if(is_int(global->type)) {
            int i;
            if(!global->body)
                i = 0;
            else if(global->body->kind == ND_NUM)
                i = global->body->int_val;
            else
                error_at_node(
                    global->body,
                    "Calculation in an initializer is not supported yet.");
            printf("\t.long %d\n", i);
        } else if(is_char(global->type)) {
            int i;
            if(!global->body)
                i = 0;
            else if(global->body->kind == ND_NUM)
                i = global->body->int_val % 256;
            else
                error_at_node(
                    global->body,
                    "Calculation in an initializer is not supported yet.");
            printf("\t.byte %d\n", i);
        } else if(is_ptr_to_char(global->type)) {
            // print_node(global->body);
            if(global->body && global->body->kind == ND_STR)
                printf("\t.quad .LS%06d\n", global->body->int_val);
            else
                printf("\t.zero %d\n", sizeof_type(global->type));
        } else if(is_array_of_char(global->type)) {
            if(!global->body) {
                if(global->type->array_size == 0)
                    error_at_token(global->token,
                                   "Incomplete type is not allowed.");
                else
                    printf("\t.zero %d\n", sizeof_type(global->type));
            } else if(global->body->kind == ND_STR) {
                printf("\t.string \"%.*s\"\n", global->body->token->len,
                       global->body->token->str);
            } else
                error_at_token(global->token, "Unsupported initializer.");
        } else
            printf("\t.zero %d\n", sizeof_type(global->type));
        global = global->next;
    };
    fprintf(stderr, "monocc: emitted globals\n");

    int i = 0;
    while(i < vec_len(strings)) {
        printf(".LS%06d:\n", strings->data[i]->int_val);
        printf("\t.string \"%.*s\"\n", strings->data[i]->token->len,
               strings->data[i]->token->str);
        i++;
    }
    printf("\n");

    printf("\t.text\n");
    printf("\t.global main\n");
    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++)
        gen_stmt(ext_declarations->data[i]);
    fprintf(stderr, "monocc: compile complete\n");
}

int main(int argc, char **argv) {
    fprintf(stderr, "monocc: parse command\n");
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

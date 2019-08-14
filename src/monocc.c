#include "monocc.h"

/// Read file and return char* of data.
char *read_file(char *path) {
    FILE *fp = fopen(path, "r");
    if(!fp)
        error("cannot open %s: %s\n", path, strerror(get_errno()));

    if(fseek(fp, 0, SEEK_END) == -1)
        error("%s: fseek: %s\n", path, strerror(get_errno()));
    size_t size = ftell(fp);
    if(fseek(fp, 0, SEEK_SET) == -1)
        error("%s: fseek: %s\n", path, strerror(get_errno()));

    char *buf = calloc(1, size + 2);
    fread(buf, size, 1, fp);

    if(size == 0 || buf[size - 1] != '\n')
        buf[size++] = '\n';
    buf[size] = '\0';
    fclose(fp);
    fprintf(stderr, "monocc: file read\n");
    // fprintf(stderr, "%s", buf);
    return buf;
}

char registers[4][5][4] = {{"rdi", "rsi", "rdx", "rcx", "r8"},
                           {"edi", "esi", "edx", "ecx", "r8d"},
                           {"di", "si", "dx", "cx", "r8w"},
                           {"dil", "sil", "dl", "cl", "r8b"}};

void emit_basic_global(Type *type, Node *init) {
    if(is_array_of_char(type)) {
        if(!init) {
            // char str[];  => incomplete type
            if(type->array_size == 0)
                error_at_token(init->token, "Incomplete type is not allowed.");
            // char str[10];
            else
                printf("\t.zero %d\n", sizeof_type(type));
        } else if(init->kind == ND_STR) {
            // char str[] = "sample";
            printf("\t.string \"%.*s\"\n", init->token->len, init->token->str);
            int ary_size = type->array_size;
            int str_size = init->token->len + 1;
            if(ary_size > str_size)
                printf("\t.zero %d\n", ary_size - str_size);
        } else
            error_at_node(init, "Unsupported initializer.");
    } else if(is_array(type)) {
        if(!init) {
            printf("\t.zero %d\n", sizeof_type(type));
            return;
        }
        if(init->kind != ND_INIT)
            error_at_node(init, "Unsupported initializer.");
        Vector *vec = init->nodes;
        type = type->ptr_to;
        for(int i = 0; i < vec_len(vec); i++) {
            emit_basic_global(type, vec->data[i]);
        }
    } else if(is_int(type)) {
        int i;
        if(!init)
            i = 0;
        else if(init->kind == ND_NUM)
            i = init->int_val;
        else
            error_at_node(
                init, "Calculation in an initializer is not supported yet.");
        printf("\t.long %d\n", i);
    } else if(is_char(type)) {
        int i;
        if(!init)
            i = 0;
        else if(init->kind == ND_NUM)
            i = init->int_val; // % 256;
        else
            error_at_node(
                init, "Calculation in an initializer is not supported yet.");
        printf("\t.byte %d\n", i);
    } else if(is_ptr_to_char(type)) {
        // char *str = "sample";
        if(init && init->kind == ND_STR)
            printf("\t.quad .LS%06d\n", init->int_val);
        else
            printf("\t.quad 0\n");
    } else {
        int s = sizeof_type(type);
        switch(s) {
        case 1:
            printf("\t.byte 0\n");
            break;
        case 2:
            printf("\t.short 0\n");
            break;
        case 4:
            printf("\t.long 0\n");
            break;
        case 8:
            printf("\t.align 8\n");
            printf("\t.quad 0\n");
            break;
        default:
            printf("\t.zero %d\n", s);
        }
    }
}

void compile(char *file) {
    tokenize(file, source_text, true);
    print_tokens(token);
    fprintf(stderr, "monocc: tokenize\n");

    strings = vec_new();
    parse_program();
    fprintf(stderr, "monocc: parse\n");
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
    for(; global; global = global->next) {
        if(global->is_extern) {
            continue;
        }
        printf("\t.global %.*s\n", global->token->len, global->token->str);
        printf("%.*s:\n", global->token->len, global->token->str);
        emit_basic_global(global->type, global->body);
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

    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++) {
        Node *node = ext_declarations->data[i];
        printf("\t.global %.*s\n", node->token->len, node->token->str);
        gen_stmt(node);
    }
    fprintf(stderr, "monocc: compile complete\n");
}

int main(int argc, char **argv) {
    fprintf(stderr, "%s\n", argv[0]);
    char *file;
    if(argc == 2 && strcmp(argv[1], "-test") == 0) {
        test_vec();
        return 0;
    } else if(argc == 3 && strcmp(argv[1], "-file") == 0) {
        file = argv[2];
        source_text = read_file(argv[2]);
        // fprintf(stderr, "%s", source_text);
    } else if(argc == 2) {
        file = "input";
        source_text = argv[1];
    } else {
        fprintf(stderr, "Invalid arguments.\n");
        return 1;
    }
    compile(file);
    return 0;
}

#include "monocc.h"

char *source_text;
FileInfo *file_informations;
Token *token;
Vector *ext_declarations;
Vector *strings;
LVar *locals;
LVar *scope;
TagName *tagnames;
Typedef *tdef_names;
Global *globals;
Global *functions;
char *output_file_name;
FILE *output;

char *registers[4][5] = {{"rdi", "rsi", "rdx", "rcx", "r8"},
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
    // fprintf(stderr, "monocc: file read\n");
    // fprintf(stderr, "%s", buf);
    return buf;
}

void emit_basic_global(Type *type, Node *init) {
    if(is_array_of_char(type)) {
        if(!init) {
            // char str[];  => incomplete type
            if(type->array_size == 0)
                error_at_token(init->token, "Incomplete type is not allowed.");
            // char str[10];
            else
                fprintf(output, "\t.zero %d\n", sizeof_type(type));
        } else if(init->kind == ND_STR) {
            // char str[] = "sample";
            fprintf(output, "\t.string \"%.*s\"\n", init->token->len,
                    init->token->str);
            int ary_size = type->array_size;
            int str_size = init->token->len + 1;
            if(ary_size > str_size)
                fprintf(output, "\t.zero %d\n", ary_size - str_size);
        } else
            error_at_node(init, "Unsupported initializer.");
    } else if(is_array(type)) {
        if(!init) {
            fprintf(output, "\t.zero %d\n", sizeof_type(type));
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
        fprintf(output, "\t.long %d\n", i);
    } else if(is_char(type)) {
        int i;
        if(!init)
            i = 0;
        else if(init->kind == ND_NUM)
            i = init->int_val; // % 256;
        else
            error_at_node(
                init, "Calculation in an initializer is not supported yet.");
        fprintf(output, "\t.byte %d\n", i);
    } else if(is_ptr_to_char(type)) {
        // char *str = "sample";
        if(init && init->kind == ND_STR)
            fprintf(output, "\t.quad .LS%06d\n", init->int_val);
        else
            fprintf(output, "\t.quad 0\n");
    } else {
        int s = sizeof_type(type);
        switch(s) {
        case 1:
            fprintf(output, "\t.byte 0\n");
            break;
        case 2:
            fprintf(output, "\t.short 0\n");
            break;
        case 4:
            fprintf(output, "\t.long 0\n");
            break;
        case 8:
            fprintf(output, "\t.align 8\n");
            fprintf(output, "\t.quad 0\n");
            break;
        default:
            fprintf(output, "\t.zero %d\n", s);
        }
    }
}

void pp() {
    for(Token *t = token; t; t = t->next) {
        // print_token(stderr, t);
        if(t->kind != TK_IDENT)
            continue;
        Macro *m = find_macro(t);
        if(!m)
            continue;
        if(!m->subst) {
            Token *next_token = t->next;
            t->kind = next_token->kind;
            t->next = next_token->next;
            t->str = next_token->str;
            t->len = next_token->len;
            t->int_val = next_token->int_val;
            t = next_token;
            continue;
        }

        Token *next_token = t->next;
        t->kind = m->subst->kind;
        t->next = m->subst->next;
        t->str = m->subst->str;
        t->len = m->subst->len;
        t->int_val = m->subst->int_val;
        while(t->next) {
            t = t->next;
        }
        t->next = next_token;
    }
}

void compile(char *file) {
    tokenize(file, source_text, true);
    fprintf(stderr, "monocc: tokenize\n");

    pp();
    print_tokens(token);
    fprintf(stderr, "monocc: pp\n");

    strings = vec_new();
    parse_program();
    fprintf(stderr, "monocc: parse\n");
    print_globals();
    print_funcs();
    print_strings();
    print_structs();
    print_typedefs();

    fprintf(output, "\n");
    fprintf(output, "\t.intel_syntax noprefix\n");

    fprintf(output, "\t.data\n");
    Global *global = globals;

    // fprintf(stderr, "monocc: emit globals...\n");
    for(; global; global = global->next) {
        if(global->is_extern) {
            continue;
        }
        fprintf(output, "\t.global %.*s\n", global->token->len,
                global->token->str);
        fprintf(output, "%.*s:\n", global->token->len, global->token->str);
        emit_basic_global(global->type, global->body);
    };
    // fprintf(stderr, "monocc: emitted globals\n");

    int i = 0;
    while(i < vec_len(strings)) {
        fprintf(output, ".LS%06d:\n", strings->data[i]->int_val);
        fprintf(output, "\t.string \"%.*s\"\n", strings->data[i]->token->len,
                strings->data[i]->token->str);
        i++;
    }
    fprintf(output, "\n");

    fprintf(output, "\t.text\n");

    int len = vec_len(ext_declarations);
    for(int i = 0; i < len; i++) {
        Node *node = ext_declarations->data[i];
        fprintf(output, "\t.global %.*s\n", node->token->len, node->token->str);
        gen_stmt(node);
    }
    fprintf(stderr, "monocc: compile complete\n");
}

int main(int argc, char **argv) {
    char *file;

    for(int i = 1; i < argc; i++) {
        if(strcmp(argv[i], "-test") == 0) {
            test_vec();
            return 0;
        } else if(strcmp(argv[i], "-string") == 0) {
            if(i + 1 < argc) {
                fprintf(stderr, "No input string.\n");
                return 1;
            }
            file = "input";
            source_text = argv[i + 1];
            break;
        } else {
            file = argv[i];
            source_text = read_file(argv[i]);
            output_file_name = calloc(1, strlen(file) + 5);
            strcpy(output_file_name, file);
            char *dot = output_file_name + strlen(output_file_name) - 2;
            if(strcmp(dot, ".c") != 0) {
                fprintf(stderr, "Invalid aource file name.");
                return 1;
            }
            *(dot + 1) = 's';

            fprintf(stderr, "output file: %s\n", output_file_name);
            output = fopen(output_file_name, "w");
            if(!output) {
                fprintf(stderr, "Cannot open output file.\n");
                exit(1);
            }

            compile(file);
            return 0;
        }
    }

    fprintf(stderr, "Invalid arguments.\n");
    return 1;
}

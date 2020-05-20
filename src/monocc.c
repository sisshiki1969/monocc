#include "monocc.h"

char *source_text;
FileInfo *file_informations = NULL;
Token *token;
Vector *ext_declarations;
Vector *strings;
LVar *locals;
LVar *scope;
TagName *tagnames;
Typedef *tdef_names;
Global *globals;
Function *functions;
char *output_file_name;
FILE *output;

char *registers[4][6] = {{"rdi", "rsi", "rdx", "rcx", "r8", "r9"},
                         {"edi", "esi", "edx", "ecx", "r8d", "r9d"},
                         {"di", "si", "dx", "cx", "r8w", "r9w"},
                         {"dil", "sil", "dl", "cl", "r8b", "r9b"}};

/// Read file and return char* of data.
char *read_file(char *path) {
  FILE *fp = fopen(path, "r");
  if (!fp) error("cannot open %s: %s\n", path, strerror(errno));

  if (fseek(fp, 0, SEEK_END) == -1)
    error("%s: fseek: %s\n", path, strerror(errno));
  size_t size = ftell(fp);
  if (fseek(fp, 0, SEEK_SET) == -1)
    error("%s: fseek: %s\n", path, strerror(errno));

  char *buf = calloc(1, size + 8);
  fread(buf, size, 1, fp);

  if (size == 0 || buf[size - 1] != '\n') buf[size++] = '\n';
  buf[size] = '\0';
  fclose(fp);
  // fprintf(stderr, "monocc: file read\n");
  // fprintf(stderr, "%s", buf);
  return buf;
}

void emit_basic_global(Type *type, Node *init) {
  long i = 0;
  switch (type->ty) {
    case CHAR:
      if (init) {
        if (init->kind == ND_NUM)
          i = init->num_val;
        else
          error_at_node(init,
                        "Calculation in an initializer is not supported yet.");
      }
      fprintf(output, "\t.byte %ld\n", i);
      break;
    case SHORT:
    case USHORT:
      if (init) {
        if (init->kind == ND_NUM)
          i = init->num_val;
        else
          error_at_node(init,
                        "Calculation in an initializer is not supported yet.");
      }
      fprintf(output, "\t.word %ld\n", i);
      break;
    case INT:
    case UINT:
      if (init) {
        if (init->kind == ND_NUM)
          i = init->num_val;
        else
          error_at_node(init,
                        "Calculation in an initializer is not supported yet.");
      }
      fprintf(output, "\t.long %ld\n", i);
      break;
    case LONG:
    case ULONG:
      if (init) {
        if (init->kind == ND_NUM)
          i = init->num_val;
        else
          error_at_node(init,
                        "Calculation in an initializer is not supported yet.");
      }
      fprintf(output, "\t.quad %ld\n", i);
      break;
    case ARRAY:
      if (type->ptr_to->ty == CHAR) {
        if (!init) {
          // char str[];  => incomplete type
          if (type->array_size == 0)
            error_at_token(init->token, "Incomplete type is not allowed.");
          // char str[10];
          else
            fprintf(output, "\t.zero %d\n", sizeof_type(type));
        } else if (init->kind == ND_STR) {
          // char str[] = "sample";
          int str_size = 1;
          fprintf(output, "\t.string \"");
          for (Token *t = init->token; t; t = t->next) {
            fprintf(output, "%.*s", t->len, t->str);
            str_size += t->len;
          }
          fprintf(output, "\"\n");
          int ary_size = type->array_size;
          if (ary_size > str_size)
            fprintf(output, "\t.zero %d\n", ary_size - str_size);
        } else
          error_at_node(init, "Unsupported initializer.");
      } else {
        if (!init) {
          fprintf(output, "\t.zero %d\n", sizeof_type(type));
          return;
        }
        if (init->kind != ND_INIT)
          error_at_node(init, "Unsupported initializer.");
        Vector *vec = init->nodes;
        type = type->ptr_to;
        for (int i = 0; i < vec_len(vec); i++) {
          emit_basic_global(type, vec->data[i]);
        }
      }
      break;
    default:
      if (is_ptr_to_char(type)) {
        // char *str = "sample";
        if (init && init->kind == ND_STR)
          fprintf(output, "\t.quad .LS%06d\n", init->str_id);
        else
          fprintf(output, "\t.quad 0\n");
      } else {
        int s = sizeof_type(type);
        switch (s) {
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
}

Token *create_token(TokenKind kind, char *str, int len) {
  Token *new_token = calloc(1, sizeof(Token));
  new_token->kind = kind;
  new_token->str = str;
  new_token->len = len;
  return new_token;
}

void compile(char *file) {
  ty_int.ty = INT;
  ty_uint.ty = UINT;
  ty_short.ty = SHORT;
  ty_ushort.ty = USHORT;
  ty_long.ty = LONG;
  ty_ulong.ty = ULONG;
  ty_char.ty = CHAR;
  ty_bool.ty = BOOL;
  ty_void.ty = VOID;

  char *s = "__builtin_va_start";
  Token *t = create_token(TK_IDENT, s, strlen(s));
  Function *f = new_func(t, new_type_func(new_type_void()), NULL);
  f->type->variadic = true;

  tokenize(file, source_text, true);
  pp();

  strings = vec_new();
  parse_program();
  if (verbose) {
    print_tokens(output, token);

    print_globals();
    print_funcs();
    print_strings();
    print_structs();
    print_typedefs();
    fprintf(output, "\n");
  }

  fprintf(output, "\t.intel_syntax noprefix\n");

  fprintf(output, "\t.data\n");
  Global *global = globals;

  fprintf(stderr, "monocc: emit globals...\n");
  for (; global; global = global->next) {
    if (global->is_extern) {
      continue;
    }
    fprintf(output, "\t.global %.*s\n", global->token->len, global->token->str);
    fprintf(output, "%.*s:\n", global->token->len, global->token->str);
    emit_basic_global(global->type, global->body);
  };
  fprintf(stderr, "monocc: emitted globals\n");

  int i = 0;
  while (i < vec_len(strings)) {
    Node *node = strings->data[i];
    fprintf(output, ".LS%06d:\n", node->str_id);
    fprintf(output, "\t.string \"");
    for (Token *t = node->token; t; t = t->next) {
      fprintf(output, "%.*s", t->len, t->str);
    }
    fprintf(output, "\"\n");
    i++;
  }
  fprintf(output, "\n");
  if (verbose) {
    for (FileInfo *fi = file_informations; fi; fi = fi->next) {
      int no = fi->no;
      char *name = fi->file_name;
      int len = strlen(name);
      fprintf(output, "\t.file %d \"%.*s\"\n", no, len, name);
    }
  }

  fprintf(output, "\t.text\n");

  int len = vec_len(ext_declarations);
  for (int i = 0; i < len; i++) {
    Node *node = ext_declarations->data[i];
    fprintf(output, "\t.global %.*s\n", node->token->len, node->token->str);
    gen_stmt(node);
  }
  fprintf(stderr, "monocc: compile complete\n");
}

int main(int argc, char **argv) {
  char *file;
  verbose = true;
  for (int i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-test") == 0) {
      test_vec();
      return 0;
    } else if (strcmp(argv[i], "-string") == 0) {
      if (i + 2 > argc) {
        fprintf(stderr, "No input string.\n");
        return 1;
      }
      file = "input";
      source_text = argv[i + 1];
      output = fopen("tmp.s", "w");
      compile(file);
      return 0;
    } else if (strcmp(argv[i], "-v") == 0) {
      verbose = false;
    } else {
      file = argv[i];
      source_text = read_file(argv[i]);
      output_file_name = calloc(1, strlen(file) + 5);
      strcpy(output_file_name, file);
      char *dot = output_file_name + strlen(output_file_name) - 2;
      if (strcmp(dot, ".c") != 0) {
        fprintf(stderr, "Invalid aource file name.");
        return 1;
      }
      *(dot + 1) = 's';

      output = fopen(output_file_name, "w");
      if (!output) {
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

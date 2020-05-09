#include "monocc.h"

void pp() {
  for (Token *t = token; t; t = t->next) {
    // print_token(stderr, t);
    if (t->kind != TK_IDENT) continue;
    Macro *m = find_macro(t);
    if (!m) continue;
    Macro args_head;
    args_head.next = NULL;
    Macro *args = &args_head;
    if (m->params) {
      int param_count = 0;
      for (Token *param = m->params; param; param = param->next) param_count++;

      Token *start = t;
      t = t->next;
      if (!t) error_at_token(start, "Expected '('.");

      if (t->kind != TK_OP_PAREN) error_at_token(t, "Expected '('.");
      int arg_count = 0;
      while (t->next->kind != TK_CL_PAREN) {
        // invoke function-like macro
        Token *arg_token = t->next;
        if (arg_token->kind == TK_CL_PAREN || arg_token->kind == TK_COMMA)
          arg_token = NULL;
        while (t->next->kind != TK_CL_PAREN && t->next->kind != TK_COMMA) {
          if (t->next->kind == TK_OP_PAREN) {
            while (t->next->kind != TK_CL_PAREN) t = t->next;
          }
          t = t->next;
        }

        Token *next = t->next;
        t->next = NULL;
        t = next;
        Macro *arg = calloc(1, sizeof(Macro));
        arg->params = arg_token;
        args->next = arg;
        args = arg;
        arg_count++;
        if (arg_count > param_count)
          error_at_token(
              arg_token,
              "Too many arguments in invocation of macro '%.*s'. %d %d",
              start->len, start->str, arg_count, param_count);
      }
      start->next = t->next;
      t = start;

      if (arg_count < param_count)
        error_at_token(t, "Too few arguments for invokation of macro.");
    }
    // for(Macro *args = args_head.next; args; args = args->next)
    // print_tokens(stderr, args->params);
    if (!m->subst) {
      Token *next_token = t->next;
      copy_token(next_token, t);
      t = next_token;
      continue;
    }

    Token *next_token = t->next;
    copy_token(m->subst, t);
    while (t->next) {
      if (t->kind == TK_IDENT) {
        for (Token *param = m->params; param; param = param->next) {
          if (cmp_token(t, param)) {
            int i = param->int_val;
            // fprintf(stderr, "find: %d", i);
            // print_token(stderr, t);
            for (Macro *args = args_head.next; args; args = args->next) {
              if (i-- == 0) {
                Token *next = t->next;
                copy_token(args->params, t);
                while (t->next) t - t->next;
                t->next = next;
                break;
              }
            }
            // fprintf(stderr, "\n");
            break;
          }
        }
      }
      t = t->next;
    }
    t->next = next_token;
  }
}

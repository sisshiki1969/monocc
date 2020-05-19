#include "monocc.h"

void check_params(Macro *m, Token *t, Macro **args) {
  // t->kind == TK_IDENT
  int param_count = 0;
  for (Token *param = m->params; param; param = param->next) param_count++;

  Token *start = t;
  t = t->next;
  if (!t) error_at_token(start, "Expected '('.");
  if (t->kind != TK_OP_PAREN) error_at_token(t, "Expected '('.");
  // t->kind == TK_OP_PAREN
  int arg_count = 0;
  Token anchor;
  while (t->next && t->next->kind != TK_CL_PAREN) {
    // t->next->kind != TK_CL_PAREN
    // invoke function-like macro
    Token *arg_token = t->next;
    while (t->next->kind != TK_CL_PAREN && t->next->kind != TK_COMMA) {
      if (t->next->kind == TK_OP_PAREN) {
        while (t->next->kind != TK_CL_PAREN) {
          t = t->next;
          if (!t->next)
            error_at_token(t, "Improperly terminated macro invocation.");
        }
        // t->next->kind != TK_CL_PAREN
      }
      t = t->next;
      if (!t->next)
        error_at_token(t, "Improperly terminated macro invocation.");
    }
    // t->next->kind == ( TK_CL_PAREN || TK_COMMA )

    Token *next = t->next;
    t->next = NULL;
    anchor.next = next;
    t = &anchor;
    // t->next->kind == ( TK_CL_PAREN || TK_COMMA )
    Macro *arg = calloc(1, sizeof(Macro));
    arg->params = arg_token;
    (*args)->next = arg;
    *args = arg;
    arg_count++;
    if (arg_count > param_count)
      error_at_token(arg_token,
                     "Too many arguments in invocation of macro '%.*s'. "
                     "actual:%d expected:%d",
                     start->len, start->str, arg_count, param_count);
    if (t->next->kind == TK_CL_PAREN) break;
    // t->next->kind == TK_COMMA
    t = t->next;
    // t->kind == TK_COMMA
  }
  // t->next->kind == TK_CL_PAREN or !t->next
  if (!t->next) error_at_token(t, "Expected ')'.");
  // t->next->kind == TK_CL_PAREN
  start->next = t->next->next;

  if (arg_count < param_count)
    error_at_token(start, "Too few arguments for invokation of macro.");
}

void pp() {
  Macro *m;
  for (Token *t = token; t; t = t->next) {
    // print_token(stderr, t);
    if (t->kind != TK_IDENT) continue;
    if (!(m = find_macro(t))) continue;
    Macro args_head;
    args_head.next = NULL;
    Macro *args = &args_head;
    if (m->params) {
      check_params(m, t, &args);
    }
    // for(Macro *args = args_head.next; args; args = args->next)
    // print_tokens(stderr, args->params);
    if (!m->subst) {
      Token *next_token = t->next;
      *t = *next_token;
      t = next_token;
      continue;
    }

    Token *next_token = t->next;
    *t = *(m->subst);
    while (t->next) {
      if (t->kind == TK_IDENT) {
        for (Token *param = m->params; param; param = param->next) {
          if (cmp_token(t, param)) {
            int i = param->num_val;
            // fprintf(stderr, "find: %d", i);
            // print_token(stderr, t);
            for (Macro *args = args_head.next; args; args = args->next) {
              if (i-- == 0) {
                Token *next = t->next;
                // copy_token(args->params, t);
                *t = *args->params;
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

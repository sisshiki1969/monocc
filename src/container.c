#include <stdio.h>

#include "monocc.h"

// Vector

Vector *vec_new() {
  Vector *vec = (Vector *)malloc(sizeof(Vector));
  vec->data = (Node **)malloc(5 * sizeof(void *));
  vec->len = 0;
  vec->capacity = 5;
  return vec;
}

int vec_len(Vector *vec) { return vec->len; }

void vec_push(Vector *vec, Node *data) {
  if (vec->len == vec->capacity) {
    vec->capacity *= 2;
    vec->data = realloc(vec->data, vec->capacity * sizeof(void *));
  }
  vec->data[vec->len++] = data;
}

void test_vec() {
  Vector *vec = vec_new();
  for (int i = 0; i < 100; i++) vec_push(vec, new_node_num(i, NULL));
  assert_expect(__LINE__, 100, vec_len(vec));
  assert_expect(__LINE__, 0, vec->data[0]->num_val);
  assert_expect(__LINE__, 50, vec->data[50]->num_val);
  assert_expect(__LINE__, 99, vec->data[99]->num_val);
  fprintf(stderr, "test_vec() cleared\n");
}

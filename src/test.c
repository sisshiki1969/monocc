#include "monocc.h"

void assert_expect(int line, long expected, long actual) {
  if (expected == actual) return;
  fprintf(stderr, "%d: %ld expected, but got %ld\n", line, expected, actual);
  exit(1);
}
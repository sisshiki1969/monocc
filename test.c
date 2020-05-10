#include <stdio.h>

#include "src/monocc.h"

typedef struct A A;
struct A {
  int a;
  int b;
  char c;
}

main() {
  A a;
  a.a = 400;
  a.b = 200;
  a.c = 20;
  A b;
  b = a;
  printf("%d\n", b.a);
  printf("%d\n", b.b);
  printf("%d\n", b.c);
  A c;
  A *cp = &c;
  c = a;
  printf("%d\n", cp->a);
  printf("%d\n", cp->b);
  printf("%d\n", cp->c);
}

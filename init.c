#include <stdbool.h>
#include <stdio.h>

#include "src/monocc.h"

struct Vec {
  int x;
  int y;
  bool flag;
} v1 = {4, 5, false};

int main() {
  printf("%d %d %d\n", v1.x, v1.y, v1.flag);
  struct Vec v = {10, 11, true};
  printf("%d %d %d\n", v.x, v.y, v.flag);
}
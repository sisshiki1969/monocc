#include "src/monocc.h"
void var(char *fmt, ...) {
  va_list ap;
  va_start(ap, fmt);
  char **p = ap[0].reg_save_area;

  fprintf(stderr, "%d\n", ap[0].gp_offset);
  fprintf(stderr, "%d\n", ap[0].fp_offset);
  fprintf(stderr, "%c\n", **p);
  fprintf(stderr, "error\n");
}

int main() {
  var("this is a pen.");
  return 0;
}
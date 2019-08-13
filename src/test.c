#include "monocc.h"

void assert_expect(int line, int expected, int actual) {
    if(expected == actual)
        return;
    fprintf(stderr, "%d: %d expected, but got %d\n", line, expected, actual);
    exit(1);
}

FILE *get_stderr() { return stderr; }
FILE *get_stdout() { return stdout; }
int get_errno() { return errno; }

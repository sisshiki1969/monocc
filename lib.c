#include <stdio.h>
#include <stdlib.h>

int foo(int a, int b, int c) { return (a - b) / c; }

int print(int a) {
    printf("%d\n", a);
    return 5;
}

void alloc4(int **p, int i1, int i2, int i3, int i4) {
    int *a = calloc(4, sizeof(int));
    *p = a;
    a[0] = i1;
    a[1] = i2;
    a[2] = i3;
    a[3] = i4;
}

void printf_(char *str) { printf("%s", str); }

int assert_expect(int line, int expected, int actual) {
    if(expected == actual) {
        fprintf(stderr, "line %d: passed\n", line);
        return 0;
    }
    fprintf(stderr, "line %d: %d expected, but got %d\n", line, expected,
            actual);
    exit(1);
}
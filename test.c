#include <stdio.h>
int foo(int a, int b, int c)
{
    printf("hello %d %d %d\n", a, b, c);
    return (a - b) / c;
}
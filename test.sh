#!/bin/bash
try() {
    expected="$1"
    input="$2"
    ./src/monocc -string "int foo(int a, int b, int c); int print(int a);
        int alloc4(int **p, int i1, int i2, int i3, int i4);
        int print_str(char* x);
        int main(){$input}" > tmp.s
    gcc -o tmp tmp.s lib.o
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

try 9 "int alpha5; alpha5 = 5; alpha5 * 6 - 21;"
try 45 "int alpha5; int beta_9; alpha5 = 5; beta_9 = alpha5 * 6 - 21; print(alpha5); print(beta_9); beta_9*alpha5;"
try 37 "int a; a = 5 *5 +12;return a;"
try 13 "int a; int b; a=8; if(a==4) b=19; else b=13; return b;"
try 13 "int a; int b; a=8; if(a==4) ; else b=13; return b;"
try 8 "int a; int b; a=b=8; if(a==4) b=19; else ; return b;"
try 19 "int a; a=8; if(a==8) a=19; return a;"
try 3 "int i; int ifs; i = 1; if(1==i) if(0==i) ifs = 7; else ifs = 3; else ifs = 9; return ifs;"
try 5 "int a; int b; if(1==1) {a = 1; b = 5;} else {a = 3; b = 3;} a*b;"
try 15 "int i; int sum; i = 1;
sum = 0;
while (i < 6) { sum = sum + i; i = i + 1; }
return sum;"
try 5 "int a; int b; a = foo(b = 37, 7, 6);
print(a);
return a;"
try 1 "int a; int *p; int *q; p = &a; q = &a; return(p==q);"
try 0 "int a; int *p; int *q; p = &a; q = &a; return(p!=q);"
try 0 "int a; int b; int *p; int *q; p = &a; q = &b; return(p==q);"
try 1 "int a; int b; int *p; int *q; p = &a; q = &b; return(p!=q);"

try2() {
    expected="$1"
    input="$2"

    ./src/monocc -string "$input" > tmp.s
    gcc -o tmp tmp.s lib.o
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

try2 5 "int main(){ return 5 ;}"
try2 1 "int main(){ int a; a = 3; return -+-+-a == -3; }"
try2 1 "int print(int a);
    int bar(int a,int b){ int e; e = 22745; print(a); print(b); return 10000 + e;}
    int main(){ int e; e = 32740; print(bar(5, 10)); return bar(8, 11) == e + 5;}"
try2 1 "int print(int a);
    int fibo(int x);
    int fibo(int x){ if (x < 2) return 1; return fibo(x-1) + fibo(x-2); }
    int main(){ print(fibo(30)); return fibo(30) == 1346269; }"
try2 9 "int main(){
    int x;
    int *y;
    x = 3;
    y = &x;
    *y = 9;
    return x;
    }"
try 1 "int x; int *y; y = &x; return y + 1 - y;"
try 4 "int x; return sizeof x;"
try 4 "int x; return sizeof(7);"
try 8 "int x; return sizeof &x;"
try 8 "int x; return sizeof (&x + 12);"
try 1 "char x; return sizeof (x);"
try 8 "char *x; return sizeof (x);"
try 1 "char x[12][5]; return sizeof (x) == 60;"
try 1 "char *x[12][5]; return sizeof (x) == 480;"
try 1 "int x[10]; int y; return sizeof(x) == 40;"
try 1 "int *x[5]; int y; return sizeof(x) == 40;"
try 1 "
    int *p;
    int a;
    int b;
    alloc4(&p, 1, 2, 4, 8);
    if(*(p + 1)!=2) return 0;
    if(*(p + 3)!=8) return 0;
    return 1;"
try 11 "
    int a[2];
    *a = 7;
    *(a + 1) = 4;
    int *p;
    p = a;
    print(*p);
    print(*(p+1));
    return *p + *(p + 1);"
try 7 "int a[10]; int i; i = 3; int c; a[c=i+2] = 7; return a[c];"
try 3 "char x[3]; x[0] = -1; x[1] = 2; int y; y = 4; return x[0] + y;"

echo OK
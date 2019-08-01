int assert_expect(int line, int expected, int actual);
int print(int a);
int print_str(char *str);

int fibo(int x) {
    if(x < 2)
        return 1;
    return fibo(x - 1) + fibo(x - 2);
}

int array_local() {
    int a[10][8];
    int i;
    int j;
    i = 0;
    while(i <= 9) {
        j = 0;
        while(j <= 7) {
            a[i][j] = i * 10 + j;
            j = j + 1;
        }
        i = i + 1;
    }
    print(a[8][4]);
    assert_expect(__LINE__, a[0][1], 1);
    assert_expect(__LINE__, a[9][7], 97);
    assert_expect(__LINE__, a[8][4], 84);
    return 0;
}

int a[10][8];
int i;
int j;

int array_global() {
    i = 0;
    while(i <= 9) {
        j = 0;
        while(j <= 7) {
            a[i][j] = i * 10 + j;
            j = j + 1;
        }
        i = i + 1;
    }
    print(a[8][4]);
    assert_expect(__LINE__, a[0][1], 1);
    assert_expect(__LINE__, a[9][7], 97);
    assert_expect(__LINE__, a[8][4], 84);
    return 0;
}

int main() {
    assert_expect(__LINE__, 9, +9);
    assert_expect(__LINE__, 4, -3 + 7);
    assert_expect(__LINE__, 21, 5 + 20 - 4);
    assert_expect(__LINE__, 21, 5 + 4 * 4);
    assert_expect(__LINE__, 24, (4 * (5 - 2)) * (4 - 2));
    assert_expect(__LINE__, 13, 6 + 3 * 4 - 15 / 3);
    assert_expect(__LINE__, 33, (6 + 3) * (15 - 4) / 3);
    assert_expect(__LINE__, 0, 3 == 3 + 1);
    assert_expect(__LINE__, 1, 4 != 4 * 2);
    assert_expect(__LINE__, 0, 3 != 1 * 3);
    assert_expect(__LINE__, 1, 5 >= 8 - 4);
    assert_expect(__LINE__, 1, 5 >= 7 - 2);
    assert_expect(__LINE__, 0, 11 - 8 >= 5);
    assert_expect(__LINE__, 1, 3 <= 2 * 30);
    assert_expect(__LINE__, 1, 3 <= 9 / 3);
    assert_expect(__LINE__, 0, 3 <= 20 - 18);
    assert_expect(__LINE__, 1, -5 * 2 + 10 == 0);
    assert_expect(__LINE__, 1, +6 / 2 == 9 / 3);
    assert_expect(__LINE__, 1, 4 < 4 + 1);
    assert_expect(__LINE__, 1, 1 + 4 > 4);
    assert_expect(__LINE__, 0, 4 < 4 - 1);
    assert_expect(__LINE__, 0, 1 - 4 > 4);
    assert_expect(__LINE__, 1346269, fibo(30));
    array_global();
    array_local();
    print_str("passed tests.\n");
    return 0;
}

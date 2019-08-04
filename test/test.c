void assert_expect(int line, int expected, int actual);
void print(int a);
void print_str(char *str);

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
    assert_expect(__LINE__, 1, a[0][1]);
    assert_expect(__LINE__, 97, a[9][7]);
    assert_expect(__LINE__, 84, a[8][4]);
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
    assert_expect(__LINE__, a[0][1], 1);
    assert_expect(__LINE__, a[9][7], 97);
    assert_expect(__LINE__, a[8][4], 84);
    return 0;
}

int string() {
    char *str;
    str = "Hello world!\n";
    assert_expect(__LINE__, 119, 'w');
    assert_expect(__LINE__, 'w', str[6]);
}

void block_scope() {
    i = 1;
    assert_expect(__LINE__, 1, i);
    int i;
    i = 5;
    assert_expect(__LINE__, 5, i);
    {
        int i;
        i = 2;
        {
            int i;
            i = 3;
            {
                int i;
                i = 4;
                assert_expect(__LINE__, 4, i);
            }
            assert_expect(__LINE__, 3, i);
        }
        assert_expect(__LINE__, 2, i);
    }
    assert_expect(__LINE__, 5, i);
}

void for_() {
    int x;
    x = 100;
    assert_expect(__LINE__, 100, x);
    for(int x; x < 15; x = x + 1) {
        if(x == 9)
            break;
        if(x == x / 2 * 2)
            continue;
        print(x);
        int x;
        x = 9;
        assert_expect(__LINE__, 9, x);
    }
    assert_expect(__LINE__, 100, x);
    x = 0;
    for(;;) {
        if(x == 6)
            break;
        x = x + 1;
    }
    assert_expect(__LINE__, 6, x);
}

int switch_(int s) {
    int i;
    switch(s) {
    case 1:
        i = 11;
        break;
    case 2:
    case 3:
        i = 12;
    case 4:
        i = 13;
        return i;
    case 5:
        i = 14;
    default:
        i = 15;
    }
    return i;
}

int switch2_(char s) {
    int i;
    switch(s) {
    case 'a':
        i = 11;
        break;
    case 'b':
    case 'c':
        i = 12;
        break;
    default:
        i = 15;
    }
    return i;
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

    int i;
    i = 77;
    if(i == 77)
        i = 55;
    else
        i = 66;
    assert_expect(__LINE__, 55, i);
    assert_expect(__LINE__, 1346269, fibo(30));
    array_global();
    array_local();
    string();
    block_scope();
    for_();

    assert_expect(__LINE__, 11, switch_(1));
    assert_expect(__LINE__, 13, switch_(2));
    assert_expect(__LINE__, 13, switch_(3));
    assert_expect(__LINE__, 13, switch_(4));
    assert_expect(__LINE__, 15, switch_(5));
    assert_expect(__LINE__, 15, switch_(6));

    assert_expect(__LINE__, 11, switch2_('a'));
    assert_expect(__LINE__, 12, switch2_('b'));
    assert_expect(__LINE__, 12, switch2_('c'));
    assert_expect(__LINE__, 15, switch2_('z'));

    print_str("passed tests.\n");
    return 0;
}

typedef struct {
  char mode;
  char *ptr;
  int rcount;
  int wcount;
  char *base;
  int bufsiz;
  int fd;
  char smallbuf[1];
} FILE;

void exit(int status);
extern FILE *stderr;
extern FILE *stdout;
int printf(char *fmt, ...);
void *calloc(int n, int size);
int fprintf(FILE *stream, char *fmt, ...);

void assert_expect(int line, long expected, long actual) {
  if (expected == actual) return;
  fprintf(stderr, "%d: %ld expected, but got %ld\n", line, expected, actual);
  exit(1);
}

#include <stdbool.h>

int A;        // int
int *B;       // * int
int C[5];     // [] int
int D();      // func() int
int **E;      // * * int
int (*F)[5];  // * [] int
int (*G)();   // * func() int
int *H[5];    // [] * int
int I[5][5];  // [] [] int
int *J();     // func() * int
int ***K;     // * * * int
int (**L)[];  // * * [] int
int (**M)();  // * * func() int
int *(*N)[];  // * [] * int
void (*signal(int, void (*)(int)))(int);

typedef struct Leaf Leaf;

struct Leaf {
  struct Vec {
    int row;
    int col;
  } ary[17];
  int size;
  char ch;
} leaf_global;

int fibo(int x) {
  if (x < 2) return 1;
  return fibo(x - 1) + fibo(x - 2);
}

int array_local() {
  int a[10][8];
  int i = 0;
  int j = 0;
  int k[] = {0, 1, -2, -3};
  long l[] = {0, -1, -2, -3};
  short m[] = {-5, -6, 7, 8};
  while (i <= 9) {
    j = 0;
    while (j <= 7) {
      a[i][j] = i * 10 + j;
      j++;
    }
    i += 1;
  }
  assert_expect(__LINE__, 0, k[0]);
  assert_expect(__LINE__, 1, k[1]);
  assert_expect(__LINE__, -2, k[2]);
  assert_expect(__LINE__, -3, k[3]);

  assert_expect(__LINE__, 0, l[0]);
  assert_expect(__LINE__, -1, l[1]);
  assert_expect(__LINE__, -2, l[2]);
  assert_expect(__LINE__, -3, l[3]);

  assert_expect(__LINE__, -5, m[0]);
  assert_expect(__LINE__, -6, m[1]);
  assert_expect(__LINE__, 7, m[2]);
  assert_expect(__LINE__, 8, m[3]);

  assert_expect(__LINE__, 1, a[0][1]);
  assert_expect(__LINE__, 97, a[9][7]);
  assert_expect(__LINE__, 84, a[8][4]);
  return 0;
}

int a[10][8];
int i = 1979;
int j = 2015;
char s = 24;
char *str = "Hi, guys.\tAre you hungry";
char str_ary[] =
    "Hey, girls.\n"
    "Are you angry?";
char quick[] = "QuickBrownFox";
int ary_int[] = {1, 2, 3, 4, 5};
char reg[][5][4] = {{"rdi", "rsi", "rdx", "rcx", "r8"},
                    {"edi", "esi", "edx", "ecx", "r8d"},
                    {"di", "si", "dx", "cx", "r8w"},
                    {"dil", "sil", "dl", "cl", "r8b"}};
char char_global = 127;
short short_global = 256;
int int_global = 512;
long long_global = 1024;

typedef struct {
  int a;
  bool b;
  void *c;
} struct1;

int array_global() {
  assert_expect(__LINE__, 127, char_global);
  assert_expect(__LINE__, 256, short_global);
  assert_expect(__LINE__, 512, int_global);
  assert_expect(__LINE__, 1024, long_global);

  for (int i = 0; i < 5; i++) assert_expect(__LINE__, i + 1, ary_int[i]);
  assert_expect(__LINE__, 'i', reg[2][1][1]);
  assert_expect(__LINE__, 'w', reg[2][4][2]);

  i = 0;
  while (i <= 9) {
    j = 0;
    while (j <= 7) {
      a[i][j] = i * 10 + j;
      j++;
    }
    i++;
  }
  assert_expect(__LINE__, a[0][1], 1);
  assert_expect(__LINE__, a[9][7], 97);
  assert_expect(__LINE__, a[8][4], 84);
  return 0;
}

int string() {
  char *str = "Hello world!\n";
  printf("%s", str);
  char str_ary9[] =
      "\tHello---"
      "world,\tagain\n";
  printf("%s", str_ary9);
  assert_expect(__LINE__, 9, str_ary9[15]);

  assert_expect(__LINE__, 119, 'w');
  assert_expect(__LINE__, 'w', str[6]);
}

void block_scope() {
  i = 1;
  assert_expect(__LINE__, 1, i);
  int i = 5;
  assert_expect(__LINE__, 5, i);
  {
    int i = 2;
    {
      int i = 3;
      {
        int i = 4;
        assert_expect(__LINE__, 4, i);
      }
      assert_expect(__LINE__, 3, i);
    }
    assert_expect(__LINE__, 2, i);
  }
  assert_expect(__LINE__, 5, i);
}

void for_() {
  int x = 100;
  assert_expect(__LINE__, 100, x);
  for (int x = 10; x < 100; x += 1) {
    if (x == 15) break;
    if (x == x / 3 * 3) assert_expect(__LINE__, 12, x);
    int x = 9;
    assert_expect(__LINE__, 9, x);
  }
  assert_expect(__LINE__, 100, x);
  x = 0;
  for (;;) {
    if (x == 6) break;
    x = x + 1;
  }
  assert_expect(__LINE__, 6, x);
}

int switch_(int s) {
  int i;
  switch (s) {
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
  switch (s) {
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

typedef struct List List;

struct List {
  List *next;
  int payloads;
} list1;

struct {
  int payload;
} def;

typedef struct Pos {
  int row;
  int col;
} Pos;

Pos pos;
Pos *ptr_to_pos;

enum Number {
  ZERO,
  ONE,
  TWO,
  THREE,
} number;

void list_() {
  int size = sizeof(List);
  List *cursor = 0;
  for (int i = 0; i < 6; i++) {
    List *new = calloc(1, size);
    new->payloads = i;
    new->next = cursor;
    cursor = new;
  }
  assert_expect(__LINE__, 5, cursor->payloads);
  cursor = cursor->next;
  assert_expect(__LINE__, 4, cursor->payloads);
  cursor = cursor->next;
  assert_expect(__LINE__, 3, cursor->payloads);
  cursor = cursor->next;
  assert_expect(__LINE__, 2, cursor->payloads);
  cursor = cursor->next;
  assert_expect(__LINE__, 1, cursor->payloads);
  cursor = cursor->next;
  assert_expect(__LINE__, 0, cursor->payloads);
  // assert_expect(__LINE__, 0, cursor->next);
  def.payload = 777;
  assert_expect(__LINE__, 777, def.payload);
}

void struct_() {
  Leaf leaf;
  struct Tree {
    Leaf *left;
    Leaf *right;
  };

  struct S2 {
    int x;
    char y;
  } s2;

  struct S1 {
    char a;
    struct S2 b;
    int c;
    char d;
    int *e;
  } s1;

  assert_expect(__LINE__, 32, sizeof(struct S1));
  assert_expect(__LINE__, 8, sizeof(struct S2));

  pos.col = 9;
  pos.row = 45;

  assert_expect(__LINE__, 9, pos.col);
  assert_expect(__LINE__, 45, pos.row);

  assert_expect(__LINE__, 4, sizeof(pos.col));
  assert_expect(__LINE__, 4, sizeof(pos.row));

  Leaf node;
  Leaf *node_ptr = &node;
  Leaf node_new;
  node.size = 10;
  node.ch = 5;
  node_new.size = 195;
  node_new.ch = 39;
  node_new.ary[0].row = 184;
  node_new.ary[16].col = 984;
  assert_expect(__LINE__, 10, node.size);
  assert_expect(__LINE__, 5, node.ch);
  node.size = 110;
  node.ch = 79;
  assert_expect(__LINE__, 110, (*node_ptr).size);
  assert_expect(__LINE__, 79, (*node_ptr).ch);
  assert_expect(__LINE__, 110, node_ptr->size);
  assert_expect(__LINE__, 79, node_ptr->ch);
  assert_expect(__LINE__, 195, node_new.size);
  assert_expect(__LINE__, 39, node_new.ch);
  assert_expect(__LINE__, 184, node_new.ary[0].row);
  assert_expect(__LINE__, 984, node_new.ary[16].col);
  struct Tree tree;
  tree.right = &node_new;
  tree.left = &node;
  assert_expect(__LINE__, 195, tree.right->size);

  Leaf l1;
  Leaf l2;
  l1.size = 100;
  l2.size = 500;
  l2 = l1;
  leaf_global.size = 700;
  assert_expect(__LINE__, 100, l2.size);
  l2 = leaf_global;
  assert_expect(__LINE__, 700, l2.size);
  leaf_global = l1;
  assert_expect(__LINE__, 100, leaf_global.size);
  l1.size = 999;
  Leaf *l1p = &l1;
  Leaf *l2p = &l2;
  leaf_global = *l2p = *l1p;
  assert_expect(__LINE__, 999, l2p->size);
  assert_expect(__LINE__, 999, leaf_global.size);
}

int q8_count;

void print_board(int board[][8]) {
  q8_count++;
  return;
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      if (board[i][j]) printf("Q ");
      printf(". ");
    }
    printf("\n");
  }
  printf("\n\n");
}

int conflict(int board[][8], struct Pos *p) {
  for (int i = 0; i < p->row; i++) {
    if (board[i][p->col]) return 1;
    int j = p->row - i;
    if (0 < p->col - j + 1)
      if (board[i][p->col - j]) return 1;
    if (p->col + j < 8)
      if (board[i][p->col + j]) return 1;
  }
  return 0;
}

void solve(int board[][8], int row) {
  if (row == 8) {
    print_board(board);
    return;
  }
  for (int i = 0; i < 8; i++) {
    struct Pos p;
    p.row = row;
    p.col = i;
    if (conflict(board, &p) == 0) {
      // if(conflict(board, row, i) == 0) {
      board[row][i] = 1;
      solve(board, row + 1);
      board[row][i] = 0;
    }
  }
}

int q8() {
  int board[8][8];
  q8_count = 0;
  for (int i = 0; i < 8; i++)
    for (int j = 0; j < 8; j++) board[i][j] = 0;
  solve(board, 0);
  return q8_count;
}

int fun(int *p) { return *p; }

struct SubVec {
  long x;
  int y;
} sb = {5, 10};

struct Vector {
  struct SubVec x;
  long y;
  char z[4];
  struct SubVec *p;
} v1 = {{14, 2 + 3 * 5}, 5, {9, 2 * (2 + 3), 11, 12}, &sb};

struct SubVec ary_sub[4] = {{3, 4}, {7, 18 - 10}, {11, 12}, {30, 31}};

void struct_initializer() {
  assert_expect(__LINE__, 14, v1.x.x);
  assert_expect(__LINE__, 17, v1.x.y);
  assert_expect(__LINE__, 5, v1.y);
  assert_expect(__LINE__, 9, v1.z[0]);
  assert_expect(__LINE__, 10, v1.z[1]);
  assert_expect(__LINE__, 11, v1.z[2]);
  assert_expect(__LINE__, 12, v1.z[3]);
  assert_expect(__LINE__, 10, v1.p->y);
  struct Vector v = {{10, 77}, 11, {51, 52, 53, 54}, 0};
  assert_expect(__LINE__, 10, v.x.x);
  assert_expect(__LINE__, 11, v.y);
  assert_expect(__LINE__, 51, v.z[0]);

  assert_expect(__LINE__, 3, ary_sub[0].x);
  assert_expect(__LINE__, 4, ary_sub[0].y);
  assert_expect(__LINE__, 7, ary_sub[1].x);
  assert_expect(__LINE__, 8, ary_sub[1].y);
  assert_expect(__LINE__, 11, ary_sub[2].x);
  assert_expect(__LINE__, 12, ary_sub[2].y);
  assert_expect(__LINE__, 30, ary_sub[3].x);
  assert_expect(__LINE__, 31, ary_sub[3].y);

  struct SubVec ary[4] = {{-3, -4}, {-7, -8}, {-11, -12}, {-30, -31}};
  assert_expect(__LINE__, -3, ary[0].x);
  assert_expect(__LINE__, -4, ary[0].y);
  assert_expect(__LINE__, -7, ary[1].x);
  assert_expect(__LINE__, -8, ary[1].y);
  assert_expect(__LINE__, -11, ary[2].x);
  assert_expect(__LINE__, -12, ary[2].y);
  assert_expect(__LINE__, -30, ary[3].x);
  assert_expect(__LINE__, -31, ary[3].y);
}

int main() {
#define true 1
#define false 0
#define NULL ((void *)0)
  int *jum = NULL;
  assert_expect(__LINE__, 1, true);
  assert_expect(__LINE__, 0, false);
  assert_expect(__LINE__, 0, (long)NULL);
#define mul(argx, argy, argz) (argx * (argy + argz))
  assert_expect(__LINE__, 70, mul(10, 2, 5));
  printf("%s", str_ary);

  assert_expect(__LINE__, 1979, i);
  assert_expect(__LINE__, 2015, j);
  assert_expect(__LINE__, 24, s);

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
  int a = 0;
  assert_expect(__LINE__, 0, 0 && a++);
  assert_expect(__LINE__, 0, a);
  assert_expect(__LINE__, 0, 1 && a++);
  assert_expect(__LINE__, 1, a);
  assert_expect(__LINE__, 1, 1 && a++);
  assert_expect(__LINE__, 2, a);
  assert_expect(__LINE__, 1, 0 || a++);
  assert_expect(__LINE__, 3, a);
  assert_expect(__LINE__, 1, 1 || a++);
  assert_expect(__LINE__, 3, a);
  a = 0;
  assert_expect(__LINE__, 0, 0 || a++);
  assert_expect(__LINE__, 1, a);
  a = 0;
  assert_expect(__LINE__, 0, 0 || 1 && a++);
  assert_expect(__LINE__, 1, a);
  assert_expect(__LINE__, 1, 1 && 1 || a++);
  assert_expect(__LINE__, 1, a);
  assert_expect(__LINE__, 1, !0);
  assert_expect(__LINE__, 0, !1);
  assert_expect(__LINE__, 0, !!!1);

  assert_expect(__LINE__, 256, 1 << 8);
  assert_expect(__LINE__, 32, 512 >> 4);

  // arythmetic types

  assert_expect(__LINE__, 1, sizeof(char));
  assert_expect(__LINE__, 2, sizeof(short));
  assert_expect(__LINE__, 2, sizeof(short unsigned));
  assert_expect(__LINE__, 4, sizeof(signed int));
  assert_expect(__LINE__, 4, sizeof(int unsigned));
  assert_expect(__LINE__, 8, sizeof(unsigned long));
  assert_expect(__LINE__, 8, sizeof(long));
  assert_expect(__LINE__, 8, sizeof(signed long));
  char _char = 254;
  assert_expect(__LINE__, -2, _char);
  unsigned int _uint = 100;
  assert_expect(__LINE__, 100, _uint);
  signed int _int = -100;
  assert_expect(__LINE__, -100, _int);
  long signed _long;
  int long unsigned _ulong;

  assert_expect(__LINE__, 131585, (int)8590066177);
  assert_expect(__LINE__, 513, (short)8590066177);
  assert_expect(__LINE__, 1, (char)8590066177);
  assert_expect(__LINE__, 1, (long)1);

  assert_expect(__LINE__, 4, sizeof(-10 + 5));
  assert_expect(__LINE__, 4, sizeof(-10 - 5));
  assert_expect(__LINE__, 4, sizeof(-10 * 5));
  assert_expect(__LINE__, 4, sizeof(-10 / 5));

  assert_expect(__LINE__, 8, sizeof(-10 + (long)5));
  assert_expect(__LINE__, 8, sizeof(-10 - (long)5));
  assert_expect(__LINE__, 8, sizeof(-10 * (long)5));
  assert_expect(__LINE__, 8, sizeof(-10 / (long)5));
  assert_expect(__LINE__, 8, sizeof((long)-10 + 5));
  assert_expect(__LINE__, 8, sizeof((long)-10 - 5));
  assert_expect(__LINE__, 8, sizeof((long)-10 * 5));
  assert_expect(__LINE__, 8, sizeof((long)-10 / 5));

  assert_expect(__LINE__, (long)-5, -10 + (long)5);
  assert_expect(__LINE__, (long)-15, -10 - (long)5);
  assert_expect(__LINE__, (long)-50, -10 * (long)5);
  assert_expect(__LINE__, (long)-2, -10 / (long)5);

  assert_expect(__LINE__, 1, -2 < (long)-1);
  assert_expect(__LINE__, 1, -2 <= (long)-1);
  assert_expect(__LINE__, 0, -2 > (long)-1);
  assert_expect(__LINE__, 0, -2 >= (long)-1);

  assert_expect(__LINE__, 1, (long)-2 < -1);
  assert_expect(__LINE__, 1, (long)-2 <= -1);
  assert_expect(__LINE__, 0, (long)-2 > -1);
  assert_expect(__LINE__, 0, (long)-2 >= -1);

  assert_expect(__LINE__, 0, (int)(2147483647UL + 2147483647UL + 2));
  long x;
  x = -1;
  assert_expect(__LINE__, (long)-1, x);

  // assignment operators
  int z;
  z = 10;
  assert_expect(__LINE__, 15, z += 5);
  assert_expect(__LINE__, 15, z);
  assert_expect(__LINE__, 8, z -= 7);
  assert_expect(__LINE__, 8, z);
  assert_expect(__LINE__, 40, z *= 5);
  assert_expect(__LINE__, 40, z);
  assert_expect(__LINE__, 4, z /= 10);
  assert_expect(__LINE__, 4, z);

  // post increment/decrement operators
  assert_expect(__LINE__, 4, z++);
  assert_expect(__LINE__, 5, z);
  assert_expect(__LINE__, 5, z--);
  assert_expect(__LINE__, 4, z);

  // initializer of local var
  // z = 4
  int init = 100 / z;
  assert_expect(__LINE__, 25, init);

  // if statement
  int i = 77;
  if (i == 77)
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
  list_();
  struct_();
  struct_initializer();
  /*                  /*
  comment
  these are comments.
  */
  enum {
    INVALID,
    January,
    February,
    March,
    April,
    October = 10,
    November,
    December
  } MONTH;
  assert_expect(__LINE__, 2, February);
  assert_expect(__LINE__, 4, April);
  assert_expect(__LINE__, 10, October);
  assert_expect(__LINE__, 12, December);
  // switch
  assert_expect(__LINE__, 11, switch_(1));
  assert_expect(__LINE__, 13, switch_(2));
  assert_expect(__LINE__, 13, switch_(3));
  assert_expect(__LINE__, 13, switch_(4));
  assert_expect(__LINE__, 15, switch_(5));
  assert_expect(__LINE__, 15, switch_(6));

  // switch
  assert_expect(__LINE__, 11, switch2_('a'));
  assert_expect(__LINE__, 12, switch2_('b'));
  assert_expect(__LINE__, 12, switch2_('c'));
  assert_expect(__LINE__, 15, switch2_('z'));

  // 8-queen solver
  assert_expect(__LINE__, 92, q8());

  // enum
  assert_expect(__LINE__, 0, ZERO);
  assert_expect(__LINE__, 1, ONE);
  assert_expect(__LINE__, 2, TWO);
  assert_expect(__LINE__, 3, THREE);

  assert_expect(__LINE__, 15, 13 | 7);
  assert_expect(__LINE__, 5115, 938 | 5073);
  assert_expect(__LINE__, 5, 13 & 7);
  assert_expect(__LINE__, 896, 938 & 5073);
  assert_expect(__LINE__, 10, 13 ^ 7);
  assert_expect(__LINE__, 4219, 938 ^ 5073);

  assert_expect(__LINE__, 29, 938 >> 5);
  assert_expect(__LINE__, 1664, 13 << 7);

  printf("passed tests.\n");
  return 0;
}
#define DEFINE(a, b)
DEFINE(1, 2)

#include <stdio.h>

void printf_(char *s);
void print(int i);

int q8_count;

int print_board(int board[][8]) {
    int i;
    int j;
    for(i = 0; i < 8; i = i + 1) {
        for(j = 0; j < 8; j = j + 1) {
            if(board[i][j])
                printf_("Q ");
            else
                printf_(". ");
        }
        printf_("\n");
    }
    printf_("\n\n");
    q8_count = q8_count + 1;
}

int conflict(int board[][8], int row, int col) {
    int i;
    for(i = 0; i < row; i = i + 1) {
        if(board[i][col])
            return 1;
        int j;
        j = row - i;
        if(0 < col - j + 1)
            if(board[i][col - j])
                return 1;
        if(col + j < 8)
            if(board[i][col + j])
                return 1;
    }
    return 0;
}

int solve(int board[][8], int row) {
    if(row == 8) {
        print_board(board);
        return 0;
    }
    int i;
    for(i = 0; i < 8; i = i + 1) {
        if(conflict(board, row, i) == 0) {
            board[row][i] = 1;
            solve(board, row + 1);
            board[row][i] = 0;
        }
    }
}

int main() {
    int board[8][8];
    int i;
    int j;
    q8_count = 0;
    for(i = 0; i < 8; i = i + 1)
        for(j = 0; j < 8; j = j + 1)
            board[i][j] = 0;
    solve(&board, 0);
    print(q8_count);
}
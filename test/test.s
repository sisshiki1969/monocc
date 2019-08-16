// <void>[assert_expect][(]<int>[line][,]<int>[expected][,]<int>[actual][)][;]
// <void>[print][(]<int>[a][)][;]
// <void>[printf_][(]<char>[*][str][)][;]
// <void>[*][calloc_][(]<int>[size][)][;]
// <int>[A][;]
// <int>[*][B][;]
// <int>[C][[][5][]][;]
// <int>[D][(][)][;]
// <int>[*][*][E][;]
// <int>[(][*][F][)][[][5][]][;]
// <int>[(][*][G][)][(][)][;]
// <int>[*][H][[][5][]][;]
// <int>[I][[][5][]][[][5][]][;]
// <int>[*][J][(][)][;]
// <int>[*][*][*][K][;]
// <int>[(][*][*][L][)][[][]][;]
// <int>[(][*][*][M][)][(][)][;]
// <int>[*][(][*][N][)][[][]][;]
// <void>[(][*][signal][(]<int>[,]<void>[(][*][)][(]<int>[)][)][)][(]<int>[)][;]
// <int>[fibo][(]<int>[x][)][{]<if>[(][x][<][2][)]<return>[1][;]
// <return>[fibo][(][x][-][1][)][+][fibo][(][x][-][2][)][;]
// [}]<int>[array_local][(][)][{]<int>[a][[][10][]][[][8][]][;]
// <int>[i][=][0][;]
// <int>[j][=][0][;]
// <while>[(][i][<=][9][)][{][j][=][0][;]
// <while>[(][j][<=][7][)][{][a][[][i][]][[][j][]][=][i][*][10][+][j][;]
// [j][++][;]
// [}][i][+=][1][;]
// [}][assert_expect][(]<__LINE__>[,][1][,][a][[][0][]][[][1][]][)][;]
// [assert_expect][(]<__LINE__>[,][97][,][a][[][9][]][[][7][]][)][;]
// [assert_expect][(]<__LINE__>[,][84][,][a][[][8][]][[][4][]][)][;]
// <return>[0][;]
// [}]<int>[a][[][10][]][[][8][]][;]
// <int>[i][=][1979][;]
// <int>[j][=][2015][;]
// <char>[s][=][270][;]
// <char>[*][str][=]"Hi, guys.\tAre you hungry"[;]
// <char>[str_ary][[][]][=]"Hey, girls.\nAre you angry?"[;]
// <char>[quick][[][15][]][=]"QuickBrownFox"[;]
// <int>[ary_int][[][5][]][=][{][1][,][2][,][3][,][4][,][5][}][;]
// <char>[reg][[][4][]][[][5][]][[][4][]][=][{][{]"rdi"[,]"rsi"[,]"rdx"[,]"rcx"[,]"r8"[}][,][{]"edi"[,]"esi"[,]"edx"[,]"ecx"[,]"r8d"[}][,][{]"di"[,]"si"[,]"dx"[,]"cx"[,]"r8w"[}][,][{]"dil"[,]"sil"[,]"dl"[,]"cl"[,]"r8b"[}][}][;]
// <int>[array_global][(][)][{]<for>[(]<int>[i][=][0][;]
// [i][<][5][;]
// [i][++][)][assert_expect][(]<__LINE__>[,][i][+][1][,][ary_int][[][i][]][)][;]
// [assert_expect][(]<__LINE__>[,]['i'][,][reg][[][2][]][[][1][]][[][1][]][)][;]
// [assert_expect][(]<__LINE__>[,]['w'][,][reg][[][2][]][[][4][]][[][2][]][)][;]
// [i][=][0][;]
// <while>[(][i][<=][9][)][{][j][=][0][;]
// <while>[(][j][<=][7][)][{][a][[][i][]][[][j][]][=][i][*][10][+][j][;]
// [j][++][;]
// [}][i][++][;]
// [}][assert_expect][(]<__LINE__>[,][a][[][0][]][[][1][]][,][1][)][;]
// [assert_expect][(]<__LINE__>[,][a][[][9][]][[][7][]][,][97][)][;]
// [assert_expect][(]<__LINE__>[,][a][[][8][]][[][4][]][,][84][)][;]
// <return>[0][;]
// [}]<int>[string][(][)][{]<char>[*][str][=]"Hello world!\n"[;]
// [printf_][(][str][)][;]
// <char>[str_ary][[][]][=]"\tHello\nworld,\tagain\n"[;]
// [printf_][(][str_ary][)][;]
// [assert_expect][(]<__LINE__>[,][10][,][str_ary][[][19][]][)][;]
// [assert_expect][(]<__LINE__>[,][119][,]['w'][)][;]
// [assert_expect][(]<__LINE__>[,]['w'][,][str][[][6][]][)][;]
// [}]<void>[block_scope][(][)][{][i][=][1][;]
// [assert_expect][(]<__LINE__>[,][1][,][i][)][;]
// <int>[i][=][5][;]
// [assert_expect][(]<__LINE__>[,][5][,][i][)][;]
// [{]<int>[i][=][2][;]
// [{]<int>[i][=][3][;]
// [{]<int>[i][=][4][;]
// [assert_expect][(]<__LINE__>[,][4][,][i][)][;]
// [}][assert_expect][(]<__LINE__>[,][3][,][i][)][;]
// [}][assert_expect][(]<__LINE__>[,][2][,][i][)][;]
// [}][assert_expect][(]<__LINE__>[,][5][,][i][)][;]
// [}]<void>[for_][(][)][{]<int>[x][=][100][;]
// [assert_expect][(]<__LINE__>[,][100][,][x][)][;]
// <for>[(]<int>[x][=][10][;]
// [x][<][100][;]
// [x][+=][1][)][{]<if>[(][x][==][15][)]<break>[;]
// <if>[(][x][==][x][/][3][*][3][)][assert_expect][(]<__LINE__>[,][12][,][x][)][;]
// <int>[x][=][9][;]
// [assert_expect][(]<__LINE__>[,][9][,][x][)][;]
// [}][assert_expect][(]<__LINE__>[,][100][,][x][)][;]
// [x][=][0][;]
// <for>[(][;]
// [;]
// [)][{]<if>[(][x][==][6][)]<break>[;]
// [x][=][x][+][1][;]
// [}][assert_expect][(]<__LINE__>[,][6][,][x][)][;]
// [}]<int>[switch_][(]<int>[s][)][{]<int>[i][;]
// <switch>[(][s][)][{]<case>[1][:][i][=][11][;]
// <break>[;]
// <case>[2][:]<case>[3][:][i][=][12][;]
// <case>[4][:][i][=][13][;]
// <return>[i][;]
// <case>[5][:][i][=][14][;]
// <default>[:][i][=][15][;]
// [}]<return>[i][;]
// [}]<int>[switch2_][(]<char>[s][)][{]<int>[i][;]
// <switch>[(][s][)][{]<case>['a'][:][i][=][11][;]
// <break>[;]
// <case>['b'][:]<case>['c'][:][i][=][12][;]
// <break>[;]
// <default>[:][i][=][15][;]
// [}]<return>[i][;]
// [}]<typedef><struct>[List][List][;]
// <struct>[List][{][List][*][next][;]
// <int>[payloads][;]
// [}][list1][;]
// <struct>[{]<int>[payload][;]
// [}][def][;]
// <typedef><struct>[Pos][{]<int>[row][;]
// <int>[col][;]
// [}][Pos][;]
// [Pos][pos][;]
// [Pos][*][ptr_to_pos][;]
// <enum>[Number][{][ZERO][,][ONE][,][TWO][,][THREE][,][}][number][;]
// <void>[list_][(][)][{]<int>[size][=]<sizeof>[(][List][)][;]
// [List][*][cursor][=][0][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][6][;]
// [i][++][)][{][List][*][new][=][calloc_][(][size][)][;]
// [new][->][payloads][=][i][;]
// [new][->][next][=][cursor][;]
// [cursor][=][new][;]
// [}][assert_expect][(]<__LINE__>[,][5][,][cursor][->][payloads][)][;]
// [cursor][=][cursor][->][next][;]
// [assert_expect][(]<__LINE__>[,][4][,][cursor][->][payloads][)][;]
// [cursor][=][cursor][->][next][;]
// [assert_expect][(]<__LINE__>[,][3][,][cursor][->][payloads][)][;]
// [cursor][=][cursor][->][next][;]
// [assert_expect][(]<__LINE__>[,][2][,][cursor][->][payloads][)][;]
// [cursor][=][cursor][->][next][;]
// [assert_expect][(]<__LINE__>[,][1][,][cursor][->][payloads][)][;]
// [cursor][=][cursor][->][next][;]
// [assert_expect][(]<__LINE__>[,][0][,][cursor][->][payloads][)][;]
// [def][.][payload][=][777][;]
// [assert_expect][(]<__LINE__>[,][777][,][def][.][payload][)][;]
// [}]<void>[struct_][(][)][{]<typedef><struct>[Leaf][Leaf][;]
// <struct>[Leaf][{]<struct>[Vec][{]<int>[row][;]
// <int>[col][;]
// [}][ary][[][17][]][;]
// <int>[size][;]
// <char>[ch][;]
// [}][leaf][;]
// <struct>[Tree][{][Leaf][*][left][;]
// [Leaf][*][right][;]
// [}][;]
// <struct>[S2][{]<int>[x][;]
// <char>[y][;]
// [}][s2][;]
// <struct>[S1][{]<char>[a][;]
// <struct>[S2][b][;]
// <int>[c][;]
// <char>[d][;]
// <int>[*][e][;]
// [}][s1][;]
// [assert_expect][(]<__LINE__>[,][32][,]<sizeof>[(]<struct>[S1][)][)][;]
// [assert_expect][(]<__LINE__>[,][8][,]<sizeof>[(]<struct>[S2][)][)][;]
// [pos][.][col][=][9][;]
// [pos][.][row][=][45][;]
// [assert_expect][(]<__LINE__>[,][9][,][pos][.][col][)][;]
// [assert_expect][(]<__LINE__>[,][45][,][pos][.][row][)][;]
// [assert_expect][(]<__LINE__>[,][4][,]<sizeof>[(][pos][.][col][)][)][;]
// [assert_expect][(]<__LINE__>[,][4][,]<sizeof>[(][pos][.][row][)][)][;]
// <struct>[Leaf][node][;]
// <struct>[Leaf][*][node_ptr][=][&][node][;]
// <struct>[Leaf][node_new][;]
// [node][.][size][=][10][;]
// [node][.][ch][=][5][;]
// [node_new][.][size][=][195][;]
// [node_new][.][ch][=][39][;]
// [node_new][.][ary][[][0][]][.][row][=][184][;]
// [node_new][.][ary][[][16][]][.][col][=][984][;]
// [assert_expect][(]<__LINE__>[,][10][,][node][.][size][)][;]
// [assert_expect][(]<__LINE__>[,][5][,][node][.][ch][)][;]
// [node][.][size][=][110][;]
// [node][.][ch][=][79][;]
// [assert_expect][(]<__LINE__>[,][110][,][(][*][node_ptr][)][.][size][)][;]
// [assert_expect][(]<__LINE__>[,][79][,][(][*][node_ptr][)][.][ch][)][;]
// [assert_expect][(]<__LINE__>[,][110][,][node_ptr][->][size][)][;]
// [assert_expect][(]<__LINE__>[,][79][,][node_ptr][->][ch][)][;]
// [assert_expect][(]<__LINE__>[,][195][,][node_new][.][size][)][;]
// [assert_expect][(]<__LINE__>[,][39][,][node_new][.][ch][)][;]
// [assert_expect][(]<__LINE__>[,][184][,][node_new][.][ary][[][0][]][.][row][)][;]
// [assert_expect][(]<__LINE__>[,][984][,][node_new][.][ary][[][16][]][.][col][)][;]
// <struct>[Tree][tree][;]
// [tree][.][right][=][&][node_new][;]
// [tree][.][left][=][&][node][;]
// [assert_expect][(]<__LINE__>[,][195][,][tree][.][right][->][size][)][;]
// [}]<int>[q8_count][;]
// <void>[print_board][(]<int>[board][[][]][[][8][]][)][{][q8_count][++][;]
// <return>[;]
// <for>[(]<int>[i][=][0][;]
// [i][<][8][;]
// [i][++][)][{]<for>[(]<int>[j][=][0][;]
// [j][<][8][;]
// [j][++][)][{]<if>[(][board][[][i][]][[][j][]][)][printf_][(]"Q "[)][;]
// [printf_][(]". "[)][;]
// [}][printf_][(]"\n"[)][;]
// [}][printf_][(]"\n\n"[)][;]
// [}]<int>[conflict][(]<int>[board][[][]][[][8][]][,]<struct>[Pos][*][p][)][{]<for>[(]<int>[i][=][0][;]
// [i][<][p][->][row][;]
// [i][++][)][{]<if>[(][board][[][i][]][[][p][->][col][]][)]<return>[1][;]
// <int>[j][=][p][->][row][-][i][;]
// <if>[(][0][<][p][->][col][-][j][+][1][)]<if>[(][board][[][i][]][[][p][->][col][-][j][]][)]<return>[1][;]
// <if>[(][p][->][col][+][j][<][8][)]<if>[(][board][[][i][]][[][p][->][col][+][j][]][)]<return>[1][;]
// [}]<return>[0][;]
// [}]<void>[solve][(]<int>[board][[][]][[][8][]][,]<int>[row][)][{]<if>[(][row][==][8][)][{][print_board][(][board][)][;]
// <return>[;]
// [}]<for>[(]<int>[i][=][0][;]
// [i][<][8][;]
// [i][++][)][{]<struct>[Pos][p][;]
// [p][.][row][=][row][;]
// [p][.][col][=][i][;]
// <if>[(][conflict][(][board][,][&][p][)][==][0][)][{][board][[][row][]][[][i][]][=][1][;]
// [solve][(][board][,][row][+][1][)][;]
// [board][[][row][]][[][i][]][=][0][;]
// [}][}][}]<int>[q8][(][)][{]<int>[board][[][8][]][[][8][]][;]
// [q8_count][=][0][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][8][;]
// [i][++][)]<for>[(]<int>[j][=][0][;]
// [j][<][8][;]
// [j][++][)][board][[][i][]][[][j][]][=][0][;]
// [solve][(][board][,][0][)][;]
// <return>[q8_count][;]
// [}]<int>[fun][(]<int>[*][p][)][{]<return>[*][p][;]
// [}]<int>[main][(][)][{]<int>[*][jum][=][(][(]<void>[*][)][0][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][1][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][0][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][(]<int>[)][(][(]<void>[*][)][0][)][)][;]
// [assert_expect][(]<__LINE__>[,][4][,][4][)][;]
// [assert_expect][(]<__LINE__>[,][1979][,][i][)][;]
// [assert_expect][(]<__LINE__>[,][2015][,][j][)][;]
// [assert_expect][(]<__LINE__>[,][14][,][s][)][;]
// [assert_expect][(]<__LINE__>[,][9][,][+][9][)][;]
// [assert_expect][(]<__LINE__>[,][4][,][-][3][+][7][)][;]
// [assert_expect][(]<__LINE__>[,][21][,][5][+][20][-][4][)][;]
// [assert_expect][(]<__LINE__>[,][21][,][5][+][4][*][4][)][;]
// [assert_expect][(]<__LINE__>[,][24][,][(][4][*][(][5][-][2][)][)][*][(][4][-][2][)][)][;]
// [assert_expect][(]<__LINE__>[,][13][,][6][+][3][*][4][-][15][/][3][)][;]
// [assert_expect][(]<__LINE__>[,][33][,][(][6][+][3][)][*][(][15][-][4][)][/][3][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][3][==][3][+][1][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][4][!=][4][*][2][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][3][!=][1][*][3][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][5][>=][8][-][4][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][5][>=][7][-][2][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][11][-][8][>=][5][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][3][<=][2][*][30][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][3][<=][9][/][3][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][3][<=][20][-][18][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][-][5][*][2][+][10][==][0][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][+][6][/][2][==][9][/][3][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][4][<][4][+][1][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][1][+][4][>][4][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][4][<][4][-][1][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][1][-][4][>][4][)][;]
// <int>[a][=][0][;]
// [assert_expect][(]<__LINE__>[,][0][,][0][&&][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][a][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][1][&&][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][a][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][1][&&][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][2][,][a][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][0][||][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][3][,][a][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][1][||][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][3][,][a][)][;]
// [a][=][0][;]
// [assert_expect][(]<__LINE__>[,][0][,][0][||][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][a][)][;]
// [a][=][0][;]
// [assert_expect][(]<__LINE__>[,][0][,][0][||][1][&&][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][a][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][1][&&][1][||][a][++][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][a][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][!][0][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][!][1][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][!][!][!][1][)][;]
// <int>[z][;]
// [z][=][10][;]
// [assert_expect][(]<__LINE__>[,][15][,][z][+=][5][)][;]
// [assert_expect][(]<__LINE__>[,][15][,][z][)][;]
// [assert_expect][(]<__LINE__>[,][8][,][z][-=][7][)][;]
// [assert_expect][(]<__LINE__>[,][8][,][z][)][;]
// [assert_expect][(]<__LINE__>[,][40][,][z][*=][5][)][;]
// [assert_expect][(]<__LINE__>[,][40][,][z][)][;]
// [assert_expect][(]<__LINE__>[,][4][,][z][/=][10][)][;]
// [assert_expect][(]<__LINE__>[,][4][,][z][)][;]
// [assert_expect][(]<__LINE__>[,][4][,][z][++][)][;]
// [assert_expect][(]<__LINE__>[,][5][,][z][)][;]
// [assert_expect][(]<__LINE__>[,][5][,][z][--][)][;]
// [assert_expect][(]<__LINE__>[,][4][,][z][)][;]
// <int>[init][=][100][/][z][;]
// [assert_expect][(]<__LINE__>[,][25][,][init][)][;]
// <int>[i][=][77][;]
// <if>[(][i][==][77][)][i][=][55][;]
// <else>[i][=][66][;]
// [assert_expect][(]<__LINE__>[,][55][,][i][)][;]
// [assert_expect][(]<__LINE__>[,][1346269][,][fibo][(][30][)][)][;]
// [array_global][(][)][;]
// [array_local][(][)][;]
// [string][(][)][;]
// [block_scope][(][)][;]
// [for_][(][)][;]
// [list_][(][)][;]
// [struct_][(][)][;]
// [assert_expect][(]<__LINE__>[,][11][,][switch_][(][1][)][)][;]
// [assert_expect][(]<__LINE__>[,][13][,][switch_][(][2][)][)][;]
// [assert_expect][(]<__LINE__>[,][13][,][switch_][(][3][)][)][;]
// [assert_expect][(]<__LINE__>[,][13][,][switch_][(][4][)][)][;]
// [assert_expect][(]<__LINE__>[,][15][,][switch_][(][5][)][)][;]
// [assert_expect][(]<__LINE__>[,][15][,][switch_][(][6][)][)][;]
// [assert_expect][(]<__LINE__>[,][11][,][switch2_][(]['a'][)][)][;]
// [assert_expect][(]<__LINE__>[,][12][,][switch2_][(]['b'][)][)][;]
// [assert_expect][(]<__LINE__>[,][12][,][switch2_][(]['c'][)][)][;]
// [assert_expect][(]<__LINE__>[,][15][,][switch2_][(]['z'][)][)][;]
// [assert_expect][(]<__LINE__>[,][92][,][q8][(][)][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][ZERO][)][;]
// [assert_expect][(]<__LINE__>[,][1][,][ONE][)][;]
// [assert_expect][(]<__LINE__>[,][2][,][TWO][)][;]
// [assert_expect][(]<__LINE__>[,][3][,][THREE][)][;]
// [assert_expect][(]<__LINE__>[,][15][,][13][|][7][)][;]
// [assert_expect][(]<__LINE__>[,][5115][,][938][|][5073][)][;]
// [assert_expect][(]<__LINE__>[,][5][,][13][&][7][)][;]
// [assert_expect][(]<__LINE__>[,][896][,][938][&][5073][)][;]
// [assert_expect][(]<__LINE__>[,][10][,][13][^][7][)][;]
// [assert_expect][(]<__LINE__>[,][4219][,][938][^][5073][)][;]
// [assert_expect][(]<__LINE__>[,][29][,][938][>>][5][)][;]
// [assert_expect][(]<__LINE__>[,][1664][,][13][<<][7][)][;]
// [printf_][(]"passed tests.\n"[)][;]
// <return>[0][;]
// [}]<EOF>
// FDECL fibo func ( int  x ) int 
//    (LVAR 4) 
//    (BLOCK(IF (<  2  (LVAR 4)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))):))
//    x  offset:4  int 

// FDECL array_local func ( ) int 
//    
//    (BLOCK(= (LVAR 324)  0 ):(= (LVAR 328)  0 ):(WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)):(CALL assert_expect ( 37 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) ):(CALL assert_expect ( 38 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) ):(CALL assert_expect ( 39 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) ):(RETURN  0 ):))
//    j  offset:328  int 
//    i  offset:324  int 
//    a  offset:320  [10] [8] int 

// FDECL array_global func ( ) int 
//    
//    (BLOCK(FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 58 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )):(CALL assert_expect ( 59 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 60 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 71 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 72 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 73 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
//    i  offset:4  int 

// FDECL string func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (ADDR  "Hello world!\n" )):(CALL printf_ ((LVAR 8):) ):(= (LVAR 29)  "\tHello\nworld,\tagain\n" ):(CALL printf_ ((ADDR (LVAR 29)):) ):(CALL assert_expect ( 82 : 10 :(DEREF (] (ADDR (LVAR 29))  19 )):) ):(CALL assert_expect ( 84 : 119 : 119 :) ):(CALL assert_expect ( 85 : 119 :(DEREF (] (LVAR 8)  6 )):) ):))
//    str_ary  offset:29  [21] char 
//    str  offset:8  * char 

// FDECL block_scope func ( ) void 
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 90 : 1 :(GVAR i):) ):(= (LVAR 4)  5 ):(CALL assert_expect ( 92 : 5 :(LVAR 4):) ):(BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 99 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 101 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 103 : 2 :(LVAR 8):) ):):(CALL assert_expect ( 105 : 5 :(LVAR 4):) ):))
//    i  offset:16  int 
//    i  offset:12  int 
//    i  offset:8  int 
//    i  offset:4  int 

// FDECL for_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  100 ):(CALL assert_expect ( 110 : 100 :(LVAR 4):) ):(FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 115 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 117 : 9 :(LVAR 12):) ):)):(CALL assert_expect ( 119 : 100 :(LVAR 4):) ):(= (LVAR 4)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)):(CALL assert_expect ( 126 : 6 :(LVAR 4):) ):))
//    x  offset:12  int 
//    x  offset:8  int 
//    x  offset:4  int 

// FDECL switch_ func ( int  s ) int 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)):(RETURN (LVAR 8)):))
//    switch  offset:12  int 
//    i  offset:8  int 
//    s  offset:4  int 

// FDECL switch2_ func ( char  s ) int 
//    (LVAR 1) 
//    (BLOCK(SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)):(RETURN (LVAR 5)):))
//    switch  offset:9  int 
//    i  offset:5  int 
//    s  offset:1  char 

// FDECL list_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  16 ):(= (LVAR 12)  0 ):(FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)):(CALL assert_expect ( 200 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 202 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 204 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 206 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 208 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 210 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 213 : 777 :(MEMBER (GVAR def) payload 0):) ):))
//    new  offset:24  * struct <List> 
//    i  offset:16  int 
//    cursor  offset:12  * struct <List> 
//    size  offset:4  int 

// FDECL struct_ func ( ) void 
//    
//    (BLOCK(CALL assert_expect ( 245 : 32 : 32 :) ):(CALL assert_expect ( 246 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 251 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 252 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 254 : 4 : 4 :) ):(CALL assert_expect ( 255 : 4 : 4 :) ):(= (LVAR 336) (ADDR (LVAR 328))):(= (MEMBER (LVAR 328) size 136)  10 ):(= (MEMBER (LVAR 328) ch 140)  5 ):(= (MEMBER (LVAR 480) size 136)  195 ):(= (MEMBER (LVAR 480) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 266 : 10 :(MEMBER (LVAR 328) size 136):) ):(CALL assert_expect ( 267 : 5 :(MEMBER (LVAR 328) ch 140):) ):(= (MEMBER (LVAR 328) size 136)  110 ):(= (MEMBER (LVAR 328) ch 140)  79 ):(CALL assert_expect ( 270 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 271 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 272 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 273 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 274 : 195 :(MEMBER (LVAR 480) size 136):) ):(CALL assert_expect ( 275 : 39 :(MEMBER (LVAR 480) ch 140):) ):(CALL assert_expect ( 276 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 277 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480))):(= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328))):(CALL assert_expect ( 281 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) ):))
//    tree  offset:496  struct <Tree> 
//    node_new  offset:480  struct <Leaf> 
//    node_ptr  offset:336  * struct <Leaf> 
//    node  offset:328  struct <Leaf> 
//    s1  offset:184  struct <S1> 
//    s2  offset:152  struct <S2> 
//    leaf  offset:144  struct <Leaf> 

// FDECL print_board func ( * [8] int  board ) void 
//    (LVAR 8) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)):(CALL printf_ ((ADDR  "\n\n" ):) ):))
//    j  offset:16  int 
//    i  offset:12  int 
//    board  offset:8  * [8] int 

// FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
//    j  offset:24  int 
//    i  offset:20  int 
//    p  offset:16  * struct <Pos> 
//    board  offset:8  * [8] int 

// FDECL solve func ( * [8] int  board , int  row ) void 
//    (LVAR 8) (LVAR 12) 
//    (BLOCK(IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)):))
//    p  offset:24  struct <Pos> 
//    i  offset:16  int 
//    row  offset:12  int 
//    board  offset:8  * [8] int 

// FDECL q8 func ( ) int 
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))):(CALL solve ((ADDR (LVAR 256)): 0 :) ):(RETURN (GVAR q8_count)):))
//    j  offset:264  int 
//    i  offset:260  int 
//    board  offset:256  [8] [8] int 

// FDECL fun func ( * int  p ) int 
//    (LVAR 8) 
//    (BLOCK(RETURN (DEREF (LVAR 8))):))
//    p  offset:8  * int 

// FDECL main func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (CAST * void   0 )):(CALL assert_expect ( 350 : 1 : 1 :) ):(CALL assert_expect ( 351 : 0 : 0 :) ):(CALL assert_expect ( 352 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 355 : 4 : 4 :) ):(CALL assert_expect ( 357 : 1979 :(GVAR i):) ):(CALL assert_expect ( 358 : 2015 :(GVAR j):) ):(CALL assert_expect ( 359 : 14 :(GVAR s):) ):(CALL assert_expect ( 361 : 9 : 9 :) ):(CALL assert_expect ( 362 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 363 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 364 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 365 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 366 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 367 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 368 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 369 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 370 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 371 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 372 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 373 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 374 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 375 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 376 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 377 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 378 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 379 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 380 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 381 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 382 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 384 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 385 : 0 :(LVAR 12):) ):(CALL assert_expect ( 386 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 387 : 1 :(LVAR 12):) ):(CALL assert_expect ( 388 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 389 : 2 :(LVAR 12):) ):(CALL assert_expect ( 390 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 391 : 3 :(LVAR 12):) ):(CALL assert_expect ( 392 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 393 : 3 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 395 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 396 : 1 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 398 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) ):(CALL assert_expect ( 399 : 1 :(LVAR 12):) ):(CALL assert_expect ( 400 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 401 : 1 :(LVAR 12):) ):(CALL assert_expect ( 402 : 1 :(!  0 ):) ):(CALL assert_expect ( 403 : 0 :(!  1 ):) ):(CALL assert_expect ( 404 : 0 :(! (! (!  1 ))):) ):(= (LVAR 16)  10 ):(CALL assert_expect ( 409 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) ):(CALL assert_expect ( 410 : 15 :(LVAR 16):) ):(CALL assert_expect ( 411 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) ):(CALL assert_expect ( 412 : 8 :(LVAR 16):) ):(CALL assert_expect ( 413 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) ):(CALL assert_expect ( 414 : 40 :(LVAR 16):) ):(CALL assert_expect ( 415 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) ):(CALL assert_expect ( 416 : 4 :(LVAR 16):) ):(CALL assert_expect ( 419 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 420 : 5 :(LVAR 16):) ):(CALL assert_expect ( 421 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 422 : 4 :(LVAR 16):) ):(= (LVAR 20) (/  100  (LVAR 16))):(CALL assert_expect ( 427 : 25 :(LVAR 20):) ):(= (LVAR 24)  77 ):(IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 )):(CALL assert_expect ( 435 : 55 :(LVAR 24):) ):(CALL assert_expect ( 436 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 449 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 450 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 451 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 452 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 453 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 454 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 457 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 458 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 459 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 460 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 463 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 466 : 0 : 0 :) ):(CALL assert_expect ( 467 : 1 : 1 :) ):(CALL assert_expect ( 468 : 2 : 2 :) ):(CALL assert_expect ( 469 : 3 : 3 :) ):(CALL assert_expect ( 471 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 472 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 473 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 474 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 475 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 476 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 478 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 479 : 1664 :(<<  13   7 ):) ):(CALL printf_ ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
//    i  offset:24  int 
//    init  offset:20  int 
//    z  offset:16  int 
//    a  offset:12  int 
//    jum  offset:8  * int 

// Globals
// q8_count int NULL 
// number enum <Number> NULL 
// ptr_to_pos * struct <Pos> NULL 
// pos struct <Pos> NULL 
// def struct <> { int <payload:0>}NULL 
// list1 struct <List> NULL 
// reg [4] [5] [4] char {{ "rdi" , "rsi" , "rdx" , "rcx" , "r8" },{ "edi" , "esi" , "edx" , "ecx" , "r8d" },{ "di" , "si" , "dx" , "cx" , "r8w" },{ "dil" , "sil" , "dl" , "cl" , "r8b" }}
// ary_int [5] int { 1 , 2 , 3 , 4 , 5 }
// quick [15] char  "QuickBrownFox" 
// str_ary [27] char  "Hey, girls.\nAre you angry?" 
// str * char  "Hi, guys.\tAre you hungry" 
// s char  270 
// j int  2015 
// i int  1979 
// a [10] [8] int NULL 
// N * [0] * int NULL 
// M * * func ( ) int NULL 
// L * * [0] int NULL 
// K * * * int NULL 
// I [5] [5] int NULL 
// H [5] * int NULL 
// G * func ( ) int NULL 
// F * [5] int NULL 
// E * * int NULL 
// C [5] int NULL 
// B * int NULL 
// A int NULL 
// Functions
// main func ( ) int 
// fun func ( * int  p ) int 
// q8 func ( ) int 
// solve func ( * [8] int  board , int  row ) void 
// conflict func ( * [8] int  board , * struct <Pos>  p ) int 
// print_board func ( * [8] int  board ) void 
// struct_ func ( ) void 
// list_ func ( ) void 
// switch2_ func ( char  s ) int 
// switch_ func ( int  s ) int 
// for_ func ( ) void 
// block_scope func ( ) void 
// string func ( ) int 
// array_global func ( ) int 
// array_local func ( ) int 
// fibo func ( int  x ) int 
// signal func ( int - , * func ( int - ) void - ) * func ( int - ) void 
// J func ( ) * int 
// D func ( ) int 
// calloc_ func ( int  size ) * void 
// printf_ func ( * char  str ) void 
// print func ( int  a ) void 
// assert_expect func ( int  line , int  expected , int  actual ) void 
// Stringss
// "Hi, guys.\tAre you hungry"
// "Hey, girls.\nAre you angry?"
// "QuickBrownFox"
// "rdi"
// "rsi"
// "rdx"
// "rcx"
// "r8"
// "edi"
// "esi"
// "edx"
// "ecx"
// "r8d"
// "di"
// "si"
// "dx"
// "cx"
// "r8w"
// "dil"
// "sil"
// "dl"
// "cl"
// "r8b"
// "Hello world!\n"
// "\tHello\nworld,\tagain\n"
// "Q "
// ". "
// "\n"
// "\n\n"
// "passed tests.\n"

// Tagnames
// S1 struct { char <a:0>, struct <S2> <b:4>, int <c:12>, char <d:16>, * int <e:24>}
// S2 struct { int <x:0>, char <y:4>}
// Tree struct { * struct <Leaf> <left:0>, * struct <Leaf> <right:8>}
// Vec struct { int <row:0>, int <col:4>}
// Leaf struct { [17] struct <Vec> <ary:0>, int <size:136>, char <ch:140>}
// Number enum { enum_el <ZERO:0> , enum_el <ONE:1> , enum_el <TWO:2> , enum_el <THREE:3> }
// THREE enum_el { 3 }
// TWO enum_el { 2 }
// ONE enum_el { 1 }
// ZERO enum_el { 0 }
// Pos struct { int <row:0>, int <col:4>}
// List struct { * struct <List> <next:0>, int <payloads:8>}

// Typedef
// Leaf struct <Leaf> 
// Pos struct <Pos> 
// List struct <List> 

	.intel_syntax noprefix
	.data
	.global q8_count
q8_count:
	.long 0
	.global number
number:
	.long 0
	.global ptr_to_pos
ptr_to_pos:
	.align 8
	.quad 0
	.global pos
pos:
	.align 8
	.quad 0
	.global def
def:
	.long 0
	.global list1
list1:
	.zero 16
	.global reg
reg:
	.string "rdi"
	.string "rsi"
	.string "rdx"
	.string "rcx"
	.string "r8"
	.zero 1
	.string "edi"
	.string "esi"
	.string "edx"
	.string "ecx"
	.string "r8d"
	.string "di"
	.zero 1
	.string "si"
	.zero 1
	.string "dx"
	.zero 1
	.string "cx"
	.zero 1
	.string "r8w"
	.string "dil"
	.string "sil"
	.string "dl"
	.zero 1
	.string "cl"
	.zero 1
	.string "r8b"
	.global ary_int
ary_int:
	.long 1
	.long 2
	.long 3
	.long 4
	.long 5
	.global quick
quick:
	.string "QuickBrownFox"
	.zero 1
	.global str_ary
str_ary:
	.string "Hey, girls.\nAre you angry?"
	.global str
str:
	.quad .LS000000
	.global s
s:
	.byte 270
	.global j
j:
	.long 2015
	.global i
i:
	.long 1979
	.global a
a:
	.zero 320
	.global N
N:
	.align 8
	.quad 0
	.global M
M:
	.align 8
	.quad 0
	.global L
L:
	.align 8
	.quad 0
	.global K
K:
	.align 8
	.quad 0
	.global I
I:
	.zero 100
	.global H
H:
	.zero 40
	.global G
G:
	.align 8
	.quad 0
	.global F
F:
	.align 8
	.quad 0
	.global E
E:
	.align 8
	.quad 0
	.global C
C:
	.zero 20
	.global B
B:
	.align 8
	.quad 0
	.global A
A:
	.long 0
.LS000000:
	.string "Hi, guys.\tAre you hungry"
.LS000001:
	.string "Hey, girls.\nAre you angry?"
.LS000002:
	.string "QuickBrownFox"
.LS000003:
	.string "rdi"
.LS000004:
	.string "rsi"
.LS000005:
	.string "rdx"
.LS000006:
	.string "rcx"
.LS000007:
	.string "r8"
.LS000008:
	.string "edi"
.LS000009:
	.string "esi"
.LS000010:
	.string "edx"
.LS000011:
	.string "ecx"
.LS000012:
	.string "r8d"
.LS000013:
	.string "di"
.LS000014:
	.string "si"
.LS000015:
	.string "dx"
.LS000016:
	.string "cx"
.LS000017:
	.string "r8w"
.LS000018:
	.string "dil"
.LS000019:
	.string "sil"
.LS000020:
	.string "dl"
.LS000021:
	.string "cl"
.LS000022:
	.string "r8b"
.LS000023:
	.string "Hello world!\n"
.LS000024:
	.string "\tHello\nworld,\tagain\n"
.LS000025:
	.string "Q "
.LS000026:
	.string ". "
.LS000027:
	.string "\n"
.LS000028:
	.string "\n\n"
.LS000029:
	.string "passed tests.\n"

	.text
	.global fibo
// Line 19 FDECL fibo func ( int  x ) int 
//    (LVAR 4) 
//    (BLOCK(IF (<  2  (LVAR 4)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))):))
fibo:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 22 (IF (<  2  (LVAR 4)) (RETURN  1 ) NULL )
// Line 20 (<  2  (LVAR 4))
// Line 20  2 
	push 2
// Line 20 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000000
// Line 21 (RETURN  1 )
// Line 21  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000001
.L000000:
.L000001:
// Line 22 (RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) )))
// Line 22 (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))
// Line 22 (CALL fibo ((- (LVAR 4)  1 ):) )
// Line 22 (- (LVAR 4)  1 )
// Line 22 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 22  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000002
	mov  rax, 0
	call fibo
	jmp  .L000003
.L000002:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000003:
	push rax
// Line 22 (CALL fibo ((- (LVAR 4)  2 ):) )
// Line 22 (- (LVAR 4)  2 )
// Line 22 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 22  2 
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000004
	mov  rax, 0
	call fibo
	jmp  .L000005
.L000004:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000005:
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global array_local
// Line 25 FDECL array_local func ( ) int 
//    
//    (BLOCK(= (LVAR 324)  0 ):(= (LVAR 328)  0 ):(WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)):(CALL assert_expect ( 37 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) ):(CALL assert_expect ( 38 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) ):(CALL assert_expect ( 39 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) ):(RETURN  0 ):))
array_local:
	push rbp
	mov  rbp, rsp
	sub  rsp, 336
// Line 27 (= (LVAR 324)  0 )
	mov  rax, rbp
	sub  rax, 324
	push rax
// Line 27  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 28 (= (LVAR 328)  0 )
	mov  rax, rbp
	sub  rax, 328
	push rax
// Line 28  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 37 (WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):))
.L000006:
// Line 29 (<=  9  (LVAR 324))
// Line 29  9 
	push 9
// Line 29 (LVAR 324)
	mov  rax, rbp
	sub  rax, 324
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000007
// Line 37 (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)
// Line 30 (= (LVAR 328)  0 )
	mov  rax, rbp
	sub  rax, 328
	push rax
// Line 30  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 35 (WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):))
.L000008:
// Line 31 (<=  7  (LVAR 328))
// Line 31  7 
	push 7
// Line 31 (LVAR 328)
	mov  rax, rbp
	sub  rax, 328
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000009
// Line 35 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)
// Line 32 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328)))
// Line 32 (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))
// Line 32 (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324))))
// Line 32 (] (ADDR (LVAR 320)) (LVAR 324))
// Line 32 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 32 (LVAR 324)
	mov  rax, rbp
	sub  rax, 324
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 32 (LVAR 328)
	mov  rax, rbp
	sub  rax, 328
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 32 (+ (* (LVAR 324)  10 ) (LVAR 328))
// Line 32 (* (LVAR 324)  10 )
// Line 32 (LVAR 324)
	mov  rax, rbp
	sub  rax, 324
	mov  eax, [rax]
	push rax
// Line 32  10 
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 32 (LVAR 328)
	mov  rax, rbp
	sub  rax, 328
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 33 (++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 )
// Line 33 (= (LVAR 328) (++ (LVAR 328)  1 ))
	mov  rax, rbp
	sub  rax, 328
	push rax
// Line 33 (++ (LVAR 328)  1 )
// Line 33 (LVAR 328)
	mov  rax, rbp
	sub  rax, 328
	mov  eax, [rax]
	push rax
// Line 33  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 33  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000008
.L000009:
// Line 35 (= (LVAR 324) (+= (LVAR 324)  1 ))
	mov  rax, rbp
	sub  rax, 324
	push rax
// Line 35 (+= (LVAR 324)  1 )
// Line 35 (LVAR 324)
	mov  rax, rbp
	sub  rax, 324
	mov  eax, [rax]
	push rax
// Line 35  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000006
.L000007:
// Line 37 (CALL assert_expect ( 37 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) )
// Line 37 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 ))
// Line 37 (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )
// Line 37 (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))
// Line 37 (] (ADDR (LVAR 320))  0 )
// Line 37 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 37  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 37  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 37  1 
	push 1
// Line 37  37 
	push 37
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000010
	mov  rax, 0
	call assert_expect
	jmp  .L000011
.L000010:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000011:
	push rax
	pop  rax
// Line 38 (CALL assert_expect ( 38 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) )
// Line 38 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 ))
// Line 38 (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )
// Line 38 (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))
// Line 38 (] (ADDR (LVAR 320))  9 )
// Line 38 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 38  9 
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 38  7 
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 38  97 
	push 97
// Line 38  38 
	push 38
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000012
	mov  rax, 0
	call assert_expect
	jmp  .L000013
.L000012:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000013:
	push rax
	pop  rax
// Line 39 (CALL assert_expect ( 39 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) )
// Line 39 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 ))
// Line 39 (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )
// Line 39 (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))
// Line 39 (] (ADDR (LVAR 320))  8 )
// Line 39 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 39  8 
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 39  4 
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 39  84 
	push 84
// Line 39  39 
	push 39
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000014
	mov  rax, 0
	call assert_expect
	jmp  .L000015
.L000014:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000015:
	push rax
	pop  rax
// Line 40 (RETURN  0 )
// Line 40  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global array_global
// Line 56 FDECL array_global func ( ) int 
//    
//    (BLOCK(FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 58 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )):(CALL assert_expect ( 59 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 60 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 71 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 72 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 73 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
array_global:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 57 (FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 58 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) ))
// Line 57 (= (LVAR 4)  0 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 57  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000018:
// Line 57 (<  5  (LVAR 4))
// Line 57  5 
	push 5
// Line 57 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000017
// Line 58 (CALL assert_expect ( 58 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )
// Line 58 (DEREF (] (ADDR (GVAR ary_int)) (LVAR 4)))
// Line 58 (] (ADDR (GVAR ary_int)) (LVAR 4))
// Line 58 (ADDR (GVAR ary_int))
	lea  rax, ary_int[rip]
	push rax
// Line 58 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 58 (+ (LVAR 4)  1 )
// Line 58 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 58  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 58  58 
	push 58
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000019
	mov  rax, 0
	call assert_expect
	jmp  .L000020
.L000019:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000020:
	push rax
	pop  rax
.L000016:
// Line 57 (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 )
// Line 57 (= (LVAR 4) (++ (LVAR 4)  1 ))
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 57 (++ (LVAR 4)  1 )
// Line 57 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 57  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 57  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000018
.L000017:
// Line 59 (CALL assert_expect ( 59 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) )
// Line 59 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))
// Line 59 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )
// Line 59 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))
// Line 59 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )
// Line 59 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
// Line 59 (] (ADDR (GVAR reg))  2 )
// Line 59 (ADDR (GVAR reg))
	lea  rax, reg[rip]
	push rax
// Line 59  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 59  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 59  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 59  105 
	push 105
// Line 59  59 
	push 59
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000021
	mov  rax, 0
	call assert_expect
	jmp  .L000022
.L000021:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000022:
	push rax
	pop  rax
// Line 60 (CALL assert_expect ( 60 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) )
// Line 60 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))
// Line 60 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )
// Line 60 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))
// Line 60 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )
// Line 60 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
// Line 60 (] (ADDR (GVAR reg))  2 )
// Line 60 (ADDR (GVAR reg))
	lea  rax, reg[rip]
	push rax
// Line 60  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 60  4 
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 60  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 60  119 
	push 119
// Line 60  60 
	push 60
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000023
	mov  rax, 0
	call assert_expect
	jmp  .L000024
.L000023:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000024:
	push rax
	pop  rax
// Line 62 (= (GVAR i)  0 )
	lea  rax, i[rip]
	push rax
// Line 62  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 71 (WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):))
.L000025:
// Line 63 (<=  9  (GVAR i))
// Line 63  9 
	push 9
// Line 63 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000026
// Line 71 (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)
// Line 64 (= (GVAR j)  0 )
	lea  rax, j[rip]
	push rax
// Line 64  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 69 (WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):))
.L000027:
// Line 65 (<=  7  (GVAR j))
// Line 65  7 
	push 7
// Line 65 (GVAR j)
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000028
// Line 69 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)
// Line 66 (= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j)))
// Line 66 (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))
// Line 66 (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i))))
// Line 66 (] (ADDR (GVAR a)) (GVAR i))
// Line 66 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 66 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 66 (GVAR j)
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 66 (+ (* (GVAR i)  10 ) (GVAR j))
// Line 66 (* (GVAR i)  10 )
// Line 66 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 66  10 
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 66 (GVAR j)
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 67 (++ (= (GVAR j) (++ (GVAR j)  1 ))  1 )
// Line 67 (= (GVAR j) (++ (GVAR j)  1 ))
	lea  rax, j[rip]
	push rax
// Line 67 (++ (GVAR j)  1 )
// Line 67 (GVAR j)
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 67  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 67  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000027
.L000028:
// Line 69 (++ (= (GVAR i) (++ (GVAR i)  1 ))  1 )
// Line 69 (= (GVAR i) (++ (GVAR i)  1 ))
	lea  rax, i[rip]
	push rax
// Line 69 (++ (GVAR i)  1 )
// Line 69 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 69  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 69  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000025
.L000026:
// Line 71 (CALL assert_expect ( 71 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) )
// Line 71  1 
	push 1
// Line 71 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))
// Line 71 (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )
// Line 71 (ADDR (DEREF (] (ADDR (GVAR a))  0 )))
// Line 71 (] (ADDR (GVAR a))  0 )
// Line 71 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 71  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 71  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 71  71 
	push 71
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000029
	mov  rax, 0
	call assert_expect
	jmp  .L000030
.L000029:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000030:
	push rax
	pop  rax
// Line 72 (CALL assert_expect ( 72 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) )
// Line 72  97 
	push 97
// Line 72 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))
// Line 72 (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )
// Line 72 (ADDR (DEREF (] (ADDR (GVAR a))  9 )))
// Line 72 (] (ADDR (GVAR a))  9 )
// Line 72 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 72  9 
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 72  7 
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 72  72 
	push 72
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000031
	mov  rax, 0
	call assert_expect
	jmp  .L000032
.L000031:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000032:
	push rax
	pop  rax
// Line 73 (CALL assert_expect ( 73 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) )
// Line 73  84 
	push 84
// Line 73 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))
// Line 73 (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )
// Line 73 (ADDR (DEREF (] (ADDR (GVAR a))  8 )))
// Line 73 (] (ADDR (GVAR a))  8 )
// Line 73 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 73  8 
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 73  4 
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 73  73 
	push 73
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000033
	mov  rax, 0
	call assert_expect
	jmp  .L000034
.L000033:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000034:
	push rax
	pop  rax
// Line 74 (RETURN  0 )
// Line 74  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global string
// Line 77 FDECL string func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (ADDR  "Hello world!\n" )):(CALL printf_ ((LVAR 8):) ):(= (LVAR 29)  "\tHello\nworld,\tagain\n" ):(CALL printf_ ((ADDR (LVAR 29)):) ):(CALL assert_expect ( 82 : 10 :(DEREF (] (ADDR (LVAR 29))  19 )):) ):(CALL assert_expect ( 84 : 119 : 119 :) ):(CALL assert_expect ( 85 : 119 :(DEREF (] (LVAR 8)  6 )):) ):))
string:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 78 (= (LVAR 8) (ADDR  "Hello world!\n" ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 78 (ADDR  "Hello world!\n" )
	lea  rax, .LS000023[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 79 (CALL printf_ ((LVAR 8):) )
// Line 79 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000035
	mov  rax, 0
	call printf_
	jmp  .L000036
.L000035:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000036:
	push rax
	pop  rax
// Line 80 (= (LVAR 29)  "\tHello\nworld,\tagain\n" )
	mov  BYTE PTR [rbp - 29], 9
	mov  BYTE PTR [rbp - 28], 72
	mov  BYTE PTR [rbp - 27], 101
	mov  BYTE PTR [rbp - 26], 108
	mov  BYTE PTR [rbp - 25], 108
	mov  BYTE PTR [rbp - 24], 111
	mov  BYTE PTR [rbp - 23], 10
	mov  BYTE PTR [rbp - 22], 119
	mov  BYTE PTR [rbp - 21], 111
	mov  BYTE PTR [rbp - 20], 114
	mov  BYTE PTR [rbp - 19], 108
	mov  BYTE PTR [rbp - 18], 100
	mov  BYTE PTR [rbp - 17], 44
	mov  BYTE PTR [rbp - 16], 9
	mov  BYTE PTR [rbp - 15], 97
	mov  BYTE PTR [rbp - 14], 103
	mov  BYTE PTR [rbp - 13], 97
	mov  BYTE PTR [rbp - 12], 105
	mov  BYTE PTR [rbp - 11], 110
	mov  BYTE PTR [rbp - 10], 10
	mov  BYTE PTR [rbp - 9], 0
	push rdi
	pop  rax
// Line 81 (CALL printf_ ((ADDR (LVAR 29)):) )
// Line 81 (ADDR (LVAR 29))
	mov  rax, rbp
	sub  rax, 29
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000037
	mov  rax, 0
	call printf_
	jmp  .L000038
.L000037:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000038:
	push rax
	pop  rax
// Line 82 (CALL assert_expect ( 82 : 10 :(DEREF (] (ADDR (LVAR 29))  19 )):) )
// Line 82 (DEREF (] (ADDR (LVAR 29))  19 ))
// Line 82 (] (ADDR (LVAR 29))  19 )
// Line 82 (ADDR (LVAR 29))
	mov  rax, rbp
	sub  rax, 29
	push rax
// Line 82  19 
	push 19
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 82  10 
	push 10
// Line 82  82 
	push 82
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000039
	mov  rax, 0
	call assert_expect
	jmp  .L000040
.L000039:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000040:
	push rax
	pop  rax
// Line 84 (CALL assert_expect ( 84 : 119 : 119 :) )
// Line 84  119 
	push 119
// Line 84  119 
	push 119
// Line 84  84 
	push 84
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000041
	mov  rax, 0
	call assert_expect
	jmp  .L000042
.L000041:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000042:
	push rax
	pop  rax
// Line 85 (CALL assert_expect ( 85 : 119 :(DEREF (] (LVAR 8)  6 )):) )
// Line 85 (DEREF (] (LVAR 8)  6 ))
// Line 85 (] (LVAR 8)  6 )
// Line 85 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 85  6 
	push 6
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 85  119 
	push 119
// Line 85  85 
	push 85
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000043
	mov  rax, 0
	call assert_expect
	jmp  .L000044
.L000043:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000044:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global block_scope
// Line 88 FDECL block_scope func ( ) void 
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 90 : 1 :(GVAR i):) ):(= (LVAR 4)  5 ):(CALL assert_expect ( 92 : 5 :(LVAR 4):) ):(BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 99 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 101 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 103 : 2 :(LVAR 8):) ):):(CALL assert_expect ( 105 : 5 :(LVAR 4):) ):))
block_scope:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 89 (= (GVAR i)  1 )
	lea  rax, i[rip]
	push rax
// Line 89  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 90 (CALL assert_expect ( 90 : 1 :(GVAR i):) )
// Line 90 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 90  1 
	push 1
// Line 90  90 
	push 90
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000045
	mov  rax, 0
	call assert_expect
	jmp  .L000046
.L000045:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000046:
	push rax
	pop  rax
// Line 91 (= (LVAR 4)  5 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 91  5 
	push 5
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 92 (CALL assert_expect ( 92 : 5 :(LVAR 4):) )
// Line 92 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 92  5 
	push 5
// Line 92  92 
	push 92
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000047
	mov  rax, 0
	call assert_expect
	jmp  .L000048
.L000047:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000048:
	push rax
	pop  rax
// Line 105 (BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 99 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 101 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 103 : 2 :(LVAR 8):) ):)
// Line 94 (= (LVAR 8)  2 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 94  2 
	push 2
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 103 (BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 99 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 101 : 3 :(LVAR 12):) ):)
// Line 96 (= (LVAR 12)  3 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 96  3 
	push 3
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 101 (BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 99 : 4 :(LVAR 16):) ):)
// Line 98 (= (LVAR 16)  4 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 98  4 
	push 4
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 99 (CALL assert_expect ( 99 : 4 :(LVAR 16):) )
// Line 99 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 99  4 
	push 4
// Line 99  99 
	push 99
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000049
	mov  rax, 0
	call assert_expect
	jmp  .L000050
.L000049:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000050:
	push rax
	pop  rax
// Line 101 (CALL assert_expect ( 101 : 3 :(LVAR 12):) )
// Line 101 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 101  3 
	push 3
// Line 101  101 
	push 101
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000051
	mov  rax, 0
	call assert_expect
	jmp  .L000052
.L000051:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000052:
	push rax
	pop  rax
// Line 103 (CALL assert_expect ( 103 : 2 :(LVAR 8):) )
// Line 103 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 103  2 
	push 2
// Line 103  103 
	push 103
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000053
	mov  rax, 0
	call assert_expect
	jmp  .L000054
.L000053:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000054:
	push rax
	pop  rax
// Line 105 (CALL assert_expect ( 105 : 5 :(LVAR 4):) )
// Line 105 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 105  5 
	push 5
// Line 105  105 
	push 105
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000055
	mov  rax, 0
	call assert_expect
	jmp  .L000056
.L000055:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000056:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global for_
// Line 108 FDECL for_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  100 ):(CALL assert_expect ( 110 : 100 :(LVAR 4):) ):(FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 115 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 117 : 9 :(LVAR 12):) ):)):(CALL assert_expect ( 119 : 100 :(LVAR 4):) ):(= (LVAR 4)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)):(CALL assert_expect ( 126 : 6 :(LVAR 4):) ):))
for_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 109 (= (LVAR 4)  100 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 109  100 
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 110 (CALL assert_expect ( 110 : 100 :(LVAR 4):) )
// Line 110 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 110  100 
	push 100
// Line 110  110 
	push 110
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000057
	mov  rax, 0
	call assert_expect
	jmp  .L000058
.L000057:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000058:
	push rax
	pop  rax
// Line 111 (FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 115 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 117 : 9 :(LVAR 12):) ):))
// Line 111 (= (LVAR 8)  10 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 111  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000061:
// Line 111 (<  100  (LVAR 8))
// Line 111  100 
	push 100
// Line 111 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000060
// Line 119 (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 115 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 117 : 9 :(LVAR 12):) ):)
// Line 114 (IF (== (LVAR 8)  15 ) BREAK  NULL )
// Line 112 (== (LVAR 8)  15 )
// Line 112 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 112  15 
	push 15
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000062
// Line 113 BREAK 
	jmp  .L000060
	jmp  .L000063
.L000062:
.L000063:
// Line 116 (IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 115 : 12 :(LVAR 8):) ) NULL )
// Line 114 (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 ))
// Line 114 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 114 (* (/ (LVAR 8)  3 )  3 )
// Line 114 (/ (LVAR 8)  3 )
// Line 114 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 114  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 114  3 
	push 3
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000064
// Line 115 (CALL assert_expect ( 115 : 12 :(LVAR 8):) )
// Line 115 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 115  12 
	push 12
// Line 115  115 
	push 115
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000066
	mov  rax, 0
	call assert_expect
	jmp  .L000067
.L000066:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000067:
	push rax
	pop  rax
	jmp  .L000065
.L000064:
.L000065:
// Line 116 (= (LVAR 12)  9 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 116  9 
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 117 (CALL assert_expect ( 117 : 9 :(LVAR 12):) )
// Line 117 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 117  9 
	push 9
// Line 117  117 
	push 117
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000068
	mov  rax, 0
	call assert_expect
	jmp  .L000069
.L000068:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000069:
	push rax
	pop  rax
.L000059:
// Line 111 (= (LVAR 8) (+= (LVAR 8)  1 ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 111 (+= (LVAR 8)  1 )
// Line 111 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 111  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000061
.L000060:
// Line 119 (CALL assert_expect ( 119 : 100 :(LVAR 4):) )
// Line 119 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 119  100 
	push 100
// Line 119  119 
	push 119
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000070
	mov  rax, 0
	call assert_expect
	jmp  .L000071
.L000070:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000071:
	push rax
	pop  rax
// Line 120 (= (LVAR 4)  0 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 120  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 121 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):))
.L000074:
// Line 121  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000073
// Line 126 (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)
// Line 124 (IF (== (LVAR 4)  6 ) BREAK  NULL )
// Line 122 (== (LVAR 4)  6 )
// Line 122 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 122  6 
	push 6
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000075
// Line 123 BREAK 
	jmp  .L000073
	jmp  .L000076
.L000075:
.L000076:
// Line 124 (= (LVAR 4) (+ (LVAR 4)  1 ))
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 124 (+ (LVAR 4)  1 )
// Line 124 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 124  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000072:
	jmp  .L000074
.L000073:
// Line 126 (CALL assert_expect ( 126 : 6 :(LVAR 4):) )
// Line 126 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 126  6 
	push 6
// Line 126  126 
	push 126
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000077
	mov  rax, 0
	call assert_expect
	jmp  .L000078
.L000077:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000078:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global switch_
// Line 129 FDECL switch_ func ( int  s ) int 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)):(RETURN (LVAR 8)):))
switch_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 131 (SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 131 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 146 (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)
// Line 132 (CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :))
// Line 132  1 
	push 1
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000080
// Line 135 (CASE cond: 2  body:(BLOCK))
// Line 135  2 
	push 2
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000081
// Line 136 (CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):))
// Line 136  3 
	push 3
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000082
// Line 138 (CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):))
// Line 138  4 
	push 4
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000083
// Line 141 (CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):))
// Line 141  5 
	push 5
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000084
// Line 143 (DEFAULT body:(= (LVAR 8)  15 ))
	jmp  .L000085
	jmp  .L000079
.L000080:
// Line 133 (BLOCK(= (LVAR 8)  11 ):BREAK :)
// Line 133 (= (LVAR 8)  11 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 133  11 
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 134 BREAK 
	jmp  .L000079
.L000081:
// Line 136 (BLOCK)
.L000082:
// Line 137 (BLOCK(= (LVAR 8)  12 ):)
// Line 137 (= (LVAR 8)  12 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 137  12 
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000083:
// Line 139 (BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)
// Line 139 (= (LVAR 8)  13 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 139  13 
	push 13
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 140 (RETURN (LVAR 8))
// Line 140 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000084:
// Line 142 (BLOCK(= (LVAR 8)  14 ):)
// Line 142 (= (LVAR 8)  14 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 142  14 
	push 14
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000085:
// Line 144 (= (LVAR 8)  15 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 144  15 
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000079:
// Line 146 (RETURN (LVAR 8))
// Line 146 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global switch2_
// Line 149 FDECL switch2_ func ( char  s ) int 
//    (LVAR 1) 
//    (BLOCK(SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)):(RETURN (LVAR 5)):))
switch2_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 1], dil
// Line 151 (SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):))
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 151 (LVAR 1)
	mov  rax, rbp
	sub  rax, 1
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 162 (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)
// Line 152 (CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :))
// Line 152  97 
	push 97
	mov  rax, rbp
	sub  rax, 9
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000087
// Line 155 (CASE cond: 98  body:(BLOCK))
// Line 155  98 
	push 98
	mov  rax, rbp
	sub  rax, 9
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000088
// Line 156 (CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :))
// Line 156  99 
	push 99
	mov  rax, rbp
	sub  rax, 9
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000089
// Line 159 (DEFAULT body:(= (LVAR 5)  15 ))
	jmp  .L000090
	jmp  .L000086
.L000087:
// Line 153 (BLOCK(= (LVAR 5)  11 ):BREAK :)
// Line 153 (= (LVAR 5)  11 )
	mov  rax, rbp
	sub  rax, 5
	push rax
// Line 153  11 
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 154 BREAK 
	jmp  .L000086
.L000088:
// Line 156 (BLOCK)
.L000089:
// Line 157 (BLOCK(= (LVAR 5)  12 ):BREAK :)
// Line 157 (= (LVAR 5)  12 )
	mov  rax, rbp
	sub  rax, 5
	push rax
// Line 157  12 
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 158 BREAK 
	jmp  .L000086
.L000090:
// Line 160 (= (LVAR 5)  15 )
	mov  rax, rbp
	sub  rax, 5
	push rax
// Line 160  15 
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000086:
// Line 162 (RETURN (LVAR 5))
// Line 162 (LVAR 5)
	mov  rax, rbp
	sub  rax, 5
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global list_
// Line 191 FDECL list_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  16 ):(= (LVAR 12)  0 ):(FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)):(CALL assert_expect ( 200 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 202 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 204 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 206 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 208 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 210 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 213 : 777 :(MEMBER (GVAR def) payload 0):) ):))
list_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 192 (= (LVAR 4)  16 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 192  16 
	push 16
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 193 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 193  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 194 (FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):))
// Line 194 (= (LVAR 16)  0 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 194  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000093:
// Line 194 (<  6  (LVAR 16))
// Line 194  6 
	push 6
// Line 194 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000092
// Line 200 (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)
// Line 195 (= (LVAR 24) (CALL calloc_ ((LVAR 4):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 195 (CALL calloc_ ((LVAR 4):) )
// Line 195 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000094
	mov  rax, 0
	call calloc_
	jmp  .L000095
.L000094:
	sub  rsp, 8
	mov  rax, 0
	call calloc_
	add  rsp, 8
.L000095:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 196 (= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16))
// Line 196 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 196 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 197 (= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12))
// Line 197 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 197 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 198 (= (LVAR 12) (LVAR 24))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 198 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000091:
// Line 194 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 194 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 194 (++ (LVAR 16)  1 )
// Line 194 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 194  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 194  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000093
.L000092:
// Line 200 (CALL assert_expect ( 200 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 200 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 200 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 200  5 
	push 5
// Line 200  200 
	push 200
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000096
	mov  rax, 0
	call assert_expect
	jmp  .L000097
.L000096:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000097:
	push rax
	pop  rax
// Line 201 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 201 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 201 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 202 (CALL assert_expect ( 202 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 202 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 202 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 202  4 
	push 4
// Line 202  202 
	push 202
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000098
	mov  rax, 0
	call assert_expect
	jmp  .L000099
.L000098:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000099:
	push rax
	pop  rax
// Line 203 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 203 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 203 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 204 (CALL assert_expect ( 204 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 204 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 204 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 204  3 
	push 3
// Line 204  204 
	push 204
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000100
	mov  rax, 0
	call assert_expect
	jmp  .L000101
.L000100:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000101:
	push rax
	pop  rax
// Line 205 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 205 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 205 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 206 (CALL assert_expect ( 206 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 206 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 206 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 206  2 
	push 2
// Line 206  206 
	push 206
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000102
	mov  rax, 0
	call assert_expect
	jmp  .L000103
.L000102:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000103:
	push rax
	pop  rax
// Line 207 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 207 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 207 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 208 (CALL assert_expect ( 208 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 208 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 208 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 208  1 
	push 1
// Line 208  208 
	push 208
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000104
	mov  rax, 0
	call assert_expect
	jmp  .L000105
.L000104:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000105:
	push rax
	pop  rax
// Line 209 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 209 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 209 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 210 (CALL assert_expect ( 210 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 210 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 210 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 210  0 
	push 0
// Line 210  210 
	push 210
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000106
	mov  rax, 0
	call assert_expect
	jmp  .L000107
.L000106:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000107:
	push rax
	pop  rax
// Line 212 (= (MEMBER (GVAR def) payload 0)  777 )
	lea  rax, def[rip]
	add  rax, 0
	push rax
// Line 212  777 
	push 777
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 213 (CALL assert_expect ( 213 : 777 :(MEMBER (GVAR def) payload 0):) )
// Line 213 (MEMBER (GVAR def) payload 0)
	lea  rax, def[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 213  777 
	push 777
// Line 213  213 
	push 213
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000108
	mov  rax, 0
	call assert_expect
	jmp  .L000109
.L000108:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000109:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global struct_
// Line 216 FDECL struct_ func ( ) void 
//    
//    (BLOCK(CALL assert_expect ( 245 : 32 : 32 :) ):(CALL assert_expect ( 246 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 251 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 252 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 254 : 4 : 4 :) ):(CALL assert_expect ( 255 : 4 : 4 :) ):(= (LVAR 336) (ADDR (LVAR 328))):(= (MEMBER (LVAR 328) size 136)  10 ):(= (MEMBER (LVAR 328) ch 140)  5 ):(= (MEMBER (LVAR 480) size 136)  195 ):(= (MEMBER (LVAR 480) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 266 : 10 :(MEMBER (LVAR 328) size 136):) ):(CALL assert_expect ( 267 : 5 :(MEMBER (LVAR 328) ch 140):) ):(= (MEMBER (LVAR 328) size 136)  110 ):(= (MEMBER (LVAR 328) ch 140)  79 ):(CALL assert_expect ( 270 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 271 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 272 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 273 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 274 : 195 :(MEMBER (LVAR 480) size 136):) ):(CALL assert_expect ( 275 : 39 :(MEMBER (LVAR 480) ch 140):) ):(CALL assert_expect ( 276 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 277 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480))):(= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328))):(CALL assert_expect ( 281 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) ):))
struct_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 512
// Line 245 (CALL assert_expect ( 245 : 32 : 32 :) )
// Line 245  32 
	push 32
// Line 245  32 
	push 32
// Line 245  245 
	push 245
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000110
	mov  rax, 0
	call assert_expect
	jmp  .L000111
.L000110:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000111:
	push rax
	pop  rax
// Line 246 (CALL assert_expect ( 246 : 8 : 8 :) )
// Line 246  8 
	push 8
// Line 246  8 
	push 8
// Line 246  246 
	push 246
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000112
	mov  rax, 0
	call assert_expect
	jmp  .L000113
.L000112:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000113:
	push rax
	pop  rax
// Line 248 (= (MEMBER (GVAR pos) col 4)  9 )
	lea  rax, pos[rip]
	add  rax, 4
	push rax
// Line 248  9 
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 249 (= (MEMBER (GVAR pos) row 0)  45 )
	lea  rax, pos[rip]
	add  rax, 0
	push rax
// Line 249  45 
	push 45
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 251 (CALL assert_expect ( 251 : 9 :(MEMBER (GVAR pos) col 4):) )
// Line 251 (MEMBER (GVAR pos) col 4)
	lea  rax, pos[rip]
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 251  9 
	push 9
// Line 251  251 
	push 251
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000114
	mov  rax, 0
	call assert_expect
	jmp  .L000115
.L000114:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000115:
	push rax
	pop  rax
// Line 252 (CALL assert_expect ( 252 : 45 :(MEMBER (GVAR pos) row 0):) )
// Line 252 (MEMBER (GVAR pos) row 0)
	lea  rax, pos[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 252  45 
	push 45
// Line 252  252 
	push 252
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000116
	mov  rax, 0
	call assert_expect
	jmp  .L000117
.L000116:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000117:
	push rax
	pop  rax
// Line 254 (CALL assert_expect ( 254 : 4 : 4 :) )
// Line 254  4 
	push 4
// Line 254  4 
	push 4
// Line 254  254 
	push 254
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000118
	mov  rax, 0
	call assert_expect
	jmp  .L000119
.L000118:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000119:
	push rax
	pop  rax
// Line 255 (CALL assert_expect ( 255 : 4 : 4 :) )
// Line 255  4 
	push 4
// Line 255  4 
	push 4
// Line 255  255 
	push 255
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000120
	mov  rax, 0
	call assert_expect
	jmp  .L000121
.L000120:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000121:
	push rax
	pop  rax
// Line 258 (= (LVAR 336) (ADDR (LVAR 328)))
	mov  rax, rbp
	sub  rax, 336
	push rax
// Line 258 (ADDR (LVAR 328))
	mov  rax, rbp
	sub  rax, 328
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 260 (= (MEMBER (LVAR 328) size 136)  10 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 136
	push rax
// Line 260  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 261 (= (MEMBER (LVAR 328) ch 140)  5 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 140
	push rax
// Line 261  5 
	push 5
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 262 (= (MEMBER (LVAR 480) size 136)  195 )
	mov  rax, rbp
	sub  rax, 480
	add  rax, 136
	push rax
// Line 262  195 
	push 195
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 263 (= (MEMBER (LVAR 480) ch 140)  39 )
	mov  rax, rbp
	sub  rax, 480
	add  rax, 140
	push rax
// Line 263  39 
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 264 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 )
// Line 264 (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )
// Line 264 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 264  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 264  184 
	push 184
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 265 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 )
// Line 265 (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )
// Line 265 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 265  16 
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop rax
	add  rax, 4
	push rax
// Line 265  984 
	push 984
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 266 (CALL assert_expect ( 266 : 10 :(MEMBER (LVAR 328) size 136):) )
// Line 266 (MEMBER (LVAR 328) size 136)
	mov  rax, rbp
	sub  rax, 328
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 266  10 
	push 10
// Line 266  266 
	push 266
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000122
	mov  rax, 0
	call assert_expect
	jmp  .L000123
.L000122:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000123:
	push rax
	pop  rax
// Line 267 (CALL assert_expect ( 267 : 5 :(MEMBER (LVAR 328) ch 140):) )
// Line 267 (MEMBER (LVAR 328) ch 140)
	mov  rax, rbp
	sub  rax, 328
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 267  5 
	push 5
// Line 267  267 
	push 267
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000124
	mov  rax, 0
	call assert_expect
	jmp  .L000125
.L000124:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000125:
	push rax
	pop  rax
// Line 268 (= (MEMBER (LVAR 328) size 136)  110 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 136
	push rax
// Line 268  110 
	push 110
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 269 (= (MEMBER (LVAR 328) ch 140)  79 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 140
	push rax
// Line 269  79 
	push 79
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 270 (CALL assert_expect ( 270 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) )
// Line 270 (MEMBER (DEREF (LVAR 336)) size 136)
// Line 270 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 270  110 
	push 110
// Line 270  270 
	push 270
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000126
	mov  rax, 0
	call assert_expect
	jmp  .L000127
.L000126:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000127:
	push rax
	pop  rax
// Line 271 (CALL assert_expect ( 271 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) )
// Line 271 (MEMBER (DEREF (LVAR 336)) ch 140)
// Line 271 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 271  79 
	push 79
// Line 271  271 
	push 271
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000128
	mov  rax, 0
	call assert_expect
	jmp  .L000129
.L000128:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000129:
	push rax
	pop  rax
// Line 272 (CALL assert_expect ( 272 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) )
// Line 272 (MEMBER (DEREF (LVAR 336)) size 136)
// Line 272 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 272  110 
	push 110
// Line 272  272 
	push 272
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000130
	mov  rax, 0
	call assert_expect
	jmp  .L000131
.L000130:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000131:
	push rax
	pop  rax
// Line 273 (CALL assert_expect ( 273 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) )
// Line 273 (MEMBER (DEREF (LVAR 336)) ch 140)
// Line 273 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 273  79 
	push 79
// Line 273  273 
	push 273
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000132
	mov  rax, 0
	call assert_expect
	jmp  .L000133
.L000132:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000133:
	push rax
	pop  rax
// Line 274 (CALL assert_expect ( 274 : 195 :(MEMBER (LVAR 480) size 136):) )
// Line 274 (MEMBER (LVAR 480) size 136)
	mov  rax, rbp
	sub  rax, 480
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 274  195 
	push 195
// Line 274  274 
	push 274
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000134
	mov  rax, 0
	call assert_expect
	jmp  .L000135
.L000134:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000135:
	push rax
	pop  rax
// Line 275 (CALL assert_expect ( 275 : 39 :(MEMBER (LVAR 480) ch 140):) )
// Line 275 (MEMBER (LVAR 480) ch 140)
	mov  rax, rbp
	sub  rax, 480
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 275  39 
	push 39
// Line 275  275 
	push 275
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000136
	mov  rax, 0
	call assert_expect
	jmp  .L000137
.L000136:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000137:
	push rax
	pop  rax
// Line 276 (CALL assert_expect ( 276 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) )
// Line 276 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)
// Line 276 (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )
// Line 276 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 276  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 276  184 
	push 184
// Line 276  276 
	push 276
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000138
	mov  rax, 0
	call assert_expect
	jmp  .L000139
.L000138:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000139:
	push rax
	pop  rax
// Line 277 (CALL assert_expect ( 277 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) )
// Line 277 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)
// Line 277 (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )
// Line 277 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 277  16 
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 277  984 
	push 984
// Line 277  277 
	push 277
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000140
	mov  rax, 0
	call assert_expect
	jmp  .L000141
.L000140:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000141:
	push rax
	pop  rax
// Line 279 (= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480)))
	mov  rax, rbp
	sub  rax, 496
	add  rax, 8
	push rax
// Line 279 (ADDR (LVAR 480))
	mov  rax, rbp
	sub  rax, 480
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 280 (= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328)))
	mov  rax, rbp
	sub  rax, 496
	add  rax, 0
	push rax
// Line 280 (ADDR (LVAR 328))
	mov  rax, rbp
	sub  rax, 328
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 281 (CALL assert_expect ( 281 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) )
// Line 281 (MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136)
// Line 281 (MEMBER (LVAR 496) right 8)
	mov  rax, rbp
	sub  rax, 496
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 281  195 
	push 195
// Line 281  281 
	push 281
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000142
	mov  rax, 0
	call assert_expect
	jmp  .L000143
.L000142:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000143:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_board
// Line 286 FDECL print_board func ( * [8] int  board ) void 
//    (LVAR 8) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)):(CALL printf_ ((ADDR  "\n\n" ):) ):))
print_board:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 287 (++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 )
// Line 287 (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))
	lea  rax, q8_count[rip]
	push rax
// Line 287 (++ (GVAR q8_count)  1 )
// Line 287 (GVAR q8_count)
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
// Line 287  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 287  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 288 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
// Line 289 (FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):))
// Line 289 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 289  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000146:
// Line 289 (<  8  (LVAR 12))
// Line 289  8 
	push 8
// Line 289 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000145
// Line 297 (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)
// Line 290 (FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):))
// Line 290 (= (LVAR 16)  0 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 290  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000149:
// Line 290 (<  8  (LVAR 16))
// Line 290  8 
	push 8
// Line 290 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000148
// Line 295 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)
// Line 293 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL )
// Line 291 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))
// Line 291 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
// Line 291 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
// Line 291 (] (LVAR 8) (LVAR 12))
// Line 291 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 291 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 291 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000150
// Line 292 (CALL printf_ ((ADDR  "Q " ):) )
// Line 292 (ADDR  "Q " )
	lea  rax, .LS000025[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000152
	mov  rax, 0
	call printf_
	jmp  .L000153
.L000152:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000153:
	push rax
	pop  rax
	jmp  .L000151
.L000150:
.L000151:
// Line 293 (CALL printf_ ((ADDR  ". " ):) )
// Line 293 (ADDR  ". " )
	lea  rax, .LS000026[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000154
	mov  rax, 0
	call printf_
	jmp  .L000155
.L000154:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000155:
	push rax
	pop  rax
.L000147:
// Line 290 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 290 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 290 (++ (LVAR 16)  1 )
// Line 290 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 290  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 290  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000149
.L000148:
// Line 295 (CALL printf_ ((ADDR  "\n" ):) )
// Line 295 (ADDR  "\n" )
	lea  rax, .LS000027[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000156
	mov  rax, 0
	call printf_
	jmp  .L000157
.L000156:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000157:
	push rax
	pop  rax
.L000144:
// Line 289 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 289 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 289 (++ (LVAR 12)  1 )
// Line 289 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 289  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 289  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000146
.L000145:
// Line 297 (CALL printf_ ((ADDR  "\n\n" ):) )
// Line 297 (ADDR  "\n\n" )
	lea  rax, .LS000028[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000158
	mov  rax, 0
	call printf_
	jmp  .L000159
.L000158:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000159:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global conflict
// Line 300 FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
conflict:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 301 (FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):))
// Line 301 (= (LVAR 20)  0 )
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 301  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000162:
// Line 301 (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))
// Line 301 (MEMBER (DEREF (LVAR 16)) row 0)
// Line 301 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 301 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000161
// Line 312 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)
// Line 304 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL )
// Line 302 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4)))
// Line 302 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))
// Line 302 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
// Line 302 (] (LVAR 8) (LVAR 20))
// Line 302 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 302 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 302 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 302 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000163
// Line 303 (RETURN  1 )
// Line 303  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000164
.L000163:
.L000164:
// Line 304 (= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 304 (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))
// Line 304 (MEMBER (DEREF (LVAR 16)) row 0)
// Line 304 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 304 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 308 (IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL )
// Line 305 (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 )
// Line 305 (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )
// Line 305 (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 305 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 305 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 305 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 305  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 305  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000165
// Line 308 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL )
// Line 306 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))))
// Line 306 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
// Line 306 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
// Line 306 (] (LVAR 8) (LVAR 20))
// Line 306 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 306 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 306 (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 306 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 306 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 306 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000167
// Line 307 (RETURN  1 )
// Line 307  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000168
.L000167:
.L000168:
	jmp  .L000166
.L000165:
.L000166:
// Line 311 (IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL )
// Line 308 (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
// Line 308  8 
	push 8
// Line 308 (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 308 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 308 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 308 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000169
// Line 311 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL )
// Line 309 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))))
// Line 309 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
// Line 309 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
// Line 309 (] (LVAR 8) (LVAR 20))
// Line 309 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 309 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 309 (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 309 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 309 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 309 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000171
// Line 310 (RETURN  1 )
// Line 310  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000172
.L000171:
.L000172:
	jmp  .L000170
.L000169:
.L000170:
.L000160:
// Line 301 (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )
// Line 301 (= (LVAR 20) (++ (LVAR 20)  1 ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 301 (++ (LVAR 20)  1 )
// Line 301 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 301  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 301  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000162
.L000161:
// Line 312 (RETURN  0 )
// Line 312  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global solve
// Line 315 FDECL solve func ( * [8] int  board , int  row ) void 
//    (LVAR 8) (LVAR 12) 
//    (BLOCK(IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)):))
solve:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 12], esi
// Line 320 (IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL )
// Line 316 (== (LVAR 12)  8 )
// Line 316 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 316  8 
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000173
// Line 320 (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):)
// Line 317 (CALL print_board ((LVAR 8):) )
// Line 317 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000175
	mov  rax, 0
	call print_board
	jmp  .L000176
.L000175:
	sub  rsp, 8
	mov  rax, 0
	call print_board
	add  rsp, 8
.L000176:
	push rax
	pop  rax
// Line 318 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000174
.L000173:
.L000174:
// Line 320 (FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):))
// Line 320 (= (LVAR 16)  0 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 320  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000179:
// Line 320 (<  8  (LVAR 16))
// Line 320  8 
	push 8
// Line 320 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000178
// Line 331 (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)
// Line 322 (= (MEMBER (LVAR 24) row 0) (LVAR 12))
	mov  rax, rbp
	sub  rax, 24
	add  rax, 0
	push rax
// Line 322 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 323 (= (MEMBER (LVAR 24) col 4) (LVAR 16))
	mov  rax, rbp
	sub  rax, 24
	add  rax, 4
	push rax
// Line 323 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 330 (IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL )
// Line 324 (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 )
// Line 324 (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )
// Line 324 (ADDR (LVAR 24))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 324 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000182
	mov  rax, 0
	call conflict
	jmp  .L000183
.L000182:
	sub  rsp, 8
	mov  rax, 0
	call conflict
	add  rsp, 8
.L000183:
	push rax
// Line 324  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000180
// Line 330 (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):)
// Line 326 (= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 )
// Line 326 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
// Line 326 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
// Line 326 (] (LVAR 8) (LVAR 12))
// Line 326 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 326 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 326 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 326  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 327 (CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) )
// Line 327 (+ (LVAR 12)  1 )
// Line 327 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 327  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 327 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000184
	mov  rax, 0
	call solve
	jmp  .L000185
.L000184:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000185:
	push rax
	pop  rax
// Line 328 (= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 )
// Line 328 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
// Line 328 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
// Line 328 (] (LVAR 8) (LVAR 12))
// Line 328 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 328 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 328 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 328  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000181
.L000180:
.L000181:
.L000177:
// Line 320 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 320 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 320 (++ (LVAR 16)  1 )
// Line 320 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 320  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 320  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000179
.L000178:
	mov  rsp, rbp
	pop  rbp
	ret
	.global q8
// Line 333 FDECL q8 func ( ) int 
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))):(CALL solve ((ADDR (LVAR 256)): 0 :) ):(RETURN (GVAR q8_count)):))
q8:
	push rbp
	mov  rbp, rsp
	sub  rsp, 272
// Line 335 (= (GVAR q8_count)  0 )
	lea  rax, q8_count[rip]
	push rax
// Line 335  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 336 (FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 )))
// Line 336 (= (LVAR 260)  0 )
	mov  rax, rbp
	sub  rax, 260
	push rax
// Line 336  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000188:
// Line 336 (<  8  (LVAR 260))
// Line 336  8 
	push 8
// Line 336 (LVAR 260)
	mov  rax, rbp
	sub  rax, 260
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000187
// Line 337 (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))
// Line 337 (= (LVAR 264)  0 )
	mov  rax, rbp
	sub  rax, 264
	push rax
// Line 337  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000191:
// Line 337 (<  8  (LVAR 264))
// Line 337  8 
	push 8
// Line 337 (LVAR 264)
	mov  rax, rbp
	sub  rax, 264
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000190
// Line 338 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 )
// Line 338 (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264))
// Line 338 (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260))))
// Line 338 (] (ADDR (LVAR 256)) (LVAR 260))
// Line 338 (ADDR (LVAR 256))
	mov  rax, rbp
	sub  rax, 256
	push rax
// Line 338 (LVAR 260)
	mov  rax, rbp
	sub  rax, 260
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 338 (LVAR 264)
	mov  rax, rbp
	sub  rax, 264
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 338  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000189:
// Line 337 (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 )
// Line 337 (= (LVAR 264) (++ (LVAR 264)  1 ))
	mov  rax, rbp
	sub  rax, 264
	push rax
// Line 337 (++ (LVAR 264)  1 )
// Line 337 (LVAR 264)
	mov  rax, rbp
	sub  rax, 264
	mov  eax, [rax]
	push rax
// Line 337  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 337  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000191
.L000190:
.L000186:
// Line 336 (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 )
// Line 336 (= (LVAR 260) (++ (LVAR 260)  1 ))
	mov  rax, rbp
	sub  rax, 260
	push rax
// Line 336 (++ (LVAR 260)  1 )
// Line 336 (LVAR 260)
	mov  rax, rbp
	sub  rax, 260
	mov  eax, [rax]
	push rax
// Line 336  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 336  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000188
.L000187:
// Line 339 (CALL solve ((ADDR (LVAR 256)): 0 :) )
// Line 339  0 
	push 0
// Line 339 (ADDR (LVAR 256))
	mov  rax, rbp
	sub  rax, 256
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000192
	mov  rax, 0
	call solve
	jmp  .L000193
.L000192:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000193:
	push rax
	pop  rax
// Line 340 (RETURN (GVAR q8_count))
// Line 340 (GVAR q8_count)
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global fun
// Line 343 FDECL fun func ( * int  p ) int 
//    (LVAR 8) 
//    (BLOCK(RETURN (DEREF (LVAR 8))):))
fun:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 343 (RETURN (DEREF (LVAR 8)))
// Line 343 (DEREF (LVAR 8))
// Line 343 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global main
// Line 345 FDECL main func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (CAST * void   0 )):(CALL assert_expect ( 350 : 1 : 1 :) ):(CALL assert_expect ( 351 : 0 : 0 :) ):(CALL assert_expect ( 352 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 355 : 4 : 4 :) ):(CALL assert_expect ( 357 : 1979 :(GVAR i):) ):(CALL assert_expect ( 358 : 2015 :(GVAR j):) ):(CALL assert_expect ( 359 : 14 :(GVAR s):) ):(CALL assert_expect ( 361 : 9 : 9 :) ):(CALL assert_expect ( 362 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 363 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 364 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 365 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 366 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 367 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 368 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 369 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 370 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 371 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 372 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 373 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 374 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 375 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 376 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 377 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 378 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 379 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 380 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 381 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 382 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 384 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 385 : 0 :(LVAR 12):) ):(CALL assert_expect ( 386 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 387 : 1 :(LVAR 12):) ):(CALL assert_expect ( 388 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 389 : 2 :(LVAR 12):) ):(CALL assert_expect ( 390 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 391 : 3 :(LVAR 12):) ):(CALL assert_expect ( 392 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 393 : 3 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 395 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 396 : 1 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 398 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) ):(CALL assert_expect ( 399 : 1 :(LVAR 12):) ):(CALL assert_expect ( 400 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 401 : 1 :(LVAR 12):) ):(CALL assert_expect ( 402 : 1 :(!  0 ):) ):(CALL assert_expect ( 403 : 0 :(!  1 ):) ):(CALL assert_expect ( 404 : 0 :(! (! (!  1 ))):) ):(= (LVAR 16)  10 ):(CALL assert_expect ( 409 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) ):(CALL assert_expect ( 410 : 15 :(LVAR 16):) ):(CALL assert_expect ( 411 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) ):(CALL assert_expect ( 412 : 8 :(LVAR 16):) ):(CALL assert_expect ( 413 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) ):(CALL assert_expect ( 414 : 40 :(LVAR 16):) ):(CALL assert_expect ( 415 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) ):(CALL assert_expect ( 416 : 4 :(LVAR 16):) ):(CALL assert_expect ( 419 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 420 : 5 :(LVAR 16):) ):(CALL assert_expect ( 421 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 422 : 4 :(LVAR 16):) ):(= (LVAR 20) (/  100  (LVAR 16))):(CALL assert_expect ( 427 : 25 :(LVAR 20):) ):(= (LVAR 24)  77 ):(IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 )):(CALL assert_expect ( 435 : 55 :(LVAR 24):) ):(CALL assert_expect ( 436 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 449 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 450 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 451 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 452 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 453 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 454 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 457 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 458 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 459 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 460 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 463 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 466 : 0 : 0 :) ):(CALL assert_expect ( 467 : 1 : 1 :) ):(CALL assert_expect ( 468 : 2 : 2 :) ):(CALL assert_expect ( 469 : 3 : 3 :) ):(CALL assert_expect ( 471 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 472 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 473 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 474 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 475 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 476 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 478 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 479 : 1664 :(<<  13   7 ):) ):(CALL printf_ ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 349 (= (LVAR 8) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 348 (CAST * void   0 )
// Line 348  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 350 (CALL assert_expect ( 350 : 1 : 1 :) )
// Line 346  1 
	push 1
// Line 350  1 
	push 1
// Line 350  350 
	push 350
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000194
	mov  rax, 0
	call assert_expect
	jmp  .L000195
.L000194:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000195:
	push rax
	pop  rax
// Line 351 (CALL assert_expect ( 351 : 0 : 0 :) )
// Line 347  0 
	push 0
// Line 351  0 
	push 0
// Line 351  351 
	push 351
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000196
	mov  rax, 0
	call assert_expect
	jmp  .L000197
.L000196:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000197:
	push rax
	pop  rax
// Line 352 (CALL assert_expect ( 352 : 0 :(CAST int  (CAST * void   0 )):) )
// Line 352 (CAST int  (CAST * void   0 ))
// Line 348 (CAST * void   0 )
// Line 348  0 
	push 0
// Line 352  0 
	push 0
// Line 352  352 
	push 352
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000198
	mov  rax, 0
	call assert_expect
	jmp  .L000199
.L000198:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000199:
	push rax
	pop  rax
// Line 355 (CALL assert_expect ( 355 : 4 : 4 :) )
// Line 354  4 
	push 4
// Line 355  4 
	push 4
// Line 355  355 
	push 355
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000200
	mov  rax, 0
	call assert_expect
	jmp  .L000201
.L000200:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000201:
	push rax
	pop  rax
// Line 357 (CALL assert_expect ( 357 : 1979 :(GVAR i):) )
// Line 357 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 357  1979 
	push 1979
// Line 357  357 
	push 357
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000202
	mov  rax, 0
	call assert_expect
	jmp  .L000203
.L000202:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000203:
	push rax
	pop  rax
// Line 358 (CALL assert_expect ( 358 : 2015 :(GVAR j):) )
// Line 358 (GVAR j)
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 358  2015 
	push 2015
// Line 358  358 
	push 358
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000204
	mov  rax, 0
	call assert_expect
	jmp  .L000205
.L000204:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000205:
	push rax
	pop  rax
// Line 359 (CALL assert_expect ( 359 : 14 :(GVAR s):) )
// Line 359 (GVAR s)
	lea  rax, s[rip]
	movsx eax, BYTE PTR [rax]
	push rax
// Line 359  14 
	push 14
// Line 359  359 
	push 359
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000206
	mov  rax, 0
	call assert_expect
	jmp  .L000207
.L000206:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000207:
	push rax
	pop  rax
// Line 361 (CALL assert_expect ( 361 : 9 : 9 :) )
// Line 361  9 
	push 9
// Line 361  9 
	push 9
// Line 361  361 
	push 361
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000208
	mov  rax, 0
	call assert_expect
	jmp  .L000209
.L000208:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000209:
	push rax
	pop  rax
// Line 362 (CALL assert_expect ( 362 : 4 :(+ (-  0   3 )  7 ):) )
// Line 362 (+ (-  0   3 )  7 )
// Line 362 (-  0   3 )
// Line 362  0 
	push 0
// Line 362  3 
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 362  7 
	push 7
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 362  4 
	push 4
// Line 362  362 
	push 362
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000210
	mov  rax, 0
	call assert_expect
	jmp  .L000211
.L000210:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000211:
	push rax
	pop  rax
// Line 363 (CALL assert_expect ( 363 : 21 :(- (+  5   20 )  4 ):) )
// Line 363 (- (+  5   20 )  4 )
// Line 363 (+  5   20 )
// Line 363  5 
	push 5
// Line 363  20 
	push 20
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 363  4 
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 363  21 
	push 21
// Line 363  363 
	push 363
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000212
	mov  rax, 0
	call assert_expect
	jmp  .L000213
.L000212:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000213:
	push rax
	pop  rax
// Line 364 (CALL assert_expect ( 364 : 21 :(+  5  (*  4   4 )):) )
// Line 364 (+  5  (*  4   4 ))
// Line 364  5 
	push 5
// Line 364 (*  4   4 )
// Line 364  4 
	push 4
// Line 364  4 
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 364  21 
	push 21
// Line 364  364 
	push 364
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000214
	mov  rax, 0
	call assert_expect
	jmp  .L000215
.L000214:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000215:
	push rax
	pop  rax
// Line 365 (CALL assert_expect ( 365 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) )
// Line 365 (* (*  4  (-  5   2 )) (-  4   2 ))
// Line 365 (*  4  (-  5   2 ))
// Line 365  4 
	push 4
// Line 365 (-  5   2 )
// Line 365  5 
	push 5
// Line 365  2 
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 365 (-  4   2 )
// Line 365  4 
	push 4
// Line 365  2 
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 365  24 
	push 24
// Line 365  365 
	push 365
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000216
	mov  rax, 0
	call assert_expect
	jmp  .L000217
.L000216:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000217:
	push rax
	pop  rax
// Line 366 (CALL assert_expect ( 366 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) )
// Line 366 (- (+  6  (*  3   4 )) (/  15   3 ))
// Line 366 (+  6  (*  3   4 ))
// Line 366  6 
	push 6
// Line 366 (*  3   4 )
// Line 366  3 
	push 3
// Line 366  4 
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 366 (/  15   3 )
// Line 366  15 
	push 15
// Line 366  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 366  13 
	push 13
// Line 366  366 
	push 366
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000218
	mov  rax, 0
	call assert_expect
	jmp  .L000219
.L000218:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000219:
	push rax
	pop  rax
// Line 367 (CALL assert_expect ( 367 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) )
// Line 367 (/ (* (+  6   3 ) (-  15   4 ))  3 )
// Line 367 (* (+  6   3 ) (-  15   4 ))
// Line 367 (+  6   3 )
// Line 367  6 
	push 6
// Line 367  3 
	push 3
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 367 (-  15   4 )
// Line 367  15 
	push 15
// Line 367  4 
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 367  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 367  33 
	push 33
// Line 367  367 
	push 367
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000220
	mov  rax, 0
	call assert_expect
	jmp  .L000221
.L000220:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000221:
	push rax
	pop  rax
// Line 368 (CALL assert_expect ( 368 : 0 :(==  3  (+  3   1 )):) )
// Line 368 (==  3  (+  3   1 ))
// Line 368  3 
	push 3
// Line 368 (+  3   1 )
// Line 368  3 
	push 3
// Line 368  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
// Line 368  0 
	push 0
// Line 368  368 
	push 368
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000222
	mov  rax, 0
	call assert_expect
	jmp  .L000223
.L000222:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000223:
	push rax
	pop  rax
// Line 369 (CALL assert_expect ( 369 : 1 :(!=  4  (*  4   2 )):) )
// Line 369 (!=  4  (*  4   2 ))
// Line 369  4 
	push 4
// Line 369 (*  4   2 )
// Line 369  4 
	push 4
// Line 369  2 
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
// Line 369  1 
	push 1
// Line 369  369 
	push 369
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000224
	mov  rax, 0
	call assert_expect
	jmp  .L000225
.L000224:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000225:
	push rax
	pop  rax
// Line 370 (CALL assert_expect ( 370 : 0 :(!=  3  (*  1   3 )):) )
// Line 370 (!=  3  (*  1   3 ))
// Line 370  3 
	push 3
// Line 370 (*  1   3 )
// Line 370  1 
	push 1
// Line 370  3 
	push 3
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
// Line 370  0 
	push 0
// Line 370  370 
	push 370
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000226
	mov  rax, 0
	call assert_expect
	jmp  .L000227
.L000226:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000227:
	push rax
	pop  rax
// Line 371 (CALL assert_expect ( 371 : 1 :(>=  5  (-  8   4 )):) )
// Line 371 (>=  5  (-  8   4 ))
// Line 371  5 
	push 5
// Line 371 (-  8   4 )
// Line 371  8 
	push 8
// Line 371  4 
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 371  1 
	push 1
// Line 371  371 
	push 371
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000228
	mov  rax, 0
	call assert_expect
	jmp  .L000229
.L000228:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000229:
	push rax
	pop  rax
// Line 372 (CALL assert_expect ( 372 : 1 :(>=  5  (-  7   2 )):) )
// Line 372 (>=  5  (-  7   2 ))
// Line 372  5 
	push 5
// Line 372 (-  7   2 )
// Line 372  7 
	push 7
// Line 372  2 
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 372  1 
	push 1
// Line 372  372 
	push 372
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000230
	mov  rax, 0
	call assert_expect
	jmp  .L000231
.L000230:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000231:
	push rax
	pop  rax
// Line 373 (CALL assert_expect ( 373 : 0 :(>= (-  11   8 )  5 ):) )
// Line 373 (>= (-  11   8 )  5 )
// Line 373 (-  11   8 )
// Line 373  11 
	push 11
// Line 373  8 
	push 8
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 373  5 
	push 5
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 373  0 
	push 0
// Line 373  373 
	push 373
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000232
	mov  rax, 0
	call assert_expect
	jmp  .L000233
.L000232:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000233:
	push rax
	pop  rax
// Line 374 (CALL assert_expect ( 374 : 1 :(<= (*  2   30 )  3 ):) )
// Line 374 (<= (*  2   30 )  3 )
// Line 374 (*  2   30 )
// Line 374  2 
	push 2
// Line 374  30 
	push 30
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 374  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 374  1 
	push 1
// Line 374  374 
	push 374
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000234
	mov  rax, 0
	call assert_expect
	jmp  .L000235
.L000234:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000235:
	push rax
	pop  rax
// Line 375 (CALL assert_expect ( 375 : 1 :(<= (/  9   3 )  3 ):) )
// Line 375 (<= (/  9   3 )  3 )
// Line 375 (/  9   3 )
// Line 375  9 
	push 9
// Line 375  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 375  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 375  1 
	push 1
// Line 375  375 
	push 375
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000236
	mov  rax, 0
	call assert_expect
	jmp  .L000237
.L000236:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000237:
	push rax
	pop  rax
// Line 376 (CALL assert_expect ( 376 : 0 :(<= (-  20   18 )  3 ):) )
// Line 376 (<= (-  20   18 )  3 )
// Line 376 (-  20   18 )
// Line 376  20 
	push 20
// Line 376  18 
	push 18
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 376  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 376  0 
	push 0
// Line 376  376 
	push 376
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000238
	mov  rax, 0
	call assert_expect
	jmp  .L000239
.L000238:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000239:
	push rax
	pop  rax
// Line 377 (CALL assert_expect ( 377 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) )
// Line 377 (== (+ (* (-  0   5 )  2 )  10 )  0 )
// Line 377 (+ (* (-  0   5 )  2 )  10 )
// Line 377 (* (-  0   5 )  2 )
// Line 377 (-  0   5 )
// Line 377  0 
	push 0
// Line 377  5 
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 377  2 
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 377  10 
	push 10
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 377  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
// Line 377  1 
	push 1
// Line 377  377 
	push 377
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000240
	mov  rax, 0
	call assert_expect
	jmp  .L000241
.L000240:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000241:
	push rax
	pop  rax
// Line 378 (CALL assert_expect ( 378 : 1 :(== (/  6   2 ) (/  9   3 )):) )
// Line 378 (== (/  6   2 ) (/  9   3 ))
// Line 378 (/  6   2 )
// Line 378  6 
	push 6
// Line 378  2 
	push 2
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 378 (/  9   3 )
// Line 378  9 
	push 9
// Line 378  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
// Line 378  1 
	push 1
// Line 378  378 
	push 378
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000242
	mov  rax, 0
	call assert_expect
	jmp  .L000243
.L000242:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000243:
	push rax
	pop  rax
// Line 379 (CALL assert_expect ( 379 : 1 :(< (+  4   1 )  4 ):) )
// Line 379 (< (+  4   1 )  4 )
// Line 379 (+  4   1 )
// Line 379  4 
	push 4
// Line 379  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 379  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 379  1 
	push 1
// Line 379  379 
	push 379
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000244
	mov  rax, 0
	call assert_expect
	jmp  .L000245
.L000244:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000245:
	push rax
	pop  rax
// Line 380 (CALL assert_expect ( 380 : 1 :(> (+  1   4 )  4 ):) )
// Line 380 (> (+  1   4 )  4 )
// Line 380 (+  1   4 )
// Line 380  1 
	push 1
// Line 380  4 
	push 4
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 380  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 380  1 
	push 1
// Line 380  380 
	push 380
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000246
	mov  rax, 0
	call assert_expect
	jmp  .L000247
.L000246:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000247:
	push rax
	pop  rax
// Line 381 (CALL assert_expect ( 381 : 0 :(< (-  4   1 )  4 ):) )
// Line 381 (< (-  4   1 )  4 )
// Line 381 (-  4   1 )
// Line 381  4 
	push 4
// Line 381  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 381  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 381  0 
	push 0
// Line 381  381 
	push 381
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000248
	mov  rax, 0
	call assert_expect
	jmp  .L000249
.L000248:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000249:
	push rax
	pop  rax
// Line 382 (CALL assert_expect ( 382 : 0 :(> (-  1   4 )  4 ):) )
// Line 382 (> (-  1   4 )  4 )
// Line 382 (-  1   4 )
// Line 382  1 
	push 1
// Line 382  4 
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 382  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 382  0 
	push 0
// Line 382  382 
	push 382
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000250
	mov  rax, 0
	call assert_expect
	jmp  .L000251
.L000250:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000251:
	push rax
	pop  rax
// Line 383 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 383  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 384 (CALL assert_expect ( 384 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 384 (&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 384  0 
	push 0
	pop  rax
	cmp  eax, 0
	je   .L000252
// Line 384 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 384 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 384 (++ (LVAR 12)  1 )
// Line 384 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 384  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 384  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000252
	mov  rax, 1
	jmp  .L000253
.L000252:
	mov  rax, 0
.L000253:
	push  rax
// Line 384  0 
	push 0
// Line 384  384 
	push 384
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000254
	mov  rax, 0
	call assert_expect
	jmp  .L000255
.L000254:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000255:
	push rax
	pop  rax
// Line 385 (CALL assert_expect ( 385 : 0 :(LVAR 12):) )
// Line 385 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 385  0 
	push 0
// Line 385  385 
	push 385
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000256
	mov  rax, 0
	call assert_expect
	jmp  .L000257
.L000256:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000257:
	push rax
	pop  rax
// Line 386 (CALL assert_expect ( 386 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 386 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 386  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000258
// Line 386 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 386 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 386 (++ (LVAR 12)  1 )
// Line 386 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 386  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 386  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000258
	mov  rax, 1
	jmp  .L000259
.L000258:
	mov  rax, 0
.L000259:
	push  rax
// Line 386  0 
	push 0
// Line 386  386 
	push 386
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000260
	mov  rax, 0
	call assert_expect
	jmp  .L000261
.L000260:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000261:
	push rax
	pop  rax
// Line 387 (CALL assert_expect ( 387 : 1 :(LVAR 12):) )
// Line 387 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 387  1 
	push 1
// Line 387  387 
	push 387
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000262
	mov  rax, 0
	call assert_expect
	jmp  .L000263
.L000262:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000263:
	push rax
	pop  rax
// Line 388 (CALL assert_expect ( 388 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 388 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 388  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000264
// Line 388 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 388 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 388 (++ (LVAR 12)  1 )
// Line 388 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 388  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 388  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000264
	mov  rax, 1
	jmp  .L000265
.L000264:
	mov  rax, 0
.L000265:
	push  rax
// Line 388  1 
	push 1
// Line 388  388 
	push 388
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000266
	mov  rax, 0
	call assert_expect
	jmp  .L000267
.L000266:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000267:
	push rax
	pop  rax
// Line 389 (CALL assert_expect ( 389 : 2 :(LVAR 12):) )
// Line 389 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 389  2 
	push 2
// Line 389  389 
	push 389
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000268
	mov  rax, 0
	call assert_expect
	jmp  .L000269
.L000268:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000269:
	push rax
	pop  rax
// Line 390 (CALL assert_expect ( 390 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 390 (||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 390  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000270
// Line 390 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 390 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 390 (++ (LVAR 12)  1 )
// Line 390 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 390  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 390  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000270
	mov  rax, 0
	jmp  .L000271
.L000270:
	mov  rax, 1
.L000271:
	push  rax
// Line 390  1 
	push 1
// Line 390  390 
	push 390
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000272
	mov  rax, 0
	call assert_expect
	jmp  .L000273
.L000272:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000273:
	push rax
	pop  rax
// Line 391 (CALL assert_expect ( 391 : 3 :(LVAR 12):) )
// Line 391 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 391  3 
	push 3
// Line 391  391 
	push 391
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000274
	mov  rax, 0
	call assert_expect
	jmp  .L000275
.L000274:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000275:
	push rax
	pop  rax
// Line 392 (CALL assert_expect ( 392 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 392 (||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 392  1 
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000276
// Line 392 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 392 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 392 (++ (LVAR 12)  1 )
// Line 392 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 392  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 392  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000276
	mov  rax, 0
	jmp  .L000277
.L000276:
	mov  rax, 1
.L000277:
	push  rax
// Line 392  1 
	push 1
// Line 392  392 
	push 392
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000278
	mov  rax, 0
	call assert_expect
	jmp  .L000279
.L000278:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000279:
	push rax
	pop  rax
// Line 393 (CALL assert_expect ( 393 : 3 :(LVAR 12):) )
// Line 393 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 393  3 
	push 3
// Line 393  393 
	push 393
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000280
	mov  rax, 0
	call assert_expect
	jmp  .L000281
.L000280:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000281:
	push rax
	pop  rax
// Line 394 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 394  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 395 (CALL assert_expect ( 395 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 395 (||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 395  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000282
// Line 395 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 395 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 395 (++ (LVAR 12)  1 )
// Line 395 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 395  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 395  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000282
	mov  rax, 0
	jmp  .L000283
.L000282:
	mov  rax, 1
.L000283:
	push  rax
// Line 395  0 
	push 0
// Line 395  395 
	push 395
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000284
	mov  rax, 0
	call assert_expect
	jmp  .L000285
.L000284:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000285:
	push rax
	pop  rax
// Line 396 (CALL assert_expect ( 396 : 1 :(LVAR 12):) )
// Line 396 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 396  1 
	push 1
// Line 396  396 
	push 396
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000286
	mov  rax, 0
	call assert_expect
	jmp  .L000287
.L000286:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000287:
	push rax
	pop  rax
// Line 397 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 397  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 398 (CALL assert_expect ( 398 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) )
// Line 398 (||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )))
// Line 398  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000288
// Line 398 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 398  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000290
// Line 398 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 398 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 398 (++ (LVAR 12)  1 )
// Line 398 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 398  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 398  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000290
	mov  rax, 1
	jmp  .L000291
.L000290:
	mov  rax, 0
.L000291:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000288
	mov  rax, 0
	jmp  .L000289
.L000288:
	mov  rax, 1
.L000289:
	push  rax
// Line 398  0 
	push 0
// Line 398  398 
	push 398
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000292
	mov  rax, 0
	call assert_expect
	jmp  .L000293
.L000292:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000293:
	push rax
	pop  rax
// Line 399 (CALL assert_expect ( 399 : 1 :(LVAR 12):) )
// Line 399 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 399  1 
	push 1
// Line 399  399 
	push 399
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000294
	mov  rax, 0
	call assert_expect
	jmp  .L000295
.L000294:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000295:
	push rax
	pop  rax
// Line 400 (CALL assert_expect ( 400 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 400 (|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 400 (&&  1   1 )
// Line 400  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000298
// Line 400  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000298
	mov  rax, 1
	jmp  .L000299
.L000298:
	mov  rax, 0
.L000299:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000296
// Line 400 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 400 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 400 (++ (LVAR 12)  1 )
// Line 400 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 400  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 400  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000296
	mov  rax, 0
	jmp  .L000297
.L000296:
	mov  rax, 1
.L000297:
	push  rax
// Line 400  1 
	push 1
// Line 400  400 
	push 400
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000300
	mov  rax, 0
	call assert_expect
	jmp  .L000301
.L000300:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000301:
	push rax
	pop  rax
// Line 401 (CALL assert_expect ( 401 : 1 :(LVAR 12):) )
// Line 401 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 401  1 
	push 1
// Line 401  401 
	push 401
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000302
	mov  rax, 0
	call assert_expect
	jmp  .L000303
.L000302:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000303:
	push rax
	pop  rax
// Line 402 (CALL assert_expect ( 402 : 1 :(!  0 ):) )
// Line 402 (!  0 )
// Line 402  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000304
	mov  rax, 1
	jmp  .L000305
.L000304:
	mov  rax, 0
.L000305:
	push rax
// Line 402  1 
	push 1
// Line 402  402 
	push 402
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000306
	mov  rax, 0
	call assert_expect
	jmp  .L000307
.L000306:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000307:
	push rax
	pop  rax
// Line 403 (CALL assert_expect ( 403 : 0 :(!  1 ):) )
// Line 403 (!  1 )
// Line 403  1 
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000308
	mov  rax, 1
	jmp  .L000309
.L000308:
	mov  rax, 0
.L000309:
	push rax
// Line 403  0 
	push 0
// Line 403  403 
	push 403
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000310
	mov  rax, 0
	call assert_expect
	jmp  .L000311
.L000310:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000311:
	push rax
	pop  rax
// Line 404 (CALL assert_expect ( 404 : 0 :(! (! (!  1 ))):) )
// Line 404 (! (! (!  1 )))
// Line 404 (! (!  1 ))
// Line 404 (!  1 )
// Line 404  1 
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000316
	mov  rax, 1
	jmp  .L000317
.L000316:
	mov  rax, 0
.L000317:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000314
	mov  rax, 1
	jmp  .L000315
.L000314:
	mov  rax, 0
.L000315:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000312
	mov  rax, 1
	jmp  .L000313
.L000312:
	mov  rax, 0
.L000313:
	push rax
// Line 404  0 
	push 0
// Line 404  404 
	push 404
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000318
	mov  rax, 0
	call assert_expect
	jmp  .L000319
.L000318:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000319:
	push rax
	pop  rax
// Line 408 (= (LVAR 16)  10 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 408  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 409 (CALL assert_expect ( 409 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) )
// Line 409 (= (LVAR 16) (+= (LVAR 16)  5 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 409 (+= (LVAR 16)  5 )
// Line 409 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 409  5 
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 409  15 
	push 15
// Line 409  409 
	push 409
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000320
	mov  rax, 0
	call assert_expect
	jmp  .L000321
.L000320:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000321:
	push rax
	pop  rax
// Line 410 (CALL assert_expect ( 410 : 15 :(LVAR 16):) )
// Line 410 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 410  15 
	push 15
// Line 410  410 
	push 410
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000322
	mov  rax, 0
	call assert_expect
	jmp  .L000323
.L000322:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000323:
	push rax
	pop  rax
// Line 411 (CALL assert_expect ( 411 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) )
// Line 411 (= (LVAR 16) (-= (LVAR 16)  7 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 411 (-= (LVAR 16)  7 )
// Line 411 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 411  7 
	push 7
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 411  8 
	push 8
// Line 411  411 
	push 411
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000324
	mov  rax, 0
	call assert_expect
	jmp  .L000325
.L000324:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000325:
	push rax
	pop  rax
// Line 412 (CALL assert_expect ( 412 : 8 :(LVAR 16):) )
// Line 412 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 412  8 
	push 8
// Line 412  412 
	push 412
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000326
	mov  rax, 0
	call assert_expect
	jmp  .L000327
.L000326:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000327:
	push rax
	pop  rax
// Line 413 (CALL assert_expect ( 413 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) )
// Line 413 (= (LVAR 16) (*= (LVAR 16)  5 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 413 (*= (LVAR 16)  5 )
// Line 413 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 413  5 
	push 5
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 413  40 
	push 40
// Line 413  413 
	push 413
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000328
	mov  rax, 0
	call assert_expect
	jmp  .L000329
.L000328:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000329:
	push rax
	pop  rax
// Line 414 (CALL assert_expect ( 414 : 40 :(LVAR 16):) )
// Line 414 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 414  40 
	push 40
// Line 414  414 
	push 414
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000330
	mov  rax, 0
	call assert_expect
	jmp  .L000331
.L000330:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000331:
	push rax
	pop  rax
// Line 415 (CALL assert_expect ( 415 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) )
// Line 415 (= (LVAR 16) (/= (LVAR 16)  10 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 415 (/= (LVAR 16)  10 )
// Line 415 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 415  10 
	push 10
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 415  4 
	push 4
// Line 415  415 
	push 415
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000332
	mov  rax, 0
	call assert_expect
	jmp  .L000333
.L000332:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000333:
	push rax
	pop  rax
// Line 416 (CALL assert_expect ( 416 : 4 :(LVAR 16):) )
// Line 416 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 416  4 
	push 4
// Line 416  416 
	push 416
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000334
	mov  rax, 0
	call assert_expect
	jmp  .L000335
.L000334:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000335:
	push rax
	pop  rax
// Line 419 (CALL assert_expect ( 419 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) )
// Line 419 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 419 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 419 (++ (LVAR 16)  1 )
// Line 419 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 419  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 419  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 419  4 
	push 4
// Line 419  419 
	push 419
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000336
	mov  rax, 0
	call assert_expect
	jmp  .L000337
.L000336:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000337:
	push rax
	pop  rax
// Line 420 (CALL assert_expect ( 420 : 5 :(LVAR 16):) )
// Line 420 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 420  5 
	push 5
// Line 420  420 
	push 420
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000338
	mov  rax, 0
	call assert_expect
	jmp  .L000339
.L000338:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000339:
	push rax
	pop  rax
// Line 421 (CALL assert_expect ( 421 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) )
// Line 421 (-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 )
// Line 421 (= (LVAR 16) (-- (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 421 (-- (LVAR 16)  1 )
// Line 421 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 421  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 421  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 421  5 
	push 5
// Line 421  421 
	push 421
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000340
	mov  rax, 0
	call assert_expect
	jmp  .L000341
.L000340:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000341:
	push rax
	pop  rax
// Line 422 (CALL assert_expect ( 422 : 4 :(LVAR 16):) )
// Line 422 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 422  4 
	push 4
// Line 422  422 
	push 422
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000342
	mov  rax, 0
	call assert_expect
	jmp  .L000343
.L000342:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000343:
	push rax
	pop  rax
// Line 426 (= (LVAR 20) (/  100  (LVAR 16)))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 426 (/  100  (LVAR 16))
// Line 426  100 
	push 100
// Line 426 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 427 (CALL assert_expect ( 427 : 25 :(LVAR 20):) )
// Line 427 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 427  25 
	push 25
// Line 427  427 
	push 427
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000344
	mov  rax, 0
	call assert_expect
	jmp  .L000345
.L000344:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000345:
	push rax
	pop  rax
// Line 430 (= (LVAR 24)  77 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 430  77 
	push 77
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 435 (IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 ))
// Line 431 (== (LVAR 24)  77 )
// Line 431 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 431  77 
	push 77
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000346
// Line 432 (= (LVAR 24)  55 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 432  55 
	push 55
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000347
.L000346:
// Line 434 (= (LVAR 24)  66 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 434  66 
	push 66
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000347:
// Line 435 (CALL assert_expect ( 435 : 55 :(LVAR 24):) )
// Line 435 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 435  55 
	push 55
// Line 435  435 
	push 435
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000348
	mov  rax, 0
	call assert_expect
	jmp  .L000349
.L000348:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000349:
	push rax
	pop  rax
// Line 436 (CALL assert_expect ( 436 : 1346269 :(CALL fibo ( 30 :) ):) )
// Line 436 (CALL fibo ( 30 :) )
// Line 436  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000350
	mov  rax, 0
	call fibo
	jmp  .L000351
.L000350:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000351:
	push rax
// Line 436  1346269 
	push 1346269
// Line 436  436 
	push 436
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000352
	mov  rax, 0
	call assert_expect
	jmp  .L000353
.L000352:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000353:
	push rax
	pop  rax
// Line 437 (CALL array_global () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000354
	mov  rax, 0
	call array_global
	jmp  .L000355
.L000354:
	sub  rsp, 8
	mov  rax, 0
	call array_global
	add  rsp, 8
.L000355:
	push rax
	pop  rax
// Line 438 (CALL array_local () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000356
	mov  rax, 0
	call array_local
	jmp  .L000357
.L000356:
	sub  rsp, 8
	mov  rax, 0
	call array_local
	add  rsp, 8
.L000357:
	push rax
	pop  rax
// Line 439 (CALL string () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000358
	mov  rax, 0
	call string
	jmp  .L000359
.L000358:
	sub  rsp, 8
	mov  rax, 0
	call string
	add  rsp, 8
.L000359:
	push rax
	pop  rax
// Line 440 (CALL block_scope () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000360
	mov  rax, 0
	call block_scope
	jmp  .L000361
.L000360:
	sub  rsp, 8
	mov  rax, 0
	call block_scope
	add  rsp, 8
.L000361:
	push rax
	pop  rax
// Line 441 (CALL for_ () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000362
	mov  rax, 0
	call for_
	jmp  .L000363
.L000362:
	sub  rsp, 8
	mov  rax, 0
	call for_
	add  rsp, 8
.L000363:
	push rax
	pop  rax
// Line 442 (CALL list_ () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000364
	mov  rax, 0
	call list_
	jmp  .L000365
.L000364:
	sub  rsp, 8
	mov  rax, 0
	call list_
	add  rsp, 8
.L000365:
	push rax
	pop  rax
// Line 443 (CALL struct_ () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000366
	mov  rax, 0
	call struct_
	jmp  .L000367
.L000366:
	sub  rsp, 8
	mov  rax, 0
	call struct_
	add  rsp, 8
.L000367:
	push rax
	pop  rax
// Line 449 (CALL assert_expect ( 449 : 11 :(CALL switch_ ( 1 :) ):) )
// Line 449 (CALL switch_ ( 1 :) )
// Line 449  1 
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000368
	mov  rax, 0
	call switch_
	jmp  .L000369
.L000368:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000369:
	push rax
// Line 449  11 
	push 11
// Line 449  449 
	push 449
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000370
	mov  rax, 0
	call assert_expect
	jmp  .L000371
.L000370:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000371:
	push rax
	pop  rax
// Line 450 (CALL assert_expect ( 450 : 13 :(CALL switch_ ( 2 :) ):) )
// Line 450 (CALL switch_ ( 2 :) )
// Line 450  2 
	push 2
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000372
	mov  rax, 0
	call switch_
	jmp  .L000373
.L000372:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000373:
	push rax
// Line 450  13 
	push 13
// Line 450  450 
	push 450
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000374
	mov  rax, 0
	call assert_expect
	jmp  .L000375
.L000374:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000375:
	push rax
	pop  rax
// Line 451 (CALL assert_expect ( 451 : 13 :(CALL switch_ ( 3 :) ):) )
// Line 451 (CALL switch_ ( 3 :) )
// Line 451  3 
	push 3
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000376
	mov  rax, 0
	call switch_
	jmp  .L000377
.L000376:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000377:
	push rax
// Line 451  13 
	push 13
// Line 451  451 
	push 451
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000378
	mov  rax, 0
	call assert_expect
	jmp  .L000379
.L000378:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000379:
	push rax
	pop  rax
// Line 452 (CALL assert_expect ( 452 : 13 :(CALL switch_ ( 4 :) ):) )
// Line 452 (CALL switch_ ( 4 :) )
// Line 452  4 
	push 4
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000380
	mov  rax, 0
	call switch_
	jmp  .L000381
.L000380:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000381:
	push rax
// Line 452  13 
	push 13
// Line 452  452 
	push 452
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000382
	mov  rax, 0
	call assert_expect
	jmp  .L000383
.L000382:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000383:
	push rax
	pop  rax
// Line 453 (CALL assert_expect ( 453 : 15 :(CALL switch_ ( 5 :) ):) )
// Line 453 (CALL switch_ ( 5 :) )
// Line 453  5 
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000384
	mov  rax, 0
	call switch_
	jmp  .L000385
.L000384:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000385:
	push rax
// Line 453  15 
	push 15
// Line 453  453 
	push 453
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000386
	mov  rax, 0
	call assert_expect
	jmp  .L000387
.L000386:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000387:
	push rax
	pop  rax
// Line 454 (CALL assert_expect ( 454 : 15 :(CALL switch_ ( 6 :) ):) )
// Line 454 (CALL switch_ ( 6 :) )
// Line 454  6 
	push 6
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000388
	mov  rax, 0
	call switch_
	jmp  .L000389
.L000388:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000389:
	push rax
// Line 454  15 
	push 15
// Line 454  454 
	push 454
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000390
	mov  rax, 0
	call assert_expect
	jmp  .L000391
.L000390:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000391:
	push rax
	pop  rax
// Line 457 (CALL assert_expect ( 457 : 11 :(CALL switch2_ ( 97 :) ):) )
// Line 457 (CALL switch2_ ( 97 :) )
// Line 457  97 
	push 97
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000392
	mov  rax, 0
	call switch2_
	jmp  .L000393
.L000392:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000393:
	push rax
// Line 457  11 
	push 11
// Line 457  457 
	push 457
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000394
	mov  rax, 0
	call assert_expect
	jmp  .L000395
.L000394:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000395:
	push rax
	pop  rax
// Line 458 (CALL assert_expect ( 458 : 12 :(CALL switch2_ ( 98 :) ):) )
// Line 458 (CALL switch2_ ( 98 :) )
// Line 458  98 
	push 98
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000396
	mov  rax, 0
	call switch2_
	jmp  .L000397
.L000396:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000397:
	push rax
// Line 458  12 
	push 12
// Line 458  458 
	push 458
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000398
	mov  rax, 0
	call assert_expect
	jmp  .L000399
.L000398:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000399:
	push rax
	pop  rax
// Line 459 (CALL assert_expect ( 459 : 12 :(CALL switch2_ ( 99 :) ):) )
// Line 459 (CALL switch2_ ( 99 :) )
// Line 459  99 
	push 99
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000400
	mov  rax, 0
	call switch2_
	jmp  .L000401
.L000400:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000401:
	push rax
// Line 459  12 
	push 12
// Line 459  459 
	push 459
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000402
	mov  rax, 0
	call assert_expect
	jmp  .L000403
.L000402:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000403:
	push rax
	pop  rax
// Line 460 (CALL assert_expect ( 460 : 15 :(CALL switch2_ ( 122 :) ):) )
// Line 460 (CALL switch2_ ( 122 :) )
// Line 460  122 
	push 122
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000404
	mov  rax, 0
	call switch2_
	jmp  .L000405
.L000404:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000405:
	push rax
// Line 460  15 
	push 15
// Line 460  460 
	push 460
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000406
	mov  rax, 0
	call assert_expect
	jmp  .L000407
.L000406:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000407:
	push rax
	pop  rax
// Line 463 (CALL assert_expect ( 463 : 92 :(CALL q8 () ):) )
// Line 463 (CALL q8 () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000408
	mov  rax, 0
	call q8
	jmp  .L000409
.L000408:
	sub  rsp, 8
	mov  rax, 0
	call q8
	add  rsp, 8
.L000409:
	push rax
// Line 463  92 
	push 92
// Line 463  463 
	push 463
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000410
	mov  rax, 0
	call assert_expect
	jmp  .L000411
.L000410:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000411:
	push rax
	pop  rax
// Line 466 (CALL assert_expect ( 466 : 0 : 0 :) )
// Line 466  0 
	push 0
// Line 466  0 
	push 0
// Line 466  466 
	push 466
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000412
	mov  rax, 0
	call assert_expect
	jmp  .L000413
.L000412:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000413:
	push rax
	pop  rax
// Line 467 (CALL assert_expect ( 467 : 1 : 1 :) )
// Line 467  1 
	push 1
// Line 467  1 
	push 1
// Line 467  467 
	push 467
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000414
	mov  rax, 0
	call assert_expect
	jmp  .L000415
.L000414:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000415:
	push rax
	pop  rax
// Line 468 (CALL assert_expect ( 468 : 2 : 2 :) )
// Line 468  2 
	push 2
// Line 468  2 
	push 2
// Line 468  468 
	push 468
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000416
	mov  rax, 0
	call assert_expect
	jmp  .L000417
.L000416:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000417:
	push rax
	pop  rax
// Line 469 (CALL assert_expect ( 469 : 3 : 3 :) )
// Line 469  3 
	push 3
// Line 469  3 
	push 3
// Line 469  469 
	push 469
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000418
	mov  rax, 0
	call assert_expect
	jmp  .L000419
.L000418:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000419:
	push rax
	pop  rax
// Line 471 (CALL assert_expect ( 471 : 15 :(|  13   7 ):) )
// Line 471 (|  13   7 )
// Line 471  13 
	push 13
// Line 471  7 
	push 7
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 471  15 
	push 15
// Line 471  471 
	push 471
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000420
	mov  rax, 0
	call assert_expect
	jmp  .L000421
.L000420:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000421:
	push rax
	pop  rax
// Line 472 (CALL assert_expect ( 472 : 5115 :(|  938   5073 ):) )
// Line 472 (|  938   5073 )
// Line 472  938 
	push 938
// Line 472  5073 
	push 5073
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 472  5115 
	push 5115
// Line 472  472 
	push 472
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000422
	mov  rax, 0
	call assert_expect
	jmp  .L000423
.L000422:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000423:
	push rax
	pop  rax
// Line 473 (CALL assert_expect ( 473 : 5 :(&  13   7 ):) )
// Line 473 (&  13   7 )
// Line 473  13 
	push 13
// Line 473  7 
	push 7
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 473  5 
	push 5
// Line 473  473 
	push 473
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000424
	mov  rax, 0
	call assert_expect
	jmp  .L000425
.L000424:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000425:
	push rax
	pop  rax
// Line 474 (CALL assert_expect ( 474 : 896 :(&  938   5073 ):) )
// Line 474 (&  938   5073 )
// Line 474  938 
	push 938
// Line 474  5073 
	push 5073
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 474  896 
	push 896
// Line 474  474 
	push 474
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000426
	mov  rax, 0
	call assert_expect
	jmp  .L000427
.L000426:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000427:
	push rax
	pop  rax
// Line 475 (CALL assert_expect ( 475 : 10 :(^  13   7 ):) )
// Line 475 (^  13   7 )
// Line 475  13 
	push 13
// Line 475  7 
	push 7
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 475  10 
	push 10
// Line 475  475 
	push 475
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000428
	mov  rax, 0
	call assert_expect
	jmp  .L000429
.L000428:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000429:
	push rax
	pop  rax
// Line 476 (CALL assert_expect ( 476 : 4219 :(^  938   5073 ):) )
// Line 476 (^  938   5073 )
// Line 476  938 
	push 938
// Line 476  5073 
	push 5073
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 476  4219 
	push 4219
// Line 476  476 
	push 476
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000430
	mov  rax, 0
	call assert_expect
	jmp  .L000431
.L000430:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000431:
	push rax
	pop  rax
// Line 478 (CALL assert_expect ( 478 : 29 :(>>  938   5 ):) )
// Line 478 (>>  938   5 )
// Line 478  938 
	push 938
// Line 478  5 
	push 5
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 478  29 
	push 29
// Line 478  478 
	push 478
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000432
	mov  rax, 0
	call assert_expect
	jmp  .L000433
.L000432:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000433:
	push rax
	pop  rax
// Line 479 (CALL assert_expect ( 479 : 1664 :(<<  13   7 ):) )
// Line 479 (<<  13   7 )
// Line 479  13 
	push 13
// Line 479  7 
	push 7
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 479  1664 
	push 1664
// Line 479  479 
	push 479
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000434
	mov  rax, 0
	call assert_expect
	jmp  .L000435
.L000434:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000435:
	push rax
	pop  rax
// Line 481 (CALL printf_ ((ADDR  "passed tests.\n" ):) )
// Line 481 (ADDR  "passed tests.\n" )
	lea  rax, .LS000029[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000436
	mov  rax, 0
	call printf_
	jmp  .L000437
.L000436:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000437:
	push rax
	pop  rax
// Line 482 (RETURN  0 )
// Line 482  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret

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
// [assert_expect][(]<__LINE__>[,][11][,][3][(][3][,][8][)][)][;]
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


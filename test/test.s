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
// <typedef><struct>[Leaf][Leaf][;]
// <struct>[Leaf][{]<struct>[Vec][{]<int>[row][;]
// <int>[col][;]
// [}][ary][[][17][]][;]
// <int>[size][;]
// <char>[ch][;]
// [}][leaf_global][;]
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
// <char>[str_ary][[][]][=]"Hey, girls.\n""Are you angry?"[;]
// <char>[quick][[][15][]][=]"QuickBrownFox"[;]
// <int>[ary_int][[][5][]][=][{][1][,][2][,][3][,][4][,][5][}][;]
// <char>[reg][[][4][]][[][5][]][[][4][]][=][{][{]"rdi"[,]"rsi"[,]"rdx"[,]"rcx"[,]"r8"[}][,][{]"edi"[,]"esi"[,]"edx"[,]"ecx"[,]"r8d"[}][,][{]"di"[,]"si"[,]"dx"[,]"cx"[,]"r8w"[}][,][{]"dil"[,]"sil"[,]"dl"[,]"cl"[,]"r8b"[}][}][;]
// <typedef><struct>[{]<int>[a][;]
// <bool>[b][;]
// <void>[*][c][;]
// [}][struct1][;]
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
// <char>[str_ary9][[][]][=]"\tHello---""world,\tagain\n"[;]
// [printf_][(][str_ary9][)][;]
// [assert_expect][(]<__LINE__>[,][9][,][str_ary9][[][15][]][)][;]
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
// [}]<void>[struct_][(][)][{][Leaf][leaf][;]
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
// <struct>[Leaf][l1][;]
// <struct>[Leaf][l2][;]
// [l1][.][size][=][100][;]
// [l2][.][size][=][500][;]
// [l2][=][l1][;]
// [leaf_global][.][size][=][700][;]
// [assert_expect][(]<__LINE__>[,][100][,][l2][.][size][)][;]
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
// [assert_expect][(]<__LINE__>[,][70][,][(][10][*][(][2][+][5][)][)][)][;]
// [printf_][(][str_ary][)][;]
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
// [assert_expect][(]<__LINE__>[,][256][,][1][<<][8][)][;]
// [assert_expect][(]<__LINE__>[,][32][,][512][>>][4][)][;]
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
//    (BLOCK(= (LVAR 324)  0 ):(= (LVAR 328)  0 ):(WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)):(CALL assert_expect ( 47 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) ):(CALL assert_expect ( 48 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) ):(CALL assert_expect ( 49 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) ):(RETURN  0 ):))
//    j  offset:328  int 
//    i  offset:324  int 
//    a  offset:320  [10] [8] int 

// FDECL array_global func ( ) int 
//    
//    (BLOCK(FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 75 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )):(CALL assert_expect ( 76 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 77 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 88 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 89 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 90 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
//    i  offset:4  int 

// FDECL string func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (ADDR  "Hello world!\n" )):(CALL printf_ ((LVAR 8):) ):(= (LVAR 31)  "\tHello---" ):(CALL printf_ ((ADDR (LVAR 31)):) ):(CALL assert_expect ( 101 : 9 :(DEREF (] (ADDR (LVAR 31))  15 )):) ):(CALL assert_expect ( 103 : 119 : 119 :) ):(CALL assert_expect ( 104 : 119 :(DEREF (] (LVAR 8)  6 )):) ):))
//    str_ary9  offset:31  [23] char 
//    str  offset:8  * char 

// FDECL block_scope func ( ) void 
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 109 : 1 :(GVAR i):) ):(= (LVAR 4)  5 ):(CALL assert_expect ( 111 : 5 :(LVAR 4):) ):(BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 118 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 120 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 122 : 2 :(LVAR 8):) ):):(CALL assert_expect ( 124 : 5 :(LVAR 4):) ):))
//    i  offset:16  int 
//    i  offset:12  int 
//    i  offset:8  int 
//    i  offset:4  int 

// FDECL for_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  100 ):(CALL assert_expect ( 129 : 100 :(LVAR 4):) ):(FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 132 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 134 : 9 :(LVAR 12):) ):)):(CALL assert_expect ( 136 : 100 :(LVAR 4):) ):(= (LVAR 4)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)):(CALL assert_expect ( 142 : 6 :(LVAR 4):) ):))
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
//    (BLOCK(= (LVAR 4)  16 ):(= (LVAR 12)  0 ):(FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)):(CALL assert_expect ( 216 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 218 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 220 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 222 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 224 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 226 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 229 : 777 :(MEMBER (GVAR def) payload 0):) ):))
//    new  offset:24  * struct <List> 
//    i  offset:16  int 
//    cursor  offset:12  * struct <List> 
//    size  offset:4  int 

// FDECL struct_ func ( ) void 
//    
//    (BLOCK(CALL assert_expect ( 252 : 32 : 32 :) ):(CALL assert_expect ( 253 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 258 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 259 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 261 : 4 : 4 :) ):(CALL assert_expect ( 262 : 4 : 4 :) ):(= (LVAR 336) (ADDR (LVAR 328))):(= (MEMBER (LVAR 328) size 136)  10 ):(= (MEMBER (LVAR 328) ch 140)  5 ):(= (MEMBER (LVAR 480) size 136)  195 ):(= (MEMBER (LVAR 480) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 273 : 10 :(MEMBER (LVAR 328) size 136):) ):(CALL assert_expect ( 274 : 5 :(MEMBER (LVAR 328) ch 140):) ):(= (MEMBER (LVAR 328) size 136)  110 ):(= (MEMBER (LVAR 328) ch 140)  79 ):(CALL assert_expect ( 277 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 278 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 279 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 280 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 281 : 195 :(MEMBER (LVAR 480) size 136):) ):(CALL assert_expect ( 282 : 39 :(MEMBER (LVAR 480) ch 140):) ):(CALL assert_expect ( 283 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 284 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480))):(= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328))):(CALL assert_expect ( 288 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) ):(= (MEMBER (LVAR 640) size 136)  100 ):(= (MEMBER (LVAR 784) size 136)  500 ):(= (LVAR 784) (LVAR 640)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ( 296 : 100 :(MEMBER (LVAR 784) size 136):) ):))
//    l2  offset:784  struct <Leaf> 
//    l1  offset:640  struct <Leaf> 
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
//    (BLOCK(= (LVAR 8) (CAST * void   0 )):(CALL assert_expect ( 364 : 1 : 1 :) ):(CALL assert_expect ( 365 : 0 : 0 :) ):(CALL assert_expect ( 366 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 368 : 70 :(*  10  (+  2   5 )):) ):(CALL printf_ ((ADDR (GVAR str_ary)):) ):(CALL assert_expect ( 371 : 1979 :(GVAR i):) ):(CALL assert_expect ( 372 : 2015 :(GVAR j):) ):(CALL assert_expect ( 373 : 14 :(GVAR s):) ):(CALL assert_expect ( 375 : 9 : 9 :) ):(CALL assert_expect ( 376 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 377 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 378 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 379 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 380 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 381 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 382 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 383 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 384 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 385 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 386 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 387 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 388 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 389 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 390 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 391 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 392 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 393 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 394 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 395 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 396 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 398 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 399 : 0 :(LVAR 12):) ):(CALL assert_expect ( 400 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 401 : 1 :(LVAR 12):) ):(CALL assert_expect ( 402 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 403 : 2 :(LVAR 12):) ):(CALL assert_expect ( 404 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 405 : 3 :(LVAR 12):) ):(CALL assert_expect ( 406 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 407 : 3 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 409 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 410 : 1 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 412 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) ):(CALL assert_expect ( 413 : 1 :(LVAR 12):) ):(CALL assert_expect ( 414 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 415 : 1 :(LVAR 12):) ):(CALL assert_expect ( 416 : 1 :(!  0 ):) ):(CALL assert_expect ( 417 : 0 :(!  1 ):) ):(CALL assert_expect ( 418 : 0 :(! (! (!  1 ))):) ):(CALL assert_expect ( 420 : 256 :(<<  1   8 ):) ):(CALL assert_expect ( 421 : 32 :(>>  512   4 ):) ):(= (LVAR 16)  10 ):(CALL assert_expect ( 426 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) ):(CALL assert_expect ( 427 : 15 :(LVAR 16):) ):(CALL assert_expect ( 428 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) ):(CALL assert_expect ( 429 : 8 :(LVAR 16):) ):(CALL assert_expect ( 430 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) ):(CALL assert_expect ( 431 : 40 :(LVAR 16):) ):(CALL assert_expect ( 432 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) ):(CALL assert_expect ( 433 : 4 :(LVAR 16):) ):(CALL assert_expect ( 436 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 437 : 5 :(LVAR 16):) ):(CALL assert_expect ( 438 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 439 : 4 :(LVAR 16):) ):(= (LVAR 20) (/  100  (LVAR 16))):(CALL assert_expect ( 444 : 25 :(LVAR 20):) ):(= (LVAR 24)  77 ):(IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 )):(CALL assert_expect ( 452 : 55 :(LVAR 24):) ):(CALL assert_expect ( 453 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 466 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 467 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 468 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 469 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 470 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 471 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 474 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 475 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 476 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 477 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 480 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 483 : 0 : 0 :) ):(CALL assert_expect ( 484 : 1 : 1 :) ):(CALL assert_expect ( 485 : 2 : 2 :) ):(CALL assert_expect ( 486 : 3 : 3 :) ):(CALL assert_expect ( 488 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 489 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 490 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 491 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 492 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 493 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 495 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 496 : 1664 :(<<  13   7 ):) ):(CALL printf_ ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
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
// str_ary [27] char  "Hey, girls.\n" 
// str * char  "Hi, guys.\tAre you hungry" 
// s char  270 
// j int  2015 
// i int  1979 
// a [10] [8] int NULL 
// leaf_global struct <Leaf> NULL 
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
// __builtin_va_start func ( ) void 
// Strings
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
// "\tHello---world,\tagain\n"
// "Q "
// ". "
// "\n"
// "\n\n"
// "passed tests.\n"

// Tagnames
// S1 struct { char <a:0>, struct <S2> <b:4>, int <c:12>, char <d:16>, * int <e:24>}
// S2 struct { int <x:0>, char <y:4>}
// Tree struct { * struct <Leaf> <left:0>, * struct <Leaf> <right:8>}
// Number enum { enum_el <ZERO:0> , enum_el <ONE:1> , enum_el <TWO:2> , enum_el <THREE:3> }
// THREE enum_el { 3 }
// TWO enum_el { 2 }
// ONE enum_el { 1 }
// ZERO enum_el { 0 }
// Pos struct { int <row:0>, int <col:4>}
// List struct { * struct <List> <next:0>, int <payloads:8>}
// Vec struct { int <row:0>, int <col:4>}
// Leaf struct { [17] struct <Vec> <ary:0>, int <size:136>, char <ch:140>}

// Typedef
// Pos struct <Pos> 
// List struct <List> 
// struct1 struct <> { int <a:0>, bool <b:4>, * void <c:8>}
// Leaf struct <Leaf> 

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
	.global leaf_global
leaf_global:
	.zero 144
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
	.string "\tHello---world,\tagain\n"
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
// Line 30 FDECL fibo func ( int  x ) int 
//    (LVAR 4) 
//    (BLOCK(IF (<  2  (LVAR 4)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))):))
fibo:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 32 (IF (<  2  (LVAR 4)) (RETURN  1 ) NULL )
// Line 31 (<  2  (LVAR 4))
// Line 31  2 
	push 2
// Line 31 (LVAR 4)
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
// Line 31 (RETURN  1 )
// Line 31  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000001
.L000000:
.L000001:
// Line 32 (RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) )))
// Line 32 (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))
// Line 32 (CALL fibo ((- (LVAR 4)  1 ):) )
// Line 32 (- (LVAR 4)  1 )
// Line 32 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 32  1 
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
// Line 32 (CALL fibo ((- (LVAR 4)  2 ):) )
// Line 32 (- (LVAR 4)  2 )
// Line 32 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 32  2 
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
// Line 35 FDECL array_local func ( ) int 
//    
//    (BLOCK(= (LVAR 324)  0 ):(= (LVAR 328)  0 ):(WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)):(CALL assert_expect ( 47 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) ):(CALL assert_expect ( 48 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) ):(CALL assert_expect ( 49 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) ):(RETURN  0 ):))
array_local:
	push rbp
	mov  rbp, rsp
	sub  rsp, 336
// Line 37 (= (LVAR 324)  0 )
	mov  rax, rbp
	sub  rax, 324
	push rax
// Line 37  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 38 (= (LVAR 328)  0 )
	mov  rax, rbp
	sub  rax, 328
	push rax
// Line 38  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 47 (WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):))
.L000006:
// Line 39 (<=  9  (LVAR 324))
// Line 39  9 
	push 9
// Line 39 (LVAR 324)
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
// Line 47 (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)
// Line 40 (= (LVAR 328)  0 )
	mov  rax, rbp
	sub  rax, 328
	push rax
// Line 40  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 45 (WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):))
.L000008:
// Line 41 (<=  7  (LVAR 328))
// Line 41  7 
	push 7
// Line 41 (LVAR 328)
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
// Line 45 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)
// Line 42 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328)))
// Line 42 (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))
// Line 42 (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324))))
// Line 42 (] (ADDR (LVAR 320)) (LVAR 324))
// Line 42 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 42 (LVAR 324)
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
// Line 42 (LVAR 328)
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
// Line 42 (+ (* (LVAR 324)  10 ) (LVAR 328))
// Line 42 (* (LVAR 324)  10 )
// Line 42 (LVAR 324)
	mov  rax, rbp
	sub  rax, 324
	mov  eax, [rax]
	push rax
// Line 42  10 
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 42 (LVAR 328)
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
// Line 43 (++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 )
// Line 43 (= (LVAR 328) (++ (LVAR 328)  1 ))
	mov  rax, rbp
	sub  rax, 328
	push rax
// Line 43 (++ (LVAR 328)  1 )
// Line 43 (LVAR 328)
	mov  rax, rbp
	sub  rax, 328
	mov  eax, [rax]
	push rax
// Line 43  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 43  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000008
.L000009:
// Line 45 (= (LVAR 324) (+= (LVAR 324)  1 ))
	mov  rax, rbp
	sub  rax, 324
	push rax
// Line 45 (+= (LVAR 324)  1 )
// Line 45 (LVAR 324)
	mov  rax, rbp
	sub  rax, 324
	mov  eax, [rax]
	push rax
// Line 45  1 
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
// Line 47 (CALL assert_expect ( 47 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) )
// Line 47 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 ))
// Line 47 (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )
// Line 47 (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))
// Line 47 (] (ADDR (LVAR 320))  0 )
// Line 47 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 47  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 47  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 47  1 
	push 1
// Line 47  47 
	push 47
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
// Line 48 (CALL assert_expect ( 48 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) )
// Line 48 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 ))
// Line 48 (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )
// Line 48 (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))
// Line 48 (] (ADDR (LVAR 320))  9 )
// Line 48 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 48  9 
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 48  7 
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 48  97 
	push 97
// Line 48  48 
	push 48
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
// Line 49 (CALL assert_expect ( 49 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) )
// Line 49 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 ))
// Line 49 (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )
// Line 49 (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))
// Line 49 (] (ADDR (LVAR 320))  8 )
// Line 49 (ADDR (LVAR 320))
	mov  rax, rbp
	sub  rax, 320
	push rax
// Line 49  8 
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 49  4 
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 49  84 
	push 84
// Line 49  49 
	push 49
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
// Line 50 (RETURN  0 )
// Line 50  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global array_global
// Line 74 FDECL array_global func ( ) int 
//    
//    (BLOCK(FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 75 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )):(CALL assert_expect ( 76 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 77 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 88 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 89 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 90 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
array_global:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 75 (FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 75 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) ))
// Line 75 (= (LVAR 4)  0 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 75  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000018:
// Line 75 (<  5  (LVAR 4))
// Line 75  5 
	push 5
// Line 75 (LVAR 4)
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
// Line 75 (CALL assert_expect ( 75 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )
// Line 75 (DEREF (] (ADDR (GVAR ary_int)) (LVAR 4)))
// Line 75 (] (ADDR (GVAR ary_int)) (LVAR 4))
// Line 75 (ADDR (GVAR ary_int))
	lea  rax, ary_int[rip]
	push rax
// Line 75 (LVAR 4)
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
// Line 75 (+ (LVAR 4)  1 )
// Line 75 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 75  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 75  75 
	push 75
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
// Line 75 (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 )
// Line 75 (= (LVAR 4) (++ (LVAR 4)  1 ))
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 75 (++ (LVAR 4)  1 )
// Line 75 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 75  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 75  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000018
.L000017:
// Line 76 (CALL assert_expect ( 76 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) )
// Line 76 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))
// Line 76 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )
// Line 76 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))
// Line 76 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )
// Line 76 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
// Line 76 (] (ADDR (GVAR reg))  2 )
// Line 76 (ADDR (GVAR reg))
	lea  rax, reg[rip]
	push rax
// Line 76  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 76  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 76  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 76  105 
	push 105
// Line 76  76 
	push 76
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
// Line 77 (CALL assert_expect ( 77 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) )
// Line 77 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))
// Line 77 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )
// Line 77 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))
// Line 77 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )
// Line 77 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
// Line 77 (] (ADDR (GVAR reg))  2 )
// Line 77 (ADDR (GVAR reg))
	lea  rax, reg[rip]
	push rax
// Line 77  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 77  4 
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 77  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 77  119 
	push 119
// Line 77  77 
	push 77
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
// Line 79 (= (GVAR i)  0 )
	lea  rax, i[rip]
	push rax
// Line 79  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 88 (WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):))
.L000025:
// Line 80 (<=  9  (GVAR i))
// Line 80  9 
	push 9
// Line 80 (GVAR i)
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
// Line 88 (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)
// Line 81 (= (GVAR j)  0 )
	lea  rax, j[rip]
	push rax
// Line 81  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 86 (WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):))
.L000027:
// Line 82 (<=  7  (GVAR j))
// Line 82  7 
	push 7
// Line 82 (GVAR j)
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
// Line 86 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)
// Line 83 (= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j)))
// Line 83 (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))
// Line 83 (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i))))
// Line 83 (] (ADDR (GVAR a)) (GVAR i))
// Line 83 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 83 (GVAR i)
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
// Line 83 (GVAR j)
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
// Line 83 (+ (* (GVAR i)  10 ) (GVAR j))
// Line 83 (* (GVAR i)  10 )
// Line 83 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 83  10 
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 83 (GVAR j)
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
// Line 84 (++ (= (GVAR j) (++ (GVAR j)  1 ))  1 )
// Line 84 (= (GVAR j) (++ (GVAR j)  1 ))
	lea  rax, j[rip]
	push rax
// Line 84 (++ (GVAR j)  1 )
// Line 84 (GVAR j)
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 84  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 84  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000027
.L000028:
// Line 86 (++ (= (GVAR i) (++ (GVAR i)  1 ))  1 )
// Line 86 (= (GVAR i) (++ (GVAR i)  1 ))
	lea  rax, i[rip]
	push rax
// Line 86 (++ (GVAR i)  1 )
// Line 86 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 86  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 86  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000025
.L000026:
// Line 88 (CALL assert_expect ( 88 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) )
// Line 88  1 
	push 1
// Line 88 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))
// Line 88 (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )
// Line 88 (ADDR (DEREF (] (ADDR (GVAR a))  0 )))
// Line 88 (] (ADDR (GVAR a))  0 )
// Line 88 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 88  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 88  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 88  88 
	push 88
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
// Line 89 (CALL assert_expect ( 89 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) )
// Line 89  97 
	push 97
// Line 89 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))
// Line 89 (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )
// Line 89 (ADDR (DEREF (] (ADDR (GVAR a))  9 )))
// Line 89 (] (ADDR (GVAR a))  9 )
// Line 89 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 89  9 
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 89  7 
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 89  89 
	push 89
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
// Line 90 (CALL assert_expect ( 90 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) )
// Line 90  84 
	push 84
// Line 90 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))
// Line 90 (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )
// Line 90 (ADDR (DEREF (] (ADDR (GVAR a))  8 )))
// Line 90 (] (ADDR (GVAR a))  8 )
// Line 90 (ADDR (GVAR a))
	lea  rax, a[rip]
	push rax
// Line 90  8 
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 90  4 
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 90  90 
	push 90
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
// Line 91 (RETURN  0 )
// Line 91  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global string
// Line 94 FDECL string func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (ADDR  "Hello world!\n" )):(CALL printf_ ((LVAR 8):) ):(= (LVAR 31)  "\tHello---" ):(CALL printf_ ((ADDR (LVAR 31)):) ):(CALL assert_expect ( 101 : 9 :(DEREF (] (ADDR (LVAR 31))  15 )):) ):(CALL assert_expect ( 103 : 119 : 119 :) ):(CALL assert_expect ( 104 : 119 :(DEREF (] (LVAR 8)  6 )):) ):))
string:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 95 (= (LVAR 8) (ADDR  "Hello world!\n" ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 95 (ADDR  "Hello world!\n" )
	lea  rax, .LS000023[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 96 (CALL printf_ ((LVAR 8):) )
// Line 96 (LVAR 8)
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
// Line 97 (= (LVAR 31)  "\tHello---" )
	mov  DWORD PTR [rbp - 31], 1818576905
	mov  DWORD PTR [rbp - 27], 757952364
	mov  DWORD PTR [rbp - 23], 1919907629
	mov  DWORD PTR [rbp - 19], 153904236
	mov  DWORD PTR [rbp - 15], 1767991137
	mov  BYTE PTR [rbp - 11], 110
	mov  BYTE PTR [rbp - 10], 10
	mov  BYTE PTR [rbp - 9], 0
	push rdi
	pop  rax
// Line 100 (CALL printf_ ((ADDR (LVAR 31)):) )
// Line 100 (ADDR (LVAR 31))
	mov  rax, rbp
	sub  rax, 31
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
// Line 101 (CALL assert_expect ( 101 : 9 :(DEREF (] (ADDR (LVAR 31))  15 )):) )
// Line 101 (DEREF (] (ADDR (LVAR 31))  15 ))
// Line 101 (] (ADDR (LVAR 31))  15 )
// Line 101 (ADDR (LVAR 31))
	mov  rax, rbp
	sub  rax, 31
	push rax
// Line 101  15 
	push 15
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 101  9 
	push 9
// Line 101  101 
	push 101
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
// Line 103 (CALL assert_expect ( 103 : 119 : 119 :) )
// Line 103  119 
	push 119
// Line 103  119 
	push 119
// Line 103  103 
	push 103
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
// Line 104 (CALL assert_expect ( 104 : 119 :(DEREF (] (LVAR 8)  6 )):) )
// Line 104 (DEREF (] (LVAR 8)  6 ))
// Line 104 (] (LVAR 8)  6 )
// Line 104 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 104  6 
	push 6
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 104  119 
	push 119
// Line 104  104 
	push 104
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
// Line 107 FDECL block_scope func ( ) void 
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 109 : 1 :(GVAR i):) ):(= (LVAR 4)  5 ):(CALL assert_expect ( 111 : 5 :(LVAR 4):) ):(BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 118 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 120 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 122 : 2 :(LVAR 8):) ):):(CALL assert_expect ( 124 : 5 :(LVAR 4):) ):))
block_scope:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 108 (= (GVAR i)  1 )
	lea  rax, i[rip]
	push rax
// Line 108  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 109 (CALL assert_expect ( 109 : 1 :(GVAR i):) )
// Line 109 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 109  1 
	push 1
// Line 109  109 
	push 109
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
// Line 110 (= (LVAR 4)  5 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 110  5 
	push 5
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 111 (CALL assert_expect ( 111 : 5 :(LVAR 4):) )
// Line 111 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 111  5 
	push 5
// Line 111  111 
	push 111
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
// Line 124 (BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 118 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 120 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 122 : 2 :(LVAR 8):) ):)
// Line 113 (= (LVAR 8)  2 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 113  2 
	push 2
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 122 (BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 118 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 120 : 3 :(LVAR 12):) ):)
// Line 115 (= (LVAR 12)  3 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 115  3 
	push 3
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 120 (BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 118 : 4 :(LVAR 16):) ):)
// Line 117 (= (LVAR 16)  4 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 117  4 
	push 4
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 118 (CALL assert_expect ( 118 : 4 :(LVAR 16):) )
// Line 118 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 118  4 
	push 4
// Line 118  118 
	push 118
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
// Line 120 (CALL assert_expect ( 120 : 3 :(LVAR 12):) )
// Line 120 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 120  3 
	push 3
// Line 120  120 
	push 120
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
// Line 122 (CALL assert_expect ( 122 : 2 :(LVAR 8):) )
// Line 122 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 122  2 
	push 2
// Line 122  122 
	push 122
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
// Line 124 (CALL assert_expect ( 124 : 5 :(LVAR 4):) )
// Line 124 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 124  5 
	push 5
// Line 124  124 
	push 124
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
// Line 127 FDECL for_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  100 ):(CALL assert_expect ( 129 : 100 :(LVAR 4):) ):(FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 132 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 134 : 9 :(LVAR 12):) ):)):(CALL assert_expect ( 136 : 100 :(LVAR 4):) ):(= (LVAR 4)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)):(CALL assert_expect ( 142 : 6 :(LVAR 4):) ):))
for_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 128 (= (LVAR 4)  100 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 128  100 
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 129 (CALL assert_expect ( 129 : 100 :(LVAR 4):) )
// Line 129 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 129  100 
	push 100
// Line 129  129 
	push 129
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
// Line 130 (FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 132 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 134 : 9 :(LVAR 12):) ):))
// Line 130 (= (LVAR 8)  10 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 130  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000061:
// Line 130 (<  100  (LVAR 8))
// Line 130  100 
	push 100
// Line 130 (LVAR 8)
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
// Line 136 (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 132 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 134 : 9 :(LVAR 12):) ):)
// Line 132 (IF (== (LVAR 8)  15 ) BREAK  NULL )
// Line 131 (== (LVAR 8)  15 )
// Line 131 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 131  15 
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
// Line 131 BREAK 
	jmp  .L000060
	jmp  .L000063
.L000062:
.L000063:
// Line 133 (IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 132 : 12 :(LVAR 8):) ) NULL )
// Line 132 (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 ))
// Line 132 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 132 (* (/ (LVAR 8)  3 )  3 )
// Line 132 (/ (LVAR 8)  3 )
// Line 132 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 132  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 132  3 
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
// Line 132 (CALL assert_expect ( 132 : 12 :(LVAR 8):) )
// Line 132 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 132  12 
	push 12
// Line 132  132 
	push 132
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
// Line 133 (= (LVAR 12)  9 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 133  9 
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 134 (CALL assert_expect ( 134 : 9 :(LVAR 12):) )
// Line 134 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 134  9 
	push 9
// Line 134  134 
	push 134
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
// Line 130 (= (LVAR 8) (+= (LVAR 8)  1 ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 130 (+= (LVAR 8)  1 )
// Line 130 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 130  1 
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
// Line 136 (CALL assert_expect ( 136 : 100 :(LVAR 4):) )
// Line 136 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 136  100 
	push 100
// Line 136  136 
	push 136
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
// Line 137 (= (LVAR 4)  0 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 137  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 138 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):))
.L000074:
// Line 138  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000073
// Line 142 (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)
// Line 140 (IF (== (LVAR 4)  6 ) BREAK  NULL )
// Line 139 (== (LVAR 4)  6 )
// Line 139 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 139  6 
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
// Line 139 BREAK 
	jmp  .L000073
	jmp  .L000076
.L000075:
.L000076:
// Line 140 (= (LVAR 4) (+ (LVAR 4)  1 ))
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 140 (+ (LVAR 4)  1 )
// Line 140 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 140  1 
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
// Line 142 (CALL assert_expect ( 142 : 6 :(LVAR 4):) )
// Line 142 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 142  6 
	push 6
// Line 142  142 
	push 142
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
// Line 145 FDECL switch_ func ( int  s ) int 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)):(RETURN (LVAR 8)):))
switch_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 147 (SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 147 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 162 (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)
// Line 148 (CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :))
// Line 148  1 
	push 1
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000080
// Line 151 (CASE cond: 2  body:(BLOCK))
// Line 151  2 
	push 2
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000081
// Line 152 (CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):))
// Line 152  3 
	push 3
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000082
// Line 154 (CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):))
// Line 154  4 
	push 4
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000083
// Line 157 (CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):))
// Line 157  5 
	push 5
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000084
// Line 159 (DEFAULT body:(= (LVAR 8)  15 ))
	jmp  .L000085
	jmp  .L000079
.L000080:
// Line 149 (BLOCK(= (LVAR 8)  11 ):BREAK :)
// Line 149 (= (LVAR 8)  11 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 149  11 
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 150 BREAK 
	jmp  .L000079
.L000081:
// Line 152 (BLOCK)
.L000082:
// Line 153 (BLOCK(= (LVAR 8)  12 ):)
// Line 153 (= (LVAR 8)  12 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 153  12 
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000083:
// Line 155 (BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)
// Line 155 (= (LVAR 8)  13 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 155  13 
	push 13
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 156 (RETURN (LVAR 8))
// Line 156 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000084:
// Line 158 (BLOCK(= (LVAR 8)  14 ):)
// Line 158 (= (LVAR 8)  14 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 158  14 
	push 14
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000085:
// Line 160 (= (LVAR 8)  15 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 160  15 
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000079:
// Line 162 (RETURN (LVAR 8))
// Line 162 (LVAR 8)
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
// Line 165 FDECL switch2_ func ( char  s ) int 
//    (LVAR 1) 
//    (BLOCK(SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)):(RETURN (LVAR 5)):))
switch2_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 1], dil
// Line 167 (SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):))
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 167 (LVAR 1)
	mov  rax, rbp
	sub  rax, 1
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 178 (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)
// Line 168 (CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :))
// Line 168  97 
	push 97
	mov  rax, rbp
	sub  rax, 9
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000087
// Line 171 (CASE cond: 98  body:(BLOCK))
// Line 171  98 
	push 98
	mov  rax, rbp
	sub  rax, 9
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000088
// Line 172 (CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :))
// Line 172  99 
	push 99
	mov  rax, rbp
	sub  rax, 9
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000089
// Line 175 (DEFAULT body:(= (LVAR 5)  15 ))
	jmp  .L000090
	jmp  .L000086
.L000087:
// Line 169 (BLOCK(= (LVAR 5)  11 ):BREAK :)
// Line 169 (= (LVAR 5)  11 )
	mov  rax, rbp
	sub  rax, 5
	push rax
// Line 169  11 
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 170 BREAK 
	jmp  .L000086
.L000088:
// Line 172 (BLOCK)
.L000089:
// Line 173 (BLOCK(= (LVAR 5)  12 ):BREAK :)
// Line 173 (= (LVAR 5)  12 )
	mov  rax, rbp
	sub  rax, 5
	push rax
// Line 173  12 
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 174 BREAK 
	jmp  .L000086
.L000090:
// Line 176 (= (LVAR 5)  15 )
	mov  rax, rbp
	sub  rax, 5
	push rax
// Line 176  15 
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000086:
// Line 178 (RETURN (LVAR 5))
// Line 178 (LVAR 5)
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
// Line 207 FDECL list_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  16 ):(= (LVAR 12)  0 ):(FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)):(CALL assert_expect ( 216 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 218 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 220 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 222 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 224 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 226 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 229 : 777 :(MEMBER (GVAR def) payload 0):) ):))
list_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 208 (= (LVAR 4)  16 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 208  16 
	push 16
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 209 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 209  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 210 (FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):))
// Line 210 (= (LVAR 16)  0 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 210  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000093:
// Line 210 (<  6  (LVAR 16))
// Line 210  6 
	push 6
// Line 210 (LVAR 16)
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
// Line 216 (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)
// Line 211 (= (LVAR 24) (CALL calloc_ ((LVAR 4):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 211 (CALL calloc_ ((LVAR 4):) )
// Line 211 (LVAR 4)
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
// Line 212 (= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16))
// Line 212 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 212 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 213 (= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12))
// Line 213 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 213 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 214 (= (LVAR 12) (LVAR 24))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 214 (LVAR 24)
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
// Line 210 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 210 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 210 (++ (LVAR 16)  1 )
// Line 210 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 210  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 210  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000093
.L000092:
// Line 216 (CALL assert_expect ( 216 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 216 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 216 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 216  5 
	push 5
// Line 216  216 
	push 216
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
// Line 217 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 217 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 217 (LVAR 12)
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
// Line 218 (CALL assert_expect ( 218 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 218 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 218 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 218  4 
	push 4
// Line 218  218 
	push 218
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
// Line 219 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 219 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 219 (LVAR 12)
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
// Line 220 (CALL assert_expect ( 220 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 220 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 220 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 220  3 
	push 3
// Line 220  220 
	push 220
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
// Line 221 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 221 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 221 (LVAR 12)
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
// Line 222 (CALL assert_expect ( 222 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 222 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 222 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 222  2 
	push 2
// Line 222  222 
	push 222
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
// Line 223 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 223 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 223 (LVAR 12)
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
// Line 224 (CALL assert_expect ( 224 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 224 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 224 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 224  1 
	push 1
// Line 224  224 
	push 224
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
// Line 225 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 225 (MEMBER (DEREF (LVAR 12)) next 0)
// Line 225 (LVAR 12)
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
// Line 226 (CALL assert_expect ( 226 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
// Line 226 (MEMBER (DEREF (LVAR 12)) payloads 8)
// Line 226 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 226  0 
	push 0
// Line 226  226 
	push 226
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
// Line 228 (= (MEMBER (GVAR def) payload 0)  777 )
	lea  rax, def[rip]
	add  rax, 0
	push rax
// Line 228  777 
	push 777
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 229 (CALL assert_expect ( 229 : 777 :(MEMBER (GVAR def) payload 0):) )
// Line 229 (MEMBER (GVAR def) payload 0)
	lea  rax, def[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 229  777 
	push 777
// Line 229  229 
	push 229
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
// Line 232 FDECL struct_ func ( ) void 
//    
//    (BLOCK(CALL assert_expect ( 252 : 32 : 32 :) ):(CALL assert_expect ( 253 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 258 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 259 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 261 : 4 : 4 :) ):(CALL assert_expect ( 262 : 4 : 4 :) ):(= (LVAR 336) (ADDR (LVAR 328))):(= (MEMBER (LVAR 328) size 136)  10 ):(= (MEMBER (LVAR 328) ch 140)  5 ):(= (MEMBER (LVAR 480) size 136)  195 ):(= (MEMBER (LVAR 480) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 273 : 10 :(MEMBER (LVAR 328) size 136):) ):(CALL assert_expect ( 274 : 5 :(MEMBER (LVAR 328) ch 140):) ):(= (MEMBER (LVAR 328) size 136)  110 ):(= (MEMBER (LVAR 328) ch 140)  79 ):(CALL assert_expect ( 277 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 278 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 279 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 280 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 281 : 195 :(MEMBER (LVAR 480) size 136):) ):(CALL assert_expect ( 282 : 39 :(MEMBER (LVAR 480) ch 140):) ):(CALL assert_expect ( 283 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 284 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480))):(= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328))):(CALL assert_expect ( 288 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) ):(= (MEMBER (LVAR 640) size 136)  100 ):(= (MEMBER (LVAR 784) size 136)  500 ):(= (LVAR 784) (LVAR 640)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ( 296 : 100 :(MEMBER (LVAR 784) size 136):) ):))
struct_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 800
// Line 252 (CALL assert_expect ( 252 : 32 : 32 :) )
// Line 252  32 
	push 32
// Line 252  32 
	push 32
// Line 252  252 
	push 252
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
// Line 253 (CALL assert_expect ( 253 : 8 : 8 :) )
// Line 253  8 
	push 8
// Line 253  8 
	push 8
// Line 253  253 
	push 253
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
// Line 255 (= (MEMBER (GVAR pos) col 4)  9 )
	lea  rax, pos[rip]
	add  rax, 4
	push rax
// Line 255  9 
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 256 (= (MEMBER (GVAR pos) row 0)  45 )
	lea  rax, pos[rip]
	add  rax, 0
	push rax
// Line 256  45 
	push 45
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 258 (CALL assert_expect ( 258 : 9 :(MEMBER (GVAR pos) col 4):) )
// Line 258 (MEMBER (GVAR pos) col 4)
	lea  rax, pos[rip]
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 258  9 
	push 9
// Line 258  258 
	push 258
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
// Line 259 (CALL assert_expect ( 259 : 45 :(MEMBER (GVAR pos) row 0):) )
// Line 259 (MEMBER (GVAR pos) row 0)
	lea  rax, pos[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 259  45 
	push 45
// Line 259  259 
	push 259
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
// Line 261 (CALL assert_expect ( 261 : 4 : 4 :) )
// Line 261  4 
	push 4
// Line 261  4 
	push 4
// Line 261  261 
	push 261
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
// Line 262 (CALL assert_expect ( 262 : 4 : 4 :) )
// Line 262  4 
	push 4
// Line 262  4 
	push 4
// Line 262  262 
	push 262
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
// Line 265 (= (LVAR 336) (ADDR (LVAR 328)))
	mov  rax, rbp
	sub  rax, 336
	push rax
// Line 265 (ADDR (LVAR 328))
	mov  rax, rbp
	sub  rax, 328
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 267 (= (MEMBER (LVAR 328) size 136)  10 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 136
	push rax
// Line 267  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 268 (= (MEMBER (LVAR 328) ch 140)  5 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 140
	push rax
// Line 268  5 
	push 5
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 269 (= (MEMBER (LVAR 480) size 136)  195 )
	mov  rax, rbp
	sub  rax, 480
	add  rax, 136
	push rax
// Line 269  195 
	push 195
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 270 (= (MEMBER (LVAR 480) ch 140)  39 )
	mov  rax, rbp
	sub  rax, 480
	add  rax, 140
	push rax
// Line 270  39 
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 271 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 )
// Line 271 (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )
// Line 271 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 271  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 271  184 
	push 184
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 272 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 )
// Line 272 (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )
// Line 272 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 272  16 
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop rax
	add  rax, 4
	push rax
// Line 272  984 
	push 984
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 273 (CALL assert_expect ( 273 : 10 :(MEMBER (LVAR 328) size 136):) )
// Line 273 (MEMBER (LVAR 328) size 136)
	mov  rax, rbp
	sub  rax, 328
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 273  10 
	push 10
// Line 273  273 
	push 273
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
// Line 274 (CALL assert_expect ( 274 : 5 :(MEMBER (LVAR 328) ch 140):) )
// Line 274 (MEMBER (LVAR 328) ch 140)
	mov  rax, rbp
	sub  rax, 328
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 274  5 
	push 5
// Line 274  274 
	push 274
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
// Line 275 (= (MEMBER (LVAR 328) size 136)  110 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 136
	push rax
// Line 275  110 
	push 110
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 276 (= (MEMBER (LVAR 328) ch 140)  79 )
	mov  rax, rbp
	sub  rax, 328
	add  rax, 140
	push rax
// Line 276  79 
	push 79
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 277 (CALL assert_expect ( 277 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) )
// Line 277 (MEMBER (DEREF (LVAR 336)) size 136)
// Line 277 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 277  110 
	push 110
// Line 277  277 
	push 277
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
// Line 278 (CALL assert_expect ( 278 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) )
// Line 278 (MEMBER (DEREF (LVAR 336)) ch 140)
// Line 278 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 278  79 
	push 79
// Line 278  278 
	push 278
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
// Line 279 (CALL assert_expect ( 279 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) )
// Line 279 (MEMBER (DEREF (LVAR 336)) size 136)
// Line 279 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 279  110 
	push 110
// Line 279  279 
	push 279
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
// Line 280 (CALL assert_expect ( 280 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) )
// Line 280 (MEMBER (DEREF (LVAR 336)) ch 140)
// Line 280 (LVAR 336)
	mov  rax, rbp
	sub  rax, 336
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 280  79 
	push 79
// Line 280  280 
	push 280
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
// Line 281 (CALL assert_expect ( 281 : 195 :(MEMBER (LVAR 480) size 136):) )
// Line 281 (MEMBER (LVAR 480) size 136)
	mov  rax, rbp
	sub  rax, 480
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
// Line 282 (CALL assert_expect ( 282 : 39 :(MEMBER (LVAR 480) ch 140):) )
// Line 282 (MEMBER (LVAR 480) ch 140)
	mov  rax, rbp
	sub  rax, 480
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 282  39 
	push 39
// Line 282  282 
	push 282
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
// Line 283 (CALL assert_expect ( 283 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) )
// Line 283 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)
// Line 283 (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )
// Line 283 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 283  0 
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
// Line 283  184 
	push 184
// Line 283  283 
	push 283
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
// Line 284 (CALL assert_expect ( 284 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) )
// Line 284 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)
// Line 284 (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )
// Line 284 (ADDR (MEMBER (LVAR 480) ary 0))
	mov  rax, rbp
	sub  rax, 480
	add  rax, 0
	push rax
// Line 284  16 
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
// Line 284  984 
	push 984
// Line 284  284 
	push 284
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
// Line 286 (= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480)))
	mov  rax, rbp
	sub  rax, 496
	add  rax, 8
	push rax
// Line 286 (ADDR (LVAR 480))
	mov  rax, rbp
	sub  rax, 480
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 287 (= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328)))
	mov  rax, rbp
	sub  rax, 496
	add  rax, 0
	push rax
// Line 287 (ADDR (LVAR 328))
	mov  rax, rbp
	sub  rax, 328
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 288 (CALL assert_expect ( 288 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) )
// Line 288 (MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136)
// Line 288 (MEMBER (LVAR 496) right 8)
	mov  rax, rbp
	sub  rax, 496
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 288  195 
	push 195
// Line 288  288 
	push 288
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
// Line 292 (= (MEMBER (LVAR 640) size 136)  100 )
	mov  rax, rbp
	sub  rax, 640
	add  rax, 136
	push rax
// Line 292  100 
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 293 (= (MEMBER (LVAR 784) size 136)  500 )
	mov  rax, rbp
	sub  rax, 784
	add  rax, 136
	push rax
// Line 293  500 
	push 500
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 294 (= (LVAR 784) (LVAR 640))
	mov  rax, QWORD PTR [rbp - 496]
	mov  QWORD PTR [rbp - 640], rax
	mov  rax, QWORD PTR [rbp - 504]
	mov  QWORD PTR [rbp - 648], rax
	mov  rax, QWORD PTR [rbp - 512]
	mov  QWORD PTR [rbp - 656], rax
	mov  rax, QWORD PTR [rbp - 520]
	mov  QWORD PTR [rbp - 664], rax
	mov  rax, QWORD PTR [rbp - 528]
	mov  QWORD PTR [rbp - 672], rax
	mov  rax, QWORD PTR [rbp - 536]
	mov  QWORD PTR [rbp - 680], rax
	mov  rax, QWORD PTR [rbp - 544]
	mov  QWORD PTR [rbp - 688], rax
	mov  rax, QWORD PTR [rbp - 552]
	mov  QWORD PTR [rbp - 696], rax
	mov  rax, QWORD PTR [rbp - 560]
	mov  QWORD PTR [rbp - 704], rax
	mov  rax, QWORD PTR [rbp - 568]
	mov  QWORD PTR [rbp - 712], rax
	mov  rax, QWORD PTR [rbp - 576]
	mov  QWORD PTR [rbp - 720], rax
	mov  rax, QWORD PTR [rbp - 584]
	mov  QWORD PTR [rbp - 728], rax
	mov  rax, QWORD PTR [rbp - 592]
	mov  QWORD PTR [rbp - 736], rax
	mov  rax, QWORD PTR [rbp - 600]
	mov  QWORD PTR [rbp - 744], rax
	mov  rax, QWORD PTR [rbp - 608]
	mov  QWORD PTR [rbp - 752], rax
	mov  rax, QWORD PTR [rbp - 616]
	mov  QWORD PTR [rbp - 760], rax
	mov  rax, QWORD PTR [rbp - 624]
	mov  QWORD PTR [rbp - 768], rax
	mov  rax, QWORD PTR [rbp - 632]
	mov  QWORD PTR [rbp - 776], rax
	pop  rax
// Line 295 (= (MEMBER (GVAR leaf_global) size 136)  700 )
	lea  rax, leaf_global[rip]
	add  rax, 136
	push rax
// Line 295  700 
	push 700
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 296 (CALL assert_expect ( 296 : 100 :(MEMBER (LVAR 784) size 136):) )
// Line 296 (MEMBER (LVAR 784) size 136)
	mov  rax, rbp
	sub  rax, 784
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 296  100 
	push 100
// Line 296  296 
	push 296
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000144
	mov  rax, 0
	call assert_expect
	jmp  .L000145
.L000144:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000145:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_board
// Line 305 FDECL print_board func ( * [8] int  board ) void 
//    (LVAR 8) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)):(CALL printf_ ((ADDR  "\n\n" ):) ):))
print_board:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 306 (++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 )
// Line 306 (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))
	lea  rax, q8_count[rip]
	push rax
// Line 306 (++ (GVAR q8_count)  1 )
// Line 306 (GVAR q8_count)
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
// Line 306  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 306  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 307 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
// Line 308 (FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):))
// Line 308 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 308  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000148:
// Line 308 (<  8  (LVAR 12))
// Line 308  8 
	push 8
// Line 308 (LVAR 12)
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
	je   .L000147
// Line 315 (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)
// Line 309 (FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):))
// Line 309 (= (LVAR 16)  0 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 309  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000151:
// Line 309 (<  8  (LVAR 16))
// Line 309  8 
	push 8
// Line 309 (LVAR 16)
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
	je   .L000150
// Line 313 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)
// Line 311 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL )
// Line 310 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))
// Line 310 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
// Line 310 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
// Line 310 (] (LVAR 8) (LVAR 12))
// Line 310 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 310 (LVAR 12)
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
// Line 310 (LVAR 16)
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
	je   .L000152
// Line 310 (CALL printf_ ((ADDR  "Q " ):) )
// Line 310 (ADDR  "Q " )
	lea  rax, .LS000025[rip]
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
	jmp  .L000153
.L000152:
.L000153:
// Line 311 (CALL printf_ ((ADDR  ". " ):) )
// Line 311 (ADDR  ". " )
	lea  rax, .LS000026[rip]
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
.L000149:
// Line 309 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 309 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 309 (++ (LVAR 16)  1 )
// Line 309 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 309  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 309  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000151
.L000150:
// Line 313 (CALL printf_ ((ADDR  "\n" ):) )
// Line 313 (ADDR  "\n" )
	lea  rax, .LS000027[rip]
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
.L000146:
// Line 308 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 308 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 308 (++ (LVAR 12)  1 )
// Line 308 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 308  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 308  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000148
.L000147:
// Line 315 (CALL printf_ ((ADDR  "\n\n" ):) )
// Line 315 (ADDR  "\n\n" )
	lea  rax, .LS000028[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000160
	mov  rax, 0
	call printf_
	jmp  .L000161
.L000160:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000161:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global conflict
// Line 318 FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
conflict:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 319 (FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):))
// Line 319 (= (LVAR 20)  0 )
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 319  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000164:
// Line 319 (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))
// Line 319 (MEMBER (DEREF (LVAR 16)) row 0)
// Line 319 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 319 (LVAR 20)
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
	je   .L000163
// Line 327 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)
// Line 321 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL )
// Line 320 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4)))
// Line 320 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))
// Line 320 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
// Line 320 (] (LVAR 8) (LVAR 20))
// Line 320 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 320 (LVAR 20)
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
// Line 320 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 320 (LVAR 16)
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
	je   .L000165
// Line 320 (RETURN  1 )
// Line 320  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000166
.L000165:
.L000166:
// Line 321 (= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 321 (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))
// Line 321 (MEMBER (DEREF (LVAR 16)) row 0)
// Line 321 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 321 (LVAR 20)
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
// Line 324 (IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL )
// Line 322 (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 )
// Line 322 (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )
// Line 322 (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 322 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 322 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 322 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 322  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 322  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000167
// Line 324 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL )
// Line 323 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))))
// Line 323 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
// Line 323 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
// Line 323 (] (LVAR 8) (LVAR 20))
// Line 323 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 323 (LVAR 20)
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
// Line 323 (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 323 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 323 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 323 (LVAR 24)
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
	je   .L000169
// Line 323 (RETURN  1 )
// Line 323  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000170
.L000169:
.L000170:
	jmp  .L000168
.L000167:
.L000168:
// Line 326 (IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL )
// Line 324 (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
// Line 324  8 
	push 8
// Line 324 (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 324 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 324 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 324 (LVAR 24)
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
	je   .L000171
// Line 326 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL )
// Line 325 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))))
// Line 325 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
// Line 325 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
// Line 325 (] (LVAR 8) (LVAR 20))
// Line 325 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 325 (LVAR 20)
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
// Line 325 (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
// Line 325 (MEMBER (DEREF (LVAR 16)) col 4)
// Line 325 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 325 (LVAR 24)
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
	je   .L000173
// Line 325 (RETURN  1 )
// Line 325  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000174
.L000173:
.L000174:
	jmp  .L000172
.L000171:
.L000172:
.L000162:
// Line 319 (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )
// Line 319 (= (LVAR 20) (++ (LVAR 20)  1 ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 319 (++ (LVAR 20)  1 )
// Line 319 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 319  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 319  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000164
.L000163:
// Line 327 (RETURN  0 )
// Line 327  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global solve
// Line 330 FDECL solve func ( * [8] int  board , int  row ) void 
//    (LVAR 8) (LVAR 12) 
//    (BLOCK(IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)):))
solve:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 12], esi
// Line 335 (IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL )
// Line 331 (== (LVAR 12)  8 )
// Line 331 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 331  8 
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000175
// Line 335 (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):)
// Line 332 (CALL print_board ((LVAR 8):) )
// Line 332 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000177
	mov  rax, 0
	call print_board
	jmp  .L000178
.L000177:
	sub  rsp, 8
	mov  rax, 0
	call print_board
	add  rsp, 8
.L000178:
	push rax
	pop  rax
// Line 333 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000176
.L000175:
.L000176:
// Line 335 (FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):))
// Line 335 (= (LVAR 16)  0 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 335  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000181:
// Line 335 (<  8  (LVAR 16))
// Line 335  8 
	push 8
// Line 335 (LVAR 16)
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
	je   .L000180
// Line 346 (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)
// Line 337 (= (MEMBER (LVAR 24) row 0) (LVAR 12))
	mov  rax, rbp
	sub  rax, 24
	add  rax, 0
	push rax
// Line 337 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 338 (= (MEMBER (LVAR 24) col 4) (LVAR 16))
	mov  rax, rbp
	sub  rax, 24
	add  rax, 4
	push rax
// Line 338 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 345 (IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL )
// Line 339 (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 )
// Line 339 (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )
// Line 339 (ADDR (LVAR 24))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 339 (LVAR 8)
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
	call conflict
	jmp  .L000185
.L000184:
	sub  rsp, 8
	mov  rax, 0
	call conflict
	add  rsp, 8
.L000185:
	push rax
// Line 339  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000182
// Line 345 (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):)
// Line 341 (= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 )
// Line 341 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
// Line 341 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
// Line 341 (] (LVAR 8) (LVAR 12))
// Line 341 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 341 (LVAR 12)
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
// Line 341 (LVAR 16)
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
// Line 341  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 342 (CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) )
// Line 342 (+ (LVAR 12)  1 )
// Line 342 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 342  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 342 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000186
	mov  rax, 0
	call solve
	jmp  .L000187
.L000186:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000187:
	push rax
	pop  rax
// Line 343 (= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 )
// Line 343 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
// Line 343 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
// Line 343 (] (LVAR 8) (LVAR 12))
// Line 343 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 343 (LVAR 12)
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
// Line 343 (LVAR 16)
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
// Line 343  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000183
.L000182:
.L000183:
.L000179:
// Line 335 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 335 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 335 (++ (LVAR 16)  1 )
// Line 335 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 335  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 335  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000181
.L000180:
	mov  rsp, rbp
	pop  rbp
	ret
	.global q8
// Line 348 FDECL q8 func ( ) int 
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))):(CALL solve ((ADDR (LVAR 256)): 0 :) ):(RETURN (GVAR q8_count)):))
q8:
	push rbp
	mov  rbp, rsp
	sub  rsp, 272
// Line 350 (= (GVAR q8_count)  0 )
	lea  rax, q8_count[rip]
	push rax
// Line 350  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 351 (FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 )))
// Line 351 (= (LVAR 260)  0 )
	mov  rax, rbp
	sub  rax, 260
	push rax
// Line 351  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000190:
// Line 351 (<  8  (LVAR 260))
// Line 351  8 
	push 8
// Line 351 (LVAR 260)
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
	je   .L000189
// Line 352 (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))
// Line 352 (= (LVAR 264)  0 )
	mov  rax, rbp
	sub  rax, 264
	push rax
// Line 352  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000193:
// Line 352 (<  8  (LVAR 264))
// Line 352  8 
	push 8
// Line 352 (LVAR 264)
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
	je   .L000192
// Line 352 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 )
// Line 352 (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264))
// Line 352 (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260))))
// Line 352 (] (ADDR (LVAR 256)) (LVAR 260))
// Line 352 (ADDR (LVAR 256))
	mov  rax, rbp
	sub  rax, 256
	push rax
// Line 352 (LVAR 260)
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
// Line 352 (LVAR 264)
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
// Line 352  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000191:
// Line 352 (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 )
// Line 352 (= (LVAR 264) (++ (LVAR 264)  1 ))
	mov  rax, rbp
	sub  rax, 264
	push rax
// Line 352 (++ (LVAR 264)  1 )
// Line 352 (LVAR 264)
	mov  rax, rbp
	sub  rax, 264
	mov  eax, [rax]
	push rax
// Line 352  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 352  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000193
.L000192:
.L000188:
// Line 351 (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 )
// Line 351 (= (LVAR 260) (++ (LVAR 260)  1 ))
	mov  rax, rbp
	sub  rax, 260
	push rax
// Line 351 (++ (LVAR 260)  1 )
// Line 351 (LVAR 260)
	mov  rax, rbp
	sub  rax, 260
	mov  eax, [rax]
	push rax
// Line 351  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 351  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000190
.L000189:
// Line 353 (CALL solve ((ADDR (LVAR 256)): 0 :) )
// Line 353  0 
	push 0
// Line 353 (ADDR (LVAR 256))
	mov  rax, rbp
	sub  rax, 256
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000194
	mov  rax, 0
	call solve
	jmp  .L000195
.L000194:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000195:
	push rax
	pop  rax
// Line 354 (RETURN (GVAR q8_count))
// Line 354 (GVAR q8_count)
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
// Line 357 FDECL fun func ( * int  p ) int 
//    (LVAR 8) 
//    (BLOCK(RETURN (DEREF (LVAR 8))):))
fun:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 357 (RETURN (DEREF (LVAR 8)))
// Line 357 (DEREF (LVAR 8))
// Line 357 (LVAR 8)
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
// Line 359 FDECL main func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (CAST * void   0 )):(CALL assert_expect ( 364 : 1 : 1 :) ):(CALL assert_expect ( 365 : 0 : 0 :) ):(CALL assert_expect ( 366 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 368 : 70 :(*  10  (+  2   5 )):) ):(CALL printf_ ((ADDR (GVAR str_ary)):) ):(CALL assert_expect ( 371 : 1979 :(GVAR i):) ):(CALL assert_expect ( 372 : 2015 :(GVAR j):) ):(CALL assert_expect ( 373 : 14 :(GVAR s):) ):(CALL assert_expect ( 375 : 9 : 9 :) ):(CALL assert_expect ( 376 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 377 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 378 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 379 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 380 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 381 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 382 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 383 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 384 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 385 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 386 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 387 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 388 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 389 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 390 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 391 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 392 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 393 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 394 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 395 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 396 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 398 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 399 : 0 :(LVAR 12):) ):(CALL assert_expect ( 400 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 401 : 1 :(LVAR 12):) ):(CALL assert_expect ( 402 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 403 : 2 :(LVAR 12):) ):(CALL assert_expect ( 404 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 405 : 3 :(LVAR 12):) ):(CALL assert_expect ( 406 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 407 : 3 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 409 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 410 : 1 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 412 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) ):(CALL assert_expect ( 413 : 1 :(LVAR 12):) ):(CALL assert_expect ( 414 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 415 : 1 :(LVAR 12):) ):(CALL assert_expect ( 416 : 1 :(!  0 ):) ):(CALL assert_expect ( 417 : 0 :(!  1 ):) ):(CALL assert_expect ( 418 : 0 :(! (! (!  1 ))):) ):(CALL assert_expect ( 420 : 256 :(<<  1   8 ):) ):(CALL assert_expect ( 421 : 32 :(>>  512   4 ):) ):(= (LVAR 16)  10 ):(CALL assert_expect ( 426 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) ):(CALL assert_expect ( 427 : 15 :(LVAR 16):) ):(CALL assert_expect ( 428 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) ):(CALL assert_expect ( 429 : 8 :(LVAR 16):) ):(CALL assert_expect ( 430 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) ):(CALL assert_expect ( 431 : 40 :(LVAR 16):) ):(CALL assert_expect ( 432 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) ):(CALL assert_expect ( 433 : 4 :(LVAR 16):) ):(CALL assert_expect ( 436 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 437 : 5 :(LVAR 16):) ):(CALL assert_expect ( 438 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 439 : 4 :(LVAR 16):) ):(= (LVAR 20) (/  100  (LVAR 16))):(CALL assert_expect ( 444 : 25 :(LVAR 20):) ):(= (LVAR 24)  77 ):(IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 )):(CALL assert_expect ( 452 : 55 :(LVAR 24):) ):(CALL assert_expect ( 453 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 466 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 467 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 468 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 469 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 470 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 471 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 474 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 475 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 476 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 477 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 480 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 483 : 0 : 0 :) ):(CALL assert_expect ( 484 : 1 : 1 :) ):(CALL assert_expect ( 485 : 2 : 2 :) ):(CALL assert_expect ( 486 : 3 : 3 :) ):(CALL assert_expect ( 488 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 489 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 490 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 491 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 492 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 493 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 495 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 496 : 1664 :(<<  13   7 ):) ):(CALL printf_ ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 363 (= (LVAR 8) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 362 (CAST * void   0 )
// Line 362  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 364 (CALL assert_expect ( 364 : 1 : 1 :) )
// Line 360  1 
	push 1
// Line 364  1 
	push 1
// Line 364  364 
	push 364
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
// Line 365 (CALL assert_expect ( 365 : 0 : 0 :) )
// Line 361  0 
	push 0
// Line 365  0 
	push 0
// Line 365  365 
	push 365
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
// Line 366 (CALL assert_expect ( 366 : 0 :(CAST int  (CAST * void   0 )):) )
// Line 366 (CAST int  (CAST * void   0 ))
// Line 362 (CAST * void   0 )
// Line 362  0 
	push 0
// Line 366  0 
	push 0
// Line 366  366 
	push 366
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
// Line 368 (CALL assert_expect ( 368 : 70 :(*  10  (+  2   5 )):) )
// Line 367 (*  10  (+  2   5 ))
// Line 368  10 
	push 10
// Line 367 (+  2   5 )
// Line 368  2 
	push 2
// Line 368  5 
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 368  70 
	push 70
// Line 368  368 
	push 368
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
// Line 369 (CALL printf_ ((ADDR (GVAR str_ary)):) )
// Line 369 (ADDR (GVAR str_ary))
	lea  rax, str_ary[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000204
	mov  rax, 0
	call printf_
	jmp  .L000205
.L000204:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000205:
	push rax
	pop  rax
// Line 371 (CALL assert_expect ( 371 : 1979 :(GVAR i):) )
// Line 371 (GVAR i)
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 371  1979 
	push 1979
// Line 371  371 
	push 371
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
// Line 372 (CALL assert_expect ( 372 : 2015 :(GVAR j):) )
// Line 372 (GVAR j)
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 372  2015 
	push 2015
// Line 372  372 
	push 372
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
// Line 373 (CALL assert_expect ( 373 : 14 :(GVAR s):) )
// Line 373 (GVAR s)
	lea  rax, s[rip]
	movsx eax, BYTE PTR [rax]
	push rax
// Line 373  14 
	push 14
// Line 373  373 
	push 373
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
// Line 375 (CALL assert_expect ( 375 : 9 : 9 :) )
// Line 375  9 
	push 9
// Line 375  9 
	push 9
// Line 375  375 
	push 375
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
// Line 376 (CALL assert_expect ( 376 : 4 :(+ (-  0   3 )  7 ):) )
// Line 376 (+ (-  0   3 )  7 )
// Line 376 (-  0   3 )
// Line 376  0 
	push 0
// Line 376  3 
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 376  7 
	push 7
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 376  4 
	push 4
// Line 376  376 
	push 376
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
// Line 377 (CALL assert_expect ( 377 : 21 :(- (+  5   20 )  4 ):) )
// Line 377 (- (+  5   20 )  4 )
// Line 377 (+  5   20 )
// Line 377  5 
	push 5
// Line 377  20 
	push 20
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 377  4 
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 377  21 
	push 21
// Line 377  377 
	push 377
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
// Line 378 (CALL assert_expect ( 378 : 21 :(+  5  (*  4   4 )):) )
// Line 378 (+  5  (*  4   4 ))
// Line 378  5 
	push 5
// Line 378 (*  4   4 )
// Line 378  4 
	push 4
// Line 378  4 
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 378  21 
	push 21
// Line 378  378 
	push 378
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
// Line 379 (CALL assert_expect ( 379 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) )
// Line 379 (* (*  4  (-  5   2 )) (-  4   2 ))
// Line 379 (*  4  (-  5   2 ))
// Line 379  4 
	push 4
// Line 379 (-  5   2 )
// Line 379  5 
	push 5
// Line 379  2 
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 379 (-  4   2 )
// Line 379  4 
	push 4
// Line 379  2 
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 379  24 
	push 24
// Line 379  379 
	push 379
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
// Line 380 (CALL assert_expect ( 380 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) )
// Line 380 (- (+  6  (*  3   4 )) (/  15   3 ))
// Line 380 (+  6  (*  3   4 ))
// Line 380  6 
	push 6
// Line 380 (*  3   4 )
// Line 380  3 
	push 3
// Line 380  4 
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 380 (/  15   3 )
// Line 380  15 
	push 15
// Line 380  3 
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
// Line 380  13 
	push 13
// Line 380  380 
	push 380
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
// Line 381 (CALL assert_expect ( 381 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) )
// Line 381 (/ (* (+  6   3 ) (-  15   4 ))  3 )
// Line 381 (* (+  6   3 ) (-  15   4 ))
// Line 381 (+  6   3 )
// Line 381  6 
	push 6
// Line 381  3 
	push 3
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 381 (-  15   4 )
// Line 381  15 
	push 15
// Line 381  4 
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 381  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 381  33 
	push 33
// Line 381  381 
	push 381
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
// Line 382 (CALL assert_expect ( 382 : 0 :(==  3  (+  3   1 )):) )
// Line 382 (==  3  (+  3   1 ))
// Line 382  3 
	push 3
// Line 382 (+  3   1 )
// Line 382  3 
	push 3
// Line 382  1 
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
// Line 382  0 
	push 0
// Line 382  382 
	push 382
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
// Line 383 (CALL assert_expect ( 383 : 1 :(!=  4  (*  4   2 )):) )
// Line 383 (!=  4  (*  4   2 ))
// Line 383  4 
	push 4
// Line 383 (*  4   2 )
// Line 383  4 
	push 4
// Line 383  2 
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
// Line 383  1 
	push 1
// Line 383  383 
	push 383
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
// Line 384 (CALL assert_expect ( 384 : 0 :(!=  3  (*  1   3 )):) )
// Line 384 (!=  3  (*  1   3 ))
// Line 384  3 
	push 3
// Line 384 (*  1   3 )
// Line 384  1 
	push 1
// Line 384  3 
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
// Line 384  0 
	push 0
// Line 384  384 
	push 384
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
// Line 385 (CALL assert_expect ( 385 : 1 :(>=  5  (-  8   4 )):) )
// Line 385 (>=  5  (-  8   4 ))
// Line 385  5 
	push 5
// Line 385 (-  8   4 )
// Line 385  8 
	push 8
// Line 385  4 
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
// Line 385  1 
	push 1
// Line 385  385 
	push 385
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
// Line 386 (CALL assert_expect ( 386 : 1 :(>=  5  (-  7   2 )):) )
// Line 386 (>=  5  (-  7   2 ))
// Line 386  5 
	push 5
// Line 386 (-  7   2 )
// Line 386  7 
	push 7
// Line 386  2 
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
// Line 386  1 
	push 1
// Line 386  386 
	push 386
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
// Line 387 (CALL assert_expect ( 387 : 0 :(>= (-  11   8 )  5 ):) )
// Line 387 (>= (-  11   8 )  5 )
// Line 387 (-  11   8 )
// Line 387  11 
	push 11
// Line 387  8 
	push 8
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 387  5 
	push 5
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 387  0 
	push 0
// Line 387  387 
	push 387
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
// Line 388 (CALL assert_expect ( 388 : 1 :(<= (*  2   30 )  3 ):) )
// Line 388 (<= (*  2   30 )  3 )
// Line 388 (*  2   30 )
// Line 388  2 
	push 2
// Line 388  30 
	push 30
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 388  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 388  1 
	push 1
// Line 388  388 
	push 388
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
// Line 389 (CALL assert_expect ( 389 : 1 :(<= (/  9   3 )  3 ):) )
// Line 389 (<= (/  9   3 )  3 )
// Line 389 (/  9   3 )
// Line 389  9 
	push 9
// Line 389  3 
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 389  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 389  1 
	push 1
// Line 389  389 
	push 389
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
// Line 390 (CALL assert_expect ( 390 : 0 :(<= (-  20   18 )  3 ):) )
// Line 390 (<= (-  20   18 )  3 )
// Line 390 (-  20   18 )
// Line 390  20 
	push 20
// Line 390  18 
	push 18
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 390  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 390  0 
	push 0
// Line 390  390 
	push 390
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
// Line 391 (CALL assert_expect ( 391 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) )
// Line 391 (== (+ (* (-  0   5 )  2 )  10 )  0 )
// Line 391 (+ (* (-  0   5 )  2 )  10 )
// Line 391 (* (-  0   5 )  2 )
// Line 391 (-  0   5 )
// Line 391  0 
	push 0
// Line 391  5 
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 391  2 
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 391  10 
	push 10
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 391  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
// Line 391  1 
	push 1
// Line 391  391 
	push 391
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
// Line 392 (CALL assert_expect ( 392 : 1 :(== (/  6   2 ) (/  9   3 )):) )
// Line 392 (== (/  6   2 ) (/  9   3 ))
// Line 392 (/  6   2 )
// Line 392  6 
	push 6
// Line 392  2 
	push 2
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 392 (/  9   3 )
// Line 392  9 
	push 9
// Line 392  3 
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
// Line 392  1 
	push 1
// Line 392  392 
	push 392
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
// Line 393 (CALL assert_expect ( 393 : 1 :(< (+  4   1 )  4 ):) )
// Line 393 (< (+  4   1 )  4 )
// Line 393 (+  4   1 )
// Line 393  4 
	push 4
// Line 393  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 393  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 393  1 
	push 1
// Line 393  393 
	push 393
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
// Line 394 (CALL assert_expect ( 394 : 1 :(> (+  1   4 )  4 ):) )
// Line 394 (> (+  1   4 )  4 )
// Line 394 (+  1   4 )
// Line 394  1 
	push 1
// Line 394  4 
	push 4
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 394  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 394  1 
	push 1
// Line 394  394 
	push 394
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
// Line 395 (CALL assert_expect ( 395 : 0 :(< (-  4   1 )  4 ):) )
// Line 395 (< (-  4   1 )  4 )
// Line 395 (-  4   1 )
// Line 395  4 
	push 4
// Line 395  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 395  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 395  0 
	push 0
// Line 395  395 
	push 395
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000252
	mov  rax, 0
	call assert_expect
	jmp  .L000253
.L000252:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000253:
	push rax
	pop  rax
// Line 396 (CALL assert_expect ( 396 : 0 :(> (-  1   4 )  4 ):) )
// Line 396 (> (-  1   4 )  4 )
// Line 396 (-  1   4 )
// Line 396  1 
	push 1
// Line 396  4 
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 396  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 396  0 
	push 0
// Line 396  396 
	push 396
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
// Line 398 (CALL assert_expect ( 398 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 398 (&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 398  0 
	push 0
	pop  rax
	cmp  eax, 0
	je   .L000256
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
	je   .L000256
	mov  rax, 1
	jmp  .L000257
.L000256:
	mov  rax, 0
.L000257:
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
	jnz  .L000258
	mov  rax, 0
	call assert_expect
	jmp  .L000259
.L000258:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000259:
	push rax
	pop  rax
// Line 399 (CALL assert_expect ( 399 : 0 :(LVAR 12):) )
// Line 399 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 399  0 
	push 0
// Line 399  399 
	push 399
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
// Line 400 (CALL assert_expect ( 400 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 400 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 400  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000262
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
	je   .L000262
	mov  rax, 1
	jmp  .L000263
.L000262:
	mov  rax, 0
.L000263:
	push  rax
// Line 400  0 
	push 0
// Line 400  400 
	push 400
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000264
	mov  rax, 0
	call assert_expect
	jmp  .L000265
.L000264:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000265:
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
// Line 402 (CALL assert_expect ( 402 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 402 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 402  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000268
// Line 402 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 402 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 402 (++ (LVAR 12)  1 )
// Line 402 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 402  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 402  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000268
	mov  rax, 1
	jmp  .L000269
.L000268:
	mov  rax, 0
.L000269:
	push  rax
// Line 402  1 
	push 1
// Line 402  402 
	push 402
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000270
	mov  rax, 0
	call assert_expect
	jmp  .L000271
.L000270:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000271:
	push rax
	pop  rax
// Line 403 (CALL assert_expect ( 403 : 2 :(LVAR 12):) )
// Line 403 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 403  2 
	push 2
// Line 403  403 
	push 403
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
// Line 404 (CALL assert_expect ( 404 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 404 (||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 404  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000274
// Line 404 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 404 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 404 (++ (LVAR 12)  1 )
// Line 404 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 404  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 404  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000274
	mov  rax, 0
	jmp  .L000275
.L000274:
	mov  rax, 1
.L000275:
	push  rax
// Line 404  1 
	push 1
// Line 404  404 
	push 404
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000276
	mov  rax, 0
	call assert_expect
	jmp  .L000277
.L000276:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000277:
	push rax
	pop  rax
// Line 405 (CALL assert_expect ( 405 : 3 :(LVAR 12):) )
// Line 405 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 405  3 
	push 3
// Line 405  405 
	push 405
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
// Line 406 (CALL assert_expect ( 406 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 406 (||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 406  1 
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000280
// Line 406 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 406 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 406 (++ (LVAR 12)  1 )
// Line 406 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 406  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 406  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000280
	mov  rax, 0
	jmp  .L000281
.L000280:
	mov  rax, 1
.L000281:
	push  rax
// Line 406  1 
	push 1
// Line 406  406 
	push 406
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000282
	mov  rax, 0
	call assert_expect
	jmp  .L000283
.L000282:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000283:
	push rax
	pop  rax
// Line 407 (CALL assert_expect ( 407 : 3 :(LVAR 12):) )
// Line 407 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 407  3 
	push 3
// Line 407  407 
	push 407
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
// Line 408 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 408  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 409 (CALL assert_expect ( 409 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 409 (||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 409  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000286
// Line 409 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 409 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 409 (++ (LVAR 12)  1 )
// Line 409 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 409  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 409  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000286
	mov  rax, 0
	jmp  .L000287
.L000286:
	mov  rax, 1
.L000287:
	push  rax
// Line 409  0 
	push 0
// Line 409  409 
	push 409
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000288
	mov  rax, 0
	call assert_expect
	jmp  .L000289
.L000288:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000289:
	push rax
	pop  rax
// Line 410 (CALL assert_expect ( 410 : 1 :(LVAR 12):) )
// Line 410 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 410  1 
	push 1
// Line 410  410 
	push 410
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000290
	mov  rax, 0
	call assert_expect
	jmp  .L000291
.L000290:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000291:
	push rax
	pop  rax
// Line 411 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 411  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 412 (CALL assert_expect ( 412 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) )
// Line 412 (||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )))
// Line 412  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000292
// Line 412 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 412  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000294
// Line 412 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 412 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 412 (++ (LVAR 12)  1 )
// Line 412 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 412  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 412  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000294
	mov  rax, 1
	jmp  .L000295
.L000294:
	mov  rax, 0
.L000295:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000292
	mov  rax, 0
	jmp  .L000293
.L000292:
	mov  rax, 1
.L000293:
	push  rax
// Line 412  0 
	push 0
// Line 412  412 
	push 412
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000296
	mov  rax, 0
	call assert_expect
	jmp  .L000297
.L000296:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000297:
	push rax
	pop  rax
// Line 413 (CALL assert_expect ( 413 : 1 :(LVAR 12):) )
// Line 413 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 413  1 
	push 1
// Line 413  413 
	push 413
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000298
	mov  rax, 0
	call assert_expect
	jmp  .L000299
.L000298:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000299:
	push rax
	pop  rax
// Line 414 (CALL assert_expect ( 414 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
// Line 414 (|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
// Line 414 (&&  1   1 )
// Line 414  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000302
// Line 414  1 
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000302
	mov  rax, 1
	jmp  .L000303
.L000302:
	mov  rax, 0
.L000303:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000300
// Line 414 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 414 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 414 (++ (LVAR 12)  1 )
// Line 414 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 414  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 414  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000300
	mov  rax, 0
	jmp  .L000301
.L000300:
	mov  rax, 1
.L000301:
	push  rax
// Line 414  1 
	push 1
// Line 414  414 
	push 414
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000304
	mov  rax, 0
	call assert_expect
	jmp  .L000305
.L000304:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000305:
	push rax
	pop  rax
// Line 415 (CALL assert_expect ( 415 : 1 :(LVAR 12):) )
// Line 415 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 415  1 
	push 1
// Line 415  415 
	push 415
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
// Line 416 (CALL assert_expect ( 416 : 1 :(!  0 ):) )
// Line 416 (!  0 )
// Line 416  0 
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000308
	mov  rax, 1
	jmp  .L000309
.L000308:
	mov  rax, 0
.L000309:
	push rax
// Line 416  1 
	push 1
// Line 416  416 
	push 416
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
// Line 417 (CALL assert_expect ( 417 : 0 :(!  1 ):) )
// Line 417 (!  1 )
// Line 417  1 
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000312
	mov  rax, 1
	jmp  .L000313
.L000312:
	mov  rax, 0
.L000313:
	push rax
// Line 417  0 
	push 0
// Line 417  417 
	push 417
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000314
	mov  rax, 0
	call assert_expect
	jmp  .L000315
.L000314:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000315:
	push rax
	pop  rax
// Line 418 (CALL assert_expect ( 418 : 0 :(! (! (!  1 ))):) )
// Line 418 (! (! (!  1 )))
// Line 418 (! (!  1 ))
// Line 418 (!  1 )
// Line 418  1 
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000320
	mov  rax, 1
	jmp  .L000321
.L000320:
	mov  rax, 0
.L000321:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000318
	mov  rax, 1
	jmp  .L000319
.L000318:
	mov  rax, 0
.L000319:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000316
	mov  rax, 1
	jmp  .L000317
.L000316:
	mov  rax, 0
.L000317:
	push rax
// Line 418  0 
	push 0
// Line 418  418 
	push 418
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
// Line 420 (CALL assert_expect ( 420 : 256 :(<<  1   8 ):) )
// Line 420 (<<  1   8 )
// Line 420  1 
	push 1
// Line 420  8 
	push 8
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 420  256 
	push 256
// Line 420  420 
	push 420
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
// Line 421 (CALL assert_expect ( 421 : 32 :(>>  512   4 ):) )
// Line 421 (>>  512   4 )
// Line 421  512 
	push 512
// Line 421  4 
	push 4
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 421  32 
	push 32
// Line 421  421 
	push 421
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
// Line 425 (= (LVAR 16)  10 )
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 425  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 426 (CALL assert_expect ( 426 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) )
// Line 426 (= (LVAR 16) (+= (LVAR 16)  5 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 426 (+= (LVAR 16)  5 )
// Line 426 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 426  5 
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 426  15 
	push 15
// Line 426  426 
	push 426
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
// Line 427 (CALL assert_expect ( 427 : 15 :(LVAR 16):) )
// Line 427 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 427  15 
	push 15
// Line 427  427 
	push 427
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
// Line 428 (CALL assert_expect ( 428 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) )
// Line 428 (= (LVAR 16) (-= (LVAR 16)  7 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 428 (-= (LVAR 16)  7 )
// Line 428 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 428  7 
	push 7
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 428  8 
	push 8
// Line 428  428 
	push 428
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
// Line 429 (CALL assert_expect ( 429 : 8 :(LVAR 16):) )
// Line 429 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 429  8 
	push 8
// Line 429  429 
	push 429
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
// Line 430 (CALL assert_expect ( 430 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) )
// Line 430 (= (LVAR 16) (*= (LVAR 16)  5 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 430 (*= (LVAR 16)  5 )
// Line 430 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 430  5 
	push 5
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 430  40 
	push 40
// Line 430  430 
	push 430
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
// Line 431 (CALL assert_expect ( 431 : 40 :(LVAR 16):) )
// Line 431 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 431  40 
	push 40
// Line 431  431 
	push 431
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
// Line 432 (CALL assert_expect ( 432 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) )
// Line 432 (= (LVAR 16) (/= (LVAR 16)  10 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 432 (/= (LVAR 16)  10 )
// Line 432 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 432  10 
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
// Line 432  4 
	push 4
// Line 432  432 
	push 432
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
// Line 433 (CALL assert_expect ( 433 : 4 :(LVAR 16):) )
// Line 433 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 433  4 
	push 4
// Line 433  433 
	push 433
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
// Line 436 (CALL assert_expect ( 436 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) )
// Line 436 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 436 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 436 (++ (LVAR 16)  1 )
// Line 436 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 436  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 436  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 436  4 
	push 4
// Line 436  436 
	push 436
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
// Line 437 (CALL assert_expect ( 437 : 5 :(LVAR 16):) )
// Line 437 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 437  5 
	push 5
// Line 437  437 
	push 437
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000346
	mov  rax, 0
	call assert_expect
	jmp  .L000347
.L000346:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000347:
	push rax
	pop  rax
// Line 438 (CALL assert_expect ( 438 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) )
// Line 438 (-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 )
// Line 438 (= (LVAR 16) (-- (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 438 (-- (LVAR 16)  1 )
// Line 438 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 438  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 438  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 438  5 
	push 5
// Line 438  438 
	push 438
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
// Line 439 (CALL assert_expect ( 439 : 4 :(LVAR 16):) )
// Line 439 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 439  4 
	push 4
// Line 439  439 
	push 439
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000350
	mov  rax, 0
	call assert_expect
	jmp  .L000351
.L000350:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000351:
	push rax
	pop  rax
// Line 443 (= (LVAR 20) (/  100  (LVAR 16)))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 443 (/  100  (LVAR 16))
// Line 443  100 
	push 100
// Line 443 (LVAR 16)
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
// Line 444 (CALL assert_expect ( 444 : 25 :(LVAR 20):) )
// Line 444 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 444  25 
	push 25
// Line 444  444 
	push 444
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
// Line 447 (= (LVAR 24)  77 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 447  77 
	push 77
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 452 (IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 ))
// Line 448 (== (LVAR 24)  77 )
// Line 448 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 448  77 
	push 77
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000354
// Line 449 (= (LVAR 24)  55 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 449  55 
	push 55
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000355
.L000354:
// Line 451 (= (LVAR 24)  66 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 451  66 
	push 66
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000355:
// Line 452 (CALL assert_expect ( 452 : 55 :(LVAR 24):) )
// Line 452 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 452  55 
	push 55
// Line 452  452 
	push 452
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000356
	mov  rax, 0
	call assert_expect
	jmp  .L000357
.L000356:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000357:
	push rax
	pop  rax
// Line 453 (CALL assert_expect ( 453 : 1346269 :(CALL fibo ( 30 :) ):) )
// Line 453 (CALL fibo ( 30 :) )
// Line 453  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000358
	mov  rax, 0
	call fibo
	jmp  .L000359
.L000358:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000359:
	push rax
// Line 453  1346269 
	push 1346269
// Line 453  453 
	push 453
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000360
	mov  rax, 0
	call assert_expect
	jmp  .L000361
.L000360:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000361:
	push rax
	pop  rax
// Line 454 (CALL array_global () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000362
	mov  rax, 0
	call array_global
	jmp  .L000363
.L000362:
	sub  rsp, 8
	mov  rax, 0
	call array_global
	add  rsp, 8
.L000363:
	push rax
	pop  rax
// Line 455 (CALL array_local () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000364
	mov  rax, 0
	call array_local
	jmp  .L000365
.L000364:
	sub  rsp, 8
	mov  rax, 0
	call array_local
	add  rsp, 8
.L000365:
	push rax
	pop  rax
// Line 456 (CALL string () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000366
	mov  rax, 0
	call string
	jmp  .L000367
.L000366:
	sub  rsp, 8
	mov  rax, 0
	call string
	add  rsp, 8
.L000367:
	push rax
	pop  rax
// Line 457 (CALL block_scope () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000368
	mov  rax, 0
	call block_scope
	jmp  .L000369
.L000368:
	sub  rsp, 8
	mov  rax, 0
	call block_scope
	add  rsp, 8
.L000369:
	push rax
	pop  rax
// Line 458 (CALL for_ () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000370
	mov  rax, 0
	call for_
	jmp  .L000371
.L000370:
	sub  rsp, 8
	mov  rax, 0
	call for_
	add  rsp, 8
.L000371:
	push rax
	pop  rax
// Line 459 (CALL list_ () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000372
	mov  rax, 0
	call list_
	jmp  .L000373
.L000372:
	sub  rsp, 8
	mov  rax, 0
	call list_
	add  rsp, 8
.L000373:
	push rax
	pop  rax
// Line 460 (CALL struct_ () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000374
	mov  rax, 0
	call struct_
	jmp  .L000375
.L000374:
	sub  rsp, 8
	mov  rax, 0
	call struct_
	add  rsp, 8
.L000375:
	push rax
	pop  rax
// Line 466 (CALL assert_expect ( 466 : 11 :(CALL switch_ ( 1 :) ):) )
// Line 466 (CALL switch_ ( 1 :) )
// Line 466  1 
	push 1
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
// Line 466  11 
	push 11
// Line 466  466 
	push 466
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
// Line 467 (CALL assert_expect ( 467 : 13 :(CALL switch_ ( 2 :) ):) )
// Line 467 (CALL switch_ ( 2 :) )
// Line 467  2 
	push 2
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
// Line 467  13 
	push 13
// Line 467  467 
	push 467
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
// Line 468 (CALL assert_expect ( 468 : 13 :(CALL switch_ ( 3 :) ):) )
// Line 468 (CALL switch_ ( 3 :) )
// Line 468  3 
	push 3
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
// Line 468  13 
	push 13
// Line 468  468 
	push 468
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
// Line 469 (CALL assert_expect ( 469 : 13 :(CALL switch_ ( 4 :) ):) )
// Line 469 (CALL switch_ ( 4 :) )
// Line 469  4 
	push 4
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
// Line 469  13 
	push 13
// Line 469  469 
	push 469
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
// Line 470 (CALL assert_expect ( 470 : 15 :(CALL switch_ ( 5 :) ):) )
// Line 470 (CALL switch_ ( 5 :) )
// Line 470  5 
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000392
	mov  rax, 0
	call switch_
	jmp  .L000393
.L000392:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000393:
	push rax
// Line 470  15 
	push 15
// Line 470  470 
	push 470
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
// Line 471 (CALL assert_expect ( 471 : 15 :(CALL switch_ ( 6 :) ):) )
// Line 471 (CALL switch_ ( 6 :) )
// Line 471  6 
	push 6
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000396
	mov  rax, 0
	call switch_
	jmp  .L000397
.L000396:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000397:
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
// Line 474 (CALL assert_expect ( 474 : 11 :(CALL switch2_ ( 97 :) ):) )
// Line 474 (CALL switch2_ ( 97 :) )
// Line 474  97 
	push 97
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
// Line 474  11 
	push 11
// Line 474  474 
	push 474
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
// Line 475 (CALL assert_expect ( 475 : 12 :(CALL switch2_ ( 98 :) ):) )
// Line 475 (CALL switch2_ ( 98 :) )
// Line 475  98 
	push 98
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
// Line 475  12 
	push 12
// Line 475  475 
	push 475
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
// Line 476 (CALL assert_expect ( 476 : 12 :(CALL switch2_ ( 99 :) ):) )
// Line 476 (CALL switch2_ ( 99 :) )
// Line 476  99 
	push 99
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000408
	mov  rax, 0
	call switch2_
	jmp  .L000409
.L000408:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000409:
	push rax
// Line 476  12 
	push 12
// Line 476  476 
	push 476
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
// Line 477 (CALL assert_expect ( 477 : 15 :(CALL switch2_ ( 122 :) ):) )
// Line 477 (CALL switch2_ ( 122 :) )
// Line 477  122 
	push 122
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000412
	mov  rax, 0
	call switch2_
	jmp  .L000413
.L000412:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000413:
	push rax
// Line 477  15 
	push 15
// Line 477  477 
	push 477
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
// Line 480 (CALL assert_expect ( 480 : 92 :(CALL q8 () ):) )
// Line 480 (CALL q8 () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000416
	mov  rax, 0
	call q8
	jmp  .L000417
.L000416:
	sub  rsp, 8
	mov  rax, 0
	call q8
	add  rsp, 8
.L000417:
	push rax
// Line 480  92 
	push 92
// Line 480  480 
	push 480
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
// Line 483 (CALL assert_expect ( 483 : 0 : 0 :) )
// Line 483  0 
	push 0
// Line 483  0 
	push 0
// Line 483  483 
	push 483
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
// Line 484 (CALL assert_expect ( 484 : 1 : 1 :) )
// Line 484  1 
	push 1
// Line 484  1 
	push 1
// Line 484  484 
	push 484
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
// Line 485 (CALL assert_expect ( 485 : 2 : 2 :) )
// Line 485  2 
	push 2
// Line 485  2 
	push 2
// Line 485  485 
	push 485
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
// Line 486 (CALL assert_expect ( 486 : 3 : 3 :) )
// Line 486  3 
	push 3
// Line 486  3 
	push 3
// Line 486  486 
	push 486
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
// Line 488 (CALL assert_expect ( 488 : 15 :(|  13   7 ):) )
// Line 488 (|  13   7 )
// Line 488  13 
	push 13
// Line 488  7 
	push 7
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 488  15 
	push 15
// Line 488  488 
	push 488
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
// Line 489 (CALL assert_expect ( 489 : 5115 :(|  938   5073 ):) )
// Line 489 (|  938   5073 )
// Line 489  938 
	push 938
// Line 489  5073 
	push 5073
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 489  5115 
	push 5115
// Line 489  489 
	push 489
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
// Line 490 (CALL assert_expect ( 490 : 5 :(&  13   7 ):) )
// Line 490 (&  13   7 )
// Line 490  13 
	push 13
// Line 490  7 
	push 7
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 490  5 
	push 5
// Line 490  490 
	push 490
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
// Line 491 (CALL assert_expect ( 491 : 896 :(&  938   5073 ):) )
// Line 491 (&  938   5073 )
// Line 491  938 
	push 938
// Line 491  5073 
	push 5073
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 491  896 
	push 896
// Line 491  491 
	push 491
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
// Line 492 (CALL assert_expect ( 492 : 10 :(^  13   7 ):) )
// Line 492 (^  13   7 )
// Line 492  13 
	push 13
// Line 492  7 
	push 7
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 492  10 
	push 10
// Line 492  492 
	push 492
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000436
	mov  rax, 0
	call assert_expect
	jmp  .L000437
.L000436:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000437:
	push rax
	pop  rax
// Line 493 (CALL assert_expect ( 493 : 4219 :(^  938   5073 ):) )
// Line 493 (^  938   5073 )
// Line 493  938 
	push 938
// Line 493  5073 
	push 5073
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 493  4219 
	push 4219
// Line 493  493 
	push 493
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000438
	mov  rax, 0
	call assert_expect
	jmp  .L000439
.L000438:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000439:
	push rax
	pop  rax
// Line 495 (CALL assert_expect ( 495 : 29 :(>>  938   5 ):) )
// Line 495 (>>  938   5 )
// Line 495  938 
	push 938
// Line 495  5 
	push 5
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 495  29 
	push 29
// Line 495  495 
	push 495
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000440
	mov  rax, 0
	call assert_expect
	jmp  .L000441
.L000440:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000441:
	push rax
	pop  rax
// Line 496 (CALL assert_expect ( 496 : 1664 :(<<  13   7 ):) )
// Line 496 (<<  13   7 )
// Line 496  13 
	push 13
// Line 496  7 
	push 7
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 496  1664 
	push 1664
// Line 496  496 
	push 496
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000442
	mov  rax, 0
	call assert_expect
	jmp  .L000443
.L000442:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000443:
	push rax
	pop  rax
// Line 498 (CALL printf_ ((ADDR  "passed tests.\n" ):) )
// Line 498 (ADDR  "passed tests.\n" )
	lea  rax, .LS000029[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000444
	mov  rax, 0
	call printf_
	jmp  .L000445
.L000444:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000445:
	push rax
	pop  rax
// Line 499 (RETURN  0 )
// Line 499  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret

// <typedef><struct>[{]<char>[mode][;]
// <char>[*][ptr][;]
// <int>[rcount][;]
// <int>[wcount][;]
// <char>[*][base][;]
// <int>[bufsiz][;]
// <int>[fd][;]
// <char>[smallbuf][[][1][]][;]
// [}][FILE][;]
// <typedef><int>[size_t][;]
// <void>[*][calloc][(]<int>[n][,]<int>[size][)][;]
// <void>[*][malloc][(]<int>[size][)][;]
// <void>[*][realloc][(]<void>[*][ptr][,]<int>[size][)][;]
// <int>[isalnum][(]<int>[c][)][;]
// <int>[strlen][(]<char>[*][s][)][;]
// <char>[*][strchr][(]<char>[*][s][,]<int>[c][)][;]
// <char>[*][strrchr][(]<char>[*][s][,]<int>[c][)][;]
// <int>[strncmp][(]<char>[*][str][,]<char>[*][reserved][,]<int>[len][)][;]
// <int>[strcmp][(]<char>[*][str1][,]<char>[*][str2][)][;]
// <char>[*][strcpy][(]<char>[*][dest][,]<char>[*][src][)][;]
// <char>[*][strncpy][(]<char>[*][dest][,]<char>[*][src][,][size_t][n][)][;]
// <int>[isspace][(]<int>[p][)][;]
// <int>[isdigit][(]<int>[p][)][;]
// <int>[isalpha][(]<int>[p][)][;]
// <void>[memcpy][(]<void>[*][dest][,]<void>[*][src][,]<int>[len][)][;]
// <int>[memcmp][(]<void>[*][dest][,]<void>[*][src][,]<int>[len][)][;]
// <int>[printf][(]<char>[*][fmt][,][...][)][;]
// <int>[fprintf][(][FILE][*][stream][,]<char>[*][fmt][,][...][)][;]
// <int>[sprintf][(]<char>[*][str][,]<char>[*][fmt][,][...][)][;]
// [FILE][*][fopen][(]<char>[*][p][,]<char>[*][mode][)][;]
// <int>[fseek][(][FILE][*][fp][,]<int>[n][,]<int>[seek_end][)][;]
// <void>[fread][(]<char>[*][buf][,]<int>[size][,]<int>[n][,][FILE][*][fp][)][;]
// <int>[ftell][(][FILE][*][fp][)][;]
// <void>[fclose][(][FILE][*][fp][)][;]
// <char>[*][strerror][(]<int>[n][)][;]
// <void>[exit][(]<int>[status][)][;]
// <extern>[FILE][*][stderr][;]
// <extern>[FILE][*][stdout][;]
// <extern><int>[*][__geterrno][(][)][;]
// <typedef><struct>[FileInfo][FileInfo][;]
// <struct>[FileInfo][{][FileInfo][*][next][;]
// <char>[*][file_name][;]
// <char>[*][start][;]
// <char>[*][end][;]
// [}][;]
// <typedef><enum>[TokenKind][TokenKind][;]
// <enum>[TokenKind][{][TK_IDENT][,][TK_NUM][,][TK_STR][,][TK_ADD][,][TK_SUB][,][TK_MUL][,][TK_DIV][,][TK_EQ][,][TK_NEQ][,][TK_GT][,][TK_GE][,][TK_LT][,][TK_LE][,][TK_ASSIGN][,][TK_ASSIGN_ADD][,][TK_ASSIGN_SUB][,][TK_ASSIGN_MUL][,][TK_ASSIGN_DIV][,][TK_INC][,][TK_DEC][,][TK_LAND][,][TK_LOR][,][TK_AND][,][TK_OR][,][TK_XOR][,][TK_NOT][,][TK_SHR][,][TK_SHL][,][TK_SEMI][,][TK_OP_PAREN][,][TK_CL_PAREN][,][TK_OP_BRACE][,][TK_CL_BRACE][,][TK_OP_BRACKET][,][TK_CL_BRACKET][,][TK_COMMA][,][TK_COLON][,][TK_DOT][,][TK_ARROW][,][TK_ELLIPSIS][,][TK_IF][,][TK_ELSE][,][TK_WHILE][,][TK_FOR][,][TK_SWITCH][,][TK_CASE][,][TK_DEFAULT][,][TK_BREAK][,][TK_CONTINUE][,][TK_RETURN][,][TK_SIZEOF][,][TK_INT][,][TK_CHAR][,][TK_BOOL][,][TK_VOID][,][TK_STRUCT][,][TK_ENUM][,][TK_UNION][,][TK_EXTERN][,][TK_TYPEDEF][,][TK_EOF][,][TK_MACRO][,][}][;]
// <typedef><struct>[Token][Token][;]
// <struct>[Token][{][TokenKind][kind][;]
// [Token][*][next][;]
// <int>[int_val][;]
// <char>[*][str][;]
// <int>[len][;]
// [}][;]
// <typedef><struct>[MemberInfo][MemberInfo][;]
// <typedef><struct>[Type][Type][;]
// <struct>[MemberInfo][{][MemberInfo][*][next][;]
// [Token][*][ident][;]
// [Type][*][type][;]
// <int>[offset][;]
// [}][;]
// <struct>[Type][{]<enum>[{][VOID][,][INT][,][CHAR][,][BOOL][,][PTR][,][ARRAY][,][FUNC][,][STRUCT][,][ENUM][,][ENUM_EL][}][ty][;]
// [Type][*][ptr_to][;]
// <int>[array_size][;]
// [MemberInfo][*][params][;]
// [MemberInfo][*][member][;]
// <int>[offset][;]
// [Token][*][tag_name][;]
// [}][;]
// <typedef><enum>[{][ND_IDENT][,][ND_NUM][,][ND_STR][,][ND_INIT][,][ND_ADD][,][ND_SUB][,][ND_MUL][,][ND_DIV][,][ND_EQ][,][ND_NEQ][,][ND_GE][,][ND_GT][,][ND_LAND][,][ND_LOR][,][ND_NOT][,][ND_AND][,][ND_OR][,][ND_XOR][,][ND_SHR][,][ND_SHL][,][ND_ASSIGN][,][ND_ADDR][,][ND_DEREF][,][ND_LVAR][,][ND_GVAR][,][ND_CALL][,][ND_MEMBER][,][ND_CAST][,][ND_IF][,][ND_WHILE][,][ND_FOR][,][ND_SWITCH][,][ND_CASE][,][ND_DEFAULT][,][ND_RETURN][,][ND_BREAK][,][ND_CONTINUE][,][ND_BLOCK][,][ND_FDECL][,][}][NodeKind][;]
// <typedef><struct>[LVar][LVar][;]
// <struct>[LVar][{][LVar][*][next][;]
// [Token][*][token][;]
// [Type][*][type][;]
// <int>[offset][;]
// [LVar][*][scope][;]
// <bool>[scope_head][;]
// [}][;]
// <typedef><struct>[Node][Node][;]
// <typedef><struct>[Vector][Vector][;]
// <struct>[Node][{][NodeKind][kind][;]
// [Node][*][lhs][;]
// [Node][*][rhs][;]
// [Node][*][xhs][;]
// <int>[int_val][;]
// [LVar][*][lvar][;]
// <int>[offset][;]
// <char>[*][label][;]
// [Vector][*][nodes][;]
// [Token][*][token][;]
// [Type][*][type][;]
// [}][;]
// <typedef><struct>[Global][Global][;]
// <struct>[Global][{][Global][*][next][;]
// [Token][*][token][;]
// [Type][*][type][;]
// [Node][*][body][;]
// <bool>[is_extern][;]
// [}][;]
// <typedef><struct>[TagName][TagName][;]
// <struct>[TagName][{][TagName][*][next][;]
// [Token][*][ident][;]
// [Type][*][type][;]
// [}][;]
// [TagName][*][find_tag][(][Token][*][token][)][;]
// <typedef><struct>[Typedef][Typedef][;]
// <struct>[Typedef][{][Typedef][*][next][;]
// [Type][*][type][;]
// [Token][*][ident][;]
// [}][;]
// [Type][*][find_typedef][(][Token][*][ident][)][;]
// <typedef><struct>[Vector][Vector][;]
// <struct>[Vector][{][Node][*][*][data][;]
// <int>[len][;]
// <int>[capacity][;]
// [}][;]
// <char>[*][read_file][(]<char>[*][path][)][;]
// [Token][*][new_token][(][TokenKind][kind][,][Token][*][cur][,]<char>[*][str][,]<int>[len][)][;]
// <int>[get_line][(]<char>[*][p][,]<char>[*][source][)][;]
// <void>[error][(]<char>[*][fmt][,][...][)][;]
// <void>[error_at_char][(][FileInfo][*][fi][,]<char>[*][source][,]<char>[*][fmt][,][...][)][;]
// <void>[error_at_token][(][Token][*][token][,]<char>[*][fmt][,][...][)][;]
// <void>[error_at_node][(][Node][*][node][,]<char>[*][fmt][,][...][)][;]
// <void>[print_tokens][(][Token][*][token][)][;]
// <void>[tokenize][(]<char>[*][file][,]<char>[*][source][,]<bool>[is_main][)][;]
// [Node][*][new_node_binary][(][NodeKind][kind][,][Node][*][lhs][,][Node][*][rhs][,][Token][*][token][)][;]
// [Node][*][new_node_num][(]<int>[val][,][Token][*][token][)][;]
// <bool>[is_binary_op][(][NodeKind][kind][)][;]
// <bool>[is_expr][(][NodeKind][kind][)][;]
// <void>[parse_program][(][)][;]
// <void>[assert_expect][(]<int>[line][,]<int>[expected][,]<int>[actual][)][;]
// <void>[print_token][(][FILE][*][stream][,][Token][*][token][)][;]
// <void>[print_nodes][(][)][;]
// <void>[print_node][(][Node][*][node][)][;]
// <void>[print_locals][(][)][;]
// <void>[print_globals][(][)][;]
// <void>[print_strings][(][)][;]
// <void>[print_funcs][(][)][;]
// <void>[print_structs][(][)][;]
// <void>[print_struct_member][(][FILE][*][stream][,][MemberInfo][*][member][)][;]
// <void>[print_type][(][FILE][*][stream][,][Type][*][type][)][;]
// <void>[error_types][(][Type][*][l_ty][,][Type][*][r_ty][)][;]
// <void>[print_typedefs][(][)][;]
// <void>[test_vec][(][)][;]
// <void>[test_expression][(][)][;]
// [Type][*][new_type_int][(][)][;]
// [Type][*][new_type_bool][(][)][;]
// [Type][*][new_type_void][(][)][;]
// [Type][*][new_type_char][(][)][;]
// [Type][*][new_type_ptr_to][(][Type][*][ptr_to][)][;]
// [Type][*][new_type_array][(][Type][*][ptr_to][,]<int>[size][)][;]
// [Type][*][new_type_func][(][Type][*][return_type][)][;]
// [Type][*][new_type_struct][(][)][;]
// [Type][*][new_type_enum][(][)][;]
// [Type][*][new_type_enum_el][(]<int>[i][)][;]
// <int>[sizeof_type][(][Type][*][type][)][;]
// [Type][*][type][(][Node][*][node][)][;]
// [Node][*][get_ptr_if_array][(][Node][*][node][)][;]
// <bool>[is_char][(][Type][*][type][)][;]
// <bool>[is_int][(][Type][*][type][)][;]
// <bool>[is_ptr][(][Type][*][type][)][;]
// <bool>[is_array][(][Type][*][type][)][;]
// <bool>[is_func][(][Type][*][type][)][;]
// <bool>[is_struct][(][Type][*][type][)][;]
// <bool>[is_enum][(][Type][*][type][)][;]
// <bool>[is_enum_el][(][Type][*][type][)][;]
// <bool>[is_ptr_to_char][(][Type][*][type][)][;]
// <bool>[is_array_of_char][(][Type][*][type][)][;]
// <bool>[is_aryth][(][Type][*][type][)][;]
// <bool>[is_identical_type][(][Type][*][l_type][,][Type][*][r_type][)][;]
// <bool>[is_compatible_type][(][Type][*][l_type][,][Type][*][r_type][)][;]
// <bool>[is_assignable_type][(][Type][*][l_type][,][Type][*][r_type][)][;]
// <int>[alignof_type][(][Type][*][type][)][;]
// <int>[align_to][(]<int>[n][,]<int>[align][)][;]
// [Vector][*][vec_new][(][)][;]
// <int>[vec_len][(][Vector][*][vec][)][;]
// <void>[vec_push][(][Vector][*][vec][,][Node][*][data][)][;]
// <void>[gen][(][Node][*][node][)][;]
// <void>[gen_stmt][(][Node][*][node][)][;]
// <typedef><struct>[Macro][Macro][;]
// <struct>[Macro][{][Macro][*][next][;]
// [Token][*][token][;]
// [Token][*][subst][;]
// [}][;]
// [Macro][*][new_macro][(][Token][*][token][,][Token][*][subst][)][;]
// [Token][*][find_macro][(][Token][*][token][)][;]
// <extern><char>[*][source_text][;]
// <extern><char>[registers][[][4][]][[][5][]][[][4][]][;]
// <extern>[FileInfo][*][file_informations][;]
// <extern>[Token][*][token][;]
// <extern>[Vector][*][ext_declarations][;]
// <extern>[Vector][*][strings][;]
// <extern>[LVar][*][locals][;]
// <extern>[LVar][*][scope][;]
// <extern>[TagName][*][tagnames][;]
// <extern>[Typedef][*][tdef_names][;]
// <extern>[Global][*][globals][;]
// <extern>[Global][*][functions][;]
// <extern><char>[*][output_file_name][;]
// <extern>[FILE][*][output][;]
// [Token][*][new_token][(][TokenKind][kind][,][Token][*][cur][,]<char>[*][str][,]<int>[len][)][{][Token][*][new_token][=][calloc][(][1][,]<sizeof>[(][Token][)][)][;]
// [new_token][->][kind][=][kind][;]
// [new_token][->][str][=][str][;]
// [new_token][->][len][=][len][;]
// [cur][->][next][=][new_token][;]
// <return>[new_token][;]
// [}][Token][*][dup_token][(][Token][*][src][)][{][Token][*][new][=][calloc][(][1][,]<sizeof>[(][Token][)][)][;]
// [new][->][kind][=][src][->][kind][;]
// [new][->][str][=][src][->][str][;]
// [new][->][len][=][src][->][len][;]
// [new][->][int_val][=][src][->][int_val][;]
// [new][->][next][=][(][(]<void>[*][)][0][)][;]
// <return>[new][;]
// [}][Token][*][macro_token][(]<char>[*][str][,]<int>[len][)][{][Token][*][new_token][=][calloc][(][1][,]<sizeof>[(][Token][)][)][;]
// [new_token][->][kind][=][TK_IDENT][;]
// [new_token][->][str][=][str][;]
// [new_token][->][len][=][len][;]
// <return>[new_token][;]
// [}]<bool>[is_ident_char][(]<char>[c][)][{]<return>[isalnum][(][c][)][||][c][==]['_'][;]
// [}]<bool>[is_reserved][(]<char>[*][str][,]<int>[len][,]<char>[*][reserved][)][{]<return>[len][==][strlen][(][reserved][)][&&][strncmp][(][str][,][reserved][,][len][)][==][0][;]
// [}][FileInfo][*][new_file_info][(]<char>[*][file_name][,]<char>[*][start][)][{][FileInfo][*][fi][=][calloc][(][1][,]<sizeof>[(][FileInfo][)][)][;]
// [fi][->][next][=][file_informations][;]
// [fi][->][file_name][=][file_name][;]
// [fi][->][start][=][start][;]
// [file_informations][=][fi][;]
// <return>[fi][;]
// [}][Macro][*][macros][;]
// [Macro][*][new_macro][(][Token][*][token][,][Token][*][subst][)][{][Macro][*][m][=][calloc][(][1][,]<sizeof>[(][Macro][)][)][;]
// [m][->][token][=][token][;]
// [m][->][subst][=][subst][;]
// [m][->][next][=][macros][;]
// [macros][=][m][;]
// [}][Token][*][dup_tokens][(][Token][*][src][)][{][Token][head][;]
// [head][.][next][=][(][(]<void>[*][)][0][)][;]
// [Token][*][t][=][&][head][;]
// <for>[(][;]
// [src][;]
// [src][=][src][->][next][)][{][t][->][next][=][dup_token][(][src][)][;]
// [t][=][t][->][next][;]
// [}]<return>[head][.][next][;]
// [}][Token][*][find_macro][(][Token][*][token][)][{]<for>[(][Macro][*][m][=][macros][;]
// [m][;]
// [m][=][m][->][next][)][{]<if>[(][token][->][len][==][m][->][token][->][len][&&][strncmp][(][token][->][str][,][m][->][token][->][str][,][token][->][len][)][==][0][)][{]<return>[dup_tokens][(][m][->][subst][)][;]
// [}][}]<return>[(][(]<void>[*][)][0][)][;]
// [}]<typedef><struct>[TokContext][TokContext][;]
// <struct>[TokContext][{][FileInfo][*][file_info][;]
// [Token][*][current_token][;]
// <char>[*][char_ptr][;]
// [}][;]
// [TokContext][*][new_tok_context][(][FileInfo][*][file_info][,][Token][*][current_token][,]<char>[*][char_ptr][)][{][TokContext][*][ctx][=][calloc][(][1][,]<sizeof>[(][TokContext][)][)][;]
// [ctx][->][file_info][=][file_info][;]
// [ctx][->][current_token][=][current_token][;]
// [ctx][->][char_ptr][=][char_ptr][;]
// <return>[ctx][;]
// [}][Token][*][read_token][(][TokContext][*][ctx][)][;]
// <void>[tokenize][(]<char>[*][file][,]<char>[*][p][,]<bool>[is_main][)][{][Token][head][;]
// [head][.][next][=][(][(]<void>[*][)][0][)][;]
// [Token][*][cur][=][&][head][;]
// [FileInfo][*][fi][=][new_file_info][(][file][,][p][)][;]
// <while>[(][*][p][)][{]<if>[(][isspace][(][*][p][)][)][{][p][++][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['#'][)][{]<char>[*][cursor][=][strchr][(][p][++][,]['\n'][)][;]
// <while>[(][*][p][==][' '][||][*][p][==]['\t'][)][p][++][;]
// <int>[len][=][0][;]
// <while>[(][is_ident_char][(][*][(][p][+][len][)][)][)][len][++][;]
// <if>[(][is_reserved][(][p][,][len][,]"include"[)][)][{][p][+=][len][;]
// <while>[(][*][p][==][' '][||][*][p][==]['\t'][)][p][++][;]
// <if>[(][*][p][==]['"'][)][{]<char>[*][cur_dir][;]
// <char>[*][f][=][strrchr][(][file][,]['/'][)][;]
// <if>[(][!][f][)][cur_dir][=]"./"[;]
// <else>[{][cur_dir][=][calloc][(][1][,][f][-][file][+][2][)][;]
// [strncpy][(][cur_dir][,][file][,][f][-][file][+][1][)][;]
// [}]<char>[*][end][=][strchr][(][p][+][1][,]['"'][)][;]
// <int>[len][=][end][-][p][-][1][;]
// <char>[*][file_name][=][calloc][(][1][,][strlen][(][cur_dir][)][+][len][+][1][)][;]
// [strcpy][(][file_name][,][cur_dir][)][;]
// [strncpy][(][file_name][+][strlen][(][cur_dir][)][,][p][+][1][,][len][)][;]
// <char>[*][text][=][read_file][(][file_name][)][;]
// [tokenize][(][file_name][,][text][,][0][)][;]
// [}][}]<else><if>[(][is_reserved][(][p][,][len][,]"define"[)][)][{][fprintf][(][stderr][,]"macro define: "[)][;]
// [p][+=][len][;]
// <while>[(][*][p][==][' '][||][*][p][==]['\t'][)][p][++][;]
// <int>[len][=][0][;]
// <while>[(][is_ident_char][(][*][(][p][+][len][)][)][)][len][++][;]
// [Token][*][tok][=][macro_token][(][p][,][len][)][;]
// [print_token][(][stderr][,][tok][)][;]
// [fprintf][(][stderr][,]"=>"[)][;]
// [p][+=][len][;]
// [Token][head][;]
// [head][.][next][=][(][(]<void>[*][)][0][)][;]
// [Token][*][cursor][=][&][head][;]
// [TokContext][*][ctx][=][new_tok_context][(][fi][,][cursor][,][p][)][;]
// <while>[(][*][(][ctx][->][char_ptr][)][!=]['\n'][)][{][print_token][(][stderr][,][read_token][(][ctx][)][)][;]
// [}]<if>[(][!][head][.][next][)][error_at_token][(][tok][,]"No substitute token."[)][;]
// [new_macro][(][tok][,][head][.][next][)][;]
// [fprintf][(][stderr][,]"\n"[)][;]
// [}][p][=][cursor][+][1][;]
// <continue>[;]
// [}]<if>[(][strncmp][(][p][,]"//"[,][2][)][==][0][)][{][p][+=][2][;]
// <char>[*][next][=][strchr][(][p][,]['\n'][)][;]
// <if>[(][!][next][)][{][p][=][strchr][(][p][,]['\n'][)][;]
// [}]<else>[p][=][next][+][1][;]
// <continue>[;]
// [}]<if>[(][strncmp][(][p][,]"__LINE__"[,][8][)][==][0][)][{][cur][=][new_token][(][TK_MACRO][,][cur][,][p][,][8][)][;]
// [p][+=][8][;]
// <continue>[;]
// [}]<if>[(][isdigit][(][*][p][)][)][{]<int>[num][=][*][p][-]['0'][;]
// <int>[len][=][1][;]
// <while>[(][isdigit][(][*][(][p][+][len][)][)][)][{][num][*=][10][;]
// [num][+=][*][(][p][+][len][)][-]['0'][;]
// [len][++][;]
// [}][cur][=][new_token][(][TK_NUM][,][cur][,][p][,][len][)][;]
// [p][+=][len][;]
// [cur][->][int_val][=][num][;]
// <continue>[;]
// [}]<if>[(][isalpha][(][*][p][)][||][*][p][==]['_'][)][{]<int>[len][=][1][;]
// <while>[(][is_ident_char][(][*][(][p][+][len][)][)][)][len][++][;]
// <if>[(][is_reserved][(][p][,][len][,]"return"[)][)][{][cur][=][new_token][(][TK_RETURN][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"if"[)][)][{][cur][=][new_token][(][TK_IF][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"else"[)][)][{][cur][=][new_token][(][TK_ELSE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"while"[)][)][{][cur][=][new_token][(][TK_WHILE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"for"[)][)][{][cur][=][new_token][(][TK_FOR][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"switch"[)][)][{][cur][=][new_token][(][TK_SWITCH][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"case"[)][)][{][cur][=][new_token][(][TK_CASE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"default"[)][)][{][cur][=][new_token][(][TK_DEFAULT][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"break"[)][)][{][cur][=][new_token][(][TK_BREAK][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"continue"[)][)][{][cur][=][new_token][(][TK_CONTINUE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"int"[)][)][{][cur][=][new_token][(][TK_INT][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"char"[)][)][{][cur][=][new_token][(][TK_CHAR][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"bool"[)][)][{][cur][=][new_token][(][TK_BOOL][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"void"[)][)][{][cur][=][new_token][(][TK_VOID][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"sizeof"[)][)][{][cur][=][new_token][(][TK_SIZEOF][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"struct"[)][)][{][cur][=][new_token][(][TK_STRUCT][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"enum"[)][)][{][cur][=][new_token][(][TK_ENUM][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"union"[)][)][{][cur][=][new_token][(][TK_UNION][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"typedef"[)][)][{][cur][=][new_token][(][TK_TYPEDEF][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"extern"[)][)][{][cur][=][new_token][(][TK_EXTERN][,][cur][,][p][,][len][)][;]
// [}]<else>[{][cur][=][new_token][(][TK_IDENT][,][cur][,][p][,][len][)][;]
// [}][p][+=][len][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['+'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_ADD][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else><if>[(][*][(][p][+][1][)][==]['+'][)][{][cur][=][new_token][(][TK_INC][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_ADD][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['-'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_SUB][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else><if>[(][*][(][p][+][1][)][==]['-'][)][{][cur][=][new_token][(][TK_DEC][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else><if>[(][*][(][p][+][1][)][==]['>'][)][{][cur][=][new_token][(][TK_ARROW][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_SUB][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['*'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_MUL][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_MUL][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['/'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_DIV][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_DIV][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==][','][)][{][cur][=][new_token][(][TK_COMMA][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['='][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_EQ][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// <continue>[;]
// [}]<else>[{][cur][=][new_token][(][TK_ASSIGN][,][cur][,][p][-][1][,][1][)][;]
// <continue>[;]
// [}][}]<if>[(][*][p][==]['>'][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_GE][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// <continue>[;]
// [}]<else><if>[(][*][p][==]['>'][)][{][cur][=][new_token][(][TK_SHR][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// <continue>[;]
// [}]<else>[{][cur][=][new_token][(][TK_GT][,][cur][,][p][-][1][,][1][)][;]
// <continue>[;]
// [}][}]<if>[(][*][p][==]['<'][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_LE][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// <continue>[;]
// [}]<else><if>[(][*][p][==]['<'][)][{][cur][=][new_token][(][TK_SHL][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// <continue>[;]
// [}]<else>[{][cur][=][new_token][(][TK_LT][,][cur][,][p][-][1][,][1][)][;]
// <continue>[;]
// [}][}]<if>[(][*][p][==]['!'][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_NEQ][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// <continue>[;]
// [}]<else>[{][cur][=][new_token][(][TK_NOT][,][cur][,][p][-][1][,][1][)][;]
// <continue>[;]
// [}][}]<if>[(][*][p][==][';'][)][{][cur][=][new_token][(][TK_SEMI][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==][':'][)][{][cur][=][new_token][(][TK_COLON][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['('][)][{][cur][=][new_token][(][TK_OP_PAREN][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==][')'][)][{][cur][=][new_token][(][TK_CL_PAREN][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['{'][)][{][cur][=][new_token][(][TK_OP_BRACE][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['}'][)][{][cur][=][new_token][(][TK_CL_BRACE][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['['][)][{][cur][=][new_token][(][TK_OP_BRACKET][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==][']'][)][{][cur][=][new_token][(][TK_CL_BRACKET][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['^'][)][{][cur][=][new_token][(][TK_XOR][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['&'][)][{]<if>[(][*][(][p][+][1][)][==]['&'][)][{][cur][=][new_token][(][TK_LAND][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// <continue>[;]
// [}][cur][=][new_token][(][TK_AND][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['|'][)][{]<if>[(][*][(][p][+][1][)][==]['|'][)][{][cur][=][new_token][(][TK_LOR][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// <continue>[;]
// [}][cur][=][new_token][(][TK_OR][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['.'][)][{]<if>[(][*][(][p][+][1][)][==]['.'][&&][*][(][p][+][2][)][==]['.'][)][{][cur][=][new_token][(][TK_ELLIPSIS][,][cur][,][p][,][3][)][;]
// [p][+=][3][;]
// <continue>[;]
// [}][cur][=][new_token][(][TK_DOT][,][cur][,][p][++][,][1][)][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['"'][)][{][p][++][;]
// <char>[*][src][=][p][;]
// <while>[(][*][src][&&][*][src][!=]['"'][)][{]<if>[(][*][src][!=]['\\'][)][{][src][++][;]
// [}]<else>[{][src][++][;]
// <switch>[(][*][src][)][{]<case>['0'][:]<case>['a'][:]<case>['b'][:]<case>['f'][:]<case>['n'][:]<case>['r'][:]<case>['t'][:]<case>['\\'][:]<case>['\''][:]<case>['\"'][:][src][++][;]
// <break>[;]
// <default>[:][error_at_char][(][fi][,][src][-][1][,]"Unsupported escape sequence."[)][;]
// [}][}][}]<if>[(][!][*][src][)][error_at_char][(][fi][,][src][-][1][,]"Missing closing quote."[)][;]
// [cur][=][new_token][(][TK_STR][,][cur][,][p][,][(]<int>[)][(][src][-][p][)][)][;]
// [p][=][src][+][1][;]
// <continue>[;]
// [}]<if>[(][*][p][==]['\''][)][{]<char>[*][org_p][=][p][;]
// [p][++][;]
// <char>[ch][;]
// <if>[(][*][p][!=]['\\'][)][{][ch][=][*][p][;]
// [}]<else>[{][p][++][;]
// <switch>[(][*][p][)][{]<case>['0'][:][ch][=]['\0'][;]
// <break>[;]
// <case>['a'][:][ch][=]['\a'][;]
// <break>[;]
// <case>['b'][:][ch][=]['\b'][;]
// <break>[;]
// <case>['f'][:][ch][=]['\f'][;]
// <break>[;]
// <case>['n'][:][ch][=]['\n'][;]
// <break>[;]
// <case>['r'][:][ch][=]['\r'][;]
// <break>[;]
// <case>['t'][:][ch][=]['\t'][;]
// <break>[;]
// <case>['\\'][:][ch][=]['\\'][;]
// <break>[;]
// <case>['\''][:][ch][=]['\''][;]
// <break>[;]
// <case>['\"'][:][ch][=]['\"'][;]
// <break>[;]
// <default>[:][error_at_token][(][token][,]"Unsupported escape sequence."[)][;]
// [}][}][p][++][;]
// <if>[(][*][p][++][!=]['\''][)][error_at_char][(][fi][,][p][-][1][,]"Unexpected token. Expected \"'\"."[)][;]
// [cur][=][new_token][(][TK_NUM][,][cur][,][org_p][,][p][-][org_p][)][;]
// [cur][->][int_val][=][ch][;]
// <continue>[;]
// [}][error_at_char][(][fi][,][p][,]"Unexpected character."[)][;]
// [}]<if>[(][!][token][)][{][token][=][head][.][next][;]
// [}]<else>[{][Token][*][cursor][=][token][;]
// <while>[(][cursor][->][next][)][cursor][=][cursor][->][next][;]
// [cursor][->][next][=][head][.][next][;]
// [}]<if>[(][is_main][)][cur][=][new_token][(][TK_EOF][,][cur][,][p][,][1][)][;]
// [fi][->][end][=][p][;]
// [}][Token][*][read_token][(][TokContext][*][ctx][)][{]<char>[*][p][=][ctx][->][char_ptr][;]
// [FileInfo][*][fi][=][ctx][->][file_info][;]
// [Token][*][cur][=][ctx][->][current_token][;]
// <while>[(][*][p][==][' '][||][*][p][==]['\t'][)][{][p][++][;]
// [}]<if>[(][strncmp][(][p][,]"//"[,][2][)][==][0][)][{][p][+=][2][;]
// <char>[*][next][=][strchr][(][p][,]['\n'][)][;]
// <if>[(][!][next][)][{][p][=][strchr][(][p][,]['\n'][)][;]
// [}]<else>[p][=][next][+][1][;]
// [}]<else><if>[(][strncmp][(][p][,]"__LINE__"[,][8][)][==][0][)][{][cur][=][new_token][(][TK_MACRO][,][cur][,][p][,][8][)][;]
// [p][+=][8][;]
// [}]<else><if>[(][isdigit][(][*][p][)][)][{]<int>[num][=][*][p][-]['0'][;]
// <int>[len][=][1][;]
// <while>[(][isdigit][(][*][(][p][+][len][)][)][)][{][num][*=][10][;]
// [num][+=][*][(][p][+][len][)][-]['0'][;]
// [len][++][;]
// [}][cur][=][new_token][(][TK_NUM][,][cur][,][p][,][len][)][;]
// [p][+=][len][;]
// [cur][->][int_val][=][num][;]
// [}]<else><if>[(][isalpha][(][*][p][)][)][{]<int>[len][=][1][;]
// <while>[(][is_ident_char][(][*][(][p][+][len][)][)][)][len][++][;]
// <if>[(][is_reserved][(][p][,][len][,]"return"[)][)][{][cur][=][new_token][(][TK_RETURN][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"if"[)][)][{][cur][=][new_token][(][TK_IF][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"else"[)][)][{][cur][=][new_token][(][TK_ELSE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"while"[)][)][{][cur][=][new_token][(][TK_WHILE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"for"[)][)][{][cur][=][new_token][(][TK_FOR][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"switch"[)][)][{][cur][=][new_token][(][TK_SWITCH][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"case"[)][)][{][cur][=][new_token][(][TK_CASE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"default"[)][)][{][cur][=][new_token][(][TK_DEFAULT][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"break"[)][)][{][cur][=][new_token][(][TK_BREAK][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"continue"[)][)][{][cur][=][new_token][(][TK_CONTINUE][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"int"[)][)][{][cur][=][new_token][(][TK_INT][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"char"[)][)][{][cur][=][new_token][(][TK_CHAR][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"bool"[)][)][{][cur][=][new_token][(][TK_BOOL][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"void"[)][)][{][cur][=][new_token][(][TK_VOID][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"sizeof"[)][)][{][cur][=][new_token][(][TK_SIZEOF][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"struct"[)][)][{][cur][=][new_token][(][TK_STRUCT][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"enum"[)][)][{][cur][=][new_token][(][TK_ENUM][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"union"[)][)][{][cur][=][new_token][(][TK_UNION][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"typedef"[)][)][{][cur][=][new_token][(][TK_TYPEDEF][,][cur][,][p][,][len][)][;]
// [}]<else><if>[(][is_reserved][(][p][,][len][,]"extern"[)][)][{][cur][=][new_token][(][TK_EXTERN][,][cur][,][p][,][len][)][;]
// [}]<else>[{][cur][=][new_token][(][TK_IDENT][,][cur][,][p][,][len][)][;]
// [}][p][+=][len][;]
// [}]<else><if>[(][*][p][==]['+'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_ADD][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else><if>[(][*][(][p][+][1][)][==]['+'][)][{][cur][=][new_token][(][TK_INC][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_ADD][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['-'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_SUB][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else><if>[(][*][(][p][+][1][)][==]['-'][)][{][cur][=][new_token][(][TK_DEC][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else><if>[(][*][(][p][+][1][)][==]['>'][)][{][cur][=][new_token][(][TK_ARROW][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_SUB][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['*'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_MUL][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_MUL][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['/'][)][{]<if>[(][*][(][p][+][1][)][==]['='][)][{][cur][=][new_token][(][TK_ASSIGN_DIV][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}]<else>[cur][=][new_token][(][TK_DIV][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==][','][)][{][cur][=][new_token][(][TK_COMMA][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['='][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_EQ][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// [}]<else>[{][cur][=][new_token][(][TK_ASSIGN][,][cur][,][p][-][1][,][1][)][;]
// [}][}]<else><if>[(][*][p][==]['>'][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_GE][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// [}]<else><if>[(][*][p][==]['>'][)][{][cur][=][new_token][(][TK_SHR][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// [}]<else>[{][cur][=][new_token][(][TK_GT][,][cur][,][p][-][1][,][1][)][;]
// [}][}]<else><if>[(][*][p][==]['<'][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_LE][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// [}]<else><if>[(][*][p][==]['<'][)][{][cur][=][new_token][(][TK_SHL][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// [}]<else>[{][cur][=][new_token][(][TK_LT][,][cur][,][p][-][1][,][1][)][;]
// [}][}]<else><if>[(][*][p][==]['!'][)][{][p][++][;]
// <if>[(][*][p][==]['='][)][{][cur][=][new_token][(][TK_NEQ][,][cur][,][p][-][1][,][2][)][;]
// [p][++][;]
// [}]<else>[{][cur][=][new_token][(][TK_NOT][,][cur][,][p][-][1][,][1][)][;]
// [}][}]<else><if>[(][*][p][==][';'][)][{][cur][=][new_token][(][TK_SEMI][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==][':'][)][{][cur][=][new_token][(][TK_COLON][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['('][)][{][cur][=][new_token][(][TK_OP_PAREN][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==][')'][)][{][cur][=][new_token][(][TK_CL_PAREN][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['{'][)][{][cur][=][new_token][(][TK_OP_BRACE][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['}'][)][{][cur][=][new_token][(][TK_CL_BRACE][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['['][)][{][cur][=][new_token][(][TK_OP_BRACKET][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==][']'][)][{][cur][=][new_token][(][TK_CL_BRACKET][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['^'][)][{][cur][=][new_token][(][TK_XOR][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['&'][)][{]<if>[(][*][(][p][+][1][)][==]['&'][)][{][cur][=][new_token][(][TK_LAND][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}][cur][=][new_token][(][TK_AND][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['|'][)][{]<if>[(][*][(][p][+][1][)][==]['|'][)][{][cur][=][new_token][(][TK_LOR][,][cur][,][p][,][2][)][;]
// [p][+=][2][;]
// [}][cur][=][new_token][(][TK_OR][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['.'][)][{]<if>[(][*][(][p][+][1][)][==]['.'][&&][*][(][p][+][2][)][==]['.'][)][{][cur][=][new_token][(][TK_ELLIPSIS][,][cur][,][p][,][3][)][;]
// [p][+=][3][;]
// [}][cur][=][new_token][(][TK_DOT][,][cur][,][p][++][,][1][)][;]
// [}]<else><if>[(][*][p][==]['"'][)][{][p][++][;]
// <char>[*][src][=][p][;]
// <while>[(][*][src][&&][*][src][!=]['"'][)][{]<if>[(][*][src][!=]['\\'][)][{][src][++][;]
// [}]<else>[{][src][++][;]
// <switch>[(][*][src][)][{]<case>['0'][:]<case>['a'][:]<case>['b'][:]<case>['f'][:]<case>['n'][:]<case>['r'][:]<case>['t'][:]<case>['\\'][:]<case>['\''][:]<case>['\"'][:][src][++][;]
// <break>[;]
// <default>[:][error_at_char][(][fi][,][src][-][1][,]"Unsupported escape sequence."[)][;]
// [}][}][}]<if>[(][!][*][src][)][error_at_char][(][fi][,][src][-][1][,]"Missing closing quote."[)][;]
// [cur][=][new_token][(][TK_STR][,][cur][,][p][,][(]<int>[)][(][src][-][p][)][)][;]
// [p][=][src][+][1][;]
// [}]<else><if>[(][*][p][==]['\''][)][{]<char>[*][org_p][=][p][;]
// [p][++][;]
// <char>[ch][;]
// <if>[(][*][p][!=]['\\'][)][{][ch][=][*][p][;]
// [}]<else>[{][p][++][;]
// <switch>[(][*][p][)][{]<case>['0'][:][ch][=]['\0'][;]
// <break>[;]
// <case>['a'][:][ch][=]['\a'][;]
// <break>[;]
// <case>['b'][:][ch][=]['\b'][;]
// <break>[;]
// <case>['f'][:][ch][=]['\f'][;]
// <break>[;]
// <case>['n'][:][ch][=]['\n'][;]
// <break>[;]
// <case>['r'][:][ch][=]['\r'][;]
// <break>[;]
// <case>['t'][:][ch][=]['\t'][;]
// <break>[;]
// <case>['\\'][:][ch][=]['\\'][;]
// <break>[;]
// <case>['\''][:][ch][=]['\''][;]
// <break>[;]
// <case>['\"'][:][ch][=]['\"'][;]
// <break>[;]
// <default>[:][error_at_token][(][token][,]"Unsupported escape sequence."[)][;]
// [}][}][p][++][;]
// <if>[(][*][p][++][!=]['\''][)][error_at_char][(][fi][,][p][-][1][,]"Unexpected token. Expected \"'\"."[)][;]
// [cur][=][new_token][(][TK_NUM][,][cur][,][org_p][,][p][-][org_p][)][;]
// [cur][->][int_val][=][ch][;]
// [}][ctx][->][char_ptr][=][p][;]
// [ctx][->][file_info][=][fi][;]
// [ctx][->][current_token][=][cur][;]
// <return>[cur][;]
// [}]<EOF>
// FDECL new_token func ( enum <TokenKind>  kind , * struct <Token>  cur , * char  str , int  len ) * struct <Token> 
//    (LVAR 4) (LVAR 12) (LVAR 20) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 32)) str 24) (LVAR 20)):(= (MEMBER (DEREF (LVAR 32)) len 32) (LVAR 24)):(= (MEMBER (DEREF (LVAR 12)) next 8) (LVAR 32)):(RETURN (LVAR 32)):))
//    new_token  offset:32  * struct <Token> 
//    len  offset:24  int 
//    str  offset:20  * char 
//    cur  offset:12  * struct <Token> 
//    kind  offset:4  enum <TokenKind> 

// FDECL dup_token func ( * struct <Token>  src ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 8)) kind 0)):(= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 8)) str 24)):(= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 8)) len 32)):(= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 8)) int_val 16)):(= (MEMBER (DEREF (LVAR 16)) next 8) (CAST * void   0 )):(RETURN (LVAR 16)):))
//    new  offset:16  * struct <Token> 
//    src  offset:8  * struct <Token> 

// FDECL macro_token func ( * char  str , int  len ) * struct <Token> 
//    (LVAR 8) (LVAR 12) 
//    (BLOCK(= (LVAR 20) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 20)) kind 0)  0 ):(= (MEMBER (DEREF (LVAR 20)) str 24) (LVAR 8)):(= (MEMBER (DEREF (LVAR 20)) len 32) (LVAR 12)):(RETURN (LVAR 20)):))
//    new_token  offset:20  * struct <Token> 
//    len  offset:12  int 
//    str  offset:8  * char 

// FDECL is_ident_char func ( char  c ) bool 
//    (LVAR 1) 
//    (BLOCK(RETURN (|| (CALL isalnum ((LVAR 1):) ) (== (LVAR 1)  95 ))):))
//    c  offset:1  char 

// FDECL is_reserved func ( * char  str , int  len , * char  reserved ) bool 
//    (LVAR 8) (LVAR 12) (LVAR 20) 
//    (BLOCK(RETURN (&& (== (LVAR 12) (CALL strlen ((LVAR 20):) )) (== (CALL strncmp ((LVAR 8):(LVAR 20):(LVAR 12):) )  0 ))):))
//    reserved  offset:20  * char 
//    len  offset:12  int 
//    str  offset:8  * char 

// FDECL new_file_info func ( * char  file_name , * char  start ) * struct <FileInfo> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 32 :) )):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR file_informations)):(= (MEMBER (DEREF (LVAR 24)) file_name 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) start 16) (LVAR 16)):(= (GVAR file_informations) (LVAR 24)):(RETURN (LVAR 24)):))
//    fi  offset:24  * struct <FileInfo> 
//    start  offset:16  * char 
//    file_name  offset:8  * char 

// FDECL new_macro func ( * struct <Token>  token , * struct <Token>  subst ) * struct <Macro> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) subst 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR macros)):(= (GVAR macros) (LVAR 24)):))
//    m  offset:24  * struct <Macro> 
//    subst  offset:16  * struct <Token> 
//    token  offset:8  * struct <Token> 

// FDECL dup_tokens func ( * struct <Token>  src ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(= (MEMBER (LVAR 48) next 8) (CAST * void   0 )):(= (LVAR 56) (ADDR (LVAR 48))):(FOR init: NULL cond: (LVAR 8) post: (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8)) body (BLOCK(= (MEMBER (DEREF (LVAR 56)) next 8) (CALL dup_token ((LVAR 8):) )):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 8)):)):(RETURN (MEMBER (LVAR 48) next 8)):))
//    t  offset:56  * struct <Token> 
//    head  offset:48  struct <Token> 
//    src  offset:8  * struct <Token> 

// FDECL find_macro func ( * struct <Token>  token ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR macros))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32)) (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) )):) NULL ):)):(RETURN (CAST * void   0 )):))
//    m  offset:16  * struct <Macro> 
//    token  offset:8  * struct <Token> 

// FDECL new_tok_context func ( * struct <FileInfo>  file_info , * struct <Token>  current_token , * char  char_ptr ) * struct <TokContext> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 32)) file_info 0) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) current_token 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) char_ptr 16) (LVAR 24)):(RETURN (LVAR 32)):))
//    ctx  offset:32  * struct <TokContext> 
//    char_ptr  offset:24  * char 
//    current_token  offset:16  * struct <Token> 
//    file_info  offset:8  * struct <FileInfo> 

// FDECL tokenize func ( * char  file , * char  p , bool  is_main ) void 
//    (LVAR 8) (LVAR 16) (LVAR 17) 
//    (BLOCK(= (MEMBER (LVAR 57) next 8) (CAST * void   0 )):(= (LVAR 65) (ADDR (LVAR 57))):(= (LVAR 73) (CALL new_file_info ((LVAR 8):(LVAR 16):) )):(WHILE cond:(DEREF (LVAR 16))body: (BLOCK(IF (CALL isspace ((DEREF (LVAR 16)):) ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  35 ) (BLOCK(= (LVAR 81) (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) )):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 85)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )body: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) ) (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):) (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL )):(= (LVAR 16) (+ (LVAR 81)  1 )):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 205) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 205)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 205)  1 ))):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 65) (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):CONTINUE :) NULL ):(IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 209) (- (DEREF (LVAR 16))  48 )):(= (LVAR 213)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )body: (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):)):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 213))):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 209)):CONTINUE :) NULL ):(IF (|| (CALL isalpha ((DEREF (LVAR 16)):) ) (== (DEREF (LVAR 16))  95 )) (BLOCK(= (LVAR 217)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )body: (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 217))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 65) (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 65) (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 65) (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 65) (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 65) (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 65) (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 65) (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 65) (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 65) (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 65) (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 225) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 225))) (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 225)  1 )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 237) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) )):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 238)):CONTINUE :) NULL ):(CALL error_at_char ((LVAR 73):(LVAR 16):(ADDR  "Unexpected character." ):) ):)):(IF (! (GVAR token)) (BLOCK(= (GVAR token) (MEMBER (LVAR 57) next 8)):) (BLOCK(= (LVAR 250) (GVAR token)):(WHILE cond:(MEMBER (DEREF (LVAR 250)) next 8)body: (= (LVAR 250) (MEMBER (DEREF (LVAR 250)) next 8))):(= (MEMBER (DEREF (LVAR 250)) next 8) (MEMBER (LVAR 57) next 8)):)):(IF (LVAR 17) (= (LVAR 65) (CALL new_token ( 60 :(LVAR 65):(LVAR 16): 1 :) )) NULL ):(= (MEMBER (DEREF (LVAR 73)) end 24) (LVAR 16)):))
//    cursor  offset:250  * struct <Token> 
//    switch  offset:242  int 
//    ch  offset:238  char 
//    org_p  offset:237  * char 
//    switch  offset:229  int 
//    src  offset:225  * char 
//    len  offset:217  int 
//    len  offset:213  int 
//    num  offset:209  int 
//    next  offset:205  * char 
//    ctx  offset:197  * struct <TokContext> 
//    cursor  offset:189  * struct <Token> 
//    head  offset:181  struct <Token> 
//    tok  offset:141  * struct <Token> 
//    len  offset:133  int 
//    text  offset:129  * char 
//    file_name  offset:121  * char 
//    len  offset:113  int 
//    end  offset:109  * char 
//    f  offset:101  * char 
//    cur_dir  offset:93  * char 
//    len  offset:85  int 
//    cursor  offset:81  * char 
//    fi  offset:73  * struct <FileInfo> 
//    cur  offset:65  * struct <Token> 
//    head  offset:57  struct <Token> 
//    is_main  offset:17  bool 
//    p  offset:16  * char 
//    file  offset:8  * char 

// FDECL read_token func ( * struct <TokContext>  ctx ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) char_ptr 16)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) file_info 0)):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) current_token 8)):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 40) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 40)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 40)  1 ))):) (IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 32) (CALL new_token ( 61 :(LVAR 32):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):) (IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 44) (- (DEREF (LVAR 16))  48 )):(= (LVAR 48)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )body: (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):)):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 48))):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 44)):) (IF (CALL isalpha ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 52)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 52))):) (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):) (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))))))))))))):(= (MEMBER (DEREF (LVAR 8)) char_ptr 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 8)) file_info 0) (LVAR 24)):(= (MEMBER (DEREF (LVAR 8)) current_token 8) (LVAR 32)):(RETURN (LVAR 32)):))
//    switch  offset:77  int 
//    ch  offset:73  char 
//    org_p  offset:72  * char 
//    switch  offset:64  int 
//    src  offset:60  * char 
//    len  offset:52  int 
//    len  offset:48  int 
//    num  offset:44  int 
//    next  offset:40  * char 
//    cur  offset:32  * struct <Token> 
//    fi  offset:24  * struct <FileInfo> 
//    p  offset:16  * char 
//    ctx  offset:8  * struct <TokContext> 

// Globals
// macros * struct <Macro> NULL 
// output * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// output_file_name * char NULL 
// functions * struct <Global> NULL 
// globals * struct <Global> NULL 
// tdef_names * struct <Typedef> NULL 
// tagnames * struct <TagName> NULL 
// scope * struct <LVar> NULL 
// locals * struct <LVar> NULL 
// strings * struct <Vector> NULL 
// ext_declarations * struct <Vector> NULL 
// token * struct <Token> NULL 
// file_informations * struct <FileInfo> NULL 
// registers [4] [5] [4] char NULL 
// source_text * char NULL 
// stdout * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// stderr * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// Functions
// read_token func ( * struct <TokContext>  ctx ) * struct <Token> 
// tokenize func ( * char  file , * char  p , bool  is_main ) void 
// read_token func ( * struct <TokContext>  ctx ) * struct <Token> 
// new_tok_context func ( * struct <FileInfo>  file_info , * struct <Token>  current_token , * char  char_ptr ) * struct <TokContext> 
// find_macro func ( * struct <Token>  token ) * struct <Token> 
// dup_tokens func ( * struct <Token>  src ) * struct <Token> 
// new_macro func ( * struct <Token>  token , * struct <Token>  subst ) * struct <Macro> 
// new_file_info func ( * char  file_name , * char  start ) * struct <FileInfo> 
// is_reserved func ( * char  str , int  len , * char  reserved ) bool 
// is_ident_char func ( char  c ) bool 
// macro_token func ( * char  str , int  len ) * struct <Token> 
// dup_token func ( * struct <Token>  src ) * struct <Token> 
// new_token func ( enum <TokenKind>  kind , * struct <Token>  cur , * char  str , int  len ) * struct <Token> 
// find_macro func ( * struct <Token>  token ) * struct <Token> 
// new_macro func ( * struct <Token>  token , * struct <Token>  subst ) * struct <Macro> 
// gen_stmt func ( * struct <Node>  node ) void 
// gen func ( * struct <Node>  node ) void 
// vec_push func ( * struct <Vector>  vec , * struct <Node>  data ) void 
// vec_len func ( * struct <Vector>  vec ) int 
// vec_new func ( ) * struct <Vector> 
// align_to func ( int  n , int  align ) int 
// alignof_type func ( * struct <Type>  type ) int 
// is_assignable_type func ( * struct <Type>  l_type , * struct <Type>  r_type ) bool 
// is_compatible_type func ( * struct <Type>  l_type , * struct <Type>  r_type ) bool 
// is_identical_type func ( * struct <Type>  l_type , * struct <Type>  r_type ) bool 
// is_aryth func ( * struct <Type>  type ) bool 
// is_array_of_char func ( * struct <Type>  type ) bool 
// is_ptr_to_char func ( * struct <Type>  type ) bool 
// is_enum_el func ( * struct <Type>  type ) bool 
// is_enum func ( * struct <Type>  type ) bool 
// is_struct func ( * struct <Type>  type ) bool 
// is_func func ( * struct <Type>  type ) bool 
// is_array func ( * struct <Type>  type ) bool 
// is_ptr func ( * struct <Type>  type ) bool 
// is_int func ( * struct <Type>  type ) bool 
// is_char func ( * struct <Type>  type ) bool 
// get_ptr_if_array func ( * struct <Node>  node ) * struct <Node> 
// type func ( * struct <Node>  node ) * struct <Type> 
// sizeof_type func ( * struct <Type>  type ) int 
// new_type_enum_el func ( int  i ) * struct <Type> 
// new_type_enum func ( ) * struct <Type> 
// new_type_struct func ( ) * struct <Type> 
// new_type_func func ( * struct <Type>  return_type ) * struct <Type> 
// new_type_array func ( * struct <Type>  ptr_to , int  size ) * struct <Type> 
// new_type_ptr_to func ( * struct <Type>  ptr_to ) * struct <Type> 
// new_type_char func ( ) * struct <Type> 
// new_type_void func ( ) * struct <Type> 
// new_type_bool func ( ) * struct <Type> 
// new_type_int func ( ) * struct <Type> 
// test_expression func ( ) void 
// test_vec func ( ) void 
// print_typedefs func ( ) void 
// error_types func ( * struct <Type>  l_ty , * struct <Type>  r_ty ) void 
// print_type func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Type>  type ) void 
// print_struct_member func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <MemberInfo>  member ) void 
// print_structs func ( ) void 
// print_funcs func ( ) void 
// print_strings func ( ) void 
// print_globals func ( ) void 
// print_locals func ( ) void 
// print_node func ( * struct <Node>  node ) void 
// print_nodes func ( ) void 
// print_token func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Token>  token ) void 
// assert_expect func ( int  line , int  expected , int  actual ) void 
// parse_program func ( ) void 
// is_expr func ( enum  kind ) bool 
// is_binary_op func ( enum  kind ) bool 
// new_node_num func ( int  val , * struct <Token>  token ) * struct <Node> 
// new_node_binary func ( enum  kind , * struct <Node>  lhs , * struct <Node>  rhs , * struct <Token>  token ) * struct <Node> 
// tokenize func ( * char  file , * char  source , bool  is_main ) void 
// print_tokens func ( * struct <Token>  token ) void 
// error_at_node func ( * struct <Node>  node , * char  fmt ) void 
// error_at_token func ( * struct <Token>  token , * char  fmt ) void 
// error_at_char func ( * struct <FileInfo>  fi , * char  source , * char  fmt ) void 
// error func ( * char  fmt ) void 
// get_line func ( * char  p , * char  source ) int 
// new_token func ( enum <TokenKind>  kind , * struct <Token>  cur , * char  str , int  len ) * struct <Token> 
// read_file func ( * char  path ) * char 
// find_typedef func ( * struct <Token>  ident ) * struct <Type> 
// find_tag func ( * struct <Token>  token ) * struct <TagName> 
// __geterrno func ( ) * int 
// exit func ( int  status ) void 
// strerror func ( int  n ) * char 
// fclose func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp ) void 
// ftell func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp ) int 
// fread func ( * char  buf , int  size , int  n , * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp ) void 
// fseek func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp , int  n , int  seek_end ) int 
// fopen func ( * char  p , * char  mode ) * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}
// sprintf func ( * char  str , * char  fmt ) int 
// fprintf func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * char  fmt ) int 
// printf func ( * char  fmt ) int 
// memcmp func ( * void  dest , * void  src , int  len ) int 
// memcpy func ( * void  dest , * void  src , int  len ) void 
// isalpha func ( int  p ) int 
// isdigit func ( int  p ) int 
// isspace func ( int  p ) int 
// strncpy func ( * char  dest , * char  src , int  n ) * char 
// strcpy func ( * char  dest , * char  src ) * char 
// strcmp func ( * char  str1 , * char  str2 ) int 
// strncmp func ( * char  str , * char  reserved , int  len ) int 
// strrchr func ( * char  s , int  c ) * char 
// strchr func ( * char  s , int  c ) * char 
// strlen func ( * char  s ) int 
// isalnum func ( int  c ) int 
// realloc func ( * void  ptr , int  size ) * void 
// malloc func ( int  size ) * void 
// calloc func ( int  n , int  size ) * void 
// Stringss
// "include"
// "./"
// "define"
// "macro define: "
// "=>"
// "No substitute token."
// "\n"
// "//"
// "__LINE__"
// "return"
// "if"
// "else"
// "while"
// "for"
// "switch"
// "case"
// "default"
// "break"
// "continue"
// "int"
// "char"
// "bool"
// "void"
// "sizeof"
// "struct"
// "enum"
// "union"
// "typedef"
// "extern"
// "Unsupported escape sequence."
// "Missing closing quote."
// "Unsupported escape sequence."
// "Unexpected token. Expected \"'\"."
// "Unexpected character."
// "//"
// "__LINE__"
// "return"
// "if"
// "else"
// "while"
// "for"
// "switch"
// "case"
// "default"
// "break"
// "continue"
// "int"
// "char"
// "bool"
// "void"
// "sizeof"
// "struct"
// "enum"
// "union"
// "typedef"
// "extern"
// "Unsupported escape sequence."
// "Missing closing quote."
// "Unsupported escape sequence."
// "Unexpected token. Expected \"'\"."

// Tagnames
// TokContext struct { * struct <FileInfo> <file_info:0>, * struct <Token> <current_token:8>, * char <char_ptr:16>}
// Macro struct { * struct <Macro> <next:0>, * struct <Token> <token:8>, * struct <Token> <subst:16>}
// Vector struct { * * struct <Node> <data:0>, int <len:8>, int <capacity:12>}
// Typedef struct { * struct <Typedef> <next:0>, * struct <Type> <type:8>, * struct <Token> <ident:16>}
// TagName struct { * struct <TagName> <next:0>, * struct <Token> <ident:8>, * struct <Type> <type:16>}
// Global struct { * struct <Global> <next:0>, * struct <Token> <token:8>, * struct <Type> <type:16>, * struct <Node> <body:24>, bool <is_extern:32>}
// Node struct { enum <kind:0>, * struct <Node> <lhs:8>, * struct <Node> <rhs:16>, * struct <Node> <xhs:24>, int <int_val:32>, * struct <LVar> <lvar:40>, int <offset:48>, * char <label:56>, * struct <Vector> <nodes:64>, * struct <Token> <token:72>, * struct <Type> <type:80>}
// LVar struct { * struct <LVar> <next:0>, * struct <Token> <token:8>, * struct <Type> <type:16>, int <offset:24>, * struct <LVar> <scope:32>, bool <scope_head:40>}
// ND_FDECL enum_el { 38 }
// ND_BLOCK enum_el { 37 }
// ND_CONTINUE enum_el { 36 }
// ND_BREAK enum_el { 35 }
// ND_RETURN enum_el { 34 }
// ND_DEFAULT enum_el { 33 }
// ND_CASE enum_el { 32 }
// ND_SWITCH enum_el { 31 }
// ND_FOR enum_el { 30 }
// ND_WHILE enum_el { 29 }
// ND_IF enum_el { 28 }
// ND_CAST enum_el { 27 }
// ND_MEMBER enum_el { 26 }
// ND_CALL enum_el { 25 }
// ND_GVAR enum_el { 24 }
// ND_LVAR enum_el { 23 }
// ND_DEREF enum_el { 22 }
// ND_ADDR enum_el { 21 }
// ND_ASSIGN enum_el { 20 }
// ND_SHL enum_el { 19 }
// ND_SHR enum_el { 18 }
// ND_XOR enum_el { 17 }
// ND_OR enum_el { 16 }
// ND_AND enum_el { 15 }
// ND_NOT enum_el { 14 }
// ND_LOR enum_el { 13 }
// ND_LAND enum_el { 12 }
// ND_GT enum_el { 11 }
// ND_GE enum_el { 10 }
// ND_NEQ enum_el { 9 }
// ND_EQ enum_el { 8 }
// ND_DIV enum_el { 7 }
// ND_MUL enum_el { 6 }
// ND_SUB enum_el { 5 }
// ND_ADD enum_el { 4 }
// ND_INIT enum_el { 3 }
// ND_STR enum_el { 2 }
// ND_NUM enum_el { 1 }
// ND_IDENT enum_el { 0 }
// ENUM_EL enum_el { 9 }
// ENUM enum_el { 8 }
// STRUCT enum_el { 7 }
// FUNC enum_el { 6 }
// ARRAY enum_el { 5 }
// PTR enum_el { 4 }
// BOOL enum_el { 3 }
// CHAR enum_el { 2 }
// INT enum_el { 1 }
// VOID enum_el { 0 }
// Type struct { enum <ty:0>, * struct <Type> <ptr_to:8>, int <array_size:16>, * struct <MemberInfo> <params:24>, * struct <MemberInfo> <member:32>, int <offset:40>, * struct <Token> <tag_name:48>}
// MemberInfo struct { * struct <MemberInfo> <next:0>, * struct <Token> <ident:8>, * struct <Type> <type:16>, int <offset:24>}
// Token struct { enum <TokenKind> <kind:0>, * struct <Token> <next:8>, int <int_val:16>, * char <str:24>, int <len:32>}
// TokenKind enum { enum_el <TK_IDENT:0> , enum_el <TK_NUM:1> , enum_el <TK_STR:2> , enum_el <TK_ADD:3> , enum_el <TK_SUB:4> , enum_el <TK_MUL:5> , enum_el <TK_DIV:6> , enum_el <TK_EQ:7> , enum_el <TK_NEQ:8> , enum_el <TK_GT:9> , enum_el <TK_GE:10> , enum_el <TK_LT:11> , enum_el <TK_LE:12> , enum_el <TK_ASSIGN:13> , enum_el <TK_ASSIGN_ADD:14> , enum_el <TK_ASSIGN_SUB:15> , enum_el <TK_ASSIGN_MUL:16> , enum_el <TK_ASSIGN_DIV:17> , enum_el <TK_INC:18> , enum_el <TK_DEC:19> , enum_el <TK_LAND:20> , enum_el <TK_LOR:21> , enum_el <TK_AND:22> , enum_el <TK_OR:23> , enum_el <TK_XOR:24> , enum_el <TK_NOT:25> , enum_el <TK_SHR:26> , enum_el <TK_SHL:27> , enum_el <TK_SEMI:28> , enum_el <TK_OP_PAREN:29> , enum_el <TK_CL_PAREN:30> , enum_el <TK_OP_BRACE:31> , enum_el <TK_CL_BRACE:32> , enum_el <TK_OP_BRACKET:33> , enum_el <TK_CL_BRACKET:34> , enum_el <TK_COMMA:35> , enum_el <TK_COLON:36> , enum_el <TK_DOT:37> , enum_el <TK_ARROW:38> , enum_el <TK_ELLIPSIS:39> , enum_el <TK_IF:40> , enum_el <TK_ELSE:41> , enum_el <TK_WHILE:42> , enum_el <TK_FOR:43> , enum_el <TK_SWITCH:44> , enum_el <TK_CASE:45> , enum_el <TK_DEFAULT:46> , enum_el <TK_BREAK:47> , enum_el <TK_CONTINUE:48> , enum_el <TK_RETURN:49> , enum_el <TK_SIZEOF:50> , enum_el <TK_INT:51> , enum_el <TK_CHAR:52> , enum_el <TK_BOOL:53> , enum_el <TK_VOID:54> , enum_el <TK_STRUCT:55> , enum_el <TK_ENUM:56> , enum_el <TK_UNION:57> , enum_el <TK_EXTERN:58> , enum_el <TK_TYPEDEF:59> , enum_el <TK_EOF:60> , enum_el <TK_MACRO:61> }
// TK_MACRO enum_el { 61 }
// TK_EOF enum_el { 60 }
// TK_TYPEDEF enum_el { 59 }
// TK_EXTERN enum_el { 58 }
// TK_UNION enum_el { 57 }
// TK_ENUM enum_el { 56 }
// TK_STRUCT enum_el { 55 }
// TK_VOID enum_el { 54 }
// TK_BOOL enum_el { 53 }
// TK_CHAR enum_el { 52 }
// TK_INT enum_el { 51 }
// TK_SIZEOF enum_el { 50 }
// TK_RETURN enum_el { 49 }
// TK_CONTINUE enum_el { 48 }
// TK_BREAK enum_el { 47 }
// TK_DEFAULT enum_el { 46 }
// TK_CASE enum_el { 45 }
// TK_SWITCH enum_el { 44 }
// TK_FOR enum_el { 43 }
// TK_WHILE enum_el { 42 }
// TK_ELSE enum_el { 41 }
// TK_IF enum_el { 40 }
// TK_ELLIPSIS enum_el { 39 }
// TK_ARROW enum_el { 38 }
// TK_DOT enum_el { 37 }
// TK_COLON enum_el { 36 }
// TK_COMMA enum_el { 35 }
// TK_CL_BRACKET enum_el { 34 }
// TK_OP_BRACKET enum_el { 33 }
// TK_CL_BRACE enum_el { 32 }
// TK_OP_BRACE enum_el { 31 }
// TK_CL_PAREN enum_el { 30 }
// TK_OP_PAREN enum_el { 29 }
// TK_SEMI enum_el { 28 }
// TK_SHL enum_el { 27 }
// TK_SHR enum_el { 26 }
// TK_NOT enum_el { 25 }
// TK_XOR enum_el { 24 }
// TK_OR enum_el { 23 }
// TK_AND enum_el { 22 }
// TK_LOR enum_el { 21 }
// TK_LAND enum_el { 20 }
// TK_DEC enum_el { 19 }
// TK_INC enum_el { 18 }
// TK_ASSIGN_DIV enum_el { 17 }
// TK_ASSIGN_MUL enum_el { 16 }
// TK_ASSIGN_SUB enum_el { 15 }
// TK_ASSIGN_ADD enum_el { 14 }
// TK_ASSIGN enum_el { 13 }
// TK_LE enum_el { 12 }
// TK_LT enum_el { 11 }
// TK_GE enum_el { 10 }
// TK_GT enum_el { 9 }
// TK_NEQ enum_el { 8 }
// TK_EQ enum_el { 7 }
// TK_DIV enum_el { 6 }
// TK_MUL enum_el { 5 }
// TK_SUB enum_el { 4 }
// TK_ADD enum_el { 3 }
// TK_STR enum_el { 2 }
// TK_NUM enum_el { 1 }
// TK_IDENT enum_el { 0 }
// TokenKind enum { }
// FileInfo struct { * struct <FileInfo> <next:0>, * char <file_name:8>, * char <start:16>, * char <end:24>}

// Typedef
// TokContext struct <TokContext> 
// Macro struct <Macro> 
// Vector struct <Vector> 
// Typedef struct <Typedef> 
// TagName struct <TagName> 
// Global struct <Global> 
// Vector struct <Vector> 
// Node struct <Node> 
// LVar struct <LVar> 
// NodeKind enum 
// Type struct <Type> 
// MemberInfo struct <MemberInfo> 
// Token struct <Token> 
// TokenKind enum <TokenKind> 
// FileInfo struct <FileInfo> 
// size_t int 
// FILE struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}

	.intel_syntax noprefix
	.data
	.global macros
macros:
	.align 8
	.quad 0
.LS000000:
	.string "include"
.LS000001:
	.string "./"
.LS000002:
	.string "define"
.LS000003:
	.string "macro define: "
.LS000004:
	.string "=>"
.LS000005:
	.string "No substitute token."
.LS000006:
	.string "\n"
.LS000007:
	.string "//"
.LS000008:
	.string "__LINE__"
.LS000009:
	.string "return"
.LS000010:
	.string "if"
.LS000011:
	.string "else"
.LS000012:
	.string "while"
.LS000013:
	.string "for"
.LS000014:
	.string "switch"
.LS000015:
	.string "case"
.LS000016:
	.string "default"
.LS000017:
	.string "break"
.LS000018:
	.string "continue"
.LS000019:
	.string "int"
.LS000020:
	.string "char"
.LS000021:
	.string "bool"
.LS000022:
	.string "void"
.LS000023:
	.string "sizeof"
.LS000024:
	.string "struct"
.LS000025:
	.string "enum"
.LS000026:
	.string "union"
.LS000027:
	.string "typedef"
.LS000028:
	.string "extern"
.LS000029:
	.string "Unsupported escape sequence."
.LS000030:
	.string "Missing closing quote."
.LS000031:
	.string "Unsupported escape sequence."
.LS000032:
	.string "Unexpected token. Expected \"'\"."
.LS000033:
	.string "Unexpected character."
.LS000034:
	.string "//"
.LS000035:
	.string "__LINE__"
.LS000036:
	.string "return"
.LS000037:
	.string "if"
.LS000038:
	.string "else"
.LS000039:
	.string "while"
.LS000040:
	.string "for"
.LS000041:
	.string "switch"
.LS000042:
	.string "case"
.LS000043:
	.string "default"
.LS000044:
	.string "break"
.LS000045:
	.string "continue"
.LS000046:
	.string "int"
.LS000047:
	.string "char"
.LS000048:
	.string "bool"
.LS000049:
	.string "void"
.LS000050:
	.string "sizeof"
.LS000051:
	.string "struct"
.LS000052:
	.string "enum"
.LS000053:
	.string "union"
.LS000054:
	.string "typedef"
.LS000055:
	.string "extern"
.LS000056:
	.string "Unsupported escape sequence."
.LS000057:
	.string "Missing closing quote."
.LS000058:
	.string "Unsupported escape sequence."
.LS000059:
	.string "Unexpected token. Expected \"'\"."

	.text
	.global new_token
// Line 6 FDECL new_token func ( enum <TokenKind>  kind , * struct <Token>  cur , * char  str , int  len ) * struct <Token> 
//    (LVAR 4) (LVAR 12) (LVAR 20) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 32)) str 24) (LVAR 20)):(= (MEMBER (DEREF (LVAR 32)) len 32) (LVAR 24)):(= (MEMBER (DEREF (LVAR 12)) next 8) (LVAR 32)):(RETURN (LVAR 32)):))
new_token:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 4], edi
	mov  [rbp - 12], rsi
	mov  [rbp - 20], rdx
	mov  [rbp - 24], ecx
// Line 7 (= (LVAR 32) (CALL calloc ( 1 : 40 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 7 (CALL calloc ( 1 : 40 :) )
// Line 7  40 
	push 40
// Line 7  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000000
	mov  rax, 0
	call calloc
	jmp  .L000001
.L000000:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000001:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 8 (= (MEMBER (DEREF (LVAR 32)) kind 0) (LVAR 4))
// Line 8 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 8 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 9 (= (MEMBER (DEREF (LVAR 32)) str 24) (LVAR 20))
// Line 9 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 9 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 10 (= (MEMBER (DEREF (LVAR 32)) len 32) (LVAR 24))
// Line 10 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 10 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 11 (= (MEMBER (DEREF (LVAR 12)) next 8) (LVAR 32))
// Line 11 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 11 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 12 (RETURN (LVAR 32))
// Line 12 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global dup_token
// Line 16 FDECL dup_token func ( * struct <Token>  src ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 8)) kind 0)):(= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 8)) str 24)):(= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 8)) len 32)):(= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 8)) int_val 16)):(= (MEMBER (DEREF (LVAR 16)) next 8) (CAST * void   0 )):(RETURN (LVAR 16)):))
dup_token:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 17 (= (LVAR 16) (CALL calloc ( 1 : 40 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 17 (CALL calloc ( 1 : 40 :) )
// Line 17  40 
	push 40
// Line 17  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000002
	mov  rax, 0
	call calloc
	jmp  .L000003
.L000002:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000003:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 18 (= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 8)) kind 0))
// Line 18 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 18 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 18 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 19 (= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 8)) str 24))
// Line 19 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 19 (MEMBER (DEREF (LVAR 8)) str 24)
// Line 19 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 20 (= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 8)) len 32))
// Line 20 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 20 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 20 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 21 (= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 8)) int_val 16))
// Line 21 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 21 (MEMBER (DEREF (LVAR 8)) int_val 16)
// Line 21 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 22 (= (MEMBER (DEREF (LVAR 16)) next 8) (CAST * void   0 ))
// Line 22 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 787 (CAST * void   0 )
// Line 787  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 23 (RETURN (LVAR 16))
// Line 23 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global macro_token
// Line 27 FDECL macro_token func ( * char  str , int  len ) * struct <Token> 
//    (LVAR 8) (LVAR 12) 
//    (BLOCK(= (LVAR 20) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 20)) kind 0)  0 ):(= (MEMBER (DEREF (LVAR 20)) str 24) (LVAR 8)):(= (MEMBER (DEREF (LVAR 20)) len 32) (LVAR 12)):(RETURN (LVAR 20)):))
macro_token:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 12], esi
// Line 28 (= (LVAR 20) (CALL calloc ( 1 : 40 :) ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 28 (CALL calloc ( 1 : 40 :) )
// Line 28  40 
	push 40
// Line 28  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000004
	mov  rax, 0
	call calloc
	jmp  .L000005
.L000004:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000005:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 29 (= (MEMBER (DEREF (LVAR 20)) kind 0)  0 )
// Line 29 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 29  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 30 (= (MEMBER (DEREF (LVAR 20)) str 24) (LVAR 8))
// Line 30 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 30 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 31 (= (MEMBER (DEREF (LVAR 20)) len 32) (LVAR 12))
// Line 31 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 31 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 32 (RETURN (LVAR 20))
// Line 32 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global is_ident_char
// Line 35 FDECL is_ident_char func ( char  c ) bool 
//    (LVAR 1) 
//    (BLOCK(RETURN (|| (CALL isalnum ((LVAR 1):) ) (== (LVAR 1)  95 ))):))
is_ident_char:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 1], dil
// Line 35 (RETURN (|| (CALL isalnum ((LVAR 1):) ) (== (LVAR 1)  95 )))
// Line 35 (|| (CALL isalnum ((LVAR 1):) ) (== (LVAR 1)  95 ))
// Line 35 (CALL isalnum ((LVAR 1):) )
// Line 35 (LVAR 1)
	mov  rax, rbp
	sub  rax, 1
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000008
	mov  rax, 0
	call isalnum
	jmp  .L000009
.L000008:
	sub  rsp, 8
	mov  rax, 0
	call isalnum
	add  rsp, 8
.L000009:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000006
// Line 35 (== (LVAR 1)  95 )
// Line 35 (LVAR 1)
	mov  rax, rbp
	sub  rax, 1
	movsx eax, BYTE PTR [rax]
	push rax
// Line 35  95 
	push 95
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000006
	mov  rax, 0
	jmp  .L000007
.L000006:
	mov  rax, 1
.L000007:
	push  rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global is_reserved
// Line 37 FDECL is_reserved func ( * char  str , int  len , * char  reserved ) bool 
//    (LVAR 8) (LVAR 12) (LVAR 20) 
//    (BLOCK(RETURN (&& (== (LVAR 12) (CALL strlen ((LVAR 20):) )) (== (CALL strncmp ((LVAR 8):(LVAR 20):(LVAR 12):) )  0 ))):))
is_reserved:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 12], esi
	mov  [rbp - 20], rdx
// Line 38 (RETURN (&& (== (LVAR 12) (CALL strlen ((LVAR 20):) )) (== (CALL strncmp ((LVAR 8):(LVAR 20):(LVAR 12):) )  0 )))
// Line 38 (&& (== (LVAR 12) (CALL strlen ((LVAR 20):) )) (== (CALL strncmp ((LVAR 8):(LVAR 20):(LVAR 12):) )  0 ))
// Line 38 (== (LVAR 12) (CALL strlen ((LVAR 20):) ))
// Line 38 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 38 (CALL strlen ((LVAR 20):) )
// Line 38 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000012
	mov  rax, 0
	call strlen
	jmp  .L000013
.L000012:
	sub  rsp, 8
	mov  rax, 0
	call strlen
	add  rsp, 8
.L000013:
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000010
// Line 38 (== (CALL strncmp ((LVAR 8):(LVAR 20):(LVAR 12):) )  0 )
// Line 38 (CALL strncmp ((LVAR 8):(LVAR 20):(LVAR 12):) )
// Line 38 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 38 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
// Line 38 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000014
	mov  rax, 0
	call strncmp
	jmp  .L000015
.L000014:
	sub  rsp, 8
	mov  rax, 0
	call strncmp
	add  rsp, 8
.L000015:
	push rax
// Line 38  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000010
	mov  rax, 1
	jmp  .L000011
.L000010:
	mov  rax, 0
.L000011:
	push  rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_file_info
// Line 41 FDECL new_file_info func ( * char  file_name , * char  start ) * struct <FileInfo> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 32 :) )):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR file_informations)):(= (MEMBER (DEREF (LVAR 24)) file_name 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) start 16) (LVAR 16)):(= (GVAR file_informations) (LVAR 24)):(RETURN (LVAR 24)):))
new_file_info:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 42 (= (LVAR 24) (CALL calloc ( 1 : 32 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 42 (CALL calloc ( 1 : 32 :) )
// Line 42  32 
	push 32
// Line 42  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000016
	mov  rax, 0
	call calloc
	jmp  .L000017
.L000016:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000017:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 43 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR file_informations))
// Line 43 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 43 (GVAR file_informations)
	lea  rax, file_informations[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 44 (= (MEMBER (DEREF (LVAR 24)) file_name 8) (LVAR 8))
// Line 44 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 44 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 45 (= (MEMBER (DEREF (LVAR 24)) start 16) (LVAR 16))
// Line 45 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 45 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 46 (= (GVAR file_informations) (LVAR 24))
	lea  rax, file_informations[rip]
	push rax
// Line 46 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 47 (RETURN (LVAR 24))
// Line 47 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_macro
// Line 52 FDECL new_macro func ( * struct <Token>  token , * struct <Token>  subst ) * struct <Macro> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) subst 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR macros)):(= (GVAR macros) (LVAR 24)):))
new_macro:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 53 (= (LVAR 24) (CALL calloc ( 1 : 24 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 53 (CALL calloc ( 1 : 24 :) )
// Line 53  24 
	push 24
// Line 53  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000018
	mov  rax, 0
	call calloc
	jmp  .L000019
.L000018:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000019:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 54 (= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8))
// Line 54 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 54 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 55 (= (MEMBER (DEREF (LVAR 24)) subst 16) (LVAR 16))
// Line 55 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 55 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 56 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR macros))
// Line 56 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 56 (GVAR macros)
	lea  rax, macros[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 57 (= (GVAR macros) (LVAR 24))
	lea  rax, macros[rip]
	push rax
// Line 57 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global dup_tokens
// Line 60 FDECL dup_tokens func ( * struct <Token>  src ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(= (MEMBER (LVAR 48) next 8) (CAST * void   0 )):(= (LVAR 56) (ADDR (LVAR 48))):(FOR init: NULL cond: (LVAR 8) post: (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8)) body (BLOCK(= (MEMBER (DEREF (LVAR 56)) next 8) (CALL dup_token ((LVAR 8):) )):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 8)):)):(RETURN (MEMBER (LVAR 48) next 8)):))
dup_tokens:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp - 8], rdi
// Line 62 (= (MEMBER (LVAR 48) next 8) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 48
	add  rax, 8
	push rax
// Line 787 (CAST * void   0 )
// Line 787  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 63 (= (LVAR 56) (ADDR (LVAR 48)))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 63 (ADDR (LVAR 48))
	mov  rax, rbp
	sub  rax, 48
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 64 (FOR init: NULL cond: (LVAR 8) post: (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8)) body (BLOCK(= (MEMBER (DEREF (LVAR 56)) next 8) (CALL dup_token ((LVAR 8):) )):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 8)):))
.L000022:
// Line 64 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000021
// Line 68 (BLOCK(= (MEMBER (DEREF (LVAR 56)) next 8) (CALL dup_token ((LVAR 8):) )):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 8)):)
// Line 65 (= (MEMBER (DEREF (LVAR 56)) next 8) (CALL dup_token ((LVAR 8):) ))
// Line 65 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 65 (CALL dup_token ((LVAR 8):) )
// Line 65 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000023
	mov  rax, 0
	call dup_token
	jmp  .L000024
.L000023:
	sub  rsp, 8
	mov  rax, 0
	call dup_token
	add  rsp, 8
.L000024:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 66 (= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 8))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 66 (MEMBER (DEREF (LVAR 56)) next 8)
// Line 66 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000020:
// Line 64 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 64 (MEMBER (DEREF (LVAR 8)) next 8)
// Line 64 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000022
.L000021:
// Line 68 (RETURN (MEMBER (LVAR 48) next 8))
// Line 68 (MEMBER (LVAR 48) next 8)
	mov  rax, rbp
	sub  rax, 48
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global find_macro
// Line 71 FDECL find_macro func ( * struct <Token>  token ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR macros))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32)) (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) )):) NULL ):)):(RETURN (CAST * void   0 )):))
find_macro:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 72 (FOR init: (= (LVAR 16) (GVAR macros))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32)) (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) )):) NULL ):))
// Line 72 (= (LVAR 16) (GVAR macros))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 72 (GVAR macros)
	lea  rax, macros[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
.L000027:
// Line 72 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000026
// Line 78 (BLOCK(IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32)) (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) )):) NULL ):)
// Line 77 (IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32)) (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) )):) NULL )
// Line 73 (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32)) (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 ))
// Line 73 (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32))
// Line 73 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 73 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 73 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) len 32)
// Line 73 (MEMBER (DEREF (LVAR 16)) token 8)
// Line 73 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000030
// Line 74 (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )
// Line 74 (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )
// Line 74 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 74 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 74 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 8)) str 24)
// Line 74 (MEMBER (DEREF (LVAR 16)) token 8)
// Line 74 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 74 (MEMBER (DEREF (LVAR 8)) str 24)
// Line 74 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000032
	mov  rax, 0
	call strncmp
	jmp  .L000033
.L000032:
	sub  rsp, 8
	mov  rax, 0
	call strncmp
	add  rsp, 8
.L000033:
	push rax
// Line 74  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000030
	mov  rax, 1
	jmp  .L000031
.L000030:
	mov  rax, 0
.L000031:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000028
// Line 77 (BLOCK(RETURN (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) )):)
// Line 75 (RETURN (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) ))
// Line 75 (CALL dup_tokens ((MEMBER (DEREF (LVAR 16)) subst 16):) )
// Line 75 (MEMBER (DEREF (LVAR 16)) subst 16)
// Line 75 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000034
	mov  rax, 0
	call dup_tokens
	jmp  .L000035
.L000034:
	sub  rsp, 8
	mov  rax, 0
	call dup_tokens
	add  rsp, 8
.L000035:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000029
.L000028:
.L000029:
.L000025:
// Line 72 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 72 (MEMBER (DEREF (LVAR 16)) next 0)
// Line 72 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
	jmp  .L000027
.L000026:
// Line 78 (RETURN (CAST * void   0 ))
// Line 787 (CAST * void   0 )
// Line 787  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_tok_context
// Line 88 FDECL new_tok_context func ( * struct <FileInfo>  file_info , * struct <Token>  current_token , * char  char_ptr ) * struct <TokContext> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 32)) file_info 0) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) current_token 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) char_ptr 16) (LVAR 24)):(RETURN (LVAR 32)):))
new_tok_context:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 24], rdx
// Line 90 (= (LVAR 32) (CALL calloc ( 1 : 24 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 90 (CALL calloc ( 1 : 24 :) )
// Line 90  24 
	push 24
// Line 90  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000036
	mov  rax, 0
	call calloc
	jmp  .L000037
.L000036:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000037:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 91 (= (MEMBER (DEREF (LVAR 32)) file_info 0) (LVAR 8))
// Line 91 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 91 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 92 (= (MEMBER (DEREF (LVAR 32)) current_token 8) (LVAR 16))
// Line 92 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 92 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 93 (= (MEMBER (DEREF (LVAR 32)) char_ptr 16) (LVAR 24))
// Line 93 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 93 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 94 (RETURN (LVAR 32))
// Line 94 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global tokenize
// Line 103 FDECL tokenize func ( * char  file , * char  p , bool  is_main ) void 
//    (LVAR 8) (LVAR 16) (LVAR 17) 
//    (BLOCK(= (MEMBER (LVAR 57) next 8) (CAST * void   0 )):(= (LVAR 65) (ADDR (LVAR 57))):(= (LVAR 73) (CALL new_file_info ((LVAR 8):(LVAR 16):) )):(WHILE cond:(DEREF (LVAR 16))body: (BLOCK(IF (CALL isspace ((DEREF (LVAR 16)):) ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  35 ) (BLOCK(= (LVAR 81) (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) )):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 85)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )body: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) ) (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):) (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL )):(= (LVAR 16) (+ (LVAR 81)  1 )):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 205) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 205)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 205)  1 ))):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 65) (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):CONTINUE :) NULL ):(IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 209) (- (DEREF (LVAR 16))  48 )):(= (LVAR 213)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )body: (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):)):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 213))):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 209)):CONTINUE :) NULL ):(IF (|| (CALL isalpha ((DEREF (LVAR 16)):) ) (== (DEREF (LVAR 16))  95 )) (BLOCK(= (LVAR 217)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )body: (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 217))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 65) (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 65) (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 65) (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 65) (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 65) (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 65) (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 65) (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 65) (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 65) (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 65) (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 225) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 225))) (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 225)  1 )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 237) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) )):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 238)):CONTINUE :) NULL ):(CALL error_at_char ((LVAR 73):(LVAR 16):(ADDR  "Unexpected character." ):) ):)):(IF (! (GVAR token)) (BLOCK(= (GVAR token) (MEMBER (LVAR 57) next 8)):) (BLOCK(= (LVAR 250) (GVAR token)):(WHILE cond:(MEMBER (DEREF (LVAR 250)) next 8)body: (= (LVAR 250) (MEMBER (DEREF (LVAR 250)) next 8))):(= (MEMBER (DEREF (LVAR 250)) next 8) (MEMBER (LVAR 57) next 8)):)):(IF (LVAR 17) (= (LVAR 65) (CALL new_token ( 60 :(LVAR 65):(LVAR 16): 1 :) )) NULL ):(= (MEMBER (DEREF (LVAR 73)) end 24) (LVAR 16)):))
tokenize:
	push rbp
	mov  rbp, rsp
	sub  rsp, 256
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 17], dl
// Line 105 (= (MEMBER (LVAR 57) next 8) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 57
	add  rax, 8
	push rax
// Line 787 (CAST * void   0 )
// Line 787  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 106 (= (LVAR 65) (ADDR (LVAR 57)))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 106 (ADDR (LVAR 57))
	mov  rax, rbp
	sub  rax, 57
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 107 (= (LVAR 73) (CALL new_file_info ((LVAR 8):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 107 (CALL new_file_info ((LVAR 8):(LVAR 16):) )
// Line 107 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 107 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000038
	mov  rax, 0
	call new_file_info
	jmp  .L000039
.L000038:
	sub  rsp, 8
	mov  rax, 0
	call new_file_info
	add  rsp, 8
.L000039:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 503 (WHILE cond:(DEREF (LVAR 16))body: (BLOCK(IF (CALL isspace ((DEREF (LVAR 16)):) ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  35 ) (BLOCK(= (LVAR 81) (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) )):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 85)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )body: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) ) (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):) (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL )):(= (LVAR 16) (+ (LVAR 81)  1 )):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 205) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 205)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 205)  1 ))):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 65) (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):CONTINUE :) NULL ):(IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 209) (- (DEREF (LVAR 16))  48 )):(= (LVAR 213)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )body: (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):)):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 213))):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 209)):CONTINUE :) NULL ):(IF (|| (CALL isalpha ((DEREF (LVAR 16)):) ) (== (DEREF (LVAR 16))  95 )) (BLOCK(= (LVAR 217)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )body: (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 217))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 65) (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 65) (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 65) (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 65) (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 65) (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 65) (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 65) (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 65) (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 65) (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 65) (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 225) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 225))) (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 225)  1 )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 237) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) )):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 238)):CONTINUE :) NULL ):(CALL error_at_char ((LVAR 73):(LVAR 16):(ADDR  "Unexpected character." ):) ):))
.L000040:
// Line 109 (DEREF (LVAR 16))
// Line 109 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000041
// Line 503 (BLOCK(IF (CALL isspace ((DEREF (LVAR 16)):) ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  35 ) (BLOCK(= (LVAR 81) (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) )):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 85)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )body: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) ) (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):) (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL )):(= (LVAR 16) (+ (LVAR 81)  1 )):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 205) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 205)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 205)  1 ))):CONTINUE :) NULL ):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 65) (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):CONTINUE :) NULL ):(IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 209) (- (DEREF (LVAR 16))  48 )):(= (LVAR 213)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )body: (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):)):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 213))):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 209)):CONTINUE :) NULL ):(IF (|| (CALL isalpha ((DEREF (LVAR 16)):) ) (== (DEREF (LVAR 16))  95 )) (BLOCK(= (LVAR 217)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )body: (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 217))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 65) (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL ):(IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL ):(IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 65) (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 65) (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 65) (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 65) (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 65) (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 65) (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 65) (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 65) (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 65) (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 225) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 225))) (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 225)  1 )):CONTINUE :) NULL ):(IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 237) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) )):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 238)):CONTINUE :) NULL ):(CALL error_at_char ((LVAR 73):(LVAR 16):(ADDR  "Unexpected character." ):) ):)
// Line 115 (IF (CALL isspace ((DEREF (LVAR 16)):) ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) NULL )
// Line 111 (CALL isspace ((DEREF (LVAR 16)):) )
// Line 111 (DEREF (LVAR 16))
// Line 111 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000044
	mov  rax, 0
	call isspace
	jmp  .L000045
.L000044:
	sub  rsp, 8
	mov  rax, 0
	call isspace
	add  rsp, 8
.L000045:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000042
// Line 115 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :)
// Line 112 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 112 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 112 (++ (LVAR 16)  1 )
// Line 112 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 112  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 112  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 113 CONTINUE 
	jmp  .L000040
	jmp  .L000043
.L000042:
.L000043:
// Line 178 (IF (== (DEREF (LVAR 16))  35 ) (BLOCK(= (LVAR 81) (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) )):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 85)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )body: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) ) (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):) (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL )):(= (LVAR 16) (+ (LVAR 81)  1 )):CONTINUE :) NULL )
// Line 115 (== (DEREF (LVAR 16))  35 )
// Line 115 (DEREF (LVAR 16))
// Line 115 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 115  35 
	push 35
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000046
// Line 178 (BLOCK(= (LVAR 81) (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) )):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 85)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )body: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) ) (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):) (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL )):(= (LVAR 16) (+ (LVAR 81)  1 )):CONTINUE :)
// Line 116 (= (LVAR 81) (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) ))
	mov  rax, rbp
	sub  rax, 81
	push rax
// Line 116 (CALL strchr ((++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 10 :) )
// Line 116  10 
	push 10
// Line 116 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 116 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 116 (++ (LVAR 16)  1 )
// Line 116 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 116  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 116  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000048
	mov  rax, 0
	call strchr
	jmp  .L000049
.L000048:
	sub  rsp, 8
	mov  rax, 0
	call strchr
	add  rsp, 8
.L000049:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 119 (WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))
.L000050:
// Line 117 (|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))
// Line 117 (== (DEREF (LVAR 16))  32 )
// Line 117 (DEREF (LVAR 16))
// Line 117 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 117  32 
	push 32
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000052
// Line 117 (== (DEREF (LVAR 16))  9 )
// Line 117 (DEREF (LVAR 16))
// Line 117 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 117  9 
	push 9
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000052
	mov  rax, 0
	jmp  .L000053
.L000052:
	mov  rax, 1
.L000053:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000051
// Line 118 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 118 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 118 (++ (LVAR 16)  1 )
// Line 118 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 118  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 118  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000050
.L000051:
// Line 119 (= (LVAR 85)  0 )
	mov  rax, rbp
	sub  rax, 85
	push rax
// Line 119  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 122 (WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )body: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ))
.L000054:
// Line 120 (CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 85))):) )
// Line 120 (DEREF (+ (LVAR 16) (LVAR 85)))
// Line 120 (+ (LVAR 16) (LVAR 85))
// Line 120 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 120 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000056
	mov  rax, 0
	call is_ident_char
	jmp  .L000057
.L000056:
	sub  rsp, 8
	mov  rax, 0
	call is_ident_char
	add  rsp, 8
.L000057:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000055
// Line 121 (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )
// Line 121 (= (LVAR 85) (++ (LVAR 85)  1 ))
	mov  rax, rbp
	sub  rax, 85
	push rax
// Line 121 (++ (LVAR 85)  1 )
// Line 121 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  eax, [rax]
	push rax
// Line 121  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 121  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000054
.L000055:
// Line 175 (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) ) (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):) (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL ))
// Line 122 (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "include" ):) )
// Line 122 (ADDR  "include" )
	lea  rax, .LS000000[rip]
	push rax
// Line 122 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  eax, [rax]
	push rax
// Line 122 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000060
	mov  rax, 0
	call is_reserved
	jmp  .L000061
.L000060:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000061:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000058
// Line 148 (BLOCK(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL ):)
// Line 123 (= (LVAR 16) (+= (LVAR 16) (LVAR 85)))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 123 (+= (LVAR 16) (LVAR 85))
// Line 123 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 123 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 126 (WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))
.L000062:
// Line 124 (|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))
// Line 124 (== (DEREF (LVAR 16))  32 )
// Line 124 (DEREF (LVAR 16))
// Line 124 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 124  32 
	push 32
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000064
// Line 124 (== (DEREF (LVAR 16))  9 )
// Line 124 (DEREF (LVAR 16))
// Line 124 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 124  9 
	push 9
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000064
	mov  rax, 0
	jmp  .L000065
.L000064:
	mov  rax, 1
.L000065:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000063
// Line 125 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 125 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 125 (++ (LVAR 16)  1 )
// Line 125 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 125  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 125  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000062
.L000063:
// Line 148 (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):) NULL )
// Line 126 (== (DEREF (LVAR 16))  34 )
// Line 126 (DEREF (LVAR 16))
// Line 126 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 126  34 
	push 34
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000066
// Line 148 (BLOCK(= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) )):(IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)):(= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )):(= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 )):(= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )):(CALL strcpy ((LVAR 121):(LVAR 93):) ):(CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) ):(= (LVAR 129) (CALL read_file ((LVAR 121):) )):(CALL tokenize ((LVAR 121):(LVAR 129): 0 :) ):)
// Line 129 (= (LVAR 101) (CALL strrchr ((LVAR 8): 47 :) ))
	mov  rax, rbp
	sub  rax, 101
	push rax
// Line 129 (CALL strrchr ((LVAR 8): 47 :) )
// Line 129  47 
	push 47
// Line 129 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000068
	mov  rax, 0
	call strrchr
	jmp  .L000069
.L000068:
	sub  rsp, 8
	mov  rax, 0
	call strrchr
	add  rsp, 8
.L000069:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 138 (IF (! (LVAR 101)) (= (LVAR 93) (ADDR  "./" )) (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):))
// Line 130 (! (LVAR 101))
// Line 130 (LVAR 101)
	mov  rax, rbp
	sub  rax, 101
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000072
	mov  rax, 1
	jmp  .L000073
.L000072:
	mov  rax, 0
.L000073:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000070
// Line 131 (= (LVAR 93) (ADDR  "./" ))
	mov  rax, rbp
	sub  rax, 93
	push rax
// Line 131 (ADDR  "./" )
	lea  rax, .LS000001[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000071
.L000070:
// Line 138 (BLOCK(= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )):(CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) ):)
// Line 133 (= (LVAR 93) (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) ))
	mov  rax, rbp
	sub  rax, 93
	push rax
// Line 133 (CALL calloc ( 1 :(+ (- (LVAR 101) (LVAR 8))  2 ):) )
// Line 133 (+ (- (LVAR 101) (LVAR 8))  2 )
// Line 133 (- (LVAR 101) (LVAR 8))
// Line 133 (LVAR 101)
	mov  rax, rbp
	sub  rax, 101
	mov  rax, [rax]
	push rax
// Line 133 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 133  2 
	push 2
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 133  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000074
	mov  rax, 0
	call calloc
	jmp  .L000075
.L000074:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000075:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 134 (CALL strncpy ((LVAR 93):(LVAR 8):(+ (- (LVAR 101) (LVAR 8))  1 ):) )
// Line 134 (+ (- (LVAR 101) (LVAR 8))  1 )
// Line 134 (- (LVAR 101) (LVAR 8))
// Line 134 (LVAR 101)
	mov  rax, rbp
	sub  rax, 101
	mov  rax, [rax]
	push rax
// Line 134 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 134  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 134 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 134 (LVAR 93)
	mov  rax, rbp
	sub  rax, 93
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000076
	mov  rax, 0
	call strncpy
	jmp  .L000077
.L000076:
	sub  rsp, 8
	mov  rax, 0
	call strncpy
	add  rsp, 8
.L000077:
	push rax
	pop  rax
.L000071:
// Line 138 (= (LVAR 109) (CALL strchr ((+ (LVAR 16)  1 ): 34 :) ))
	mov  rax, rbp
	sub  rax, 109
	push rax
// Line 138 (CALL strchr ((+ (LVAR 16)  1 ): 34 :) )
// Line 138  34 
	push 34
// Line 138 (+ (LVAR 16)  1 )
// Line 138 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 138  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000078
	mov  rax, 0
	call strchr
	jmp  .L000079
.L000078:
	sub  rsp, 8
	mov  rax, 0
	call strchr
	add  rsp, 8
.L000079:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 139 (= (LVAR 113) (- (- (LVAR 109) (LVAR 16))  1 ))
	mov  rax, rbp
	sub  rax, 113
	push rax
// Line 139 (- (- (LVAR 109) (LVAR 16))  1 )
// Line 139 (- (LVAR 109) (LVAR 16))
// Line 139 (LVAR 109)
	mov  rax, rbp
	sub  rax, 109
	mov  rax, [rax]
	push rax
// Line 139 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 139  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 140 (= (LVAR 121) (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) ))
	mov  rax, rbp
	sub  rax, 121
	push rax
// Line 140 (CALL calloc ( 1 :(+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 ):) )
// Line 140 (+ (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))  1 )
// Line 140 (+ (CALL strlen ((LVAR 93):) ) (LVAR 113))
// Line 140 (CALL strlen ((LVAR 93):) )
// Line 140 (LVAR 93)
	mov  rax, rbp
	sub  rax, 93
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000080
	mov  rax, 0
	call strlen
	jmp  .L000081
.L000080:
	sub  rsp, 8
	mov  rax, 0
	call strlen
	add  rsp, 8
.L000081:
	push rax
// Line 140 (LVAR 113)
	mov  rax, rbp
	sub  rax, 113
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 140  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 140  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000082
	mov  rax, 0
	call calloc
	jmp  .L000083
.L000082:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000083:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 141 (CALL strcpy ((LVAR 121):(LVAR 93):) )
// Line 141 (LVAR 93)
	mov  rax, rbp
	sub  rax, 93
	mov  rax, [rax]
	push rax
// Line 141 (LVAR 121)
	mov  rax, rbp
	sub  rax, 121
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000084
	mov  rax, 0
	call strcpy
	jmp  .L000085
.L000084:
	sub  rsp, 8
	mov  rax, 0
	call strcpy
	add  rsp, 8
.L000085:
	push rax
	pop  rax
// Line 142 (CALL strncpy ((+ (LVAR 121) (CALL strlen ((LVAR 93):) )):(+ (LVAR 16)  1 ):(LVAR 113):) )
// Line 142 (LVAR 113)
	mov  rax, rbp
	sub  rax, 113
	mov  eax, [rax]
	push rax
// Line 142 (+ (LVAR 16)  1 )
// Line 142 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 142  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
// Line 142 (+ (LVAR 121) (CALL strlen ((LVAR 93):) ))
// Line 142 (LVAR 121)
	mov  rax, rbp
	sub  rax, 121
	mov  rax, [rax]
	push rax
// Line 142 (CALL strlen ((LVAR 93):) )
// Line 142 (LVAR 93)
	mov  rax, rbp
	sub  rax, 93
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000086
	mov  rax, 0
	call strlen
	jmp  .L000087
.L000086:
	sub  rsp, 8
	mov  rax, 0
	call strlen
	add  rsp, 8
.L000087:
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000088
	mov  rax, 0
	call strncpy
	jmp  .L000089
.L000088:
	sub  rsp, 8
	mov  rax, 0
	call strncpy
	add  rsp, 8
.L000089:
	push rax
	pop  rax
// Line 145 (= (LVAR 129) (CALL read_file ((LVAR 121):) ))
	mov  rax, rbp
	sub  rax, 129
	push rax
// Line 145 (CALL read_file ((LVAR 121):) )
// Line 145 (LVAR 121)
	mov  rax, rbp
	sub  rax, 121
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000090
	mov  rax, 0
	call read_file
	jmp  .L000091
.L000090:
	sub  rsp, 8
	mov  rax, 0
	call read_file
	add  rsp, 8
.L000091:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 146 (CALL tokenize ((LVAR 121):(LVAR 129): 0 :) )
// Line 787  0 
	push 0
// Line 146 (LVAR 129)
	mov  rax, rbp
	sub  rax, 129
	mov  rax, [rax]
	push rax
// Line 146 (LVAR 121)
	mov  rax, rbp
	sub  rax, 121
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000092
	mov  rax, 0
	call tokenize
	jmp  .L000093
.L000092:
	sub  rsp, 8
	mov  rax, 0
	call tokenize
	add  rsp, 8
.L000093:
	push rax
	pop  rax
	jmp  .L000067
.L000066:
.L000067:
	jmp  .L000059
.L000058:
// Line 175 (IF (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):) NULL )
// Line 148 (CALL is_reserved ((LVAR 16):(LVAR 85):(ADDR  "define" ):) )
// Line 148 (ADDR  "define" )
	lea  rax, .LS000002[rip]
	push rax
// Line 148 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  eax, [rax]
	push rax
// Line 148 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000096
	mov  rax, 0
	call is_reserved
	jmp  .L000097
.L000096:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000097:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000094
// Line 175 (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 85))):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )):(= (LVAR 133)  0 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )):(= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) )):(CALL print_token ((GVAR stderr):(LVAR 141):) ):(CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) ):(= (LVAR 16) (+= (LVAR 16) (LVAR 133))):(= (MEMBER (LVAR 181) next 8) (CAST * void   0 )):(= (LVAR 189) (ADDR (LVAR 181))):(= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )):(WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)):(IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL ):(CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) ):(CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) ):)
// Line 149 (CALL fprintf ((GVAR stderr):(ADDR  "macro define: " ):) )
// Line 149 (ADDR  "macro define: " )
	lea  rax, .LS000003[rip]
	push rax
// Line 149 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000098
	mov  rax, 0
	call fprintf
	jmp  .L000099
.L000098:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000099:
	push rax
	pop  rax
// Line 150 (= (LVAR 16) (+= (LVAR 16) (LVAR 85)))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 150 (+= (LVAR 16) (LVAR 85))
// Line 150 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 150 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 153 (WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))
.L000100:
// Line 151 (|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))
// Line 151 (== (DEREF (LVAR 16))  32 )
// Line 151 (DEREF (LVAR 16))
// Line 151 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 151  32 
	push 32
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000102
// Line 151 (== (DEREF (LVAR 16))  9 )
// Line 151 (DEREF (LVAR 16))
// Line 151 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 151  9 
	push 9
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000102
	mov  rax, 0
	jmp  .L000103
.L000102:
	mov  rax, 1
.L000103:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000101
// Line 152 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 152 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 152 (++ (LVAR 16)  1 )
// Line 152 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 152  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 152  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000100
.L000101:
// Line 153 (= (LVAR 133)  0 )
	mov  rax, rbp
	sub  rax, 133
	push rax
// Line 153  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 156 (WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )body: (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 ))
.L000104:
// Line 154 (CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 133))):) )
// Line 154 (DEREF (+ (LVAR 16) (LVAR 133)))
// Line 154 (+ (LVAR 16) (LVAR 133))
// Line 154 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 154 (LVAR 133)
	mov  rax, rbp
	sub  rax, 133
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000106
	mov  rax, 0
	call is_ident_char
	jmp  .L000107
.L000106:
	sub  rsp, 8
	mov  rax, 0
	call is_ident_char
	add  rsp, 8
.L000107:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000105
// Line 155 (++ (= (LVAR 133) (++ (LVAR 133)  1 ))  1 )
// Line 155 (= (LVAR 133) (++ (LVAR 133)  1 ))
	mov  rax, rbp
	sub  rax, 133
	push rax
// Line 155 (++ (LVAR 133)  1 )
// Line 155 (LVAR 133)
	mov  rax, rbp
	sub  rax, 133
	mov  eax, [rax]
	push rax
// Line 155  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 155  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000104
.L000105:
// Line 156 (= (LVAR 141) (CALL macro_token ((LVAR 16):(LVAR 133):) ))
	mov  rax, rbp
	sub  rax, 141
	push rax
// Line 156 (CALL macro_token ((LVAR 16):(LVAR 133):) )
// Line 156 (LVAR 133)
	mov  rax, rbp
	sub  rax, 133
	mov  eax, [rax]
	push rax
// Line 156 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000108
	mov  rax, 0
	call macro_token
	jmp  .L000109
.L000108:
	sub  rsp, 8
	mov  rax, 0
	call macro_token
	add  rsp, 8
.L000109:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 157 (CALL print_token ((GVAR stderr):(LVAR 141):) )
// Line 157 (LVAR 141)
	mov  rax, rbp
	sub  rax, 141
	mov  rax, [rax]
	push rax
// Line 157 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000110
	mov  rax, 0
	call print_token
	jmp  .L000111
.L000110:
	sub  rsp, 8
	mov  rax, 0
	call print_token
	add  rsp, 8
.L000111:
	push rax
	pop  rax
// Line 158 (CALL fprintf ((GVAR stderr):(ADDR  "=>" ):) )
// Line 158 (ADDR  "=>" )
	lea  rax, .LS000004[rip]
	push rax
// Line 158 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000112
	mov  rax, 0
	call fprintf
	jmp  .L000113
.L000112:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000113:
	push rax
	pop  rax
// Line 159 (= (LVAR 16) (+= (LVAR 16) (LVAR 133)))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 159 (+= (LVAR 16) (LVAR 133))
// Line 159 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 159 (LVAR 133)
	mov  rax, rbp
	sub  rax, 133
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 162 (= (MEMBER (LVAR 181) next 8) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 181
	add  rax, 8
	push rax
// Line 787 (CAST * void   0 )
// Line 787  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 163 (= (LVAR 189) (ADDR (LVAR 181)))
	mov  rax, rbp
	sub  rax, 189
	push rax
// Line 163 (ADDR (LVAR 181))
	mov  rax, rbp
	sub  rax, 181
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 164 (= (LVAR 197) (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 197
	push rax
// Line 164 (CALL new_tok_context ((LVAR 73):(LVAR 189):(LVAR 16):) )
// Line 164 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 164 (LVAR 189)
	mov  rax, rbp
	sub  rax, 189
	mov  rax, [rax]
	push rax
// Line 164 (LVAR 73)
	mov  rax, rbp
	sub  rax, 73
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000114
	mov  rax, 0
	call new_tok_context
	jmp  .L000115
.L000114:
	sub  rsp, 8
	mov  rax, 0
	call new_tok_context
	add  rsp, 8
.L000115:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 168 (WHILE cond:(!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )body: (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):))
.L000116:
// Line 165 (!= (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))  10 )
// Line 165 (DEREF (MEMBER (DEREF (LVAR 197)) char_ptr 16))
// Line 165 (MEMBER (DEREF (LVAR 197)) char_ptr 16)
// Line 165 (LVAR 197)
	mov  rax, rbp
	sub  rax, 197
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 165  10 
	push 10
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000117
// Line 168 (BLOCK(CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) ):)
// Line 166 (CALL print_token ((GVAR stderr):(CALL read_token ((LVAR 197):) ):) )
// Line 166 (CALL read_token ((LVAR 197):) )
// Line 166 (LVAR 197)
	mov  rax, rbp
	sub  rax, 197
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000118
	mov  rax, 0
	call read_token
	jmp  .L000119
.L000118:
	sub  rsp, 8
	mov  rax, 0
	call read_token
	add  rsp, 8
.L000119:
	push rax
// Line 166 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000120
	mov  rax, 0
	call print_token
	jmp  .L000121
.L000120:
	sub  rsp, 8
	mov  rax, 0
	call print_token
	add  rsp, 8
.L000121:
	push rax
	pop  rax
	jmp  .L000116
.L000117:
// Line 170 (IF (! (MEMBER (LVAR 181) next 8)) (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) ) NULL )
// Line 168 (! (MEMBER (LVAR 181) next 8))
// Line 168 (MEMBER (LVAR 181) next 8)
	mov  rax, rbp
	sub  rax, 181
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000124
	mov  rax, 1
	jmp  .L000125
.L000124:
	mov  rax, 0
.L000125:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000122
// Line 169 (CALL error_at_token ((LVAR 141):(ADDR  "No substitute token." ):) )
// Line 169 (ADDR  "No substitute token." )
	lea  rax, .LS000005[rip]
	push rax
// Line 169 (LVAR 141)
	mov  rax, rbp
	sub  rax, 141
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000126
	mov  rax, 0
	call error_at_token
	jmp  .L000127
.L000126:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000127:
	push rax
	pop  rax
	jmp  .L000123
.L000122:
.L000123:
// Line 170 (CALL new_macro ((LVAR 141):(MEMBER (LVAR 181) next 8):) )
// Line 170 (MEMBER (LVAR 181) next 8)
	mov  rax, rbp
	sub  rax, 181
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 170 (LVAR 141)
	mov  rax, rbp
	sub  rax, 141
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000128
	mov  rax, 0
	call new_macro
	jmp  .L000129
.L000128:
	sub  rsp, 8
	mov  rax, 0
	call new_macro
	add  rsp, 8
.L000129:
	push rax
	pop  rax
// Line 172 (CALL fprintf ((GVAR stderr):(ADDR  "\n" ):) )
// Line 172 (ADDR  "\n" )
	lea  rax, .LS000006[rip]
	push rax
// Line 172 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000130
	mov  rax, 0
	call fprintf
	jmp  .L000131
.L000130:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000131:
	push rax
	pop  rax
	jmp  .L000095
.L000094:
.L000095:
.L000059:
// Line 175 (= (LVAR 16) (+ (LVAR 81)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 175 (+ (LVAR 81)  1 )
// Line 175 (LVAR 81)
	mov  rax, rbp
	sub  rax, 81
	mov  rax, [rax]
	push rax
// Line 175  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 176 CONTINUE 
	jmp  .L000040
	jmp  .L000047
.L000046:
.L000047:
// Line 187 (IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 205) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 205)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 205)  1 ))):CONTINUE :) NULL )
// Line 178 (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 )
// Line 178 (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )
// Line 178  2 
	push 2
// Line 178 (ADDR  "//" )
	lea  rax, .LS000007[rip]
	push rax
// Line 178 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000134
	mov  rax, 0
	call strncmp
	jmp  .L000135
.L000134:
	sub  rsp, 8
	mov  rax, 0
	call strncmp
	add  rsp, 8
.L000135:
	push rax
// Line 178  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000132
// Line 187 (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 205) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 205)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 205)  1 ))):CONTINUE :)
// Line 179 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 179 (+= (LVAR 16)  2 )
// Line 179 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 179  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 180 (= (LVAR 205) (CALL strchr ((LVAR 16): 10 :) ))
	mov  rax, rbp
	sub  rax, 205
	push rax
// Line 180 (CALL strchr ((LVAR 16): 10 :) )
// Line 180  10 
	push 10
// Line 180 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000136
	mov  rax, 0
	call strchr
	jmp  .L000137
.L000136:
	sub  rsp, 8
	mov  rax, 0
	call strchr
	add  rsp, 8
.L000137:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 185 (IF (! (LVAR 205)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 205)  1 )))
// Line 181 (! (LVAR 205))
// Line 181 (LVAR 205)
	mov  rax, rbp
	sub  rax, 205
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000140
	mov  rax, 1
	jmp  .L000141
.L000140:
	mov  rax, 0
.L000141:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000138
// Line 183 (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):)
// Line 182 (= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 182 (CALL strchr ((LVAR 16): 10 :) )
// Line 182  10 
	push 10
// Line 182 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000142
	mov  rax, 0
	call strchr
	jmp  .L000143
.L000142:
	sub  rsp, 8
	mov  rax, 0
	call strchr
	add  rsp, 8
.L000143:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000139
.L000138:
// Line 184 (= (LVAR 16) (+ (LVAR 205)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 184 (+ (LVAR 205)  1 )
// Line 184 (LVAR 205)
	mov  rax, rbp
	sub  rax, 205
	mov  rax, [rax]
	push rax
// Line 184  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000139:
// Line 185 CONTINUE 
	jmp  .L000040
	jmp  .L000133
.L000132:
.L000133:
// Line 192 (IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 65) (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):CONTINUE :) NULL )
// Line 187 (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 )
// Line 187 (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )
// Line 187  8 
	push 8
// Line 187 (ADDR  "__LINE__" )
	lea  rax, .LS000008[rip]
	push rax
// Line 187 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000146
	mov  rax, 0
	call strncmp
	jmp  .L000147
.L000146:
	sub  rsp, 8
	mov  rax, 0
	call strncmp
	add  rsp, 8
.L000147:
	push rax
// Line 187  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000144
// Line 192 (BLOCK(= (LVAR 65) (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):CONTINUE :)
// Line 188 (= (LVAR 65) (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 188 (CALL new_token ( 61 :(LVAR 65):(LVAR 16): 8 :) )
// Line 188  8 
	push 8
// Line 188 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 188 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 188  61 
	push 61
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000148
	mov  rax, 0
	call new_token
	jmp  .L000149
.L000148:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000149:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 189 (= (LVAR 16) (+= (LVAR 16)  8 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 189 (+= (LVAR 16)  8 )
// Line 189 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 189  8 
	push 8
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 190 CONTINUE 
	jmp  .L000040
	jmp  .L000145
.L000144:
.L000145:
// Line 205 (IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 209) (- (DEREF (LVAR 16))  48 )):(= (LVAR 213)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )body: (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):)):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 213))):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 209)):CONTINUE :) NULL )
// Line 192 (CALL isdigit ((DEREF (LVAR 16)):) )
// Line 192 (DEREF (LVAR 16))
// Line 192 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000152
	mov  rax, 0
	call isdigit
	jmp  .L000153
.L000152:
	sub  rsp, 8
	mov  rax, 0
	call isdigit
	add  rsp, 8
.L000153:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000150
// Line 205 (BLOCK(= (LVAR 209) (- (DEREF (LVAR 16))  48 )):(= (LVAR 213)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )body: (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):)):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 213))):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 209)):CONTINUE :)
// Line 193 (= (LVAR 209) (- (DEREF (LVAR 16))  48 ))
	mov  rax, rbp
	sub  rax, 209
	push rax
// Line 193 (- (DEREF (LVAR 16))  48 )
// Line 193 (DEREF (LVAR 16))
// Line 193 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 193  48 
	push 48
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 194 (= (LVAR 213)  1 )
	mov  rax, rbp
	sub  rax, 213
	push rax
// Line 194  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 200 (WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )body: (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):))
.L000154:
// Line 195 (CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 213))):) )
// Line 195 (DEREF (+ (LVAR 16) (LVAR 213)))
// Line 195 (+ (LVAR 16) (LVAR 213))
// Line 195 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 195 (LVAR 213)
	mov  rax, rbp
	sub  rax, 213
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000156
	mov  rax, 0
	call isdigit
	jmp  .L000157
.L000156:
	sub  rsp, 8
	mov  rax, 0
	call isdigit
	add  rsp, 8
.L000157:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000155
// Line 200 (BLOCK(= (LVAR 209) (*= (LVAR 209)  10 )):(= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))):(++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 ):)
// Line 196 (= (LVAR 209) (*= (LVAR 209)  10 ))
	mov  rax, rbp
	sub  rax, 209
	push rax
// Line 196 (*= (LVAR 209)  10 )
// Line 196 (LVAR 209)
	mov  rax, rbp
	sub  rax, 209
	mov  eax, [rax]
	push rax
// Line 196  10 
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 197 (= (LVAR 209) (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 )))
	mov  rax, rbp
	sub  rax, 209
	push rax
// Line 197 (+= (LVAR 209) (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 ))
// Line 197 (LVAR 209)
	mov  rax, rbp
	sub  rax, 209
	mov  eax, [rax]
	push rax
// Line 197 (- (DEREF (+ (LVAR 16) (LVAR 213)))  48 )
// Line 197 (DEREF (+ (LVAR 16) (LVAR 213)))
// Line 197 (+ (LVAR 16) (LVAR 213))
// Line 197 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 197 (LVAR 213)
	mov  rax, rbp
	sub  rax, 213
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 197  48 
	push 48
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 198 (++ (= (LVAR 213) (++ (LVAR 213)  1 ))  1 )
// Line 198 (= (LVAR 213) (++ (LVAR 213)  1 ))
	mov  rax, rbp
	sub  rax, 213
	push rax
// Line 198 (++ (LVAR 213)  1 )
// Line 198 (LVAR 213)
	mov  rax, rbp
	sub  rax, 213
	mov  eax, [rax]
	push rax
// Line 198  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 198  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000154
.L000155:
// Line 200 (= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 200 (CALL new_token ( 1 :(LVAR 65):(LVAR 16):(LVAR 213):) )
// Line 200 (LVAR 213)
	mov  rax, rbp
	sub  rax, 213
	mov  eax, [rax]
	push rax
// Line 200 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 200 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 200  1 
	push 1
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000158
	mov  rax, 0
	call new_token
	jmp  .L000159
.L000158:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000159:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 201 (= (LVAR 16) (+= (LVAR 16) (LVAR 213)))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 201 (+= (LVAR 16) (LVAR 213))
// Line 201 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 201 (LVAR 213)
	mov  rax, rbp
	sub  rax, 213
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 202 (= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 209))
// Line 202 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 202 (LVAR 209)
	mov  rax, rbp
	sub  rax, 209
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 203 CONTINUE 
	jmp  .L000040
	jmp  .L000151
.L000150:
.L000151:
// Line 256 (IF (|| (CALL isalpha ((DEREF (LVAR 16)):) ) (== (DEREF (LVAR 16))  95 )) (BLOCK(= (LVAR 217)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )body: (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 217))):CONTINUE :) NULL )
// Line 205 (|| (CALL isalpha ((DEREF (LVAR 16)):) ) (== (DEREF (LVAR 16))  95 ))
// Line 205 (CALL isalpha ((DEREF (LVAR 16)):) )
// Line 205 (DEREF (LVAR 16))
// Line 205 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000164
	mov  rax, 0
	call isalpha
	jmp  .L000165
.L000164:
	sub  rsp, 8
	mov  rax, 0
	call isalpha
	add  rsp, 8
.L000165:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000162
// Line 205 (== (DEREF (LVAR 16))  95 )
// Line 205 (DEREF (LVAR 16))
// Line 205 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 205  95 
	push 95
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000162
	mov  rax, 0
	jmp  .L000163
.L000162:
	mov  rax, 1
.L000163:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000160
// Line 256 (BLOCK(= (LVAR 217)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )body: (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 217))):CONTINUE :)
// Line 206 (= (LVAR 217)  1 )
	mov  rax, rbp
	sub  rax, 217
	push rax
// Line 206  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 210 (WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )body: (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 ))
.L000166:
// Line 207 (CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 217))):) )
// Line 207 (DEREF (+ (LVAR 16) (LVAR 217)))
// Line 207 (+ (LVAR 16) (LVAR 217))
// Line 207 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 207 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000168
	mov  rax, 0
	call is_ident_char
	jmp  .L000169
.L000168:
	sub  rsp, 8
	mov  rax, 0
	call is_ident_char
	add  rsp, 8
.L000169:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000167
// Line 208 (++ (= (LVAR 217) (++ (LVAR 217)  1 ))  1 )
// Line 208 (= (LVAR 217) (++ (LVAR 217)  1 ))
	mov  rax, rbp
	sub  rax, 217
	push rax
// Line 208 (++ (LVAR 217)  1 )
// Line 208 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 208  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 208  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000166
.L000167:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))))))))))))))))
// Line 210 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "return" ):) )
// Line 210 (ADDR  "return" )
	lea  rax, .LS000009[rip]
	push rax
// Line 210 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 210 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000172
	mov  rax, 0
	call is_reserved
	jmp  .L000173
.L000172:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000173:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000170
// Line 212 (BLOCK(= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 211 (= (LVAR 65) (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 211 (CALL new_token ( 49 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 211 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 211 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 211 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 211  49 
	push 49
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000174
	mov  rax, 0
	call new_token
	jmp  .L000175
.L000174:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000175:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000171
.L000170:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))))
// Line 212 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "if" ):) )
// Line 212 (ADDR  "if" )
	lea  rax, .LS000010[rip]
	push rax
// Line 212 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 212 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000178
	mov  rax, 0
	call is_reserved
	jmp  .L000179
.L000178:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000179:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000176
// Line 214 (BLOCK(= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 213 (= (LVAR 65) (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 213 (CALL new_token ( 40 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 213 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 213 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 213 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 213  40 
	push 40
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000180
	mov  rax, 0
	call new_token
	jmp  .L000181
.L000180:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000181:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000177
.L000176:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))))))))))))))
// Line 214 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "else" ):) )
// Line 214 (ADDR  "else" )
	lea  rax, .LS000011[rip]
	push rax
// Line 214 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 214 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000184
	mov  rax, 0
	call is_reserved
	jmp  .L000185
.L000184:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000185:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000182
// Line 216 (BLOCK(= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 215 (= (LVAR 65) (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 215 (CALL new_token ( 41 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 215 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 215 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 215 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 215  41 
	push 41
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000186
	mov  rax, 0
	call new_token
	jmp  .L000187
.L000186:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000187:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000183
.L000182:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))))
// Line 216 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "while" ):) )
// Line 216 (ADDR  "while" )
	lea  rax, .LS000012[rip]
	push rax
// Line 216 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 216 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000190
	mov  rax, 0
	call is_reserved
	jmp  .L000191
.L000190:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000191:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000188
// Line 218 (BLOCK(= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 217 (= (LVAR 65) (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 217 (CALL new_token ( 42 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 217 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 217 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 217 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 217  42 
	push 42
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000192
	mov  rax, 0
	call new_token
	jmp  .L000193
.L000192:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000193:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000189
.L000188:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))))))))))))
// Line 218 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "for" ):) )
// Line 218 (ADDR  "for" )
	lea  rax, .LS000013[rip]
	push rax
// Line 218 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 218 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000196
	mov  rax, 0
	call is_reserved
	jmp  .L000197
.L000196:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000197:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000194
// Line 220 (BLOCK(= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 219 (= (LVAR 65) (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 219 (CALL new_token ( 43 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 219 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 219 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 219 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 219  43 
	push 43
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000198
	mov  rax, 0
	call new_token
	jmp  .L000199
.L000198:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000199:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000195
.L000194:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))))
// Line 220 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "switch" ):) )
// Line 220 (ADDR  "switch" )
	lea  rax, .LS000014[rip]
	push rax
// Line 220 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 220 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000202
	mov  rax, 0
	call is_reserved
	jmp  .L000203
.L000202:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000203:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000200
// Line 222 (BLOCK(= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 221 (= (LVAR 65) (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 221 (CALL new_token ( 44 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 221 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 221 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 221 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 221  44 
	push 44
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000204
	mov  rax, 0
	call new_token
	jmp  .L000205
.L000204:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000205:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000201
.L000200:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))))))))))
// Line 222 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "case" ):) )
// Line 222 (ADDR  "case" )
	lea  rax, .LS000015[rip]
	push rax
// Line 222 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 222 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000208
	mov  rax, 0
	call is_reserved
	jmp  .L000209
.L000208:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000209:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000206
// Line 224 (BLOCK(= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 223 (= (LVAR 65) (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 223 (CALL new_token ( 45 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 223 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 223 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 223 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 223  45 
	push 45
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000210
	mov  rax, 0
	call new_token
	jmp  .L000211
.L000210:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000211:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000207
.L000206:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))))
// Line 224 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "default" ):) )
// Line 224 (ADDR  "default" )
	lea  rax, .LS000016[rip]
	push rax
// Line 224 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 224 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000214
	mov  rax, 0
	call is_reserved
	jmp  .L000215
.L000214:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000215:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000212
// Line 226 (BLOCK(= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 225 (= (LVAR 65) (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 225 (CALL new_token ( 46 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 225 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 225 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 225 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 225  46 
	push 46
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000216
	mov  rax, 0
	call new_token
	jmp  .L000217
.L000216:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000217:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000213
.L000212:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))))))))
// Line 226 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "break" ):) )
// Line 226 (ADDR  "break" )
	lea  rax, .LS000017[rip]
	push rax
// Line 226 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 226 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000220
	mov  rax, 0
	call is_reserved
	jmp  .L000221
.L000220:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000221:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000218
// Line 228 (BLOCK(= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 227 (= (LVAR 65) (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 227 (CALL new_token ( 47 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 227 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 227 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 227 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 227  47 
	push 47
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000222
	mov  rax, 0
	call new_token
	jmp  .L000223
.L000222:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000223:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000219
.L000218:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))))
// Line 228 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "continue" ):) )
// Line 228 (ADDR  "continue" )
	lea  rax, .LS000018[rip]
	push rax
// Line 228 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 228 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000226
	mov  rax, 0
	call is_reserved
	jmp  .L000227
.L000226:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000227:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000224
// Line 230 (BLOCK(= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 229 (= (LVAR 65) (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 229 (CALL new_token ( 48 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 229 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 229 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 229 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 229  48 
	push 48
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000228
	mov  rax, 0
	call new_token
	jmp  .L000229
.L000228:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000229:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000225
.L000224:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))))))
// Line 230 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "int" ):) )
// Line 230 (ADDR  "int" )
	lea  rax, .LS000019[rip]
	push rax
// Line 230 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 230 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000232
	mov  rax, 0
	call is_reserved
	jmp  .L000233
.L000232:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000233:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000230
// Line 232 (BLOCK(= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 231 (= (LVAR 65) (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 231 (CALL new_token ( 51 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 231 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 231 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 231 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 231  51 
	push 51
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000234
	mov  rax, 0
	call new_token
	jmp  .L000235
.L000234:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000235:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000231
.L000230:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))))
// Line 232 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "char" ):) )
// Line 232 (ADDR  "char" )
	lea  rax, .LS000020[rip]
	push rax
// Line 232 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 232 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000238
	mov  rax, 0
	call is_reserved
	jmp  .L000239
.L000238:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000239:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000236
// Line 234 (BLOCK(= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 233 (= (LVAR 65) (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 233 (CALL new_token ( 52 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 233 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 233 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 233 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 233  52 
	push 52
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000240
	mov  rax, 0
	call new_token
	jmp  .L000241
.L000240:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000241:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000237
.L000236:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))))
// Line 234 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "bool" ):) )
// Line 234 (ADDR  "bool" )
	lea  rax, .LS000021[rip]
	push rax
// Line 234 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 234 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000244
	mov  rax, 0
	call is_reserved
	jmp  .L000245
.L000244:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000245:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000242
// Line 236 (BLOCK(= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 235 (= (LVAR 65) (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 235 (CALL new_token ( 53 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 235 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 235 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 235 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 235  53 
	push 53
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000246
	mov  rax, 0
	call new_token
	jmp  .L000247
.L000246:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000247:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000243
.L000242:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))))
// Line 236 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "void" ):) )
// Line 236 (ADDR  "void" )
	lea  rax, .LS000022[rip]
	push rax
// Line 236 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 236 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000250
	mov  rax, 0
	call is_reserved
	jmp  .L000251
.L000250:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000251:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000248
// Line 238 (BLOCK(= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 237 (= (LVAR 65) (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 237 (CALL new_token ( 54 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 237 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 237 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 237 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 237  54 
	push 54
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000252
	mov  rax, 0
	call new_token
	jmp  .L000253
.L000252:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000253:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000249
.L000248:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))))
// Line 238 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "sizeof" ):) )
// Line 238 (ADDR  "sizeof" )
	lea  rax, .LS000023[rip]
	push rax
// Line 238 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 238 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000256
	mov  rax, 0
	call is_reserved
	jmp  .L000257
.L000256:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000257:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000254
// Line 240 (BLOCK(= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 239 (= (LVAR 65) (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 239 (CALL new_token ( 50 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 239 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 239 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 239 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 239  50 
	push 50
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000258
	mov  rax, 0
	call new_token
	jmp  .L000259
.L000258:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000259:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000255
.L000254:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))))
// Line 240 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "struct" ):) )
// Line 240 (ADDR  "struct" )
	lea  rax, .LS000024[rip]
	push rax
// Line 240 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 240 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000262
	mov  rax, 0
	call is_reserved
	jmp  .L000263
.L000262:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000263:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000260
// Line 242 (BLOCK(= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 241 (= (LVAR 65) (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 241 (CALL new_token ( 55 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 241 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 241 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 241 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 241  55 
	push 55
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000264
	mov  rax, 0
	call new_token
	jmp  .L000265
.L000264:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000265:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000261
.L000260:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))))
// Line 242 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "enum" ):) )
// Line 242 (ADDR  "enum" )
	lea  rax, .LS000025[rip]
	push rax
// Line 242 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 242 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000268
	mov  rax, 0
	call is_reserved
	jmp  .L000269
.L000268:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000269:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000266
// Line 244 (BLOCK(= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 243 (= (LVAR 65) (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 243 (CALL new_token ( 56 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 243 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 243 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 243 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 243  56 
	push 56
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000270
	mov  rax, 0
	call new_token
	jmp  .L000271
.L000270:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000271:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000267
.L000266:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))))
// Line 244 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "union" ):) )
// Line 244 (ADDR  "union" )
	lea  rax, .LS000026[rip]
	push rax
// Line 244 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 244 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000274
	mov  rax, 0
	call is_reserved
	jmp  .L000275
.L000274:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000275:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000272
// Line 246 (BLOCK(= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 245 (= (LVAR 65) (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 245 (CALL new_token ( 57 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 245 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 245 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 245 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 245  57 
	push 57
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000276
	mov  rax, 0
	call new_token
	jmp  .L000277
.L000276:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000277:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000273
.L000272:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)))
// Line 246 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "typedef" ):) )
// Line 246 (ADDR  "typedef" )
	lea  rax, .LS000027[rip]
	push rax
// Line 246 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 246 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000280
	mov  rax, 0
	call is_reserved
	jmp  .L000281
.L000280:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000281:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000278
// Line 248 (BLOCK(= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 247 (= (LVAR 65) (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 247 (CALL new_token ( 59 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 247 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 247 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 247 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 247  59 
	push 59
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000282
	mov  rax, 0
	call new_token
	jmp  .L000283
.L000282:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000283:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000279
.L000278:
// Line 253 (IF (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):) (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):))
// Line 248 (CALL is_reserved ((LVAR 16):(LVAR 217):(ADDR  "extern" ):) )
// Line 248 (ADDR  "extern" )
	lea  rax, .LS000028[rip]
	push rax
// Line 248 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 248 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000286
	mov  rax, 0
	call is_reserved
	jmp  .L000287
.L000286:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000287:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000284
// Line 250 (BLOCK(= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 249 (= (LVAR 65) (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 249 (CALL new_token ( 58 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 249 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 249 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 249 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 249  58 
	push 58
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000288
	mov  rax, 0
	call new_token
	jmp  .L000289
.L000288:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000289:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000285
.L000284:
// Line 253 (BLOCK(= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )):)
// Line 251 (= (LVAR 65) (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 251 (CALL new_token ( 0 :(LVAR 65):(LVAR 16):(LVAR 217):) )
// Line 251 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
// Line 251 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 251 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 251  0 
	push 0
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000290
	mov  rax, 0
	call new_token
	jmp  .L000291
.L000290:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000291:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000285:
.L000279:
.L000273:
.L000267:
.L000261:
.L000255:
.L000249:
.L000243:
.L000237:
.L000231:
.L000225:
.L000219:
.L000213:
.L000207:
.L000201:
.L000195:
.L000189:
.L000183:
.L000177:
.L000171:
// Line 253 (= (LVAR 16) (+= (LVAR 16) (LVAR 217)))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 253 (+= (LVAR 16) (LVAR 217))
// Line 253 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 253 (LVAR 217)
	mov  rax, rbp
	sub  rax, 217
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 254 CONTINUE 
	jmp  .L000040
	jmp  .L000161
.L000160:
.L000161:
// Line 267 (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):CONTINUE :) NULL )
// Line 256 (== (DEREF (LVAR 16))  43 )
// Line 256 (DEREF (LVAR 16))
// Line 256 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 256  43 
	push 43
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000292
// Line 267 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):CONTINUE :)
// Line 265 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))
// Line 257 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 257 (DEREF (+ (LVAR 16)  1 ))
// Line 257 (+ (LVAR 16)  1 )
// Line 257 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 257  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 257  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000294
// Line 260 (BLOCK(= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 258 (= (LVAR 65) (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 258 (CALL new_token ( 14 :(LVAR 65):(LVAR 16): 2 :) )
// Line 258  2 
	push 2
// Line 258 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 258 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 258  14 
	push 14
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000296
	mov  rax, 0
	call new_token
	jmp  .L000297
.L000296:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000297:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 259 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 259 (+= (LVAR 16)  2 )
// Line 259 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 259  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000295
.L000294:
// Line 265 (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 260 (== (DEREF (+ (LVAR 16)  1 ))  43 )
// Line 260 (DEREF (+ (LVAR 16)  1 ))
// Line 260 (+ (LVAR 16)  1 )
// Line 260 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 260  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 260  43 
	push 43
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000298
// Line 263 (BLOCK(= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 261 (= (LVAR 65) (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 261 (CALL new_token ( 18 :(LVAR 65):(LVAR 16): 2 :) )
// Line 261  2 
	push 2
// Line 261 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 261 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 261  18 
	push 18
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000300
	mov  rax, 0
	call new_token
	jmp  .L000301
.L000300:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000301:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 262 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 262 (+= (LVAR 16)  2 )
// Line 262 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 262  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000299
.L000298:
// Line 264 (= (LVAR 65) (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 264 (CALL new_token ( 3 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 264  1 
	push 1
// Line 264 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 264 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 264 (++ (LVAR 16)  1 )
// Line 264 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 264  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 264  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 264 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 264  3 
	push 3
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000302
	mov  rax, 0
	call new_token
	jmp  .L000303
.L000302:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000303:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000299:
.L000295:
// Line 265 CONTINUE 
	jmp  .L000040
	jmp  .L000293
.L000292:
.L000293:
// Line 281 (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):CONTINUE :) NULL )
// Line 267 (== (DEREF (LVAR 16))  45 )
// Line 267 (DEREF (LVAR 16))
// Line 267 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 267  45 
	push 45
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000304
// Line 281 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):CONTINUE :)
// Line 279 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))))
// Line 268 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 268 (DEREF (+ (LVAR 16)  1 ))
// Line 268 (+ (LVAR 16)  1 )
// Line 268 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 268  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 268  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000306
// Line 271 (BLOCK(= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 269 (= (LVAR 65) (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 269 (CALL new_token ( 15 :(LVAR 65):(LVAR 16): 2 :) )
// Line 269  2 
	push 2
// Line 269 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 269 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 269  15 
	push 15
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000308
	mov  rax, 0
	call new_token
	jmp  .L000309
.L000308:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000309:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 270 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 270 (+= (LVAR 16)  2 )
// Line 270 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 270  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000307
.L000306:
// Line 279 (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))
// Line 271 (== (DEREF (+ (LVAR 16)  1 ))  45 )
// Line 271 (DEREF (+ (LVAR 16)  1 ))
// Line 271 (+ (LVAR 16)  1 )
// Line 271 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 271  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 271  45 
	push 45
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000310
// Line 274 (BLOCK(= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 272 (= (LVAR 65) (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 272 (CALL new_token ( 19 :(LVAR 65):(LVAR 16): 2 :) )
// Line 272  2 
	push 2
// Line 272 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 272 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 272  19 
	push 19
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000312
	mov  rax, 0
	call new_token
	jmp  .L000313
.L000312:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000313:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 273 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 273 (+= (LVAR 16)  2 )
// Line 273 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 273  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000311
.L000310:
// Line 279 (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 274 (== (DEREF (+ (LVAR 16)  1 ))  62 )
// Line 274 (DEREF (+ (LVAR 16)  1 ))
// Line 274 (+ (LVAR 16)  1 )
// Line 274 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 274  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 274  62 
	push 62
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000314
// Line 277 (BLOCK(= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 275 (= (LVAR 65) (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 275 (CALL new_token ( 38 :(LVAR 65):(LVAR 16): 2 :) )
// Line 275  2 
	push 2
// Line 275 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 275 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 275  38 
	push 38
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000316
	mov  rax, 0
	call new_token
	jmp  .L000317
.L000316:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000317:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 276 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 276 (+= (LVAR 16)  2 )
// Line 276 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 276  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000315
.L000314:
// Line 278 (= (LVAR 65) (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 278 (CALL new_token ( 4 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 278  1 
	push 1
// Line 278 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 278 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 278 (++ (LVAR 16)  1 )
// Line 278 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 278  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 278  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 278 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 278  4 
	push 4
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000318
	mov  rax, 0
	call new_token
	jmp  .L000319
.L000318:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000319:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000315:
.L000311:
.L000307:
// Line 279 CONTINUE 
	jmp  .L000040
	jmp  .L000305
.L000304:
.L000305:
// Line 289 (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL )
// Line 281 (== (DEREF (LVAR 16))  42 )
// Line 281 (DEREF (LVAR 16))
// Line 281 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 281  42 
	push 42
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000320
// Line 289 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :)
// Line 287 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 282 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 282 (DEREF (+ (LVAR 16)  1 ))
// Line 282 (+ (LVAR 16)  1 )
// Line 282 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 282  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 282  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000322
// Line 285 (BLOCK(= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 283 (= (LVAR 65) (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 283 (CALL new_token ( 16 :(LVAR 65):(LVAR 16): 2 :) )
// Line 283  2 
	push 2
// Line 283 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 283 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 283  16 
	push 16
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000324
	mov  rax, 0
	call new_token
	jmp  .L000325
.L000324:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000325:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 284 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 284 (+= (LVAR 16)  2 )
// Line 284 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 284  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000323
.L000322:
// Line 286 (= (LVAR 65) (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 286 (CALL new_token ( 5 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 286  1 
	push 1
// Line 286 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 286 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 286 (++ (LVAR 16)  1 )
// Line 286 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 286  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 286  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 286 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 286  5 
	push 5
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000326
	mov  rax, 0
	call new_token
	jmp  .L000327
.L000326:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000327:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000323:
// Line 287 CONTINUE 
	jmp  .L000040
	jmp  .L000321
.L000320:
.L000321:
// Line 297 (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :) NULL )
// Line 289 (== (DEREF (LVAR 16))  47 )
// Line 289 (DEREF (LVAR 16))
// Line 289 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 289  47 
	push 47
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000328
// Line 297 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):CONTINUE :)
// Line 295 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 290 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 290 (DEREF (+ (LVAR 16)  1 ))
// Line 290 (+ (LVAR 16)  1 )
// Line 290 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 290  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 290  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000330
// Line 293 (BLOCK(= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 291 (= (LVAR 65) (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 291 (CALL new_token ( 17 :(LVAR 65):(LVAR 16): 2 :) )
// Line 291  2 
	push 2
// Line 291 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 291 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 291  17 
	push 17
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000332
	mov  rax, 0
	call new_token
	jmp  .L000333
.L000332:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000333:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 292 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 292 (+= (LVAR 16)  2 )
// Line 292 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 292  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000331
.L000330:
// Line 294 (= (LVAR 65) (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 294 (CALL new_token ( 6 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 294  1 
	push 1
// Line 294 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 294 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 294 (++ (LVAR 16)  1 )
// Line 294 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 294  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 294  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 294 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 294  6 
	push 6
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000334
	mov  rax, 0
	call new_token
	jmp  .L000335
.L000334:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000335:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000331:
// Line 295 CONTINUE 
	jmp  .L000040
	jmp  .L000329
.L000328:
.L000329:
// Line 301 (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 65) (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 297 (== (DEREF (LVAR 16))  44 )
// Line 297 (DEREF (LVAR 16))
// Line 297 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 297  44 
	push 44
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000336
// Line 301 (BLOCK(= (LVAR 65) (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 298 (= (LVAR 65) (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 298 (CALL new_token ( 35 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 298  1 
	push 1
// Line 298 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 298 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 298 (++ (LVAR 16)  1 )
// Line 298 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 298  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 298  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 298 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 298  35 
	push 35
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000338
	mov  rax, 0
	call new_token
	jmp  .L000339
.L000338:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000339:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 299 CONTINUE 
	jmp  .L000040
	jmp  .L000337
.L000336:
.L000337:
// Line 312 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL )
// Line 301 (== (DEREF (LVAR 16))  61 )
// Line 301 (DEREF (LVAR 16))
// Line 301 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 301  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000340
// Line 312 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):)
// Line 302 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 302 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 302 (++ (LVAR 16)  1 )
// Line 302 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 302  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 302  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 311 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))
// Line 303 (== (DEREF (LVAR 16))  61 )
// Line 303 (DEREF (LVAR 16))
// Line 303 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 303  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000342
// Line 307 (BLOCK(= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :)
// Line 304 (= (LVAR 65) (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 304 (CALL new_token ( 7 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )
// Line 304  2 
	push 2
// Line 304 (- (LVAR 16)  1 )
// Line 304 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 304  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 304 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 304  7 
	push 7
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000344
	mov  rax, 0
	call new_token
	jmp  .L000345
.L000344:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000345:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 305 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 305 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 305 (++ (LVAR 16)  1 )
// Line 305 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 305  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 305  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 306 CONTINUE 
	jmp  .L000040
	jmp  .L000343
.L000342:
// Line 311 (BLOCK(= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)
// Line 308 (= (LVAR 65) (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 308 (CALL new_token ( 13 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )
// Line 308  1 
	push 1
// Line 308 (- (LVAR 16)  1 )
// Line 308 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 308  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 308 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 308  13 
	push 13
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000346
	mov  rax, 0
	call new_token
	jmp  .L000347
.L000346:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000347:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 309 CONTINUE 
	jmp  .L000040
.L000343:
	jmp  .L000341
.L000340:
.L000341:
// Line 327 (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL )
// Line 312 (== (DEREF (LVAR 16))  62 )
// Line 312 (DEREF (LVAR 16))
// Line 312 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 312  62 
	push 62
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000348
// Line 327 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):)
// Line 313 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 313 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 313 (++ (LVAR 16)  1 )
// Line 313 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 313  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 313  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 326 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)))
// Line 314 (== (DEREF (LVAR 16))  61 )
// Line 314 (DEREF (LVAR 16))
// Line 314 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 314  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000350
// Line 318 (BLOCK(= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :)
// Line 315 (= (LVAR 65) (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 315 (CALL new_token ( 10 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )
// Line 315  2 
	push 2
// Line 315 (- (LVAR 16)  1 )
// Line 315 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 315  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 315 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 315  10 
	push 10
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000352
	mov  rax, 0
	call new_token
	jmp  .L000353
.L000352:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000353:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 316 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 316 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 316 (++ (LVAR 16)  1 )
// Line 316 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 316  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 316  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 317 CONTINUE 
	jmp  .L000040
	jmp  .L000351
.L000350:
// Line 326 (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))
// Line 318 (== (DEREF (LVAR 16))  62 )
// Line 318 (DEREF (LVAR 16))
// Line 318 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 318  62 
	push 62
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000354
// Line 322 (BLOCK(= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :)
// Line 319 (= (LVAR 65) (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 319 (CALL new_token ( 26 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )
// Line 319  2 
	push 2
// Line 319 (- (LVAR 16)  1 )
// Line 319 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 319  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 319 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 319  26 
	push 26
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000356
	mov  rax, 0
	call new_token
	jmp  .L000357
.L000356:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000357:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 320 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 320 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 320 (++ (LVAR 16)  1 )
// Line 320 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 320  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 320  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 321 CONTINUE 
	jmp  .L000040
	jmp  .L000355
.L000354:
// Line 326 (BLOCK(= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)
// Line 323 (= (LVAR 65) (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 323 (CALL new_token ( 9 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )
// Line 323  1 
	push 1
// Line 323 (- (LVAR 16)  1 )
// Line 323 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 323  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 323 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 323  9 
	push 9
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000358
	mov  rax, 0
	call new_token
	jmp  .L000359
.L000358:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000359:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 324 CONTINUE 
	jmp  .L000040
.L000355:
.L000351:
	jmp  .L000349
.L000348:
.L000349:
// Line 342 (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):) NULL )
// Line 327 (== (DEREF (LVAR 16))  60 )
// Line 327 (DEREF (LVAR 16))
// Line 327 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 327  60 
	push 60
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000360
// Line 342 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))):)
// Line 328 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 328 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 328 (++ (LVAR 16)  1 )
// Line 328 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 328  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 328  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 341 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)))
// Line 329 (== (DEREF (LVAR 16))  61 )
// Line 329 (DEREF (LVAR 16))
// Line 329 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 329  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000362
// Line 333 (BLOCK(= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :)
// Line 330 (= (LVAR 65) (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 330 (CALL new_token ( 12 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )
// Line 330  2 
	push 2
// Line 330 (- (LVAR 16)  1 )
// Line 330 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 330  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 330 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 330  12 
	push 12
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000364
	mov  rax, 0
	call new_token
	jmp  .L000365
.L000364:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000365:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 331 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 331 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 331 (++ (LVAR 16)  1 )
// Line 331 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 331  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 331  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 332 CONTINUE 
	jmp  .L000040
	jmp  .L000363
.L000362:
// Line 341 (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))
// Line 333 (== (DEREF (LVAR 16))  60 )
// Line 333 (DEREF (LVAR 16))
// Line 333 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 333  60 
	push 60
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000366
// Line 337 (BLOCK(= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :)
// Line 334 (= (LVAR 65) (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 334 (CALL new_token ( 27 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )
// Line 334  2 
	push 2
// Line 334 (- (LVAR 16)  1 )
// Line 334 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 334  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 334 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 334  27 
	push 27
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000368
	mov  rax, 0
	call new_token
	jmp  .L000369
.L000368:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000369:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 335 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 335 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 335 (++ (LVAR 16)  1 )
// Line 335 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 335  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 335  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 336 CONTINUE 
	jmp  .L000040
	jmp  .L000367
.L000366:
// Line 341 (BLOCK(= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)
// Line 338 (= (LVAR 65) (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 338 (CALL new_token ( 11 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )
// Line 338  1 
	push 1
// Line 338 (- (LVAR 16)  1 )
// Line 338 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 338  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 338 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 338  11 
	push 11
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000370
	mov  rax, 0
	call new_token
	jmp  .L000371
.L000370:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000371:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 339 CONTINUE 
	jmp  .L000040
.L000367:
.L000363:
	jmp  .L000361
.L000360:
.L000361:
// Line 353 (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):) NULL )
// Line 342 (== (DEREF (LVAR 16))  33 )
// Line 342 (DEREF (LVAR 16))
// Line 342 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 342  33 
	push 33
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000372
// Line 353 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)):)
// Line 343 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 343 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 343 (++ (LVAR 16)  1 )
// Line 343 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 343  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 343  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 352 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :) (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :))
// Line 344 (== (DEREF (LVAR 16))  61 )
// Line 344 (DEREF (LVAR 16))
// Line 344 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 344  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000374
// Line 348 (BLOCK(= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):CONTINUE :)
// Line 345 (= (LVAR 65) (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 345 (CALL new_token ( 8 :(LVAR 65):(- (LVAR 16)  1 ): 2 :) )
// Line 345  2 
	push 2
// Line 345 (- (LVAR 16)  1 )
// Line 345 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 345  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 345 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 345  8 
	push 8
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000376
	mov  rax, 0
	call new_token
	jmp  .L000377
.L000376:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000377:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 346 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 346 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 346 (++ (LVAR 16)  1 )
// Line 346 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 346  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 346  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 347 CONTINUE 
	jmp  .L000040
	jmp  .L000375
.L000374:
// Line 352 (BLOCK(= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )):CONTINUE :)
// Line 349 (= (LVAR 65) (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 349 (CALL new_token ( 25 :(LVAR 65):(- (LVAR 16)  1 ): 1 :) )
// Line 349  1 
	push 1
// Line 349 (- (LVAR 16)  1 )
// Line 349 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 349  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 349 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 349  25 
	push 25
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000378
	mov  rax, 0
	call new_token
	jmp  .L000379
.L000378:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000379:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 350 CONTINUE 
	jmp  .L000040
.L000375:
	jmp  .L000373
.L000372:
.L000373:
// Line 357 (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 65) (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 353 (== (DEREF (LVAR 16))  59 )
// Line 353 (DEREF (LVAR 16))
// Line 353 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 353  59 
	push 59
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000380
// Line 357 (BLOCK(= (LVAR 65) (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 354 (= (LVAR 65) (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 354 (CALL new_token ( 28 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 354  1 
	push 1
// Line 354 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 354 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 354 (++ (LVAR 16)  1 )
// Line 354 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 354  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 354  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 354 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 354  28 
	push 28
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000382
	mov  rax, 0
	call new_token
	jmp  .L000383
.L000382:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000383:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 355 CONTINUE 
	jmp  .L000040
	jmp  .L000381
.L000380:
.L000381:
// Line 361 (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 65) (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 357 (== (DEREF (LVAR 16))  58 )
// Line 357 (DEREF (LVAR 16))
// Line 357 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 357  58 
	push 58
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000384
// Line 361 (BLOCK(= (LVAR 65) (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 358 (= (LVAR 65) (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 358 (CALL new_token ( 36 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 358  1 
	push 1
// Line 358 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 358 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 358 (++ (LVAR 16)  1 )
// Line 358 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 358  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 358  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 358 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 358  36 
	push 36
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000386
	mov  rax, 0
	call new_token
	jmp  .L000387
.L000386:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000387:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 359 CONTINUE 
	jmp  .L000040
	jmp  .L000385
.L000384:
.L000385:
// Line 365 (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 65) (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 361 (== (DEREF (LVAR 16))  40 )
// Line 361 (DEREF (LVAR 16))
// Line 361 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 361  40 
	push 40
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000388
// Line 365 (BLOCK(= (LVAR 65) (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 362 (= (LVAR 65) (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 362 (CALL new_token ( 29 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 362  1 
	push 1
// Line 362 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 362 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 362 (++ (LVAR 16)  1 )
// Line 362 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 362  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 362  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 362 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 362  29 
	push 29
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000390
	mov  rax, 0
	call new_token
	jmp  .L000391
.L000390:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000391:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 363 CONTINUE 
	jmp  .L000040
	jmp  .L000389
.L000388:
.L000389:
// Line 369 (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 65) (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 365 (== (DEREF (LVAR 16))  41 )
// Line 365 (DEREF (LVAR 16))
// Line 365 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 365  41 
	push 41
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000392
// Line 369 (BLOCK(= (LVAR 65) (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 366 (= (LVAR 65) (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 366 (CALL new_token ( 30 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 366  1 
	push 1
// Line 366 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 366 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 366 (++ (LVAR 16)  1 )
// Line 366 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 366  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 366  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 366 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 366  30 
	push 30
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000394
	mov  rax, 0
	call new_token
	jmp  .L000395
.L000394:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000395:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 367 CONTINUE 
	jmp  .L000040
	jmp  .L000393
.L000392:
.L000393:
// Line 373 (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 65) (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 369 (== (DEREF (LVAR 16))  123 )
// Line 369 (DEREF (LVAR 16))
// Line 369 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 369  123 
	push 123
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000396
// Line 373 (BLOCK(= (LVAR 65) (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 370 (= (LVAR 65) (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 370 (CALL new_token ( 31 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 370  1 
	push 1
// Line 370 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 370 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 370 (++ (LVAR 16)  1 )
// Line 370 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 370  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 370  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 370 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 370  31 
	push 31
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000398
	mov  rax, 0
	call new_token
	jmp  .L000399
.L000398:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000399:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 371 CONTINUE 
	jmp  .L000040
	jmp  .L000397
.L000396:
.L000397:
// Line 377 (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 65) (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 373 (== (DEREF (LVAR 16))  125 )
// Line 373 (DEREF (LVAR 16))
// Line 373 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 373  125 
	push 125
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000400
// Line 377 (BLOCK(= (LVAR 65) (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 374 (= (LVAR 65) (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 374 (CALL new_token ( 32 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 374  1 
	push 1
// Line 374 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 374 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 374 (++ (LVAR 16)  1 )
// Line 374 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 374  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 374  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 374 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 374  32 
	push 32
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000402
	mov  rax, 0
	call new_token
	jmp  .L000403
.L000402:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000403:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 375 CONTINUE 
	jmp  .L000040
	jmp  .L000401
.L000400:
.L000401:
// Line 381 (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 65) (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 377 (== (DEREF (LVAR 16))  91 )
// Line 377 (DEREF (LVAR 16))
// Line 377 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 377  91 
	push 91
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000404
// Line 381 (BLOCK(= (LVAR 65) (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 378 (= (LVAR 65) (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 378 (CALL new_token ( 33 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 378  1 
	push 1
// Line 378 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 378 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 378 (++ (LVAR 16)  1 )
// Line 378 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 378  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 378  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 378 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 378  33 
	push 33
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000406
	mov  rax, 0
	call new_token
	jmp  .L000407
.L000406:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000407:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 379 CONTINUE 
	jmp  .L000040
	jmp  .L000405
.L000404:
.L000405:
// Line 385 (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 65) (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 381 (== (DEREF (LVAR 16))  93 )
// Line 381 (DEREF (LVAR 16))
// Line 381 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 381  93 
	push 93
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000408
// Line 385 (BLOCK(= (LVAR 65) (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 382 (= (LVAR 65) (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 382 (CALL new_token ( 34 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 382  1 
	push 1
// Line 382 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 382 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 382 (++ (LVAR 16)  1 )
// Line 382 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 382  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 382  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 382 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 382  34 
	push 34
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000410
	mov  rax, 0
	call new_token
	jmp  .L000411
.L000410:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000411:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 383 CONTINUE 
	jmp  .L000040
	jmp  .L000409
.L000408:
.L000409:
// Line 389 (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 65) (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 385 (== (DEREF (LVAR 16))  94 )
// Line 385 (DEREF (LVAR 16))
// Line 385 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 385  94 
	push 94
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000412
// Line 389 (BLOCK(= (LVAR 65) (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 386 (= (LVAR 65) (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 386 (CALL new_token ( 24 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 386  1 
	push 1
// Line 386 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 386 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 386 (++ (LVAR 16)  1 )
// Line 386 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 386  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 386  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 386 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 386  24 
	push 24
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000414
	mov  rax, 0
	call new_token
	jmp  .L000415
.L000414:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000415:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 387 CONTINUE 
	jmp  .L000040
	jmp  .L000413
.L000412:
.L000413:
// Line 398 (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 389 (== (DEREF (LVAR 16))  38 )
// Line 389 (DEREF (LVAR 16))
// Line 389 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 389  38 
	push 38
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000416
// Line 398 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 395 (IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL )
// Line 390 (== (DEREF (+ (LVAR 16)  1 ))  38 )
// Line 390 (DEREF (+ (LVAR 16)  1 ))
// Line 390 (+ (LVAR 16)  1 )
// Line 390 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 390  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 390  38 
	push 38
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000418
// Line 395 (BLOCK(= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :)
// Line 391 (= (LVAR 65) (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 391 (CALL new_token ( 20 :(LVAR 65):(LVAR 16): 2 :) )
// Line 391  2 
	push 2
// Line 391 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 391 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 391  20 
	push 20
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000420
	mov  rax, 0
	call new_token
	jmp  .L000421
.L000420:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000421:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 392 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 392 (+= (LVAR 16)  2 )
// Line 392 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 392  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 393 CONTINUE 
	jmp  .L000040
	jmp  .L000419
.L000418:
.L000419:
// Line 395 (= (LVAR 65) (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 395 (CALL new_token ( 22 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 395  1 
	push 1
// Line 395 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 395 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 395 (++ (LVAR 16)  1 )
// Line 395 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 395  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 395  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 395 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 395  22 
	push 22
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000422
	mov  rax, 0
	call new_token
	jmp  .L000423
.L000422:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000423:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 396 CONTINUE 
	jmp  .L000040
	jmp  .L000417
.L000416:
.L000417:
// Line 407 (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 398 (== (DEREF (LVAR 16))  124 )
// Line 398 (DEREF (LVAR 16))
// Line 398 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 398  124 
	push 124
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000424
// Line 407 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 404 (IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :) NULL )
// Line 399 (== (DEREF (+ (LVAR 16)  1 ))  124 )
// Line 399 (DEREF (+ (LVAR 16)  1 ))
// Line 399 (+ (LVAR 16)  1 )
// Line 399 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 399  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 399  124 
	push 124
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000426
// Line 404 (BLOCK(= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):CONTINUE :)
// Line 400 (= (LVAR 65) (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 400 (CALL new_token ( 21 :(LVAR 65):(LVAR 16): 2 :) )
// Line 400  2 
	push 2
// Line 400 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 400 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 400  21 
	push 21
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000428
	mov  rax, 0
	call new_token
	jmp  .L000429
.L000428:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000429:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 401 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 401 (+= (LVAR 16)  2 )
// Line 401 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 401  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 402 CONTINUE 
	jmp  .L000040
	jmp  .L000427
.L000426:
.L000427:
// Line 404 (= (LVAR 65) (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 404 (CALL new_token ( 23 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 404  1 
	push 1
// Line 404 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 404 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 404 (++ (LVAR 16)  1 )
// Line 404 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 404  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 404  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 404 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 404  23 
	push 23
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000430
	mov  rax, 0
	call new_token
	jmp  .L000431
.L000430:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000431:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 405 CONTINUE 
	jmp  .L000040
	jmp  .L000425
.L000424:
.L000425:
// Line 416 (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :) NULL )
// Line 407 (== (DEREF (LVAR 16))  46 )
// Line 407 (DEREF (LVAR 16))
// Line 407 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 407  46 
	push 46
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000432
// Line 416 (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :) NULL ):(= (LVAR 65) (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):CONTINUE :)
// Line 413 (IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :) NULL )
// Line 408 (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 ))
// Line 408 (== (DEREF (+ (LVAR 16)  1 ))  46 )
// Line 408 (DEREF (+ (LVAR 16)  1 ))
// Line 408 (+ (LVAR 16)  1 )
// Line 408 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 408  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 408  46 
	push 46
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000436
// Line 408 (== (DEREF (+ (LVAR 16)  2 ))  46 )
// Line 408 (DEREF (+ (LVAR 16)  2 ))
// Line 408 (+ (LVAR 16)  2 )
// Line 408 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 408  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 408  46 
	push 46
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000436
	mov  rax, 1
	jmp  .L000437
.L000436:
	mov  rax, 0
.L000437:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000434
// Line 413 (BLOCK(= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):CONTINUE :)
// Line 409 (= (LVAR 65) (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 409 (CALL new_token ( 39 :(LVAR 65):(LVAR 16): 3 :) )
// Line 409  3 
	push 3
// Line 409 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 409 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 409  39 
	push 39
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000438
	mov  rax, 0
	call new_token
	jmp  .L000439
.L000438:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000439:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 410 (= (LVAR 16) (+= (LVAR 16)  3 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 410 (+= (LVAR 16)  3 )
// Line 410 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 410  3 
	push 3
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 411 CONTINUE 
	jmp  .L000040
	jmp  .L000435
.L000434:
.L000435:
// Line 413 (= (LVAR 65) (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 413 (CALL new_token ( 37 :(LVAR 65):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 413  1 
	push 1
// Line 413 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 413 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 413 (++ (LVAR 16)  1 )
// Line 413 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 413  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 413  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 413 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 413  37 
	push 37
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000440
	mov  rax, 0
	call new_token
	jmp  .L000441
.L000440:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000441:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 414 CONTINUE 
	jmp  .L000040
	jmp  .L000433
.L000432:
.L000433:
// Line 449 (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 225) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 225))) (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 225)  1 )):CONTINUE :) NULL )
// Line 416 (== (DEREF (LVAR 16))  34 )
// Line 416 (DEREF (LVAR 16))
// Line 416 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 416  34 
	push 34
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000442
// Line 449 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 225) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 225))) (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 225)  1 )):CONTINUE :)
// Line 417 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 417 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 417 (++ (LVAR 16)  1 )
// Line 417 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 417  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 417  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 418 (= (LVAR 225) (LVAR 16))
	mov  rax, rbp
	sub  rax, 225
	push rax
// Line 418 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 443 (WHILE cond:(&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):))
.L000444:
// Line 419 (&& (DEREF (LVAR 225)) (!= (DEREF (LVAR 225))  34 ))
// Line 419 (DEREF (LVAR 225))
// Line 419 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000446
// Line 419 (!= (DEREF (LVAR 225))  34 )
// Line 419 (DEREF (LVAR 225))
// Line 419 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 419  34 
	push 34
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000446
	mov  rax, 1
	jmp  .L000447
.L000446:
	mov  rax, 0
.L000447:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000445
// Line 443 (BLOCK(IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)
// Line 442 (IF (!= (DEREF (LVAR 225))  92 ) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):) (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):))
// Line 420 (!= (DEREF (LVAR 225))  92 )
// Line 420 (DEREF (LVAR 225))
// Line 420 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 420  92 
	push 92
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000448
// Line 422 (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):)
// Line 421 (++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 )
// Line 421 (= (LVAR 225) (++ (LVAR 225)  1 ))
	mov  rax, rbp
	sub  rax, 225
	push rax
// Line 421 (++ (LVAR 225)  1 )
// Line 421 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
// Line 421  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 421  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000449
.L000448:
// Line 442 (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)
// Line 423 (++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 )
// Line 423 (= (LVAR 225) (++ (LVAR 225)  1 ))
	mov  rax, rbp
	sub  rax, 225
	push rax
// Line 423 (++ (LVAR 225)  1 )
// Line 423 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
// Line 423  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 423  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 424 (SWITCH cond: (DEREF (LVAR 225)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):))
	mov  rax, rbp
	sub  rax, 229
	push rax
// Line 424 (DEREF (LVAR 225))
// Line 424 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 441 (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)
// Line 425 (CASE cond: 48  body:(BLOCK))
// Line 425  48 
	push 48
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000451
// Line 426 (CASE cond: 97  body:(BLOCK))
// Line 426  97 
	push 97
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000452
// Line 427 (CASE cond: 98  body:(BLOCK))
// Line 427  98 
	push 98
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000453
// Line 428 (CASE cond: 102  body:(BLOCK))
// Line 428  102 
	push 102
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000454
// Line 429 (CASE cond: 110  body:(BLOCK))
// Line 429  110 
	push 110
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000455
// Line 430 (CASE cond: 114  body:(BLOCK))
// Line 430  114 
	push 114
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000456
// Line 431 (CASE cond: 116  body:(BLOCK))
// Line 431  116 
	push 116
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000457
// Line 432 (CASE cond: 92  body:(BLOCK))
// Line 432  92 
	push 92
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000458
// Line 433 (CASE cond: 39  body:(BLOCK))
// Line 433  39 
	push 39
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000459
// Line 434 (CASE cond: 34  body:(BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :))
// Line 434  34 
	push 34
	mov  rax, rbp
	sub  rax, 229
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000460
// Line 437 (DEFAULT body:(CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) ))
	jmp  .L000461
	jmp  .L000450
.L000451:
// Line 426 (BLOCK)
.L000452:
// Line 427 (BLOCK)
.L000453:
// Line 428 (BLOCK)
.L000454:
// Line 429 (BLOCK)
.L000455:
// Line 430 (BLOCK)
.L000456:
// Line 431 (BLOCK)
.L000457:
// Line 432 (BLOCK)
.L000458:
// Line 433 (BLOCK)
.L000459:
// Line 434 (BLOCK)
.L000460:
// Line 435 (BLOCK(++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 ):BREAK :)
// Line 435 (++ (= (LVAR 225) (++ (LVAR 225)  1 ))  1 )
// Line 435 (= (LVAR 225) (++ (LVAR 225)  1 ))
	mov  rax, rbp
	sub  rax, 225
	push rax
// Line 435 (++ (LVAR 225)  1 )
// Line 435 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
// Line 435  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 435  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 436 BREAK 
	jmp  .L000450
.L000461:
// Line 438 (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Unsupported escape sequence." ):) )
// Line 439 (ADDR  "Unsupported escape sequence." )
	lea  rax, .LS000029[rip]
	push rax
// Line 438 (- (LVAR 225)  1 )
// Line 438 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
// Line 438  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 438 (LVAR 73)
	mov  rax, rbp
	sub  rax, 73
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000462
	mov  rax, 0
	call error_at_char
	jmp  .L000463
.L000462:
	sub  rsp, 8
	mov  rax, 0
	call error_at_char
	add  rsp, 8
.L000463:
	push rax
	pop  rax
.L000450:
.L000449:
	jmp  .L000444
.L000445:
// Line 445 (IF (! (DEREF (LVAR 225))) (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) ) NULL )
// Line 443 (! (DEREF (LVAR 225)))
// Line 443 (DEREF (LVAR 225))
// Line 443 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000466
	mov  rax, 1
	jmp  .L000467
.L000466:
	mov  rax, 0
.L000467:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000464
// Line 444 (CALL error_at_char ((LVAR 73):(- (LVAR 225)  1 ):(ADDR  "Missing closing quote." ):) )
// Line 444 (ADDR  "Missing closing quote." )
	lea  rax, .LS000030[rip]
	push rax
// Line 444 (- (LVAR 225)  1 )
// Line 444 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
// Line 444  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 444 (LVAR 73)
	mov  rax, rbp
	sub  rax, 73
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000468
	mov  rax, 0
	call error_at_char
	jmp  .L000469
.L000468:
	sub  rsp, 8
	mov  rax, 0
	call error_at_char
	add  rsp, 8
.L000469:
	push rax
	pop  rax
	jmp  .L000465
.L000464:
.L000465:
// Line 445 (= (LVAR 65) (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 445 (CALL new_token ( 2 :(LVAR 65):(LVAR 16):(CAST int  (- (LVAR 225) (LVAR 16))):) )
// Line 445 (CAST int  (- (LVAR 225) (LVAR 16)))
// Line 445 (- (LVAR 225) (LVAR 16))
// Line 445 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
// Line 445 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 445 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 445 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 445  2 
	push 2
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000470
	mov  rax, 0
	call new_token
	jmp  .L000471
.L000470:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000471:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 446 (= (LVAR 16) (+ (LVAR 225)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 446 (+ (LVAR 225)  1 )
// Line 446 (LVAR 225)
	mov  rax, rbp
	sub  rax, 225
	mov  rax, [rax]
	push rax
// Line 446  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 447 CONTINUE 
	jmp  .L000040
	jmp  .L000443
.L000442:
.L000443:
// Line 500 (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 237) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) )):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 238)):CONTINUE :) NULL )
// Line 449 (== (DEREF (LVAR 16))  39 )
// Line 449 (DEREF (LVAR 16))
// Line 449 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 449  39 
	push 39
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000472
// Line 500 (BLOCK(= (LVAR 237) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) )):(= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 238)):CONTINUE :)
// Line 450 (= (LVAR 237) (LVAR 16))
	mov  rax, rbp
	sub  rax, 237
	push rax
// Line 450 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 451 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 451 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 451 (++ (LVAR 16)  1 )
// Line 451 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 451  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 451  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 493 (IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):))
// Line 453 (!= (DEREF (LVAR 16))  92 )
// Line 453 (DEREF (LVAR 16))
// Line 453 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 453  92 
	push 92
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000474
// Line 455 (BLOCK(= (LVAR 238) (DEREF (LVAR 16))):)
// Line 454 (= (LVAR 238) (DEREF (LVAR 16)))
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 454 (DEREF (LVAR 16))
// Line 454 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
	jmp  .L000475
.L000474:
// Line 493 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)
// Line 456 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 456 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 456 (++ (LVAR 16)  1 )
// Line 456 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 456  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 456  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 457 (SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):))
	mov  rax, rbp
	sub  rax, 242
	push rax
// Line 457 (DEREF (LVAR 16))
// Line 457 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 491 (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)
// Line 458 (CASE cond: 48  body:(BLOCK(= (LVAR 238)  0 ):BREAK :))
// Line 458  48 
	push 48
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000477
// Line 461 (CASE cond: 97  body:(BLOCK(= (LVAR 238)  7 ):BREAK :))
// Line 461  97 
	push 97
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000478
// Line 464 (CASE cond: 98  body:(BLOCK(= (LVAR 238)  8 ):BREAK :))
// Line 464  98 
	push 98
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000479
// Line 467 (CASE cond: 102  body:(BLOCK(= (LVAR 238)  12 ):BREAK :))
// Line 467  102 
	push 102
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000480
// Line 470 (CASE cond: 110  body:(BLOCK(= (LVAR 238)  10 ):BREAK :))
// Line 470  110 
	push 110
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000481
// Line 473 (CASE cond: 114  body:(BLOCK(= (LVAR 238)  13 ):BREAK :))
// Line 473  114 
	push 114
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000482
// Line 476 (CASE cond: 116  body:(BLOCK(= (LVAR 238)  9 ):BREAK :))
// Line 476  116 
	push 116
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000483
// Line 479 (CASE cond: 92  body:(BLOCK(= (LVAR 238)  92 ):BREAK :))
// Line 479  92 
	push 92
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000484
// Line 482 (CASE cond: 39  body:(BLOCK(= (LVAR 238)  39 ):BREAK :))
// Line 482  39 
	push 39
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000485
// Line 485 (CASE cond: 34  body:(BLOCK(= (LVAR 238)  34 ):BREAK :))
// Line 485  34 
	push 34
	mov  rax, rbp
	sub  rax, 242
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000486
// Line 488 (DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) ))
	jmp  .L000487
	jmp  .L000476
.L000477:
// Line 459 (BLOCK(= (LVAR 238)  0 ):BREAK :)
// Line 459 (= (LVAR 238)  0 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 459  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 460 BREAK 
	jmp  .L000476
.L000478:
// Line 462 (BLOCK(= (LVAR 238)  7 ):BREAK :)
// Line 462 (= (LVAR 238)  7 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 462  7 
	push 7
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 463 BREAK 
	jmp  .L000476
.L000479:
// Line 465 (BLOCK(= (LVAR 238)  8 ):BREAK :)
// Line 465 (= (LVAR 238)  8 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 465  8 
	push 8
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 466 BREAK 
	jmp  .L000476
.L000480:
// Line 468 (BLOCK(= (LVAR 238)  12 ):BREAK :)
// Line 468 (= (LVAR 238)  12 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 468  12 
	push 12
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 469 BREAK 
	jmp  .L000476
.L000481:
// Line 471 (BLOCK(= (LVAR 238)  10 ):BREAK :)
// Line 471 (= (LVAR 238)  10 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 471  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 472 BREAK 
	jmp  .L000476
.L000482:
// Line 474 (BLOCK(= (LVAR 238)  13 ):BREAK :)
// Line 474 (= (LVAR 238)  13 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 474  13 
	push 13
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 475 BREAK 
	jmp  .L000476
.L000483:
// Line 477 (BLOCK(= (LVAR 238)  9 ):BREAK :)
// Line 477 (= (LVAR 238)  9 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 477  9 
	push 9
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 478 BREAK 
	jmp  .L000476
.L000484:
// Line 480 (BLOCK(= (LVAR 238)  92 ):BREAK :)
// Line 480 (= (LVAR 238)  92 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 480  92 
	push 92
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 481 BREAK 
	jmp  .L000476
.L000485:
// Line 483 (BLOCK(= (LVAR 238)  39 ):BREAK :)
// Line 483 (= (LVAR 238)  39 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 483  39 
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 484 BREAK 
	jmp  .L000476
.L000486:
// Line 486 (BLOCK(= (LVAR 238)  34 ):BREAK :)
// Line 486 (= (LVAR 238)  34 )
	mov  rax, rbp
	sub  rax, 238
	push rax
// Line 486  34 
	push 34
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 487 BREAK 
	jmp  .L000476
.L000487:
// Line 489 (CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )
// Line 489 (ADDR  "Unsupported escape sequence." )
	lea  rax, .LS000031[rip]
	push rax
// Line 489 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000488
	mov  rax, 0
	call error_at_token
	jmp  .L000489
.L000488:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000489:
	push rax
	pop  rax
.L000476:
.L000475:
// Line 493 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 493 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 493 (++ (LVAR 16)  1 )
// Line 493 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 493  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 493  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 496 (IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL )
// Line 494 (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 )
// Line 494 (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))
// Line 494 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 494 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 494 (++ (LVAR 16)  1 )
// Line 494 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 494  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 494  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 494  39 
	push 39
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000490
// Line 495 (CALL error_at_char ((LVAR 73):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) )
// Line 495 (ADDR  "Unexpected token. Expected \"'\"." )
	lea  rax, .LS000032[rip]
	push rax
// Line 495 (- (LVAR 16)  1 )
// Line 495 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 495  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 495 (LVAR 73)
	mov  rax, rbp
	sub  rax, 73
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000492
	mov  rax, 0
	call error_at_char
	jmp  .L000493
.L000492:
	sub  rsp, 8
	mov  rax, 0
	call error_at_char
	add  rsp, 8
.L000493:
	push rax
	pop  rax
	jmp  .L000491
.L000490:
.L000491:
// Line 496 (= (LVAR 65) (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 496 (CALL new_token ( 1 :(LVAR 65):(LVAR 237):(- (LVAR 16) (LVAR 237)):) )
// Line 496 (- (LVAR 16) (LVAR 237))
// Line 496 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 496 (LVAR 237)
	mov  rax, rbp
	sub  rax, 237
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 496 (LVAR 237)
	mov  rax, rbp
	sub  rax, 237
	mov  rax, [rax]
	push rax
// Line 496 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 496  1 
	push 1
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000494
	mov  rax, 0
	call new_token
	jmp  .L000495
.L000494:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000495:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 497 (= (MEMBER (DEREF (LVAR 65)) int_val 16) (LVAR 238))
// Line 497 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 497 (LVAR 238)
	mov  rax, rbp
	sub  rax, 238
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 498 CONTINUE 
	jmp  .L000040
	jmp  .L000473
.L000472:
.L000473:
// Line 500 (CALL error_at_char ((LVAR 73):(LVAR 16):(ADDR  "Unexpected character." ):) )
// Line 500 (ADDR  "Unexpected character." )
	lea  rax, .LS000033[rip]
	push rax
// Line 500 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 500 (LVAR 73)
	mov  rax, rbp
	sub  rax, 73
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000496
	mov  rax, 0
	call error_at_char
	jmp  .L000497
.L000496:
	sub  rsp, 8
	mov  rax, 0
	call error_at_char
	add  rsp, 8
.L000497:
	push rax
	pop  rax
	jmp  .L000040
.L000041:
// Line 511 (IF (! (GVAR token)) (BLOCK(= (GVAR token) (MEMBER (LVAR 57) next 8)):) (BLOCK(= (LVAR 250) (GVAR token)):(WHILE cond:(MEMBER (DEREF (LVAR 250)) next 8)body: (= (LVAR 250) (MEMBER (DEREF (LVAR 250)) next 8))):(= (MEMBER (DEREF (LVAR 250)) next 8) (MEMBER (LVAR 57) next 8)):))
// Line 503 (! (GVAR token))
// Line 503 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000500
	mov  rax, 1
	jmp  .L000501
.L000500:
	mov  rax, 0
.L000501:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000498
// Line 505 (BLOCK(= (GVAR token) (MEMBER (LVAR 57) next 8)):)
// Line 504 (= (GVAR token) (MEMBER (LVAR 57) next 8))
	lea  rax, token[rip]
	push rax
// Line 504 (MEMBER (LVAR 57) next 8)
	mov  rax, rbp
	sub  rax, 57
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000499
.L000498:
// Line 511 (BLOCK(= (LVAR 250) (GVAR token)):(WHILE cond:(MEMBER (DEREF (LVAR 250)) next 8)body: (= (LVAR 250) (MEMBER (DEREF (LVAR 250)) next 8))):(= (MEMBER (DEREF (LVAR 250)) next 8) (MEMBER (LVAR 57) next 8)):)
// Line 506 (= (LVAR 250) (GVAR token))
	mov  rax, rbp
	sub  rax, 250
	push rax
// Line 506 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 509 (WHILE cond:(MEMBER (DEREF (LVAR 250)) next 8)body: (= (LVAR 250) (MEMBER (DEREF (LVAR 250)) next 8)))
.L000502:
// Line 507 (MEMBER (DEREF (LVAR 250)) next 8)
// Line 507 (LVAR 250)
	mov  rax, rbp
	sub  rax, 250
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000503
// Line 508 (= (LVAR 250) (MEMBER (DEREF (LVAR 250)) next 8))
	mov  rax, rbp
	sub  rax, 250
	push rax
// Line 508 (MEMBER (DEREF (LVAR 250)) next 8)
// Line 508 (LVAR 250)
	mov  rax, rbp
	sub  rax, 250
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000502
.L000503:
// Line 509 (= (MEMBER (DEREF (LVAR 250)) next 8) (MEMBER (LVAR 57) next 8))
// Line 509 (LVAR 250)
	mov  rax, rbp
	sub  rax, 250
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 509 (MEMBER (LVAR 57) next 8)
	mov  rax, rbp
	sub  rax, 57
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000499:
// Line 513 (IF (LVAR 17) (= (LVAR 65) (CALL new_token ( 60 :(LVAR 65):(LVAR 16): 1 :) )) NULL )
// Line 511 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000504
// Line 512 (= (LVAR 65) (CALL new_token ( 60 :(LVAR 65):(LVAR 16): 1 :) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 512 (CALL new_token ( 60 :(LVAR 65):(LVAR 16): 1 :) )
// Line 512  1 
	push 1
// Line 512 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 512 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
// Line 512  60 
	push 60
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000506
	mov  rax, 0
	call new_token
	jmp  .L000507
.L000506:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000507:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000505
.L000504:
.L000505:
// Line 513 (= (MEMBER (DEREF (LVAR 73)) end 24) (LVAR 16))
// Line 513 (LVAR 73)
	mov  rax, rbp
	sub  rax, 73
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 513 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global read_token
// Line 516 FDECL read_token func ( * struct <TokContext>  ctx ) * struct <Token> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) char_ptr 16)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) file_info 0)):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) current_token 8)):(WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)):(IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 40) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 40)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 40)  1 ))):) (IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 32) (CALL new_token ( 61 :(LVAR 32):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):) (IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 44) (- (DEREF (LVAR 16))  48 )):(= (LVAR 48)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )body: (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):)):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 48))):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 44)):) (IF (CALL isalpha ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 52)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 52))):) (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):) (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))))))))))))):(= (MEMBER (DEREF (LVAR 8)) char_ptr 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 8)) file_info 0) (LVAR 24)):(= (MEMBER (DEREF (LVAR 8)) current_token 8) (LVAR 32)):(RETURN (LVAR 32)):))
read_token:
	push rbp
	mov  rbp, rsp
	sub  rsp, 80
	mov  [rbp - 8], rdi
// Line 517 (= (LVAR 16) (MEMBER (DEREF (LVAR 8)) char_ptr 16))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 517 (MEMBER (DEREF (LVAR 8)) char_ptr 16)
// Line 517 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 518 (= (LVAR 24) (MEMBER (DEREF (LVAR 8)) file_info 0))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 518 (MEMBER (DEREF (LVAR 8)) file_info 0)
// Line 518 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 519 (= (LVAR 32) (MEMBER (DEREF (LVAR 8)) current_token 8))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 519 (MEMBER (DEREF (LVAR 8)) current_token 8)
// Line 519 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 523 (WHILE cond:(|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))body: (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):))
.L000508:
// Line 520 (|| (== (DEREF (LVAR 16))  32 ) (== (DEREF (LVAR 16))  9 ))
// Line 520 (== (DEREF (LVAR 16))  32 )
// Line 520 (DEREF (LVAR 16))
// Line 520 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 520  32 
	push 32
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000510
// Line 520 (== (DEREF (LVAR 16))  9 )
// Line 520 (DEREF (LVAR 16))
// Line 520 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 520  9 
	push 9
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000510
	mov  rax, 0
	jmp  .L000511
.L000510:
	mov  rax, 1
.L000511:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000509
// Line 523 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)
// Line 521 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 521 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 521 (++ (LVAR 16)  1 )
// Line 521 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 521  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 521  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000508
.L000509:
// Line 782 (IF (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 ) (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 40) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 40)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 40)  1 ))):) (IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 32) (CALL new_token ( 61 :(LVAR 32):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):) (IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 44) (- (DEREF (LVAR 16))  48 )):(= (LVAR 48)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )body: (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):)):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 48))):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 44)):) (IF (CALL isalpha ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 52)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 52))):) (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):) (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))))))))))))))))
// Line 523 (== (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )  0 )
// Line 523 (CALL strncmp ((LVAR 16):(ADDR  "//" ): 2 :) )
// Line 523  2 
	push 2
// Line 523 (ADDR  "//" )
	lea  rax, .LS000034[rip]
	push rax
// Line 523 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000514
	mov  rax, 0
	call strncmp
	jmp  .L000515
.L000514:
	sub  rsp, 8
	mov  rax, 0
	call strncmp
	add  rsp, 8
.L000515:
	push rax
// Line 523  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000512
// Line 530 (BLOCK(= (LVAR 16) (+= (LVAR 16)  2 )):(= (LVAR 40) (CALL strchr ((LVAR 16): 10 :) )):(IF (! (LVAR 40)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 40)  1 ))):)
// Line 524 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 524 (+= (LVAR 16)  2 )
// Line 524 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 524  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 525 (= (LVAR 40) (CALL strchr ((LVAR 16): 10 :) ))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 525 (CALL strchr ((LVAR 16): 10 :) )
// Line 525  10 
	push 10
// Line 525 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000516
	mov  rax, 0
	call strchr
	jmp  .L000517
.L000516:
	sub  rsp, 8
	mov  rax, 0
	call strchr
	add  rsp, 8
.L000517:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 530 (IF (! (LVAR 40)) (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):) (= (LVAR 16) (+ (LVAR 40)  1 )))
// Line 526 (! (LVAR 40))
// Line 526 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000520
	mov  rax, 1
	jmp  .L000521
.L000520:
	mov  rax, 0
.L000521:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000518
// Line 528 (BLOCK(= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) )):)
// Line 527 (= (LVAR 16) (CALL strchr ((LVAR 16): 10 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 527 (CALL strchr ((LVAR 16): 10 :) )
// Line 527  10 
	push 10
// Line 527 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000522
	mov  rax, 0
	call strchr
	jmp  .L000523
.L000522:
	sub  rsp, 8
	mov  rax, 0
	call strchr
	add  rsp, 8
.L000523:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000519
.L000518:
// Line 529 (= (LVAR 16) (+ (LVAR 40)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 529 (+ (LVAR 40)  1 )
// Line 529 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
// Line 529  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000519:
	jmp  .L000513
.L000512:
// Line 782 (IF (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 ) (BLOCK(= (LVAR 32) (CALL new_token ( 61 :(LVAR 32):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):) (IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 44) (- (DEREF (LVAR 16))  48 )):(= (LVAR 48)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )body: (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):)):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 48))):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 44)):) (IF (CALL isalpha ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 52)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 52))):) (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):) (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))))))))))))
// Line 530 (== (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )  0 )
// Line 530 (CALL strncmp ((LVAR 16):(ADDR  "__LINE__" ): 8 :) )
// Line 530  8 
	push 8
// Line 530 (ADDR  "__LINE__" )
	lea  rax, .LS000035[rip]
	push rax
// Line 530 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000526
	mov  rax, 0
	call strncmp
	jmp  .L000527
.L000526:
	sub  rsp, 8
	mov  rax, 0
	call strncmp
	add  rsp, 8
.L000527:
	push rax
// Line 530  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000524
// Line 533 (BLOCK(= (LVAR 32) (CALL new_token ( 61 :(LVAR 32):(LVAR 16): 8 :) )):(= (LVAR 16) (+= (LVAR 16)  8 )):)
// Line 531 (= (LVAR 32) (CALL new_token ( 61 :(LVAR 32):(LVAR 16): 8 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 531 (CALL new_token ( 61 :(LVAR 32):(LVAR 16): 8 :) )
// Line 531  8 
	push 8
// Line 531 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 531 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 531  61 
	push 61
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000528
	mov  rax, 0
	call new_token
	jmp  .L000529
.L000528:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000529:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 532 (= (LVAR 16) (+= (LVAR 16)  8 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 532 (+= (LVAR 16)  8 )
// Line 532 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 532  8 
	push 8
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000525
.L000524:
// Line 782 (IF (CALL isdigit ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 44) (- (DEREF (LVAR 16))  48 )):(= (LVAR 48)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )body: (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):)):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 48))):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 44)):) (IF (CALL isalpha ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 52)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 52))):) (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):) (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))))))))))))))
// Line 533 (CALL isdigit ((DEREF (LVAR 16)):) )
// Line 533 (DEREF (LVAR 16))
// Line 533 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000532
	mov  rax, 0
	call isdigit
	jmp  .L000533
.L000532:
	sub  rsp, 8
	mov  rax, 0
	call isdigit
	add  rsp, 8
.L000533:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000530
// Line 544 (BLOCK(= (LVAR 44) (- (DEREF (LVAR 16))  48 )):(= (LVAR 48)  1 ):(WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )body: (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):)):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) )):(= (LVAR 16) (+= (LVAR 16) (LVAR 48))):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 44)):)
// Line 534 (= (LVAR 44) (- (DEREF (LVAR 16))  48 ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 534 (- (DEREF (LVAR 16))  48 )
// Line 534 (DEREF (LVAR 16))
// Line 534 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 534  48 
	push 48
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 535 (= (LVAR 48)  1 )
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 535  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 541 (WHILE cond:(CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )body: (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):))
.L000534:
// Line 536 (CALL isdigit ((DEREF (+ (LVAR 16) (LVAR 48))):) )
// Line 536 (DEREF (+ (LVAR 16) (LVAR 48)))
// Line 536 (+ (LVAR 16) (LVAR 48))
// Line 536 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 536 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000536
	mov  rax, 0
	call isdigit
	jmp  .L000537
.L000536:
	sub  rsp, 8
	mov  rax, 0
	call isdigit
	add  rsp, 8
.L000537:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000535
// Line 541 (BLOCK(= (LVAR 44) (*= (LVAR 44)  10 )):(= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))):(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):)
// Line 537 (= (LVAR 44) (*= (LVAR 44)  10 ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 537 (*= (LVAR 44)  10 )
// Line 537 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  eax, [rax]
	push rax
// Line 537  10 
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 538 (= (LVAR 44) (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 )))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 538 (+= (LVAR 44) (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 ))
// Line 538 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  eax, [rax]
	push rax
// Line 538 (- (DEREF (+ (LVAR 16) (LVAR 48)))  48 )
// Line 538 (DEREF (+ (LVAR 16) (LVAR 48)))
// Line 538 (+ (LVAR 16) (LVAR 48))
// Line 538 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 538 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 538  48 
	push 48
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 539 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
// Line 539 (= (LVAR 48) (++ (LVAR 48)  1 ))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 539 (++ (LVAR 48)  1 )
// Line 539 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
// Line 539  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 539  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000534
.L000535:
// Line 541 (= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 541 (CALL new_token ( 1 :(LVAR 32):(LVAR 16):(LVAR 48):) )
// Line 541 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
// Line 541 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 541 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 541  1 
	push 1
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000538
	mov  rax, 0
	call new_token
	jmp  .L000539
.L000538:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000539:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 542 (= (LVAR 16) (+= (LVAR 16) (LVAR 48)))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 542 (+= (LVAR 16) (LVAR 48))
// Line 542 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 542 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 543 (= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 44))
// Line 543 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 543 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000531
.L000530:
// Line 782 (IF (CALL isalpha ((DEREF (LVAR 16)):) ) (BLOCK(= (LVAR 52)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 52))):) (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):) (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))))))))))
// Line 544 (CALL isalpha ((DEREF (LVAR 16)):) )
// Line 544 (DEREF (LVAR 16))
// Line 544 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000542
	mov  rax, 0
	call isalpha
	jmp  .L000543
.L000542:
	sub  rsp, 8
	mov  rax, 0
	call isalpha
	add  rsp, 8
.L000543:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000540
// Line 593 (BLOCK(= (LVAR 52)  1 ):(WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )):(IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))):(= (LVAR 16) (+= (LVAR 16) (LVAR 52))):)
// Line 545 (= (LVAR 52)  1 )
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 545  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 549 (WHILE cond:(CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )body: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ))
.L000544:
// Line 546 (CALL is_ident_char ((DEREF (+ (LVAR 16) (LVAR 52))):) )
// Line 546 (DEREF (+ (LVAR 16) (LVAR 52)))
// Line 546 (+ (LVAR 16) (LVAR 52))
// Line 546 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 546 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000546
	mov  rax, 0
	call is_ident_char
	jmp  .L000547
.L000546:
	sub  rsp, 8
	mov  rax, 0
	call is_ident_char
	add  rsp, 8
.L000547:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000545
// Line 547 (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )
// Line 547 (= (LVAR 52) (++ (LVAR 52)  1 ))
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 547 (++ (LVAR 52)  1 )
// Line 547 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 547  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 547  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000544
.L000545:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))))))))))))))))
// Line 549 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "return" ):) )
// Line 549 (ADDR  "return" )
	lea  rax, .LS000036[rip]
	push rax
// Line 549 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 549 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000550
	mov  rax, 0
	call is_reserved
	jmp  .L000551
.L000550:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000551:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000548
// Line 551 (BLOCK(= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 550 (= (LVAR 32) (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 550 (CALL new_token ( 49 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 550 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 550 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 550 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 550  49 
	push 49
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000552
	mov  rax, 0
	call new_token
	jmp  .L000553
.L000552:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000553:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000549
.L000548:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))))
// Line 551 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "if" ):) )
// Line 551 (ADDR  "if" )
	lea  rax, .LS000037[rip]
	push rax
// Line 551 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 551 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000556
	mov  rax, 0
	call is_reserved
	jmp  .L000557
.L000556:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000557:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000554
// Line 553 (BLOCK(= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 552 (= (LVAR 32) (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 552 (CALL new_token ( 40 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 552 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 552 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 552 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 552  40 
	push 40
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000558
	mov  rax, 0
	call new_token
	jmp  .L000559
.L000558:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000559:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000555
.L000554:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))))))))))))))
// Line 553 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "else" ):) )
// Line 553 (ADDR  "else" )
	lea  rax, .LS000038[rip]
	push rax
// Line 553 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 553 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000562
	mov  rax, 0
	call is_reserved
	jmp  .L000563
.L000562:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000563:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000560
// Line 555 (BLOCK(= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 554 (= (LVAR 32) (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 554 (CALL new_token ( 41 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 554 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 554 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 554 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 554  41 
	push 41
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000564
	mov  rax, 0
	call new_token
	jmp  .L000565
.L000564:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000565:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000561
.L000560:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))))
// Line 555 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "while" ):) )
// Line 555 (ADDR  "while" )
	lea  rax, .LS000039[rip]
	push rax
// Line 555 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 555 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000568
	mov  rax, 0
	call is_reserved
	jmp  .L000569
.L000568:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000569:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000566
// Line 557 (BLOCK(= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 556 (= (LVAR 32) (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 556 (CALL new_token ( 42 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 556 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 556 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 556 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 556  42 
	push 42
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000570
	mov  rax, 0
	call new_token
	jmp  .L000571
.L000570:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000571:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000567
.L000566:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))))))))))))
// Line 557 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "for" ):) )
// Line 557 (ADDR  "for" )
	lea  rax, .LS000040[rip]
	push rax
// Line 557 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 557 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000574
	mov  rax, 0
	call is_reserved
	jmp  .L000575
.L000574:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000575:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000572
// Line 559 (BLOCK(= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 558 (= (LVAR 32) (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 558 (CALL new_token ( 43 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 558 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 558 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 558 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 558  43 
	push 43
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000576
	mov  rax, 0
	call new_token
	jmp  .L000577
.L000576:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000577:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000573
.L000572:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))))
// Line 559 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "switch" ):) )
// Line 559 (ADDR  "switch" )
	lea  rax, .LS000041[rip]
	push rax
// Line 559 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 559 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000580
	mov  rax, 0
	call is_reserved
	jmp  .L000581
.L000580:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000581:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000578
// Line 561 (BLOCK(= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 560 (= (LVAR 32) (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 560 (CALL new_token ( 44 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 560 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 560 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 560 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 560  44 
	push 44
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000582
	mov  rax, 0
	call new_token
	jmp  .L000583
.L000582:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000583:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000579
.L000578:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))))))))))
// Line 561 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "case" ):) )
// Line 561 (ADDR  "case" )
	lea  rax, .LS000042[rip]
	push rax
// Line 561 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 561 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000586
	mov  rax, 0
	call is_reserved
	jmp  .L000587
.L000586:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000587:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000584
// Line 563 (BLOCK(= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 562 (= (LVAR 32) (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 562 (CALL new_token ( 45 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 562 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 562 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 562 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 562  45 
	push 45
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000588
	mov  rax, 0
	call new_token
	jmp  .L000589
.L000588:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000589:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000585
.L000584:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))))
// Line 563 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "default" ):) )
// Line 563 (ADDR  "default" )
	lea  rax, .LS000043[rip]
	push rax
// Line 563 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 563 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000592
	mov  rax, 0
	call is_reserved
	jmp  .L000593
.L000592:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000593:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000590
// Line 565 (BLOCK(= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 564 (= (LVAR 32) (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 564 (CALL new_token ( 46 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 564 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 564 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 564 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 564  46 
	push 46
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000594
	mov  rax, 0
	call new_token
	jmp  .L000595
.L000594:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000595:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000591
.L000590:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))))))))
// Line 565 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "break" ):) )
// Line 565 (ADDR  "break" )
	lea  rax, .LS000044[rip]
	push rax
// Line 565 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 565 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000598
	mov  rax, 0
	call is_reserved
	jmp  .L000599
.L000598:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000599:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000596
// Line 567 (BLOCK(= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 566 (= (LVAR 32) (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 566 (CALL new_token ( 47 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 566 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 566 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 566 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 566  47 
	push 47
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000600
	mov  rax, 0
	call new_token
	jmp  .L000601
.L000600:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000601:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000597
.L000596:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))))
// Line 567 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "continue" ):) )
// Line 567 (ADDR  "continue" )
	lea  rax, .LS000045[rip]
	push rax
// Line 567 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 567 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000604
	mov  rax, 0
	call is_reserved
	jmp  .L000605
.L000604:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000605:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000602
// Line 569 (BLOCK(= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 568 (= (LVAR 32) (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 568 (CALL new_token ( 48 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 568 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 568 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 568 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 568  48 
	push 48
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000606
	mov  rax, 0
	call new_token
	jmp  .L000607
.L000606:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000607:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000603
.L000602:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))))))
// Line 569 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "int" ):) )
// Line 569 (ADDR  "int" )
	lea  rax, .LS000046[rip]
	push rax
// Line 569 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 569 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000610
	mov  rax, 0
	call is_reserved
	jmp  .L000611
.L000610:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000611:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000608
// Line 571 (BLOCK(= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 570 (= (LVAR 32) (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 570 (CALL new_token ( 51 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 570 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 570 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 570 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 570  51 
	push 51
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000612
	mov  rax, 0
	call new_token
	jmp  .L000613
.L000612:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000613:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000609
.L000608:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))))
// Line 571 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "char" ):) )
// Line 571 (ADDR  "char" )
	lea  rax, .LS000047[rip]
	push rax
// Line 571 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 571 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000616
	mov  rax, 0
	call is_reserved
	jmp  .L000617
.L000616:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000617:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000614
// Line 573 (BLOCK(= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 572 (= (LVAR 32) (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 572 (CALL new_token ( 52 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 572 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 572 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 572 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 572  52 
	push 52
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000618
	mov  rax, 0
	call new_token
	jmp  .L000619
.L000618:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000619:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000615
.L000614:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))))
// Line 573 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "bool" ):) )
// Line 573 (ADDR  "bool" )
	lea  rax, .LS000048[rip]
	push rax
// Line 573 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 573 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000622
	mov  rax, 0
	call is_reserved
	jmp  .L000623
.L000622:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000623:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000620
// Line 575 (BLOCK(= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 574 (= (LVAR 32) (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 574 (CALL new_token ( 53 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 574 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 574 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 574 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 574  53 
	push 53
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000624
	mov  rax, 0
	call new_token
	jmp  .L000625
.L000624:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000625:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000621
.L000620:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))))
// Line 575 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "void" ):) )
// Line 575 (ADDR  "void" )
	lea  rax, .LS000049[rip]
	push rax
// Line 575 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 575 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000628
	mov  rax, 0
	call is_reserved
	jmp  .L000629
.L000628:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000629:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000626
// Line 577 (BLOCK(= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 576 (= (LVAR 32) (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 576 (CALL new_token ( 54 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 576 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 576 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 576 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 576  54 
	push 54
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000630
	mov  rax, 0
	call new_token
	jmp  .L000631
.L000630:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000631:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000627
.L000626:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))))
// Line 577 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "sizeof" ):) )
// Line 577 (ADDR  "sizeof" )
	lea  rax, .LS000050[rip]
	push rax
// Line 577 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 577 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000634
	mov  rax, 0
	call is_reserved
	jmp  .L000635
.L000634:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000635:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000632
// Line 579 (BLOCK(= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 578 (= (LVAR 32) (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 578 (CALL new_token ( 50 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 578 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 578 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 578 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 578  50 
	push 50
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000636
	mov  rax, 0
	call new_token
	jmp  .L000637
.L000636:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000637:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000633
.L000632:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))))
// Line 579 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "struct" ):) )
// Line 579 (ADDR  "struct" )
	lea  rax, .LS000051[rip]
	push rax
// Line 579 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 579 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000640
	mov  rax, 0
	call is_reserved
	jmp  .L000641
.L000640:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000641:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000638
// Line 581 (BLOCK(= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 580 (= (LVAR 32) (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 580 (CALL new_token ( 55 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 580 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 580 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 580 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 580  55 
	push 55
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000642
	mov  rax, 0
	call new_token
	jmp  .L000643
.L000642:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000643:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000639
.L000638:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))))
// Line 581 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "enum" ):) )
// Line 581 (ADDR  "enum" )
	lea  rax, .LS000052[rip]
	push rax
// Line 581 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 581 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000646
	mov  rax, 0
	call is_reserved
	jmp  .L000647
.L000646:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000647:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000644
// Line 583 (BLOCK(= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 582 (= (LVAR 32) (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 582 (CALL new_token ( 56 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 582 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 582 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 582 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 582  56 
	push 56
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000648
	mov  rax, 0
	call new_token
	jmp  .L000649
.L000648:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000649:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000645
.L000644:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))))
// Line 583 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "union" ):) )
// Line 583 (ADDR  "union" )
	lea  rax, .LS000053[rip]
	push rax
// Line 583 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 583 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000652
	mov  rax, 0
	call is_reserved
	jmp  .L000653
.L000652:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000653:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000650
// Line 585 (BLOCK(= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 584 (= (LVAR 32) (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 584 (CALL new_token ( 57 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 584 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 584 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 584 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 584  57 
	push 57
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000654
	mov  rax, 0
	call new_token
	jmp  .L000655
.L000654:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000655:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000651
.L000650:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)))
// Line 585 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "typedef" ):) )
// Line 585 (ADDR  "typedef" )
	lea  rax, .LS000054[rip]
	push rax
// Line 585 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 585 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000658
	mov  rax, 0
	call is_reserved
	jmp  .L000659
.L000658:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000659:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000656
// Line 587 (BLOCK(= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 586 (= (LVAR 32) (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 586 (CALL new_token ( 59 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 586 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 586 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 586 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 586  59 
	push 59
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000660
	mov  rax, 0
	call new_token
	jmp  .L000661
.L000660:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000661:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000657
.L000656:
// Line 592 (IF (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) ) (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):) (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):))
// Line 587 (CALL is_reserved ((LVAR 16):(LVAR 52):(ADDR  "extern" ):) )
// Line 587 (ADDR  "extern" )
	lea  rax, .LS000055[rip]
	push rax
// Line 587 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 587 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000664
	mov  rax, 0
	call is_reserved
	jmp  .L000665
.L000664:
	sub  rsp, 8
	mov  rax, 0
	call is_reserved
	add  rsp, 8
.L000665:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000662
// Line 589 (BLOCK(= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 588 (= (LVAR 32) (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 588 (CALL new_token ( 58 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 588 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 588 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 588 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 588  58 
	push 58
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000666
	mov  rax, 0
	call new_token
	jmp  .L000667
.L000666:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000667:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000663
.L000662:
// Line 592 (BLOCK(= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )):)
// Line 590 (= (LVAR 32) (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 590 (CALL new_token ( 0 :(LVAR 32):(LVAR 16):(LVAR 52):) )
// Line 590 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 590 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 590 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 590  0 
	push 0
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000668
	mov  rax, 0
	call new_token
	jmp  .L000669
.L000668:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000669:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000663:
.L000657:
.L000651:
.L000645:
.L000639:
.L000633:
.L000627:
.L000621:
.L000615:
.L000609:
.L000603:
.L000597:
.L000591:
.L000585:
.L000579:
.L000573:
.L000567:
.L000561:
.L000555:
.L000549:
// Line 592 (= (LVAR 16) (+= (LVAR 16) (LVAR 52)))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 592 (+= (LVAR 16) (LVAR 52))
// Line 592 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 592 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000541
.L000540:
// Line 782 (IF (== (DEREF (LVAR 16))  43 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):) (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))))))))))))
// Line 593 (== (DEREF (LVAR 16))  43 )
// Line 593 (DEREF (LVAR 16))
// Line 593 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 593  43 
	push 43
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000670
// Line 602 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))):)
// Line 602 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))
// Line 594 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 594 (DEREF (+ (LVAR 16)  1 ))
// Line 594 (+ (LVAR 16)  1 )
// Line 594 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 594  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 594  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000672
// Line 597 (BLOCK(= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 595 (= (LVAR 32) (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 595 (CALL new_token ( 14 :(LVAR 32):(LVAR 16): 2 :) )
// Line 595  2 
	push 2
// Line 595 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 595 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 595  14 
	push 14
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000674
	mov  rax, 0
	call new_token
	jmp  .L000675
.L000674:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000675:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 596 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 596 (+= (LVAR 16)  2 )
// Line 596 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 596  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000673
.L000672:
// Line 602 (IF (== (DEREF (+ (LVAR 16)  1 ))  43 ) (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 597 (== (DEREF (+ (LVAR 16)  1 ))  43 )
// Line 597 (DEREF (+ (LVAR 16)  1 ))
// Line 597 (+ (LVAR 16)  1 )
// Line 597 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 597  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 597  43 
	push 43
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000676
// Line 600 (BLOCK(= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 598 (= (LVAR 32) (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 598 (CALL new_token ( 18 :(LVAR 32):(LVAR 16): 2 :) )
// Line 598  2 
	push 2
// Line 598 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 598 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 598  18 
	push 18
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000678
	mov  rax, 0
	call new_token
	jmp  .L000679
.L000678:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000679:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 599 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 599 (+= (LVAR 16)  2 )
// Line 599 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 599  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000677
.L000676:
// Line 601 (= (LVAR 32) (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 601 (CALL new_token ( 3 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 601  1 
	push 1
// Line 601 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 601 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 601 (++ (LVAR 16)  1 )
// Line 601 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 601  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 601  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 601 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 601  3 
	push 3
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000680
	mov  rax, 0
	call new_token
	jmp  .L000681
.L000680:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000681:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000677:
.L000673:
	jmp  .L000671
.L000670:
// Line 782 (IF (== (DEREF (LVAR 16))  45 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):) (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))))))))
// Line 602 (== (DEREF (LVAR 16))  45 )
// Line 602 (DEREF (LVAR 16))
// Line 602 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 602  45 
	push 45
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000682
// Line 614 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))):)
// Line 614 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))))
// Line 603 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 603 (DEREF (+ (LVAR 16)  1 ))
// Line 603 (+ (LVAR 16)  1 )
// Line 603 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 603  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 603  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000684
// Line 606 (BLOCK(= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 604 (= (LVAR 32) (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 604 (CALL new_token ( 15 :(LVAR 32):(LVAR 16): 2 :) )
// Line 604  2 
	push 2
// Line 604 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 604 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 604  15 
	push 15
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000686
	mov  rax, 0
	call new_token
	jmp  .L000687
.L000686:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000687:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 605 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 605 (+= (LVAR 16)  2 )
// Line 605 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 605  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000685
.L000684:
// Line 614 (IF (== (DEREF (+ (LVAR 16)  1 ))  45 ) (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))))
// Line 606 (== (DEREF (+ (LVAR 16)  1 ))  45 )
// Line 606 (DEREF (+ (LVAR 16)  1 ))
// Line 606 (+ (LVAR 16)  1 )
// Line 606 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 606  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 606  45 
	push 45
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000688
// Line 609 (BLOCK(= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 607 (= (LVAR 32) (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 607 (CALL new_token ( 19 :(LVAR 32):(LVAR 16): 2 :) )
// Line 607  2 
	push 2
// Line 607 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 607 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 607  19 
	push 19
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000690
	mov  rax, 0
	call new_token
	jmp  .L000691
.L000690:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000691:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 608 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 608 (+= (LVAR 16)  2 )
// Line 608 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 608  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000689
.L000688:
// Line 614 (IF (== (DEREF (+ (LVAR 16)  1 ))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 609 (== (DEREF (+ (LVAR 16)  1 ))  62 )
// Line 609 (DEREF (+ (LVAR 16)  1 ))
// Line 609 (+ (LVAR 16)  1 )
// Line 609 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 609  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 609  62 
	push 62
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000692
// Line 612 (BLOCK(= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 610 (= (LVAR 32) (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 610 (CALL new_token ( 38 :(LVAR 32):(LVAR 16): 2 :) )
// Line 610  2 
	push 2
// Line 610 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 610 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 610  38 
	push 38
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000694
	mov  rax, 0
	call new_token
	jmp  .L000695
.L000694:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000695:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 611 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 611 (+= (LVAR 16)  2 )
// Line 611 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 611  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000693
.L000692:
// Line 613 (= (LVAR 32) (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 613 (CALL new_token ( 4 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 613  1 
	push 1
// Line 613 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 613 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 613 (++ (LVAR 16)  1 )
// Line 613 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 613  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 613  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 613 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 613  4 
	push 4
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000696
	mov  rax, 0
	call new_token
	jmp  .L000697
.L000696:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000697:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000693:
.L000689:
.L000685:
	jmp  .L000683
.L000682:
// Line 782 (IF (== (DEREF (LVAR 16))  42 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))))))))))
// Line 614 (== (DEREF (LVAR 16))  42 )
// Line 614 (DEREF (LVAR 16))
// Line 614 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 614  42 
	push 42
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000698
// Line 620 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):)
// Line 620 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 615 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 615 (DEREF (+ (LVAR 16)  1 ))
// Line 615 (+ (LVAR 16)  1 )
// Line 615 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 615  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 615  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000700
// Line 618 (BLOCK(= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 616 (= (LVAR 32) (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 616 (CALL new_token ( 16 :(LVAR 32):(LVAR 16): 2 :) )
// Line 616  2 
	push 2
// Line 616 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 616 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 616  16 
	push 16
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000702
	mov  rax, 0
	call new_token
	jmp  .L000703
.L000702:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000703:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 617 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 617 (+= (LVAR 16)  2 )
// Line 617 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 617  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000701
.L000700:
// Line 619 (= (LVAR 32) (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 619 (CALL new_token ( 5 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 619  1 
	push 1
// Line 619 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 619 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 619 (++ (LVAR 16)  1 )
// Line 619 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 619  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 619  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 619 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 619  5 
	push 5
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000704
	mov  rax, 0
	call new_token
	jmp  .L000705
.L000704:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000705:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000701:
	jmp  .L000699
.L000698:
// Line 782 (IF (== (DEREF (LVAR 16))  47 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):) (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))))))
// Line 620 (== (DEREF (LVAR 16))  47 )
// Line 620 (DEREF (LVAR 16))
// Line 620 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 620  47 
	push 47
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000706
// Line 626 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))):)
// Line 626 (IF (== (DEREF (+ (LVAR 16)  1 ))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )))
// Line 621 (== (DEREF (+ (LVAR 16)  1 ))  61 )
// Line 621 (DEREF (+ (LVAR 16)  1 ))
// Line 621 (+ (LVAR 16)  1 )
// Line 621 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 621  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 621  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000708
// Line 624 (BLOCK(= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 622 (= (LVAR 32) (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 622 (CALL new_token ( 17 :(LVAR 32):(LVAR 16): 2 :) )
// Line 622  2 
	push 2
// Line 622 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 622 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 622  17 
	push 17
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000710
	mov  rax, 0
	call new_token
	jmp  .L000711
.L000710:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000711:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 623 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 623 (+= (LVAR 16)  2 )
// Line 623 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 623  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000709
.L000708:
// Line 625 (= (LVAR 32) (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 625 (CALL new_token ( 6 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 625  1 
	push 1
// Line 625 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 625 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 625 (++ (LVAR 16)  1 )
// Line 625 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 625  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 625  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 625 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 625  6 
	push 6
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000712
	mov  rax, 0
	call new_token
	jmp  .L000713
.L000712:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000713:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000709:
	jmp  .L000707
.L000706:
// Line 782 (IF (== (DEREF (LVAR 16))  44 ) (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))))))))
// Line 626 (== (DEREF (LVAR 16))  44 )
// Line 626 (DEREF (LVAR 16))
// Line 626 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 626  44 
	push 44
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000714
// Line 628 (BLOCK(= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 627 (= (LVAR 32) (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 627 (CALL new_token ( 35 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 627  1 
	push 1
// Line 627 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 627 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 627 (++ (LVAR 16)  1 )
// Line 627 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 627  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 627  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 627 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 627  35 
	push 35
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000716
	mov  rax, 0
	call new_token
	jmp  .L000717
.L000716:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000717:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000715
.L000714:
// Line 782 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))))
// Line 628 (== (DEREF (LVAR 16))  61 )
// Line 628 (DEREF (LVAR 16))
// Line 628 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 628  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000718
// Line 636 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):)
// Line 629 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 629 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 629 (++ (LVAR 16)  1 )
// Line 629 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 629  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 629  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 636 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))
// Line 630 (== (DEREF (LVAR 16))  61 )
// Line 630 (DEREF (LVAR 16))
// Line 630 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 630  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000720
// Line 633 (BLOCK(= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)
// Line 631 (= (LVAR 32) (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 631 (CALL new_token ( 7 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )
// Line 631  2 
	push 2
// Line 631 (- (LVAR 16)  1 )
// Line 631 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 631  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 631 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 631  7 
	push 7
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000722
	mov  rax, 0
	call new_token
	jmp  .L000723
.L000722:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000723:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 632 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 632 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 632 (++ (LVAR 16)  1 )
// Line 632 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 632  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 632  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000721
.L000720:
// Line 636 (BLOCK(= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)
// Line 634 (= (LVAR 32) (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 634 (CALL new_token ( 13 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )
// Line 634  1 
	push 1
// Line 634 (- (LVAR 16)  1 )
// Line 634 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 634  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 634 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 634  13 
	push 13
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000724
	mov  rax, 0
	call new_token
	jmp  .L000725
.L000724:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000725:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000721:
	jmp  .L000719
.L000718:
// Line 782 (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))))))
// Line 636 (== (DEREF (LVAR 16))  62 )
// Line 636 (DEREF (LVAR 16))
// Line 636 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 636  62 
	push 62
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000726
// Line 647 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):)
// Line 637 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 637 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 637 (++ (LVAR 16)  1 )
// Line 637 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 637  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 637  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 647 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)))
// Line 638 (== (DEREF (LVAR 16))  61 )
// Line 638 (DEREF (LVAR 16))
// Line 638 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 638  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000728
// Line 641 (BLOCK(= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)
// Line 639 (= (LVAR 32) (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 639 (CALL new_token ( 10 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )
// Line 639  2 
	push 2
// Line 639 (- (LVAR 16)  1 )
// Line 639 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 639  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 639 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 639  10 
	push 10
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000730
	mov  rax, 0
	call new_token
	jmp  .L000731
.L000730:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000731:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 640 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 640 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 640 (++ (LVAR 16)  1 )
// Line 640 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 640  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 640  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000729
.L000728:
// Line 647 (IF (== (DEREF (LVAR 16))  62 ) (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))
// Line 641 (== (DEREF (LVAR 16))  62 )
// Line 641 (DEREF (LVAR 16))
// Line 641 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 641  62 
	push 62
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000732
// Line 644 (BLOCK(= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)
// Line 642 (= (LVAR 32) (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 642 (CALL new_token ( 26 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )
// Line 642  2 
	push 2
// Line 642 (- (LVAR 16)  1 )
// Line 642 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 642  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 642 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 642  26 
	push 26
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000734
	mov  rax, 0
	call new_token
	jmp  .L000735
.L000734:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000735:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 643 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 643 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 643 (++ (LVAR 16)  1 )
// Line 643 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 643  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 643  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000733
.L000732:
// Line 647 (BLOCK(= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)
// Line 645 (= (LVAR 32) (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 645 (CALL new_token ( 9 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )
// Line 645  1 
	push 1
// Line 645 (- (LVAR 16)  1 )
// Line 645 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 645  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 645 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 645  9 
	push 9
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000736
	mov  rax, 0
	call new_token
	jmp  .L000737
.L000736:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000737:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000733:
.L000729:
	jmp  .L000727
.L000726:
// Line 782 (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):) (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))))
// Line 647 (== (DEREF (LVAR 16))  60 )
// Line 647 (DEREF (LVAR 16))
// Line 647 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 647  60 
	push 60
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000738
// Line 658 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))):)
// Line 648 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 648 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 648 (++ (LVAR 16)  1 )
// Line 648 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 648  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 648  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 658 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)))
// Line 649 (== (DEREF (LVAR 16))  61 )
// Line 649 (DEREF (LVAR 16))
// Line 649 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 649  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000740
// Line 652 (BLOCK(= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)
// Line 650 (= (LVAR 32) (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 650 (CALL new_token ( 12 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )
// Line 650  2 
	push 2
// Line 650 (- (LVAR 16)  1 )
// Line 650 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 650  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 650 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 650  12 
	push 12
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000742
	mov  rax, 0
	call new_token
	jmp  .L000743
.L000742:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000743:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 651 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 651 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 651 (++ (LVAR 16)  1 )
// Line 651 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 651  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 651  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000741
.L000740:
// Line 658 (IF (== (DEREF (LVAR 16))  60 ) (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))
// Line 652 (== (DEREF (LVAR 16))  60 )
// Line 652 (DEREF (LVAR 16))
// Line 652 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 652  60 
	push 60
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000744
// Line 655 (BLOCK(= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)
// Line 653 (= (LVAR 32) (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 653 (CALL new_token ( 27 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )
// Line 653  2 
	push 2
// Line 653 (- (LVAR 16)  1 )
// Line 653 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 653  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 653 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 653  27 
	push 27
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000746
	mov  rax, 0
	call new_token
	jmp  .L000747
.L000746:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000747:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 654 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 654 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 654 (++ (LVAR 16)  1 )
// Line 654 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 654  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 654  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000745
.L000744:
// Line 658 (BLOCK(= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)
// Line 656 (= (LVAR 32) (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 656 (CALL new_token ( 11 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )
// Line 656  1 
	push 1
// Line 656 (- (LVAR 16)  1 )
// Line 656 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 656  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 656 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 656  11 
	push 11
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000748
	mov  rax, 0
	call new_token
	jmp  .L000749
.L000748:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000749:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000745:
.L000741:
	jmp  .L000739
.L000738:
// Line 782 (IF (== (DEREF (LVAR 16))  33 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):) (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))))
// Line 658 (== (DEREF (LVAR 16))  33 )
// Line 658 (DEREF (LVAR 16))
// Line 658 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 658  33 
	push 33
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000750
// Line 666 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)):)
// Line 659 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 659 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 659 (++ (LVAR 16)  1 )
// Line 659 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 659  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 659  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 666 (IF (== (DEREF (LVAR 16))  61 ) (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):))
// Line 660 (== (DEREF (LVAR 16))  61 )
// Line 660 (DEREF (LVAR 16))
// Line 660 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 660  61 
	push 61
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000752
// Line 663 (BLOCK(= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):)
// Line 661 (= (LVAR 32) (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 661 (CALL new_token ( 8 :(LVAR 32):(- (LVAR 16)  1 ): 2 :) )
// Line 661  2 
	push 2
// Line 661 (- (LVAR 16)  1 )
// Line 661 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 661  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 661 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 661  8 
	push 8
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000754
	mov  rax, 0
	call new_token
	jmp  .L000755
.L000754:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000755:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 662 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 662 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 662 (++ (LVAR 16)  1 )
// Line 662 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 662  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 662  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000753
.L000752:
// Line 666 (BLOCK(= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )):)
// Line 664 (= (LVAR 32) (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 664 (CALL new_token ( 25 :(LVAR 32):(- (LVAR 16)  1 ): 1 :) )
// Line 664  1 
	push 1
// Line 664 (- (LVAR 16)  1 )
// Line 664 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 664  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 664 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 664  25 
	push 25
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000756
	mov  rax, 0
	call new_token
	jmp  .L000757
.L000756:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000757:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000753:
	jmp  .L000751
.L000750:
// Line 782 (IF (== (DEREF (LVAR 16))  59 ) (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))))
// Line 666 (== (DEREF (LVAR 16))  59 )
// Line 666 (DEREF (LVAR 16))
// Line 666 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 666  59 
	push 59
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000758
// Line 668 (BLOCK(= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 667 (= (LVAR 32) (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 667 (CALL new_token ( 28 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 667  1 
	push 1
// Line 667 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 667 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 667 (++ (LVAR 16)  1 )
// Line 667 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 667  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 667  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 667 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 667  28 
	push 28
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000760
	mov  rax, 0
	call new_token
	jmp  .L000761
.L000760:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000761:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000759
.L000758:
// Line 782 (IF (== (DEREF (LVAR 16))  58 ) (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))))
// Line 668 (== (DEREF (LVAR 16))  58 )
// Line 668 (DEREF (LVAR 16))
// Line 668 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 668  58 
	push 58
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000762
// Line 670 (BLOCK(= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 669 (= (LVAR 32) (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 669 (CALL new_token ( 36 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 669  1 
	push 1
// Line 669 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 669 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 669 (++ (LVAR 16)  1 )
// Line 669 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 669  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 669  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 669 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 669  36 
	push 36
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000764
	mov  rax, 0
	call new_token
	jmp  .L000765
.L000764:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000765:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000763
.L000762:
// Line 782 (IF (== (DEREF (LVAR 16))  40 ) (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))))
// Line 670 (== (DEREF (LVAR 16))  40 )
// Line 670 (DEREF (LVAR 16))
// Line 670 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 670  40 
	push 40
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000766
// Line 672 (BLOCK(= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 671 (= (LVAR 32) (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 671 (CALL new_token ( 29 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 671  1 
	push 1
// Line 671 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 671 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 671 (++ (LVAR 16)  1 )
// Line 671 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 671  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 671  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 671 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 671  29 
	push 29
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000768
	mov  rax, 0
	call new_token
	jmp  .L000769
.L000768:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000769:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000767
.L000766:
// Line 782 (IF (== (DEREF (LVAR 16))  41 ) (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))))
// Line 672 (== (DEREF (LVAR 16))  41 )
// Line 672 (DEREF (LVAR 16))
// Line 672 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 672  41 
	push 41
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000770
// Line 674 (BLOCK(= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 673 (= (LVAR 32) (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 673 (CALL new_token ( 30 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 673  1 
	push 1
// Line 673 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 673 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 673 (++ (LVAR 16)  1 )
// Line 673 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 673  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 673  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 673 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 673  30 
	push 30
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000772
	mov  rax, 0
	call new_token
	jmp  .L000773
.L000772:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000773:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000771
.L000770:
// Line 782 (IF (== (DEREF (LVAR 16))  123 ) (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))))
// Line 674 (== (DEREF (LVAR 16))  123 )
// Line 674 (DEREF (LVAR 16))
// Line 674 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 674  123 
	push 123
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000774
// Line 676 (BLOCK(= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 675 (= (LVAR 32) (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 675 (CALL new_token ( 31 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 675  1 
	push 1
// Line 675 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 675 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 675 (++ (LVAR 16)  1 )
// Line 675 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 675  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 675  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 675 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 675  31 
	push 31
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000776
	mov  rax, 0
	call new_token
	jmp  .L000777
.L000776:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000777:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000775
.L000774:
// Line 782 (IF (== (DEREF (LVAR 16))  125 ) (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))))
// Line 676 (== (DEREF (LVAR 16))  125 )
// Line 676 (DEREF (LVAR 16))
// Line 676 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 676  125 
	push 125
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000778
// Line 678 (BLOCK(= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 677 (= (LVAR 32) (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 677 (CALL new_token ( 32 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 677  1 
	push 1
// Line 677 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 677 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 677 (++ (LVAR 16)  1 )
// Line 677 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 677  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 677  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 677 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 677  32 
	push 32
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000780
	mov  rax, 0
	call new_token
	jmp  .L000781
.L000780:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000781:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000779
.L000778:
// Line 782 (IF (== (DEREF (LVAR 16))  91 ) (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))))
// Line 678 (== (DEREF (LVAR 16))  91 )
// Line 678 (DEREF (LVAR 16))
// Line 678 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 678  91 
	push 91
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000782
// Line 680 (BLOCK(= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 679 (= (LVAR 32) (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 679 (CALL new_token ( 33 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 679  1 
	push 1
// Line 679 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 679 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 679 (++ (LVAR 16)  1 )
// Line 679 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 679  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 679  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 679 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 679  33 
	push 33
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000784
	mov  rax, 0
	call new_token
	jmp  .L000785
.L000784:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000785:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000783
.L000782:
// Line 782 (IF (== (DEREF (LVAR 16))  93 ) (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))))
// Line 680 (== (DEREF (LVAR 16))  93 )
// Line 680 (DEREF (LVAR 16))
// Line 680 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 680  93 
	push 93
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000786
// Line 682 (BLOCK(= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 681 (= (LVAR 32) (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 681 (CALL new_token ( 34 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 681  1 
	push 1
// Line 681 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 681 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 681 (++ (LVAR 16)  1 )
// Line 681 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 681  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 681  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 681 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 681  34 
	push 34
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000788
	mov  rax, 0
	call new_token
	jmp  .L000789
.L000788:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000789:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000787
.L000786:
// Line 782 (IF (== (DEREF (LVAR 16))  94 ) (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))))
// Line 682 (== (DEREF (LVAR 16))  94 )
// Line 682 (DEREF (LVAR 16))
// Line 682 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 682  94 
	push 94
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000790
// Line 684 (BLOCK(= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 683 (= (LVAR 32) (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 683 (CALL new_token ( 24 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 683  1 
	push 1
// Line 683 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 683 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 683 (++ (LVAR 16)  1 )
// Line 683 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 683  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 683  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 683 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 683  24 
	push 24
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000792
	mov  rax, 0
	call new_token
	jmp  .L000793
.L000792:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000793:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000791
.L000790:
// Line 782 (IF (== (DEREF (LVAR 16))  38 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))))
// Line 684 (== (DEREF (LVAR 16))  38 )
// Line 684 (DEREF (LVAR 16))
// Line 684 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 684  38 
	push 38
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000794
// Line 690 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 689 (IF (== (DEREF (+ (LVAR 16)  1 ))  38 ) (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL )
// Line 685 (== (DEREF (+ (LVAR 16)  1 ))  38 )
// Line 685 (DEREF (+ (LVAR 16)  1 ))
// Line 685 (+ (LVAR 16)  1 )
// Line 685 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 685  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 685  38 
	push 38
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000796
// Line 689 (BLOCK(= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 686 (= (LVAR 32) (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 686 (CALL new_token ( 20 :(LVAR 32):(LVAR 16): 2 :) )
// Line 686  2 
	push 2
// Line 686 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 686 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 686  20 
	push 20
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000798
	mov  rax, 0
	call new_token
	jmp  .L000799
.L000798:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000799:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 687 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 687 (+= (LVAR 16)  2 )
// Line 687 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 687  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000797
.L000796:
.L000797:
// Line 689 (= (LVAR 32) (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 689 (CALL new_token ( 22 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 689  1 
	push 1
// Line 689 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 689 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 689 (++ (LVAR 16)  1 )
// Line 689 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 689  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 689  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 689 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 689  22 
	push 22
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000800
	mov  rax, 0
	call new_token
	jmp  .L000801
.L000800:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000801:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000795
.L000794:
// Line 782 (IF (== (DEREF (LVAR 16))  124 ) (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))))
// Line 690 (== (DEREF (LVAR 16))  124 )
// Line 690 (DEREF (LVAR 16))
// Line 690 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 690  124 
	push 124
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000802
// Line 696 (BLOCK(IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL ):(= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 695 (IF (== (DEREF (+ (LVAR 16)  1 ))  124 ) (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):) NULL )
// Line 691 (== (DEREF (+ (LVAR 16)  1 ))  124 )
// Line 691 (DEREF (+ (LVAR 16)  1 ))
// Line 691 (+ (LVAR 16)  1 )
// Line 691 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 691  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 691  124 
	push 124
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000804
// Line 695 (BLOCK(= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )):(= (LVAR 16) (+= (LVAR 16)  2 )):)
// Line 692 (= (LVAR 32) (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 692 (CALL new_token ( 21 :(LVAR 32):(LVAR 16): 2 :) )
// Line 692  2 
	push 2
// Line 692 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 692 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 692  21 
	push 21
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000806
	mov  rax, 0
	call new_token
	jmp  .L000807
.L000806:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000807:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 693 (= (LVAR 16) (+= (LVAR 16)  2 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 693 (+= (LVAR 16)  2 )
// Line 693 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 693  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000805
.L000804:
.L000805:
// Line 695 (= (LVAR 32) (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 695 (CALL new_token ( 23 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 695  1 
	push 1
// Line 695 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 695 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 695 (++ (LVAR 16)  1 )
// Line 695 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 695  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 695  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 695 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 695  23 
	push 23
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000808
	mov  rax, 0
	call new_token
	jmp  .L000809
.L000808:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000809:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000803
.L000802:
// Line 782 (IF (== (DEREF (LVAR 16))  46 ) (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):) (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )))
// Line 696 (== (DEREF (LVAR 16))  46 )
// Line 696 (DEREF (LVAR 16))
// Line 696 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 696  46 
	push 46
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000810
// Line 702 (BLOCK(IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL ):(= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )):)
// Line 701 (IF (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 )) (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):) NULL )
// Line 697 (&& (== (DEREF (+ (LVAR 16)  1 ))  46 ) (== (DEREF (+ (LVAR 16)  2 ))  46 ))
// Line 697 (== (DEREF (+ (LVAR 16)  1 ))  46 )
// Line 697 (DEREF (+ (LVAR 16)  1 ))
// Line 697 (+ (LVAR 16)  1 )
// Line 697 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 697  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 697  46 
	push 46
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000814
// Line 697 (== (DEREF (+ (LVAR 16)  2 ))  46 )
// Line 697 (DEREF (+ (LVAR 16)  2 ))
// Line 697 (+ (LVAR 16)  2 )
// Line 697 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 697  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 697  46 
	push 46
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000814
	mov  rax, 1
	jmp  .L000815
.L000814:
	mov  rax, 0
.L000815:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000812
// Line 701 (BLOCK(= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )):(= (LVAR 16) (+= (LVAR 16)  3 )):)
// Line 698 (= (LVAR 32) (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 698 (CALL new_token ( 39 :(LVAR 32):(LVAR 16): 3 :) )
// Line 698  3 
	push 3
// Line 698 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 698 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 698  39 
	push 39
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000816
	mov  rax, 0
	call new_token
	jmp  .L000817
.L000816:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000817:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 699 (= (LVAR 16) (+= (LVAR 16)  3 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 699 (+= (LVAR 16)  3 )
// Line 699 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 699  3 
	push 3
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000813
.L000812:
.L000813:
// Line 701 (= (LVAR 32) (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 701 (CALL new_token ( 37 :(LVAR 32):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ): 1 :) )
// Line 701  1 
	push 1
// Line 701 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 701 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 701 (++ (LVAR 16)  1 )
// Line 701 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 701  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 701  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 701 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 701  37 
	push 37
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000818
	mov  rax, 0
	call new_token
	jmp  .L000819
.L000818:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000819:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000811
.L000810:
// Line 782 (IF (== (DEREF (LVAR 16))  34 ) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):) (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL ))
// Line 702 (== (DEREF (LVAR 16))  34 )
// Line 702 (DEREF (LVAR 16))
// Line 702 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 702  34 
	push 34
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000820
// Line 732 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(= (LVAR 60) (LVAR 16)):(WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )):(= (LVAR 16) (+ (LVAR 60)  1 )):)
// Line 703 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 703 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 703 (++ (LVAR 16)  1 )
// Line 703 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 703  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 703  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 704 (= (LVAR 60) (LVAR 16))
	mov  rax, rbp
	sub  rax, 60
	push rax
// Line 704 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 728 (WHILE cond:(&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))body: (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):))
.L000822:
// Line 705 (&& (DEREF (LVAR 60)) (!= (DEREF (LVAR 60))  34 ))
// Line 705 (DEREF (LVAR 60))
// Line 705 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000824
// Line 705 (!= (DEREF (LVAR 60))  34 )
// Line 705 (DEREF (LVAR 60))
// Line 705 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 705  34 
	push 34
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000824
	mov  rax, 1
	jmp  .L000825
.L000824:
	mov  rax, 0
.L000825:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000823
// Line 728 (BLOCK(IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)):)
// Line 727 (IF (!= (DEREF (LVAR 60))  92 ) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):) (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):))
// Line 706 (!= (DEREF (LVAR 60))  92 )
// Line 706 (DEREF (LVAR 60))
// Line 706 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 706  92 
	push 92
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000826
// Line 708 (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):)
// Line 707 (++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 )
// Line 707 (= (LVAR 60) (++ (LVAR 60)  1 ))
	mov  rax, rbp
	sub  rax, 60
	push rax
// Line 707 (++ (LVAR 60)  1 )
// Line 707 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 707  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 707  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000827
.L000826:
// Line 727 (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)):)
// Line 709 (++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 )
// Line 709 (= (LVAR 60) (++ (LVAR 60)  1 ))
	mov  rax, rbp
	sub  rax, 60
	push rax
// Line 709 (++ (LVAR 60)  1 )
// Line 709 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 709  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 709  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 710 (SWITCH cond: (DEREF (LVAR 60)) body: (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):))
	mov  rax, rbp
	sub  rax, 64
	push rax
// Line 710 (DEREF (LVAR 60))
// Line 710 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 726 (BLOCK(CASE cond: 48  body:(BLOCK)):(CASE cond: 97  body:(BLOCK)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 102  body:(BLOCK)):(CASE cond: 110  body:(BLOCK)):(CASE cond: 114  body:(BLOCK)):(CASE cond: 116  body:(BLOCK)):(CASE cond: 92  body:(BLOCK)):(CASE cond: 39  body:(BLOCK)):(CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)):(DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )):)
// Line 711 (CASE cond: 48  body:(BLOCK))
// Line 711  48 
	push 48
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000829
// Line 712 (CASE cond: 97  body:(BLOCK))
// Line 712  97 
	push 97
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000830
// Line 713 (CASE cond: 98  body:(BLOCK))
// Line 713  98 
	push 98
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000831
// Line 714 (CASE cond: 102  body:(BLOCK))
// Line 714  102 
	push 102
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000832
// Line 715 (CASE cond: 110  body:(BLOCK))
// Line 715  110 
	push 110
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000833
// Line 716 (CASE cond: 114  body:(BLOCK))
// Line 716  114 
	push 114
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000834
// Line 717 (CASE cond: 116  body:(BLOCK))
// Line 717  116 
	push 116
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000835
// Line 718 (CASE cond: 92  body:(BLOCK))
// Line 718  92 
	push 92
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000836
// Line 719 (CASE cond: 39  body:(BLOCK))
// Line 719  39 
	push 39
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000837
// Line 720 (CASE cond: 34  body:(BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :))
// Line 720  34 
	push 34
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000838
// Line 723 (DEFAULT body:(CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) ))
	jmp  .L000839
	jmp  .L000828
.L000829:
// Line 712 (BLOCK)
.L000830:
// Line 713 (BLOCK)
.L000831:
// Line 714 (BLOCK)
.L000832:
// Line 715 (BLOCK)
.L000833:
// Line 716 (BLOCK)
.L000834:
// Line 717 (BLOCK)
.L000835:
// Line 718 (BLOCK)
.L000836:
// Line 719 (BLOCK)
.L000837:
// Line 720 (BLOCK)
.L000838:
// Line 721 (BLOCK(++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 ):BREAK :)
// Line 721 (++ (= (LVAR 60) (++ (LVAR 60)  1 ))  1 )
// Line 721 (= (LVAR 60) (++ (LVAR 60)  1 ))
	mov  rax, rbp
	sub  rax, 60
	push rax
// Line 721 (++ (LVAR 60)  1 )
// Line 721 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 721  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 721  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 722 BREAK 
	jmp  .L000828
.L000839:
// Line 724 (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Unsupported escape sequence." ):) )
// Line 724 (ADDR  "Unsupported escape sequence." )
	lea  rax, .LS000056[rip]
	push rax
// Line 724 (- (LVAR 60)  1 )
// Line 724 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 724  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 724 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000840
	mov  rax, 0
	call error_at_char
	jmp  .L000841
.L000840:
	sub  rsp, 8
	mov  rax, 0
	call error_at_char
	add  rsp, 8
.L000841:
	push rax
	pop  rax
.L000828:
.L000827:
	jmp  .L000822
.L000823:
// Line 730 (IF (! (DEREF (LVAR 60))) (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) ) NULL )
// Line 728 (! (DEREF (LVAR 60)))
// Line 728 (DEREF (LVAR 60))
// Line 728 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000844
	mov  rax, 1
	jmp  .L000845
.L000844:
	mov  rax, 0
.L000845:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000842
// Line 729 (CALL error_at_char ((LVAR 24):(- (LVAR 60)  1 ):(ADDR  "Missing closing quote." ):) )
// Line 729 (ADDR  "Missing closing quote." )
	lea  rax, .LS000057[rip]
	push rax
// Line 729 (- (LVAR 60)  1 )
// Line 729 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 729  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 729 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000846
	mov  rax, 0
	call error_at_char
	jmp  .L000847
.L000846:
	sub  rsp, 8
	mov  rax, 0
	call error_at_char
	add  rsp, 8
.L000847:
	push rax
	pop  rax
	jmp  .L000843
.L000842:
.L000843:
// Line 730 (= (LVAR 32) (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 730 (CALL new_token ( 2 :(LVAR 32):(LVAR 16):(CAST int  (- (LVAR 60) (LVAR 16))):) )
// Line 730 (CAST int  (- (LVAR 60) (LVAR 16)))
// Line 730 (- (LVAR 60) (LVAR 16))
// Line 730 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 730 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 730 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 730 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 730  2 
	push 2
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000848
	mov  rax, 0
	call new_token
	jmp  .L000849
.L000848:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000849:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 731 (= (LVAR 16) (+ (LVAR 60)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 731 (+ (LVAR 60)  1 )
// Line 731 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 731  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000821
.L000820:
// Line 782 (IF (== (DEREF (LVAR 16))  39 ) (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):) NULL )
// Line 732 (== (DEREF (LVAR 16))  39 )
// Line 732 (DEREF (LVAR 16))
// Line 732 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 732  39 
	push 39
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000850
// Line 782 (BLOCK(= (LVAR 72) (LVAR 16)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)):(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL ):(= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )):(= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73)):)
// Line 733 (= (LVAR 72) (LVAR 16))
	mov  rax, rbp
	sub  rax, 72
	push rax
// Line 733 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 734 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 734 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 734 (++ (LVAR 16)  1 )
// Line 734 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 734  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 734  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 776 (IF (!= (DEREF (LVAR 16))  92 ) (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):) (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):))
// Line 736 (!= (DEREF (LVAR 16))  92 )
// Line 736 (DEREF (LVAR 16))
// Line 736 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 736  92 
	push 92
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000852
// Line 738 (BLOCK(= (LVAR 73) (DEREF (LVAR 16))):)
// Line 737 (= (LVAR 73) (DEREF (LVAR 16)))
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 737 (DEREF (LVAR 16))
// Line 737 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
	jmp  .L000853
.L000852:
// Line 776 (BLOCK(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):(SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)):)
// Line 739 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 739 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 739 (++ (LVAR 16)  1 )
// Line 739 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 739  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 739  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 740 (SWITCH cond: (DEREF (LVAR 16)) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):))
	mov  rax, rbp
	sub  rax, 77
	push rax
// Line 740 (DEREF (LVAR 16))
// Line 740 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 774 (BLOCK(CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )):)
// Line 741 (CASE cond: 48  body:(BLOCK(= (LVAR 73)  0 ):BREAK :))
// Line 741  48 
	push 48
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000855
// Line 744 (CASE cond: 97  body:(BLOCK(= (LVAR 73)  7 ):BREAK :))
// Line 744  97 
	push 97
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000856
// Line 747 (CASE cond: 98  body:(BLOCK(= (LVAR 73)  8 ):BREAK :))
// Line 747  98 
	push 98
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000857
// Line 750 (CASE cond: 102  body:(BLOCK(= (LVAR 73)  12 ):BREAK :))
// Line 750  102 
	push 102
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000858
// Line 753 (CASE cond: 110  body:(BLOCK(= (LVAR 73)  10 ):BREAK :))
// Line 753  110 
	push 110
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000859
// Line 756 (CASE cond: 114  body:(BLOCK(= (LVAR 73)  13 ):BREAK :))
// Line 756  114 
	push 114
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000860
// Line 759 (CASE cond: 116  body:(BLOCK(= (LVAR 73)  9 ):BREAK :))
// Line 759  116 
	push 116
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000861
// Line 762 (CASE cond: 92  body:(BLOCK(= (LVAR 73)  92 ):BREAK :))
// Line 762  92 
	push 92
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000862
// Line 765 (CASE cond: 39  body:(BLOCK(= (LVAR 73)  39 ):BREAK :))
// Line 765  39 
	push 39
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000863
// Line 768 (CASE cond: 34  body:(BLOCK(= (LVAR 73)  34 ):BREAK :))
// Line 768  34 
	push 34
	mov  rax, rbp
	sub  rax, 77
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000864
// Line 771 (DEFAULT body:(CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) ))
	jmp  .L000865
	jmp  .L000854
.L000855:
// Line 742 (BLOCK(= (LVAR 73)  0 ):BREAK :)
// Line 742 (= (LVAR 73)  0 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 742  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 743 BREAK 
	jmp  .L000854
.L000856:
// Line 745 (BLOCK(= (LVAR 73)  7 ):BREAK :)
// Line 745 (= (LVAR 73)  7 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 745  7 
	push 7
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 746 BREAK 
	jmp  .L000854
.L000857:
// Line 748 (BLOCK(= (LVAR 73)  8 ):BREAK :)
// Line 748 (= (LVAR 73)  8 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 748  8 
	push 8
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 749 BREAK 
	jmp  .L000854
.L000858:
// Line 751 (BLOCK(= (LVAR 73)  12 ):BREAK :)
// Line 751 (= (LVAR 73)  12 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 751  12 
	push 12
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 752 BREAK 
	jmp  .L000854
.L000859:
// Line 754 (BLOCK(= (LVAR 73)  10 ):BREAK :)
// Line 754 (= (LVAR 73)  10 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 754  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 755 BREAK 
	jmp  .L000854
.L000860:
// Line 757 (BLOCK(= (LVAR 73)  13 ):BREAK :)
// Line 757 (= (LVAR 73)  13 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 757  13 
	push 13
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 758 BREAK 
	jmp  .L000854
.L000861:
// Line 760 (BLOCK(= (LVAR 73)  9 ):BREAK :)
// Line 760 (= (LVAR 73)  9 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 760  9 
	push 9
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 761 BREAK 
	jmp  .L000854
.L000862:
// Line 763 (BLOCK(= (LVAR 73)  92 ):BREAK :)
// Line 763 (= (LVAR 73)  92 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 763  92 
	push 92
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 764 BREAK 
	jmp  .L000854
.L000863:
// Line 766 (BLOCK(= (LVAR 73)  39 ):BREAK :)
// Line 766 (= (LVAR 73)  39 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 766  39 
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 767 BREAK 
	jmp  .L000854
.L000864:
// Line 769 (BLOCK(= (LVAR 73)  34 ):BREAK :)
// Line 769 (= (LVAR 73)  34 )
	mov  rax, rbp
	sub  rax, 73
	push rax
// Line 769  34 
	push 34
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 770 BREAK 
	jmp  .L000854
.L000865:
// Line 772 (CALL error_at_token ((GVAR token):(ADDR  "Unsupported escape sequence." ):) )
// Line 772 (ADDR  "Unsupported escape sequence." )
	lea  rax, .LS000058[rip]
	push rax
// Line 772 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000866
	mov  rax, 0
	call error_at_token
	jmp  .L000867
.L000866:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000867:
	push rax
	pop  rax
.L000854:
.L000853:
// Line 776 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 776 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 776 (++ (LVAR 16)  1 )
// Line 776 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 776  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 776  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 779 (IF (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 ) (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) ) NULL )
// Line 777 (!= (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))  39 )
// Line 777 (DEREF (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ))
// Line 777 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
// Line 777 (= (LVAR 16) (++ (LVAR 16)  1 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 777 (++ (LVAR 16)  1 )
// Line 777 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 777  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
// Line 777  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 777  39 
	push 39
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000868
// Line 778 (CALL error_at_char ((LVAR 24):(- (LVAR 16)  1 ):(ADDR  "Unexpected token. Expected \"'\"." ):) )
// Line 778 (ADDR  "Unexpected token. Expected \"'\"." )
	lea  rax, .LS000059[rip]
	push rax
// Line 778 (- (LVAR 16)  1 )
// Line 778 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 778  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
// Line 778 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000870
	mov  rax, 0
	call error_at_char
	jmp  .L000871
.L000870:
	sub  rsp, 8
	mov  rax, 0
	call error_at_char
	add  rsp, 8
.L000871:
	push rax
	pop  rax
	jmp  .L000869
.L000868:
.L000869:
// Line 779 (= (LVAR 32) (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 779 (CALL new_token ( 1 :(LVAR 32):(LVAR 72):(- (LVAR 16) (LVAR 72)):) )
// Line 779 (- (LVAR 16) (LVAR 72))
// Line 779 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 779 (LVAR 72)
	mov  rax, rbp
	sub  rax, 72
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 779 (LVAR 72)
	mov  rax, rbp
	sub  rax, 72
	mov  rax, [rax]
	push rax
// Line 779 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 779  1 
	push 1
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000872
	mov  rax, 0
	call new_token
	jmp  .L000873
.L000872:
	sub  rsp, 8
	mov  rax, 0
	call new_token
	add  rsp, 8
.L000873:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 780 (= (MEMBER (DEREF (LVAR 32)) int_val 16) (LVAR 73))
// Line 780 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 780 (LVAR 73)
	mov  rax, rbp
	sub  rax, 73
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000851
.L000850:
.L000851:
.L000821:
.L000811:
.L000803:
.L000795:
.L000791:
.L000787:
.L000783:
.L000779:
.L000775:
.L000771:
.L000767:
.L000763:
.L000759:
.L000751:
.L000739:
.L000727:
.L000719:
.L000715:
.L000707:
.L000699:
.L000683:
.L000671:
.L000541:
.L000531:
.L000525:
.L000513:
// Line 782 (= (MEMBER (DEREF (LVAR 8)) char_ptr 16) (LVAR 16))
// Line 782 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 782 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 783 (= (MEMBER (DEREF (LVAR 8)) file_info 0) (LVAR 24))
// Line 783 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 783 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 784 (= (MEMBER (DEREF (LVAR 8)) current_token 8) (LVAR 32))
// Line 784 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 784 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 785 (RETURN (LVAR 32))
// Line 785 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret

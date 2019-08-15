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
// <int>[switch_level][;]
// [Node][*][new_node_num][(]<int>[val][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_NUM][;]
// [node][->][int_val][=][val][;]
// [node][->][token][=][token][;]
// [node][->][type][=][new_type_int][(][)][;]
// <return>[node][;]
// [}][Node][*][new_node_str][(][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_STR][;]
// [node][->][token][=][token][;]
// [node][->][type][=][new_type_array][(][new_type_char][(][)][,][token][->][len][)][;]
// [node][->][int_val][=][vec_len][(][strings][)][;]
// [vec_push][(][strings][,][node][)][;]
// [node][->][label][=][(]<char>[*][)][calloc][(][1][,][token][->][len][+][1][)][;]
// <char>[*][src][=][token][->][str][;]
// <char>[*][dest][=][node][->][label][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][token][->][len][;]
// [i][++][)][{]<if>[(][*][src][!=]['\\'][)][{][*][dest][++][=][*][src][++][;]
// [}]<else>[{][i][++][;]
// [src][++][;]
// <switch>[(][*][src][++][)][{]<case>['0'][:][*][dest][++][=]['\0'][;]
// <break>[;]
// <case>['a'][:][*][dest][++][=]['\a'][;]
// <break>[;]
// <case>['b'][:][*][dest][++][=]['\b'][;]
// <break>[;]
// <case>['f'][:][*][dest][++][=]['\f'][;]
// <break>[;]
// <case>['n'][:][*][dest][++][=]['\n'][;]
// <break>[;]
// <case>['r'][:][*][dest][++][=]['\r'][;]
// <break>[;]
// <case>['t'][:][*][dest][++][=]['\t'][;]
// <break>[;]
// <case>['\\'][:][*][dest][++][=]['\\'][;]
// <break>[;]
// <case>['\''][:][*][dest][++][=]['\''][;]
// <break>[;]
// <case>['\"'][:][*][dest][++][=]['\"'][;]
// <break>[;]
// <default>[:][error_at_token][(][token][,]"Unsupported escape sequence."[)][;]
// [}][}][}][*][dest][=]['\0'][;]
// [node][->][offset][=][(]<int>[)][(][dest][-][node][->][label][)][+][1][;]
// <return>[node][;]
// [}][Node][*][new_node_ident][(][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_IDENT][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}][Node][*][new_node_lvar][(][LVar][*][lvar][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_LVAR][;]
// [node][->][lvar][=][lvar][;]
// [node][->][token][=][token][;]
// [node][->][type][=][lvar][->][type][;]
// <return>[node][;]
// [}][Node][*][new_node_gvar][(][Global][*][gvar][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_GVAR][;]
// [node][->][token][=][token][;]
// [node][->][type][=][gvar][->][type][;]
// <return>[node][;]
// [}][Node][*][new_node_binary][(][NodeKind][kind][,][Node][*][lhs][,][Node][*][rhs][,][Token][*][op_token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][kind][;]
// [node][->][lhs][=][get_ptr_if_array][(][lhs][)][;]
// [node][->][rhs][=][get_ptr_if_array][(][rhs][)][;]
// [node][->][token][=][op_token][;]
// <return>[node][;]
// [}][Node][*][new_node_expr][(][NodeKind][kind][,][Node][*][lhs][,][Node][*][rhs][,][Token][*][op_token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][kind][;]
// [node][->][lhs][=][lhs][;]
// [node][->][rhs][=][rhs][;]
// [node][->][token][=][op_token][;]
// <return>[node][;]
// [}][MemberInfo][*][get_member_type][(][Type][*][type][,][Token][*][ident][)][;]
// [Node][*][new_node_member][(][Node][*][lhs][,][Token][*][ident][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_MEMBER][;]
// [node][->][lhs][=][lhs][;]
// [node][->][token][=][ident][;]
// [Type][*][ty][=][type][(][lhs][)][;]
// <if>[(][!][is_struct][(][ty][)][)][error_at_node][(][lhs][,]"The expression must have a struct or union type."[)][;]
// [MemberInfo][*][mem][=][get_member_type][(][ty][,][ident][)][;]
// <if>[(][!][mem][)][error_at_token][(][ident][,]"The member does not exists in the struct."[)][;]
// [node][->][offset][=][mem][->][offset][;]
// [node][->][type][=][mem][->][type][;]
// <return>[node][;]
// [}][Node][*][new_node][(][NodeKind][kind][,][Token][*][op_token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][kind][;]
// [node][->][token][=][op_token][;]
// <return>[node][;]
// [}][Node][*][new_node_call][(][Node][*][callee][,][Vector][*][vec][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_CALL][;]
// [node][->][lhs][=][callee][;]
// [node][->][nodes][=][vec][;]
// [node][->][token][=][token][;]
// [node][->][type][=][callee][->][type][;]
// <return>[node][;]
// [}][Node][*][new_node_if_then][(][Node][*][cond_][,][Node][*][then_][,][Node][*][else_][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_IF][;]
// [node][->][lhs][=][cond_][;]
// [node][->][rhs][=][then_][;]
// [node][->][xhs][=][else_][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}][LVar][*][new_lvar][(][Token][*][token][,][Type][*][type][)][;]
// [Node][*][new_node_switch][(][Node][*][expr][,][Node][*][stmt][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_SWITCH][;]
// [node][->][lvar][=][new_lvar][(][token][,][new_type_int][(][)][)][;]
// [node][->][lhs][=][expr][;]
// [node][->][rhs][=][stmt][;]
// [node][->][nodes][=][vec_new][(][)][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}][Node][*][new_node_case][(][Node][*][const_expr][,][Node][*][body][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_CASE][;]
// [node][->][lhs][=][const_expr][;]
// [node][->][rhs][=][body][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}][Node][*][new_node_default][(][Node][*][body][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_DEFAULT][;]
// [node][->][lhs][=][body][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}][Node][*][new_node_while][(][Node][*][cond_][,][Node][*][do_][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_WHILE][;]
// [node][->][lhs][=][cond_][;]
// [node][->][rhs][=][do_][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}][Node][*][new_node_for][(][Node][*][init_][,][Node][*][cond_][,][Node][*][post_][,][Node][*][body_][,][Token][*][token][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_FOR][;]
// [node][->][lhs][=][init_][;]
// [node][->][rhs][=][cond_][;]
// [node][->][xhs][=][post_][;]
// [Vector][*][vec][=][vec_new][(][)][;]
// [vec_push][(][vec][,][body_][)][;]
// [node][->][nodes][=][vec][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}][Node][*][new_node_block][(][Vector][*][stmts][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_BLOCK][;]
// [node][->][nodes][=][stmts][;]
// [node][->][token][=][token][;]
// <return>[node][;]
// [}]<void>[add_stmt_to_block][(][Node][*][block][,][Node][*][node][)][{]<if>[(][block][->][kind][==][ND_BLOCK][)][{]<if>[(][node][)][vec_push][(][block][->][nodes][,][node][)][;]
// <return>[;]
// [}]<else>[error_at_node][(][block][,]"Must be block."[)][;]
// [}][Node][*][new_node_fdecl][(][Token][*][name][,][Vector][*][params][,]<int>[max_offset][,][Node][*][body][,][Type][*][type][)][{][Node][*][node][=][calloc][(][1][,]<sizeof>[(][Node][)][)][;]
// [node][->][kind][=][ND_FDECL][;]
// [node][->][lhs][=][body][;]
// [node][->][nodes][=][params][;]
// [node][->][offset][=][max_offset][;]
// [node][->][token][=][name][;]
// [node][->][type][=][type][;]
// <return>[node][;]
// [}]<bool>[peek][(][TokenKind][kind][)][{]<return>[token][->][kind][==][kind][;]
// [}][TokenKind][peek_next][(][)][{]<return>[token][->][next][->][kind][;]
// [}]<bool>[at_eof][(][)][{]<return>[token][->][kind][==][TK_EOF][;]
// [}][Token][*][consume][(][)][{][Token][*][ret][=][token][;]
// [token][=][token][->][next][;]
// <return>[ret][;]
// [}]<bool>[consume_if][(][TokenKind][kind][)][{]<if>[(][token][->][kind][==][kind][)][{][token][=][token][->][next][;]
// <return>[1][;]
// [}]<return>[0][;]
// [}]<int>[consume_number][(][)][{]<if>[(][token][->][kind][!=][TK_NUM][)][{][error_at_token][(][token][,]"Unexpected token: Number is expected."[)][;]
// [}]<int>[num][=][token][->][int_val][;]
// [token][=][token][->][next][;]
// <return>[num][;]
// [}][Token][*][consume_ident][(][)][{]<if>[(][token][->][kind][!=][TK_IDENT][)][{][error_at_token][(][token][,]"Expected identifier."[)][;]
// [}][Token][*][ident][=][token][;]
// [token][=][token][->][next][;]
// <return>[ident][;]
// [}][Token][*][expect][(][TokenKind][kind][)][{]<if>[(][token][->][kind][!=][kind][)][{][error_at_token][(][token][,]"Unexpected token."[)][;]
// [}][Token][*][ret][=][token][;]
// [token][=][token][->][next][;]
// <return>[ret][;]
// [}]<bool>[cmp_token][(][Token][*][t1][,][Token][*][t2][)][{]<if>[(][t1][->][len][==][t2][->][len][&&][memcmp][(][t1][->][str][,][t2][->][str][,][t1][->][len][)][==][0][)][{]<return>[1][;]
// [}]<return>[0][;]
// [}]<bool>[is_type_specifier][(][Token][*][token][)][{]<switch>[(][token][->][kind][)][{]<case>[TK_INT][:]<case>[TK_CHAR][:]<case>[TK_BOOL][:]<case>[TK_VOID][:]<case>[TK_STRUCT][:]<case>[TK_ENUM][:]<return>[1][;]
// [}]<if>[(][find_typedef][(][token][)][)]<return>[1][;]
// <return>[0][;]
// [}][LVar][*][new_lvar][(][Token][*][token][,][Type][*][type][)][{][LVar][*][lvar][=][calloc][(][1][,]<sizeof>[(][LVar][)][)][;]
// [lvar][->][token][=][token][;]
// <int>[offset][;]
// <int>[size][=][sizeof_type][(][type][)][;]
// <if>[(][size][==][0][)][{][print_structs][(][)][;]
// [error_at_token][(][token][,]"Inncomplete type is not allowed."[)][;]
// [}]<if>[(][locals][)][{][offset][=][locals][->][offset][+][size][;]
// [}]<else>[{][offset][=][size][;]
// [}][lvar][->][offset][=][offset][;]
// [lvar][->][type][=][type][;]
// [lvar][->][next][=][locals][;]
// [locals][=][lvar][;]
// [lvar][->][scope][=][scope][;]
// [scope][=][lvar][;]
// <return>[lvar][;]
// [}][LVar][*][find_lvar][(][Token][*][token][)][{]<for>[(][LVar][*][var][=][scope][;]
// [var][;]
// [var][=][var][->][scope][)][{]<if>[(][cmp_token][(][var][->][token][,][token][)][)][{]<return>[var][;]
// [}][}]<return>[(][(]<void>[*][)][0][)][;]
// [}]<bool>[find_lvar_in_scope][(][Token][*][token][)][{]<for>[(][LVar][*][var][=][scope][;]
// [var][;]
// [var][=][var][->][scope][)][{]<if>[(][var][->][scope_head][)]<return>[0][;]
// <if>[(][cmp_token][(][var][->][token][,][token][)][)][{]<return>[1][;]
// [}][}]<return>[0][;]
// [}][Global][*][new_gvar][(][Token][*][ident][,][Type][*][type][)][{][Global][*][global][=][calloc][(][1][,]<sizeof>[(][Global][)][)][;]
// [global][->][next][=][globals][;]
// [global][->][token][=][ident][;]
// [global][->][type][=][type][;]
// [globals][=][global][;]
// <return>[global][;]
// [}][Global][*][find_gvar][(][Token][*][token][)][{]<for>[(][Global][*][var][=][globals][;]
// [var][;]
// [var][=][var][->][next][)][{]<if>[(][cmp_token][(][var][->][token][,][token][)][)][{]<return>[var][;]
// [}][}]<return>[(][(]<void>[*][)][0][)][;]
// [}][Global][*][new_func][(][Token][*][ident][,][Type][*][type][,][Node][*][body][)][{][Global][*][func][=][calloc][(][1][,]<sizeof>[(][Global][)][)][;]
// [func][->][next][=][functions][;]
// [func][->][token][=][ident][;]
// [func][->][type][=][type][;]
// [func][->][body][=][body][;]
// [functions][=][func][;]
// <return>[func][;]
// [}][Global][*][find_func][(][Token][*][token][)][{]<for>[(][Global][*][func][=][functions][;]
// [func][;]
// [func][=][func][->][next][)][{]<if>[(][cmp_token][(][func][->][token][,][token][)][)][{]<return>[func][;]
// [}][}]<return>[(][(]<void>[*][)][0][)][;]
// [}][TagName][*][new_tag][(][Token][*][ident][,][Type][*][type][)][{]<if>[(][!][ident][)]<return>[(][(]<void>[*][)][0][)][;]
// [TagName][*][tag][=][calloc][(][1][,]<sizeof>[(][TagName][)][)][;]
// [type][->][tag_name][=][ident][;]
// [tag][->][next][=][tagnames][;]
// [tag][->][ident][=][ident][;]
// [tag][->][type][=][type][;]
// [tagnames][=][tag][;]
// [}][TagName][*][find_tag][(][Token][*][token][)][{]<if>[(][!][token][)]<return>[(][(]<void>[*][)][0][)][;]
// <for>[(][TagName][*][tag][=][tagnames][;]
// [tag][;]
// [tag][=][tag][->][next][)][{]<if>[(][cmp_token][(][tag][->][ident][,][token][)][)][{]<return>[tag][;]
// [}][}]<return>[(][(]<void>[*][)][0][)][;]
// [}][Typedef][*][new_typedef][(][Token][*][ident][,][Type][*][type][)][{]<if>[(][!][ident][)]<return>[(][(]<void>[*][)][0][)][;]
// [Typedef][*][tdef][=][calloc][(][1][,]<sizeof>[(][Typedef][)][)][;]
// [tdef][->][next][=][tdef_names][;]
// [tdef][->][ident][=][ident][;]
// [tdef][->][type][=][type][;]
// [tdef_names][=][tdef][;]
// [}][Type][*][find_typedef][(][Token][*][ident][)][{]<if>[(][!][ident][)]<return>[(][(]<void>[*][)][0][)][;]
// [Typedef][*][tdef][=][tdef_names][;]
// <while>[(][tdef][)][{]<if>[(][cmp_token][(][tdef][->][ident][,][ident][)][)][{]<return>[tdef][->][type][;]
// [}][tdef][=][tdef][->][next][;]
// [}]<return>[(][(]<void>[*][)][0][)][;]
// [}][MemberInfo][*][get_member_type][(][Type][*][type][,][Token][*][ident][)][{]<if>[(][!][is_struct][(][type][)][)][error_at_token][(][ident][,]"Not a struct."[)][;]
// [MemberInfo][*][member][;]
// <if>[(][!][type][->][tag_name][)][{]<if>[(][!][type][->][member][)][error_at_token][(][ident][,]"No tag name and the type has no member."[)][;]
// [member][=][type][->][member][;]
// [}]<else>[{][TagName][*][tag][=][find_tag][(][type][->][tag_name][)][;]
// <if>[(][!][tag][)][error_at_token][(][ident][,]"Undefined tag name."[)][;]
// [member][=][tag][->][type][->][member][;]
// [}]<while>[(][member][)][{]<if>[(][cmp_token][(][member][->][ident][,][ident][)][)]<return>[member][;]
// [member][=][member][->][next][;]
// [}]<return>[(][(]<void>[*][)][0][)][;]
// [}][MemberInfo][*][new_member_info][(][Token][*][ident][,][Type][*][type][)][{][MemberInfo][*][ty_ident][=][calloc][(][1][,]<sizeof>[(][MemberInfo][)][)][;]
// [ty_ident][->][type][=][type][;]
// [ty_ident][->][ident][=][ident][;]
// <return>[ty_ident][;]
// [}][Node][*][parse_expr][(][)][;]
// [Node][*][parse_assign_expr][(][)][;]
// [Node][*][parse_block][(][)][;]
// [Node][*][parse_stmt][(][)][;]
// [Node][*][parse_block_item][(][)][;]
// [MemberInfo][*][parse_decl][(]<bool>[)][;]
// [Node][*][parse_prim_expr][(][)][{][Token][*][cur_token][=][token][;]
// <if>[(][at_eof][(][)][)][{][error_at_token][(][token][,]"Unexpected EOF."[)][;]
// [}]<if>[(][peek][(][TK_NUM][)][)][{]<return>[new_node_num][(][consume_number][(][)][,][cur_token][)][;]
// [}]<if>[(][peek][(][TK_STR][)][)][{]<return>[new_node_str][(][consume][(][)][)][;]
// [}]<if>[(][consume_if][(][TK_OP_PAREN][)][)][{][Node][*][node][=][parse_expr][(][)][;]
// [expect][(][TK_CL_PAREN][)][;]
// <return>[node][;]
// [}]<if>[(][consume_if][(][TK_IDENT][)][)][{][LVar][*][lvar][=][find_lvar][(][cur_token][)][;]
// <if>[(][lvar][)]<return>[new_node_lvar][(][lvar][,][cur_token][)][;]
// [Global][*][gvar][=][find_gvar][(][cur_token][)][;]
// <if>[(][gvar][)]<return>[new_node_gvar][(][gvar][,][cur_token][)][;]
// [TagName][*][tag][=][find_tag][(][cur_token][)][;]
// <if>[(][tag][&&][is_enum_el][(][tag][->][type][)][)][{]<return>[new_node_num][(][tag][->][type][->][offset][,][cur_token][)][;]
// [}]<if>[(][peek][(][TK_OP_PAREN][)][)][{]<if>[(][find_func][(][cur_token][)][)]<return>[new_node_ident][(][cur_token][)][;]
// [}][error_at_token][(][cur_token][,]"Identifier is not defined."[)][;]
// [}]<if>[(][consume_if][(][TK_MACRO][)][)][{]<if>[(][strncmp][(][cur_token][->][str][,]"__LINE__"[,][8][)][==][0][)]<return>[new_node_num][(][get_line][(][cur_token][->][str][,][source_text][)][,][cur_token][)][;]
// [}]<if>[(][is_type_specifier][(][token][)][)][error_at_token][(][token][,]"Can not use declaration here."[)][;]
// [error_at_token][(][token][,]"parse_prim_expr(): Unexpected token."[)][;]
// [}][Node][*][parse_postfix_expr][(][)][{][Node][*][node][=][parse_prim_expr][(][)][;]
// <while>[(][1][)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_OP_PAREN][)][)][{]<if>[(][node][->][kind][!=][ND_IDENT][)][error_at_node][(][node][,]"Currently, callee must be an identifier."[)][;]
// [Global][*][fn_global][=][find_func][(][node][->][token][)][;]
// <if>[(][!][fn_global][)][error_at_node][(][node][,]"Undefined identifier."[)][;]
// [node][->][type][=][fn_global][->][type][->][ptr_to][;]
// [Vector][*][vec][=][vec_new][(][)][;]
// [Token][*][op_token][=][token][;]
// [MemberInfo][*][param][=][fn_global][->][type][->][params][;]
// <while>[(][!][peek][(][TK_CL_PAREN][)][)][{][Node][*][arg][=][parse_assign_expr][(][)][;]
// <if>[(][is_array][(][type][(][arg][)][)][)][arg][=][new_node_expr][(][ND_ADDR][,][arg][,][(][(]<void>[*][)][0][)][,][arg][->][token][)][;]
// <if>[(][param][&&][!][is_compatible_type][(][param][->][type][,][type][(][arg][)][)][)][{][error_types][(][param][->][type][,][type][(][arg][)][)][;]
// [error_at_node][(][arg][,]"The type of an argument is mismatch %s"[,]"with func parameter."[)][;]
// [}][vec_push][(][vec][,][arg][)][;]
// <if>[(][param][)][param][=][param][->][next][;]
// <if>[(][!][consume_if][(][TK_COMMA][)][)]<break>[;]
// [}]<if>[(][param][)][error_at_token][(][token][,]"Too few arguments is func call."[)][;]
// [expect][(][TK_CL_PAREN][)][;]
// [node][=][new_node_call][(][node][,][vec][,][node][->][token][)][;]
// [}]<else><if>[(][consume_if][(][TK_OP_BRACKET][)][)][{][Node][*][index][=][parse_expr][(][)][;]
// [node][=][new_node_binary][(][ND_ADD][,][node][,][index][,][token][)][;]
// [node][=][new_node_expr][(][ND_DEREF][,][node][,][(][(]<void>[*][)][0][)][,][token][)][;]
// [expect][(][TK_CL_BRACKET][)][;]
// [}]<else><if>[(][consume_if][(][TK_INC][)][)][{][Node][*][rhs][=][new_node_binary][(][ND_ADD][,][node][,][new_node_num][(][1][,][op_token][)][,][op_token][)][;]
// [node][=][new_node_expr][(][ND_ASSIGN][,][node][,][rhs][,][op_token][)][;]
// [node][=][new_node_binary][(][ND_SUB][,][node][,][new_node_num][(][1][,][op_token][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_DEC][)][)][{][Node][*][rhs][=][new_node_binary][(][ND_SUB][,][node][,][new_node_num][(][1][,][op_token][)][,][op_token][)][;]
// [node][=][new_node_expr][(][ND_ASSIGN][,][node][,][rhs][,][op_token][)][;]
// [node][=][new_node_binary][(][ND_ADD][,][node][,][new_node_num][(][1][,][op_token][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_DOT][)][)][{][node][=][new_node_member][(][node][,][consume_ident][(][)][)][;]
// [}]<else><if>[(][consume_if][(][TK_ARROW][)][)][{]<if>[(][!][is_ptr][(][type][(][node][)][)][)][error_at_node][(][node][,]"Must be a pointer."[)][;]
// [node][=][new_node_binary][(][ND_DEREF][,][node][,][(][(]<void>[*][)][0][)][,][op_token][)][;]
// [node][=][new_node_member][(][node][,][consume_ident][(][)][)][;]
// [}]<else><return>[node][;]
// [}][}][Node][*][get_ptr_if_array][(][Node][*][node][)][{]<if>[(][!][node][)]<return>[(][(]<void>[*][)][0][)][;]
// <if>[(][is_array][(][type][(][node][)][)][)][{]<return>[new_node_expr][(][ND_ADDR][,][node][,][(][(]<void>[*][)][0][)][,][node][->][token][)][;]
// [}]<else>[{]<return>[node][;]
// [}][}][Node][*][parse_unary_expr][(][)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_ADD][)][)][{]<return>[parse_unary_expr][(][)][;]
// [}]<else><if>[(][consume_if][(][TK_SUB][)][)][{]<return>[new_node_binary][(][ND_SUB][,][new_node_num][(][0][,][token][)][,][parse_unary_expr][(][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_AND][)][)][{]<return>[new_node_expr][(][ND_ADDR][,][parse_unary_expr][(][)][,][(][(]<void>[*][)][0][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_MUL][)][)][{][Node][*][node][=][parse_unary_expr][(][)][;]
// <return>[new_node_binary][(][ND_DEREF][,][node][,][(][(]<void>[*][)][0][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_SIZEOF][)][)][{][Type][*][ty][;]
// <if>[(][peek][(][TK_OP_PAREN][)][&&][is_type_specifier][(][token][->][next][)][)][{][expect][(][TK_OP_PAREN][)][;]
// [ty][=][parse_decl][(][0][)][->][type][;]
// [expect][(][TK_CL_PAREN][)][;]
// [}]<else>[{][ty][=][type][(][parse_unary_expr][(][)][)][;]
// [}]<return>[new_node_num][(][sizeof_type][(][ty][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_NOT][)][)][{][Node][*][node][=][new_node][(][ND_NOT][,][op_token][)][;]
// [node][->][lhs][=][parse_unary_expr][(][)][;]
// [node][->][type][=][new_type_int][(][)][;]
// <return>[node][;]
// [}]<else>[{]<return>[parse_postfix_expr][(][)][;]
// [}][}][Node][*][parse_cast_expr][(][)][{]<if>[(][peek][(][TK_OP_PAREN][)][&&][is_type_specifier][(][token][->][next][)][)][{][expect][(][TK_OP_PAREN][)][;]
// [Token][*][op_token][=][token][;]
// [MemberInfo][*][info][=][parse_decl][(][0][)][;]
// [expect][(][TK_CL_PAREN][)][;]
// [Node][*][node][=][new_node][(][ND_CAST][,][op_token][)][;]
// [node][->][type][=][info][->][type][;]
// [node][->][lhs][=][parse_cast_expr][(][)][;]
// <return>[node][;]
// [}]<return>[parse_unary_expr][(][)][;]
// [}][Node][*][parse_mul_expr][(][)][{][Node][*][node][=][parse_cast_expr][(][)][;]
// [Node][*][rhs][;]
// <while>[(][1][)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_MUL][)][)][{][rhs][=][parse_cast_expr][(][)][;]
// [node][=][new_node_binary][(][ND_MUL][,][node][,][rhs][,][op_token][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_DIV][)][)][{][rhs][=][parse_cast_expr][(][)][;]
// [node][=][new_node_binary][(][ND_DIV][,][node][,][rhs][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_add_expr][(][)][{][Node][*][node][=][parse_mul_expr][(][)][;]
// <while>[(][1][)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_ADD][)][)][{][node][=][new_node_binary][(][ND_ADD][,][node][,][parse_mul_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_SUB][)][)][{][node][=][new_node_binary][(][ND_SUB][,][node][,][parse_mul_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_shift_expr][(][)][{][Node][*][node][=][parse_add_expr][(][)][;]
// <while>[(][1][)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_SHR][)][)][{][node][=][new_node_binary][(][ND_SHR][,][node][,][parse_add_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_SHL][)][)][{][node][=][new_node_binary][(][ND_SHL][,][node][,][parse_add_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_rel_expr][(][)][{][Node][*][node][=][parse_shift_expr][(][)][;]
// <for>[(][;]
// [;]
// [)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_GE][)][)][{][node][=][new_node_binary][(][ND_GE][,][node][,][parse_shift_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_GT][)][)][{][node][=][new_node_binary][(][ND_GT][,][node][,][parse_shift_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_LE][)][)][{][node][=][new_node_binary][(][ND_GE][,][parse_shift_expr][(][)][,][node][,][op_token][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_LT][)][)][{][node][=][new_node_binary][(][ND_GT][,][parse_shift_expr][(][)][,][node][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_eq_expr][(][)][{][Node][*][node][=][parse_rel_expr][(][)][;]
// <for>[(][;]
// [;]
// [)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_EQ][)][)][{][node][=][new_node_binary][(][ND_EQ][,][node][,][parse_rel_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_NEQ][)][)][{][node][=][new_node_binary][(][ND_NEQ][,][node][,][parse_rel_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_and_expr][(][)][{][Node][*][node][=][parse_eq_expr][(][)][;]
// <for>[(][;]
// [;]
// [)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_AND][)][)][{][node][=][new_node_binary][(][ND_AND][,][node][,][parse_eq_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_xor_expr][(][)][{][Node][*][node][=][parse_and_expr][(][)][;]
// <for>[(][;]
// [;]
// [)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_XOR][)][)][{][node][=][new_node_binary][(][ND_XOR][,][node][,][parse_and_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_or_expr][(][)][{][Node][*][node][=][parse_xor_expr][(][)][;]
// <for>[(][;]
// [;]
// [)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_OR][)][)][{][node][=][new_node_binary][(][ND_OR][,][node][,][parse_xor_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_land_expr][(][)][{][Node][*][node][=][parse_or_expr][(][)][;]
// <for>[(][;]
// [;]
// [)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_LAND][)][)][{][node][=][new_node_binary][(][ND_LAND][,][node][,][parse_or_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_lor_expr][(][)][{][Node][*][node][=][parse_land_expr][(][)][;]
// <for>[(][;]
// [;]
// [)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_LOR][)][)][{][node][=][new_node_binary][(][ND_LOR][,][node][,][parse_land_expr][(][)][,][op_token][)][;]
// <continue>[;]
// [}]<return>[node][;]
// [}][}][Node][*][parse_assign_expr][(][)][{][Node][*][node][=][parse_lor_expr][(][)][;]
// [Node][*][rhs][;]
// [Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_ASSIGN][)][)][{][rhs][=][get_ptr_if_array][(][parse_assign_expr][(][)][)][;]
// [}]<else><if>[(][consume_if][(][TK_ASSIGN_ADD][)][)][{][rhs][=][new_node_binary][(][ND_ADD][,][node][,][parse_assign_expr][(][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_ASSIGN_SUB][)][)][{][rhs][=][new_node_binary][(][ND_SUB][,][node][,][parse_assign_expr][(][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_ASSIGN_MUL][)][)][{][rhs][=][new_node_binary][(][ND_MUL][,][node][,][parse_assign_expr][(][)][,][op_token][)][;]
// [}]<else><if>[(][consume_if][(][TK_ASSIGN_DIV][)][)][{][rhs][=][new_node_binary][(][ND_DIV][,][node][,][parse_assign_expr][(][)][,][op_token][)][;]
// [}]<else><return>[node][;]
// <return>[new_node_expr][(][ND_ASSIGN][,][node][,][rhs][,][op_token][)][;]
// [}][Node][*][parse_expr][(][)][{][Node][*][node][=][parse_assign_expr][(][)][;]
// <return>[node][;]
// [}][Node][*][parse_for][(][)][{][Token][*][op_token][=][token][;]
// [Node][*][init][=][(][(]<void>[*][)][0][)][;]
// [Node][*][cond][;]
// [Node][*][post][;]
// [Node][*][body][;]
// [expect][(][TK_FOR][)][;]
// [expect][(][TK_OP_PAREN][)][;]
// <if>[(][scope][)][scope][->][scope_head][=][1][;]
// [LVar][*][save_scope][=][scope][;]
// <if>[(][!][consume_if][(][TK_SEMI][)][)][{]<if>[(][is_type_specifier][(][token][)][)][{][init][=][parse_block_item][(][)][;]
// [}]<else>[{][init][=][parse_expr][(][)][;]
// [expect][(][TK_SEMI][)][;]
// [}][}]<if>[(][!][peek][(][TK_SEMI][)][)][{][cond][=][parse_expr][(][)][;]
// [}]<else>[{][cond][=][new_node_num][(][1][,][token][)][;]
// [}][expect][(][TK_SEMI][)][;]
// <if>[(][peek][(][!][TK_CL_PAREN][)][)][post][=][parse_expr][(][)][;]
// <else>[post][=][(][(]<void>[*][)][0][)][;]
// [expect][(][TK_CL_PAREN][)][;]
// [body][=][parse_stmt][(][)][;]
// [scope][=][save_scope][;]
// <return>[new_node_for][(][init][,][cond][,][post][,][body][,][op_token][)][;]
// [}][Node][*][parse_stmt][(][)][{]<if>[(][consume_if][(][TK_SEMI][)][)]<return>[(][(]<void>[*][)][0][)][;]
// [Node][*][node][;]
// [Node][*][then_][;]
// [Token][*][op_token][=][token][;]
// <switch>[(][token][->][kind][)][{]<case>[TK_RETURN][:][expect][(][TK_RETURN][)][;]
// <if>[(][consume_if][(][TK_SEMI][)][)]<return>[new_node_binary][(][ND_RETURN][,][(][(]<void>[*][)][0][)][,][(][(]<void>[*][)][0][)][,][op_token][)][;]
// <else>[{][node][=][parse_expr][(][)][;]
// [expect][(][TK_SEMI][)][;]
// <return>[new_node_binary][(][ND_RETURN][,][node][,][(][(]<void>[*][)][0][)][,][op_token][)][;]
// [}]<case>[TK_IF][:][expect][(][TK_IF][)][;]
// [expect][(][TK_OP_PAREN][)][;]
// [node][=][parse_expr][(][)][;]
// [expect][(][TK_CL_PAREN][)][;]
// [then_][=][parse_stmt][(][)][;]
// <if>[(][consume_if][(][TK_ELSE][)][)]<return>[new_node_if_then][(][node][,][then_][,][parse_stmt][(][)][)][;]
// <else><return>[new_node_if_then][(][node][,][then_][,][(][(]<void>[*][)][0][)][)][;]
// <case>[TK_SWITCH][:][switch_level][++][;]
// [expect][(][TK_SWITCH][)][;]
// [expect][(][TK_OP_PAREN][)][;]
// [node][=][parse_eq_expr][(][)][;]
// [expect][(][TK_CL_PAREN][)][;]
// [then_][=][parse_stmt][(][)][;]
// [switch_level][--][;]
// <return>[new_node_switch][(][node][,][then_][,][op_token][)][;]
// <case>[TK_WHILE][:][expect][(][TK_WHILE][)][;]
// [expect][(][TK_OP_PAREN][)][;]
// [node][=][parse_expr][(][)][;]
// [expect][(][TK_CL_PAREN][)][;]
// <return>[new_node_while][(][node][,][parse_stmt][(][)][)][;]
// <case>[TK_FOR][:]<return>[parse_for][(][)][;]
// <case>[TK_OP_BRACE][:]<return>[parse_block][(][)][;]
// <case>[TK_BREAK][:][expect][(][TK_BREAK][)][;]
// [expect][(][TK_SEMI][)][;]
// <return>[new_node][(][ND_BREAK][,][op_token][)][;]
// <case>[TK_CONTINUE][:][expect][(][TK_CONTINUE][)][;]
// [expect][(][TK_SEMI][)][;]
// <return>[new_node][(][ND_CONTINUE][,][op_token][)][;]
// <case>[TK_CASE][:]<if>[(][switch_level][==][0][)][error_at_token][(][op_token][,]"a case label may only be used within a switch."[)][;]
// [expect][(][TK_CASE][)][;]
// [node][=][parse_expr][(][)][;]
// [expect][(][TK_COLON][)][;]
// [then_][=][new_node_block][(][vec_new][(][)][)][;]
// <while>[(][!][peek][(][TK_CASE][)][&&][!][peek][(][TK_DEFAULT][)][&&][!][peek][(][TK_CL_BRACE][)][)][add_stmt_to_block][(][then_][,][parse_stmt][(][)][)][;]
// <return>[new_node_case][(][node][,][then_][,][op_token][)][;]
// <case>[TK_DEFAULT][:]<if>[(][switch_level][==][0][)][error_at_token][(][op_token][,]"a default label may only be used within a switch."[)][;]
// [expect][(][TK_DEFAULT][)][;]
// [expect][(][TK_COLON][)][;]
// [node][=][parse_stmt][(][)][;]
// <return>[new_node_default][(][node][,][op_token][)][;]
// [}][node][=][parse_expr][(][)][;]
// [expect][(][TK_SEMI][)][;]
// <return>[node][;]
// [}][Node][*][parse_local_declaration][(][)][{][MemberInfo][*][ty_ident][=][parse_decl][(][0][)][;]
// [Token][*][ident][=][ty_ident][->][ident][;]
// [Type][*][type][=][ty_ident][->][type][;]
// <if>[(][!][ident][)][{]<if>[(][!][is_struct][(][type][)][)][error_at_token][(][token][,]"Expected an identifier."[)][;]
// <else><return>[(][(]<void>[*][)][0][)][;]
// [}][Node][*][node][=][(][(]<void>[*][)][0][)][;]
// <if>[(][is_func][(][type][)][)][error_at_token][(][ident][,]"Functions can be declared only in the top level."[)][;]
// [Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_ASSIGN][)][)][{][node][=][parse_assign_expr][(][)][;]
// <if>[(][is_array_of_char][(][type][)][&&][node][->][kind][==][ND_STR][)][{][type][->][array_size][=][node][->][offset][;]
// [}]<else>[{][node][=][get_ptr_if_array][(][node][)][;]
// [}][node][=][new_node_expr][(][ND_ASSIGN][,][new_node_lvar][(][new_lvar][(][ident][,][type][)][,][op_token][)][,][node][,][op_token][)][;]
// [}]<else>[{][new_lvar][(][ident][,][type][)][;]
// [}][expect][(][TK_SEMI][)][;]
// <return>[node][;]
// [}][Node][*][parse_block_item][(][)][{]<if>[(][consume_if][(][TK_TYPEDEF][)][)][{][MemberInfo][*][ty_ident][=][parse_decl][(][1][)][;]
// [Token][*][ident][=][ty_ident][->][ident][;]
// [Type][*][type][=][ty_ident][->][type][;]
// <if>[(][!][ident][)][error_at_token][(][token][,]"Expected identifier."[)][;]
// [new_typedef][(][ident][,][type][)][;]
// [expect][(][TK_SEMI][)][;]
// <return>[(][(]<void>[*][)][0][)][;]
// [}]<if>[(][is_type_specifier][(][token][)][)][{]<return>[parse_local_declaration][(][)][;]
// [}]<return>[parse_stmt][(][)][;]
// [}][Node][*][parse_block][(][)][{][expect][(][TK_OP_BRACE][)][;]
// [Vector][*][vec][=][vec_new][(][)][;]
// <if>[(][scope][)][scope][->][scope_head][=][1][;]
// [LVar][*][save_scope][=][scope][;]
// <while>[(][!][peek][(][TK_CL_BRACE][)][)][{][Node][*][node][=][parse_block_item][(][)][;]
// <if>[(][node][)][vec_push][(][vec][,][node][)][;]
// [}][expect][(][TK_CL_BRACE][)][;]
// [scope][=][save_scope][;]
// <return>[new_node_block][(][vec][)][;]
// [}][MemberInfo][*][parse_declaretor][(][Type][*][type][)][{]<while>[(][consume_if][(][TK_MUL][)][)][{][type][=][new_type_ptr_to][(][type][)][;]
// [}][Type][anchor][;]
// [MemberInfo][*][outer][=][(][(]<void>[*][)][0][)][;]
// [Token][*][ident][=][(][(]<void>[*][)][0][)][;]
// <if>[(][peek][(][TK_IDENT][)][)][{][ident][=][expect][(][TK_IDENT][)][;]
// <if>[(][find_lvar_in_scope][(][ident][)][)][error_at_token][(][ident][,]"Duplicate definition of local variable."[)][;]
// [}]<else><if>[(][consume_if][(][TK_OP_PAREN][)][)][{][outer][=][parse_declaretor][(][&][anchor][)][;]
// [expect][(][TK_CL_PAREN][)][;]
// [}][Type][head][;]
// [head][.][ptr_to][=][type][;]
// [Type][*][cursor][=][&][head][;]
// <while>[(][consume_if][(][TK_OP_BRACKET][)][)][{]<int>[size][=][0][;]
// <if>[(][!][peek][(][TK_CL_BRACKET][)][)][size][=][expect][(][TK_NUM][)][->][int_val][;]
// [cursor][->][ptr_to][=][new_type_array][(][type][,][size][)][;]
// [cursor][=][cursor][->][ptr_to][;]
// [expect][(][TK_CL_BRACKET][)][;]
// [}][type][=][head][.][ptr_to][;]
// <if>[(][consume_if][(][TK_OP_PAREN][)][)][{][type][=][new_type_func][(][type][)][;]
// [MemberInfo][head][;]
// [head][.][next][=][(][(]<void>[*][)][0][)][;]
// [MemberInfo][*][cursor][=][&][head][;]
// <while>[(][!][peek][(][TK_CL_PAREN][)][)][{]<if>[(][peek][(][TK_ELLIPSIS][)][)][{][consume][(][)][;]
// <break>[;]
// [}][MemberInfo][*][pinfo][=][parse_decl][(][0][)][;]
// <if>[(][is_array][(][pinfo][->][type][)][)][pinfo][->][type][=][new_type_ptr_to][(][pinfo][->][type][->][ptr_to][)][;]
// [cursor][->][next][=][pinfo][;]
// [cursor][=][pinfo][;]
// <if>[(][!][consume_if][(][TK_COMMA][)][)]<break>[;]
// [}][type][->][params][=][head][.][next][;]
// [expect][(][TK_CL_PAREN][)][;]
// [}]<if>[(][outer][)][{][Type][*][cursor][=][outer][->][type][;]
// <while>[(][cursor][->][ptr_to][!=][&][anchor][)][cursor][=][cursor][->][ptr_to][;]
// [cursor][->][ptr_to][=][type][;]
// [type][=][outer][->][type][;]
// [ident][=][outer][->][ident][;]
// [}]<return>[new_member_info][(][ident][,][type][)][;]
// [}][Type][*][parse_enum_specifier][(][)][{][Type][*][type][=][new_type_enum][(][)][;]
// <if>[(][peek][(][TK_IDENT][)][)][type][->][tag_name][=][consume_ident][(][)][;]
// [MemberInfo][head][;]
// [head][.][next][=][(][(]<void>[*][)][0][)][;]
// [MemberInfo][*][cursor][=][&][head][;]
// <if>[(][consume_if][(][TK_OP_BRACE][)][)][{]<int>[i][=][0][;]
// <while>[(][!][peek][(][TK_CL_BRACE][)][)][{][Type][*][new][=][new_type_enum_el][(][i][++][)][;]
// [new][->][tag_name][=][consume_ident][(][)][;]
// [cursor][->][next][=][new_member_info][(][new][->][tag_name][,][new][)][;]
// [cursor][=][cursor][->][next][;]
// [new_tag][(][new][->][tag_name][,][new][)][;]
// <if>[(][!][consume_if][(][TK_COMMA][)][)]<break>[;]
// [}][expect][(][TK_CL_BRACE][)][;]
// [}][type][->][member][=][head][.][next][;]
// [new_tag][(][type][->][tag_name][,][type][)][;]
// <return>[type][;]
// [}][Type][*][parse_struct_specifier][(]<bool>[allow_undefined_tag][)][{][Type][*][struct_ty][=][new_type_struct][(][)][;]
// [TagName][*][tag][=][(][(]<void>[*][)][0][)][;]
// [Token][*][tag_name][=][(][(]<void>[*][)][0][)][;]
// <if>[(][peek][(][TK_IDENT][)][)][tag_name][=][consume][(][)][;]
// <if>[(][consume_if][(][TK_OP_BRACE][)][)][{]<if>[(][find_tag][(][tag_name][)][)][error_at_token][(][tag_name][,]"Duplicate definition of a tag name."[)][;]
// [tag][=][new_tag][(][tag_name][,][struct_ty][)][;]
// [MemberInfo][head][;]
// [head][.][next][=][(][(]<void>[*][)][0][)][;]
// [MemberInfo][*][cursor][=][&][head][;]
// <int>[offset][=][0][;]
// <while>[(][!][consume_if][(][TK_CL_BRACE][)][)][{][MemberInfo][*][ty_ident][=][parse_decl][(][0][)][;]
// [Token][*][ident][=][ty_ident][->][ident][;]
// [Type][*][type][=][ty_ident][->][type][;]
// <if>[(][!][ident][)][error_at_token][(][token][,]"Missing Identifier."[)][;]
// [MemberInfo][*][ty][=][head][.][next][;]
// <while>[(][ty][)][{]<if>[(][cmp_token][(][ty][->][ident][,][ident][)][)][error_at_token][(][ident][,]"Duplicate member."[)][;]
// [ty][=][ty][->][next][;]
// [}]<int>[align][=][alignof_type][(][type][)][;]
// [offset][=][align_to][(][offset][,][align][)][;]
// [ty_ident][->][offset][=][offset][;]
// [offset][+=][sizeof_type][(][type][)][;]
// [cursor][->][next][=][ty_ident][;]
// [cursor][=][ty_ident][;]
// [expect][(][TK_SEMI][)][;]
// [}][struct_ty][->][member][=][head][.][next][;]
// <if>[(][tag][)][tag][->][type][=][struct_ty][;]
// <return>[struct_ty][;]
// [}]<else>[{]<if>[(][!][tag_name][)][error_at_token][(][token][,]"Expected either of a tag name  or a definition."[)][;]
// [tag][=][find_tag][(][tag_name][)][;]
// <if>[(][!][tag][)][{]<if>[(][allow_undefined_tag][)][{][struct_ty][->][tag_name][=][tag_name][;]
// [}]<else>[error_at_token][(][tag_name][,]"Tag name is not defined."[)][;]
// [}]<else>[{][struct_ty][=][tag][->][type][;]
// [}]<return>[struct_ty][;]
// [}][}][Type][*][parse_type_specifier][(]<bool>[allow_undefined_tag][)][{][Token][*][token][=][consume][(][)][;]
// [Type][*][ty][;]
// <switch>[(][token][->][kind][)][{]<case>[TK_INT][:]<return>[new_type_int][(][)][;]
// <case>[TK_CHAR][:]<return>[new_type_char][(][)][;]
// <case>[TK_BOOL][:]<return>[new_type_bool][(][)][;]
// <case>[TK_VOID][:]<return>[new_type_void][(][)][;]
// <case>[TK_STRUCT][:]<return>[parse_struct_specifier][(][allow_undefined_tag][)][;]
// <case>[TK_ENUM][:]<return>[parse_enum_specifier][(][)][;]
// <case>[TK_IDENT][:][ty][=][find_typedef][(][token][)][;]
// <if>[(][ty][)]<return>[ty][;]
// [}][error_at_token][(][token][,]"Expected type specifier or typedef name."[)][;]
// [}][MemberInfo][*][parse_decl][(]<bool>[allow_undefined_tag][)][{]<if>[(][!][is_type_specifier][(][token][)][)][error_at_token][(][token][,]"Expected type specifier or typedef name."[)][;]
// [Type][*][type][=][parse_type_specifier][(][allow_undefined_tag][)][;]
// <return>[parse_declaretor][(][type][)][;]
// [}][Node][*][parse_func_definition][(][MemberInfo][*][ty_ident][)][{][Node][*][decl][;]
// [Token][*][ident][=][ty_ident][->][ident][;]
// [Type][*][type][=][ty_ident][->][type][;]
// [Global][*][func][=][new_func][(][ident][,][type][,][(][(]<void>[*][)][0][)][)][;]
// [Vector][*][params][=][vec_new][(][)][;]
// [MemberInfo][*][cursor][=][type][->][params][;]
// <while>[(][cursor][)][{][vec_push][(][params][,][new_node_lvar][(][new_lvar][(][cursor][->][ident][,][cursor][->][type][)][,][cursor][->][ident][)][)][;]
// [cursor][=][cursor][->][next][;]
// [}][Node][*][body][=][parse_block][(][)][;]
// <int>[max_offset][=][0][;]
// <if>[(][locals][)][max_offset][=][locals][->][offset][;]
// [decl][=][new_node_fdecl][(][ident][,][params][,][max_offset][,][body][,][type][)][;]
// [func][->][body][=][decl][;]
// <return>[decl][;]
// [}][Node][*][parse_initializer_list][(][)][{][Token][*][op_token][=][token][;]
// <if>[(][consume_if][(][TK_OP_BRACE][)][)][{][Vector][*][vec][=][vec_new][(][)][;]
// <while>[(][!][peek][(][TK_CL_BRACE][)][)][{][vec_push][(][vec][,][parse_initializer_list][(][)][)][;]
// <if>[(][!][consume_if][(][TK_COMMA][)][)]<break>[;]
// [}][expect][(][TK_CL_BRACE][)][;]
// [Node][*][node][=][new_node][(][ND_INIT][,][op_token][)][;]
// [node][->][nodes][=][vec][;]
// <return>[node][;]
// [}]<else>[{][Node][*][node][=][parse_assign_expr][(][)][;]
// <return>[node][;]
// [}][}]<void>[parse_program][(][)][{][ext_declarations][=][vec_new][(][)][;]
// <while>[(][!][at_eof][(][)][)][{][locals][=][(][(]<void>[*][)][0][)][;]
// [scope][=][(][(]<void>[*][)][0][)][;]
// [switch_level][=][0][;]
// [Node][*][decl][;]
// <if>[(][consume_if][(][TK_MACRO][)][)]<continue>[;]
// <if>[(][consume_if][(][TK_TYPEDEF][)][)][{][MemberInfo][*][ty_ident][=][parse_decl][(][1][)][;]
// <if>[(][!][ty_ident][->][ident][)][error_at_token][(][token][,]"Expected identifier."[)][;]
// [new_typedef][(][ty_ident][->][ident][,][ty_ident][->][type][)][;]
// [expect][(][TK_SEMI][)][;]
// <continue>[;]
// [}]<bool>[is_extern][=][0][;]
// <if>[(][consume_if][(][TK_EXTERN][)][)][{][is_extern][=][1][;]
// [}][MemberInfo][*][ty_ident][=][parse_decl][(][0][)][;]
// [Token][*][ident][=][ty_ident][->][ident][;]
// [Type][*][type][=][ty_ident][->][type][;]
// <if>[(][!][ident][)][{]<if>[(][is_struct][(][type][)][||][is_enum][(][type][)][)][{][expect][(][TK_SEMI][)][;]
// <continue>[;]
// [}]<else>[error_at_token][(][token][,]"Expected an identifier."[)][;]
// [}]<if>[(][!][is_func][(][type][)][)][{][Token][*][op_token][=][token][;]
// [Global][*][gvar][=][find_gvar][(][ident][)][;]
// <if>[(][gvar][)][{]<if>[(][gvar][->][body][)][error_at_token][(][ident][,]"Reinitialization of global variable."[)][;]
// <if>[(][!][is_identical_type][(][gvar][->][type][,][type][)][)][error_at_token][(][ident][,]"Conflicting types."[)][;]
// [}]<else>[gvar][=][new_gvar][(][ident][,][type][)][;]
// [gvar][->][is_extern][=][is_extern][;]
// <if>[(][consume_if][(][TK_ASSIGN][)][)][{]<if>[(][is_extern][)][error_at_token][(][op_token][,]"Can not initialize variables with 'extern'."[)][;]
// <if>[(][peek][(][TK_OP_BRACE][)][)][{][gvar][->][body][=][parse_initializer_list][(][)][;]
// [}]<else>[gvar][->][body][=][parse_assign_expr][(][)][;]
// [}]<if>[(][is_array_of_char][(][gvar][->][type][)][)][{]<if>[(][!][gvar][->][body][)][{]<if>[(][gvar][->][type][->][array_size][==][0][)][error_at_token][(][gvar][->][token][,]"Incomplete type is not allowed."[)][;]
// [}]<else><if>[(][gvar][->][body][->][kind][==][ND_STR][)][{]<if>[(][gvar][->][type][->][array_size][==][0][)][gvar][->][type][->][array_size][=][gvar][->][body][->][offset][;]
// [}]<else>[error_at_node][(][gvar][->][body][,]"Unsupported initializer."[)][;]
// [}][expect][(][TK_SEMI][)][;]
// <continue>[;]
// [}]<else><if>[(][consume_if][(][TK_SEMI][)][)][{][Global][*][func][=][new_func][(][ident][,][type][,][(][(]<void>[*][)][0][)][)][;]
// <continue>[;]
// [}]<else><if>[(][peek][(][TK_OP_BRACE][)][)][{][decl][=][parse_func_definition][(][ty_ident][)][;]
// [fprintf][(][output][,]"// "[)][;]
// [print_node][(][decl][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [print_locals][(][)][;]
// [vec_push][(][ext_declarations][,][decl][)][;]
// [}]<else>[error_at_token][(][token][,]"U6nexpected token."[)][;]
// [}][}]<EOF>
// FDECL new_node_num func ( int  val , * struct <Token>  token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) 
//    (BLOCK(= (LVAR 20) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 20)) kind 0)  1 ):(= (MEMBER (DEREF (LVAR 20)) int_val 32) (LVAR 4)):(= (MEMBER (DEREF (LVAR 20)) token 72) (LVAR 12)):(= (MEMBER (DEREF (LVAR 20)) type 80) (CALL new_type_int () )):(RETURN (LVAR 20)):))
//    node  offset:20  * struct <Node> 
//    token  offset:12  * struct <Token> 
//    val  offset:4  int 

// FDECL new_node_str func ( * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0)  2 ):(= (MEMBER (DEREF (LVAR 16)) token 72) (LVAR 8)):(= (MEMBER (DEREF (LVAR 16)) type 80) (CALL new_type_array ((CALL new_type_char () ):(MEMBER (DEREF (LVAR 8)) len 32):) )):(= (MEMBER (DEREF (LVAR 16)) int_val 32) (CALL vec_len ((GVAR strings):) )):(CALL vec_push ((GVAR strings):(LVAR 16):) ):(= (MEMBER (DEREF (LVAR 16)) label 56) (CAST * char  (CALL calloc ( 1 :(+ (MEMBER (DEREF (LVAR 8)) len 32)  1 ):) ))):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) str 24)):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56)):(FOR init: (= (LVAR 36)  0 )cond: (< (MEMBER (DEREF (LVAR 8)) len 32) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(IF (!= (DEREF (LVAR 24))  92 ) (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )) (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))):) (BLOCK(++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ):(++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ):(SWITCH cond: (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(= (DEREF (LVAR 32))  0 ):(= (MEMBER (DEREF (LVAR 16)) offset 48) (+ (CAST int  (- (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56)))  1 )):(RETURN (LVAR 16)):))
//    switch  offset:40  int 
//    i  offset:36  int 
//    dest  offset:32  * char 
//    src  offset:24  * char 
//    node  offset:16  * struct <Node> 
//    token  offset:8  * struct <Token> 

// FDECL new_node_ident func ( * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0)  0 ):(= (MEMBER (DEREF (LVAR 16)) token 72) (LVAR 8)):(RETURN (LVAR 16)):))
//    node  offset:16  * struct <Node> 
//    token  offset:8  * struct <Token> 

// FDECL new_node_lvar func ( * struct <LVar>  lvar , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  23 ):(= (MEMBER (DEREF (LVAR 24)) lvar 40) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 8)) type 16)):(RETURN (LVAR 24)):))
//    node  offset:24  * struct <Node> 
//    token  offset:16  * struct <Token> 
//    lvar  offset:8  * struct <LVar> 

// FDECL new_node_gvar func ( * struct <Global>  gvar , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  24 ):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 8)) type 16)):(RETURN (LVAR 24)):))
//    node  offset:24  * struct <Node> 
//    token  offset:16  * struct <Token> 
//    gvar  offset:8  * struct <Global> 

// FDECL new_node_binary func ( enum  kind , * struct <Node>  lhs , * struct <Node>  rhs , * struct <Token>  op_token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) (LVAR 20) (LVAR 28) 
//    (BLOCK(= (LVAR 36) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 36)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 36)) lhs 8) (CALL get_ptr_if_array ((LVAR 12):) )):(= (MEMBER (DEREF (LVAR 36)) rhs 16) (CALL get_ptr_if_array ((LVAR 20):) )):(= (MEMBER (DEREF (LVAR 36)) token 72) (LVAR 28)):(RETURN (LVAR 36)):))
//    node  offset:36  * struct <Node> 
//    op_token  offset:28  * struct <Token> 
//    rhs  offset:20  * struct <Node> 
//    lhs  offset:12  * struct <Node> 
//    kind  offset:4  enum 

// FDECL new_node_expr func ( enum  kind , * struct <Node>  lhs , * struct <Node>  rhs , * struct <Token>  op_token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) (LVAR 20) (LVAR 28) 
//    (BLOCK(= (LVAR 36) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 36)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 36)) lhs 8) (LVAR 12)):(= (MEMBER (DEREF (LVAR 36)) rhs 16) (LVAR 20)):(= (MEMBER (DEREF (LVAR 36)) token 72) (LVAR 28)):(RETURN (LVAR 36)):))
//    node  offset:36  * struct <Node> 
//    op_token  offset:28  * struct <Token> 
//    rhs  offset:20  * struct <Node> 
//    lhs  offset:12  * struct <Node> 
//    kind  offset:4  enum 

// FDECL new_node_member func ( * struct <Node>  lhs , * struct <Token>  ident ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  26 ):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(= (LVAR 32) (CALL type ((LVAR 8):) )):(IF (! (CALL is_struct ((LVAR 32):) )) (CALL error_at_node ((LVAR 8):(ADDR  "The expression must have a struct or union type." ):) ) NULL ):(= (LVAR 40) (CALL get_member_type ((LVAR 32):(LVAR 16):) )):(IF (! (LVAR 40)) (CALL error_at_token ((LVAR 16):(ADDR  "The member does not exists in the struct." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 24)) offset 48) (MEMBER (DEREF (LVAR 40)) offset 24)):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 40)) type 16)):(RETURN (LVAR 24)):))
//    mem  offset:40  * struct <MemberInfo> 
//    ty  offset:32  * struct <Type> 
//    node  offset:24  * struct <Node> 
//    ident  offset:16  * struct <Token> 
//    lhs  offset:8  * struct <Node> 

// FDECL new_node func ( enum  kind , * struct <Token>  op_token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) 
//    (BLOCK(= (LVAR 20) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 20)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 20)) token 72) (LVAR 12)):(RETURN (LVAR 20)):))
//    node  offset:20  * struct <Node> 
//    op_token  offset:12  * struct <Token> 
//    kind  offset:4  enum 

// FDECL new_node_call func ( * struct <Node>  callee , * struct <Vector>  vec , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  25 ):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) nodes 64) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24)):(= (MEMBER (DEREF (LVAR 32)) type 80) (MEMBER (DEREF (LVAR 8)) type 80)):(RETURN (LVAR 32)):))
//    node  offset:32  * struct <Node> 
//    token  offset:24  * struct <Token> 
//    vec  offset:16  * struct <Vector> 
//    callee  offset:8  * struct <Node> 

// FDECL new_node_if_then func ( * struct <Node>  cond_ , * struct <Node>  then_ , * struct <Node>  else_ ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  28 ):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) xhs 24) (LVAR 24)):(= (MEMBER (DEREF (LVAR 32)) token 72) (GVAR token)):(RETURN (LVAR 32)):))
//    node  offset:32  * struct <Node> 
//    else_  offset:24  * struct <Node> 
//    then_  offset:16  * struct <Node> 
//    cond_  offset:8  * struct <Node> 

// FDECL new_node_switch func ( * struct <Node>  expr , * struct <Node>  stmt , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  31 ):(= (MEMBER (DEREF (LVAR 32)) lvar 40) (CALL new_lvar ((LVAR 24):(CALL new_type_int () ):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) nodes 64) (CALL vec_new () )):(= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24)):(RETURN (LVAR 32)):))
//    node  offset:32  * struct <Node> 
//    token  offset:24  * struct <Token> 
//    stmt  offset:16  * struct <Node> 
//    expr  offset:8  * struct <Node> 

// FDECL new_node_case func ( * struct <Node>  const_expr , * struct <Node>  body , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  32 ):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24)):(RETURN (LVAR 32)):))
//    node  offset:32  * struct <Node> 
//    token  offset:24  * struct <Token> 
//    body  offset:16  * struct <Node> 
//    const_expr  offset:8  * struct <Node> 

// FDECL new_node_default func ( * struct <Node>  body , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  33 ):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(RETURN (LVAR 24)):))
//    node  offset:24  * struct <Node> 
//    token  offset:16  * struct <Token> 
//    body  offset:8  * struct <Node> 

// FDECL new_node_while func ( * struct <Node>  cond_ , * struct <Node>  do_ ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  29 ):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) token 72) (GVAR token)):(RETURN (LVAR 24)):))
//    node  offset:24  * struct <Node> 
//    do_  offset:16  * struct <Node> 
//    cond_  offset:8  * struct <Node> 

// FDECL new_node_for func ( * struct <Node>  init_ , * struct <Node>  cond_ , * struct <Node>  post_ , * struct <Node>  body_ , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) (LVAR 32) (LVAR 40) 
//    (BLOCK(= (LVAR 48) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 48)) kind 0)  30 ):(= (MEMBER (DEREF (LVAR 48)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 48)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 48)) xhs 24) (LVAR 24)):(= (LVAR 56) (CALL vec_new () )):(CALL vec_push ((LVAR 56):(LVAR 32):) ):(= (MEMBER (DEREF (LVAR 48)) nodes 64) (LVAR 56)):(= (MEMBER (DEREF (LVAR 48)) token 72) (LVAR 40)):(RETURN (LVAR 48)):))
//    vec  offset:56  * struct <Vector> 
//    node  offset:48  * struct <Node> 
//    token  offset:40  * struct <Token> 
//    body_  offset:32  * struct <Node> 
//    post_  offset:24  * struct <Node> 
//    cond_  offset:16  * struct <Node> 
//    init_  offset:8  * struct <Node> 

// FDECL new_node_block func ( * struct <Vector>  stmts ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0)  37 ):(= (MEMBER (DEREF (LVAR 16)) nodes 64) (LVAR 8)):(= (MEMBER (DEREF (LVAR 16)) token 72) (GVAR token)):(RETURN (LVAR 16)):))
//    node  offset:16  * struct <Node> 
//    stmts  offset:8  * struct <Vector> 

// FDECL add_stmt_to_block func ( * struct <Node>  block , * struct <Node>  node ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 ) (BLOCK(IF (LVAR 16) (CALL vec_push ((MEMBER (DEREF (LVAR 8)) nodes 64):(LVAR 16):) ) NULL ):(RETURN NULL ):) (CALL error_at_node ((LVAR 8):(ADDR  "Must be block." ):) )):))
//    node  offset:16  * struct <Node> 
//    block  offset:8  * struct <Node> 

// FDECL new_node_fdecl func ( * struct <Token>  name , * struct <Vector>  params , int  max_offset , * struct <Node>  body , * struct <Type>  type ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 20) (LVAR 28) (LVAR 36) 
//    (BLOCK(= (LVAR 44) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 44)) kind 0)  38 ):(= (MEMBER (DEREF (LVAR 44)) lhs 8) (LVAR 28)):(= (MEMBER (DEREF (LVAR 44)) nodes 64) (LVAR 16)):(= (MEMBER (DEREF (LVAR 44)) offset 48) (LVAR 20)):(= (MEMBER (DEREF (LVAR 44)) token 72) (LVAR 8)):(= (MEMBER (DEREF (LVAR 44)) type 80) (LVAR 36)):(RETURN (LVAR 44)):))
//    node  offset:44  * struct <Node> 
//    type  offset:36  * struct <Type> 
//    body  offset:28  * struct <Node> 
//    max_offset  offset:20  int 
//    params  offset:16  * struct <Vector> 
//    name  offset:8  * struct <Token> 

// FDECL peek func ( enum <TokenKind>  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(RETURN (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4))):))
//    kind  offset:4  enum <TokenKind> 

// FDECL peek_next func ( ) enum <TokenKind> 
//    
//    (BLOCK(RETURN (MEMBER (DEREF (MEMBER (DEREF (GVAR token)) next 8)) kind 0)):))

// FDECL at_eof func ( ) bool 
//    
//    (BLOCK(RETURN (== (MEMBER (DEREF (GVAR token)) kind 0)  60 )):))

// FDECL consume func ( ) * struct <Token> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 8)):))
//    ret  offset:8  * struct <Token> 

// FDECL consume_if func ( enum <TokenKind>  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(IF (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4)) (BLOCK(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN  1 ):) NULL ):(RETURN  0 ):))
//    kind  offset:4  enum <TokenKind> 

// FDECL consume_number func ( ) int 
//    
//    (BLOCK(IF (!= (MEMBER (DEREF (GVAR token)) kind 0)  1 ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token: Number is expected." ):) ):) NULL ):(= (LVAR 4) (MEMBER (DEREF (GVAR token)) int_val 16)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 4)):))
//    num  offset:4  int 

// FDECL consume_ident func ( ) * struct <Token> 
//    
//    (BLOCK(IF (!= (MEMBER (DEREF (GVAR token)) kind 0)  0 ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ):) NULL ):(= (LVAR 8) (GVAR token)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 8)):))
//    ident  offset:8  * struct <Token> 

// FDECL expect func ( enum <TokenKind>  kind ) * struct <Token> 
//    (LVAR 4) 
//    (BLOCK(IF (!= (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4)) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token." ):) ):) NULL ):(= (LVAR 12) (GVAR token)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 12)):))
//    ret  offset:12  * struct <Token> 
//    kind  offset:4  enum <TokenKind> 

// FDECL cmp_token func ( * struct <Token>  t1 , * struct <Token>  t2 ) bool 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (LVAR 16)) len 32)) (== (CALL memcmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (LVAR 16)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN  1 ):) NULL ):(RETURN  0 ):))
//    t2  offset:16  * struct <Token> 
//    t1  offset:8  * struct <Token> 

// FDECL is_type_specifier func ( * struct <Token>  token ) bool 
//    (LVAR 8) 
//    (BLOCK(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK(RETURN  1 ):)):)):(IF (CALL find_typedef ((LVAR 8):) ) (RETURN  1 ) NULL ):(RETURN  0 ):))
//    switch  offset:12  int 
//    token  offset:8  * struct <Token> 

// FDECL new_lvar func ( * struct <Token>  token , * struct <Type>  type ) * struct <LVar> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 48 :) )):(= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8)):(= (LVAR 32) (CALL sizeof_type ((LVAR 16):) )):(IF (== (LVAR 32)  0 ) (BLOCK(CALL print_structs () ):(CALL error_at_token ((LVAR 8):(ADDR  "Inncomplete type is not allowed." ):) ):) NULL ):(IF (GVAR locals) (BLOCK(= (LVAR 28) (+ (MEMBER (DEREF (GVAR locals)) offset 24) (LVAR 32))):) (BLOCK(= (LVAR 28) (LVAR 32)):)):(= (MEMBER (DEREF (LVAR 24)) offset 24) (LVAR 28)):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR locals)):(= (GVAR locals) (LVAR 24)):(= (MEMBER (DEREF (LVAR 24)) scope 32) (GVAR scope)):(= (GVAR scope) (LVAR 24)):(RETURN (LVAR 24)):))
//    size  offset:32  int 
//    offset  offset:28  int 
//    lvar  offset:24  * struct <LVar> 
//    type  offset:16  * struct <Type> 
//    token  offset:8  * struct <Token> 

// FDECL find_lvar func ( * struct <Token>  token ) * struct <LVar> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR scope))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
//    var  offset:16  * struct <LVar> 
//    token  offset:8  * struct <Token> 

// FDECL find_lvar_in_scope func ( * struct <Token>  token ) bool 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR scope))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32)) body (BLOCK(IF (MEMBER (DEREF (LVAR 16)) scope_head 40) (RETURN  0 ) NULL ):(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN  1 ):) NULL ):)):(RETURN  0 ):))
//    var  offset:16  * struct <LVar> 
//    token  offset:8  * struct <Token> 

// FDECL new_gvar func ( * struct <Token>  ident , * struct <Type>  type ) * struct <Global> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR globals)):(= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (GVAR globals) (LVAR 24)):(RETURN (LVAR 24)):))
//    global  offset:24  * struct <Global> 
//    type  offset:16  * struct <Type> 
//    ident  offset:8  * struct <Token> 

// FDECL find_gvar func ( * struct <Token>  token ) * struct <Global> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR globals))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
//    var  offset:16  * struct <Global> 
//    token  offset:8  * struct <Token> 

// FDECL new_func func ( * struct <Token>  ident , * struct <Type>  type , * struct <Node>  body ) * struct <Global> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 32)) next 0) (GVAR functions)):(= (MEMBER (DEREF (LVAR 32)) token 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) type 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) body 24) (LVAR 24)):(= (GVAR functions) (LVAR 32)):(RETURN (LVAR 32)):))
//    func  offset:32  * struct <Global> 
//    body  offset:24  * struct <Node> 
//    type  offset:16  * struct <Type> 
//    ident  offset:8  * struct <Token> 

// FDECL find_func func ( * struct <Token>  token ) * struct <Global> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR functions))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
//    func  offset:16  * struct <Global> 
//    token  offset:8  * struct <Token> 

// FDECL new_tag func ( * struct <Token>  ident , * struct <Type>  type ) * struct <TagName> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 24) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 16)) tag_name 48) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR tagnames)):(= (MEMBER (DEREF (LVAR 24)) ident 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (GVAR tagnames) (LVAR 24)):))
//    tag  offset:24  * struct <TagName> 
//    type  offset:16  * struct <Type> 
//    ident  offset:8  * struct <Token> 

// FDECL find_tag func ( * struct <Token>  token ) * struct <TagName> 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(FOR init: (= (LVAR 16) (GVAR tagnames))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
//    tag  offset:16  * struct <TagName> 
//    token  offset:8  * struct <Token> 

// FDECL new_typedef func ( * struct <Token>  ident , * struct <Type>  type ) * struct <Typedef> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 24) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR tdef_names)):(= (MEMBER (DEREF (LVAR 24)) ident 16) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) type 8) (LVAR 16)):(= (GVAR tdef_names) (LVAR 24)):))
//    tdef  offset:24  * struct <Typedef> 
//    type  offset:16  * struct <Type> 
//    ident  offset:8  * struct <Token> 

// FDECL find_typedef func ( * struct <Token>  ident ) * struct <Type> 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 16) (GVAR tdef_names)):(WHILE cond:(LVAR 16)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 16):(LVAR 8):) ) (BLOCK(RETURN (MEMBER (DEREF (LVAR 16)) type 8)):) NULL ):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):)):(RETURN (CAST * void   0 )):))
//    tdef  offset:16  * struct <Typedef> 
//    ident  offset:8  * struct <Token> 

// FDECL get_member_type func ( * struct <Type>  type , * struct <Token>  ident ) * struct <MemberInfo> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (CALL is_struct ((LVAR 8):) )) (CALL error_at_token ((LVAR 16):(ADDR  "Not a struct." ):) ) NULL ):(IF (! (MEMBER (DEREF (LVAR 8)) tag_name 48)) (BLOCK(IF (! (MEMBER (DEREF (LVAR 8)) member 32)) (CALL error_at_token ((LVAR 16):(ADDR  "No tag name and the type has no member." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) member 32)):) (BLOCK(= (LVAR 32) (CALL find_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):) )):(IF (! (LVAR 32)) (CALL error_at_token ((LVAR 16):(ADDR  "Undefined tag name." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 32)) type 16)) member 32)):)):(WHILE cond:(LVAR 24)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 24)) ident 8):(LVAR 16):) ) (RETURN (LVAR 24)) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(RETURN (CAST * void   0 )):))
//    tag  offset:32  * struct <TagName> 
//    member  offset:24  * struct <MemberInfo> 
//    ident  offset:16  * struct <Token> 
//    type  offset:8  * struct <Type> 

// FDECL new_member_info func ( * struct <Token>  ident , * struct <Type>  type ) * struct <MemberInfo> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 32 :) )):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) ident 8) (LVAR 8)):(RETURN (LVAR 24)):))
//    ty_ident  offset:24  * struct <MemberInfo> 
//    type  offset:16  * struct <Type> 
//    ident  offset:8  * struct <Token> 

// FDECL parse_prim_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(IF (CALL at_eof () ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected EOF." ):) ):) NULL ):(IF (CALL peek ( 1 :) ) (BLOCK(RETURN (CALL new_node_num ((CALL consume_number () ):(LVAR 8):) )):) NULL ):(IF (CALL peek ( 2 :) ) (BLOCK(RETURN (CALL new_node_str ((CALL consume () ):) )):) NULL ):(IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (LVAR 16)):) NULL ):(IF (CALL consume_if ( 0 :) ) (BLOCK(= (LVAR 24) (CALL find_lvar ((LVAR 8):) )):(IF (LVAR 24) (RETURN (CALL new_node_lvar ((LVAR 24):(LVAR 8):) )) NULL ):(= (LVAR 32) (CALL find_gvar ((LVAR 8):) )):(IF (LVAR 32) (RETURN (CALL new_node_gvar ((LVAR 32):(LVAR 8):) )) NULL ):(= (LVAR 40) (CALL find_tag ((LVAR 8):) )):(IF (&& (LVAR 40) (CALL is_enum_el ((MEMBER (DEREF (LVAR 40)) type 16):) )) (BLOCK(RETURN (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) )):) NULL ):(IF (CALL peek ( 29 :) ) (BLOCK(IF (CALL find_func ((LVAR 8):) ) (RETURN (CALL new_node_ident ((LVAR 8):) )) NULL ):) NULL ):(CALL error_at_token ((LVAR 8):(ADDR  "Identifier is not defined." ):) ):) NULL ):(IF (CALL consume_if ( 61 :) ) (BLOCK(IF (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(ADDR  "__LINE__" ): 8 :) )  0 ) (RETURN (CALL new_node_num ((CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) ):(LVAR 8):) )) NULL ):) NULL ):(IF (CALL is_type_specifier ((GVAR token):) ) (CALL error_at_token ((GVAR token):(ADDR  "Can not use declaration here." ):) ) NULL ):(CALL error_at_token ((GVAR token):(ADDR  "parse_prim_expr(): Unexpected token." ):) ):))
//    tag  offset:40  * struct <TagName> 
//    gvar  offset:32  * struct <Global> 
//    lvar  offset:24  * struct <LVar> 
//    node  offset:16  * struct <Node> 
//    cur_token  offset:8  * struct <Token> 

// FDECL parse_postfix_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_prim_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 29 :) ) (BLOCK(IF (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 ) (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) ) NULL ):(= (LVAR 24) (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) )):(IF (! (LVAR 24)) (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 8)) type 80) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8)):(= (LVAR 32) (CALL vec_new () )):(= (LVAR 40) (GVAR token)):(= (LVAR 48) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24)):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(IF (LVAR 48) (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) ) NULL ):(CALL expect ( 30 :) ):(= (LVAR 8) (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (IF (CALL consume_if ( 33 :) ) (BLOCK(= (LVAR 64) (CALL parse_expr () )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )):(= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )):(CALL expect ( 34 :) ):) (IF (CALL consume_if ( 18 :) ) (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8)))))))):)):))
//    rhs  offset:80  * struct <Node> 
//    rhs  offset:72  * struct <Node> 
//    index  offset:64  * struct <Node> 
//    arg  offset:56  * struct <Node> 
//    param  offset:48  * struct <MemberInfo> 
//    op_token  offset:40  * struct <Token> 
//    vec  offset:32  * struct <Vector> 
//    fn_global  offset:24  * struct <Global> 
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL get_ptr_if_array func ( * struct <Node>  node ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(IF (CALL is_array ((CALL type ((LVAR 8):) ):) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(LVAR 8):(CAST * void   0 ):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (BLOCK(RETURN (LVAR 8)):)):))
//    node  offset:8  * struct <Node> 

// FDECL parse_unary_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(IF (CALL consume_if ( 3 :) ) (BLOCK(RETURN (CALL parse_unary_expr () )):) (IF (CALL consume_if ( 4 :) ) (BLOCK(RETURN (CALL new_node_binary ( 5 :(CALL new_node_num ( 0 :(GVAR token):) ):(CALL parse_unary_expr () ):(LVAR 8):) )):) (IF (CALL consume_if ( 22 :) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_unary_expr () )):(RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 50 :) ) (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):) (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):))))))):))
//    node  offset:32  * struct <Node> 
//    ty  offset:24  * struct <Type> 
//    node  offset:16  * struct <Node> 
//    op_token  offset:8  * struct <Token> 

// FDECL parse_cast_expr func ( ) * struct <Node> 
//    
//    (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 8) (GVAR token)):(= (LVAR 16) (CALL parse_decl ( 0 :) )):(CALL expect ( 30 :) ):(= (LVAR 24) (CALL new_node ( 27 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 16)) type 16)):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (CALL parse_cast_expr () )):(RETURN (LVAR 24)):) NULL ):(RETURN (CALL parse_unary_expr () )):))
//    node  offset:24  * struct <Node> 
//    info  offset:16  * struct <MemberInfo> 
//    op_token  offset:8  * struct <Token> 

// FDECL parse_mul_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_cast_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 24) (GVAR token)):(IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) (IF (CALL consume_if ( 6 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
//    op_token  offset:24  * struct <Token> 
//    rhs  offset:16  * struct <Node> 
//    node  offset:8  * struct <Node> 

// FDECL parse_add_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_mul_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 3 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 4 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_shift_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_add_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 26 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 27 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_rel_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_shift_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 10 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 9 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 12 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL )))):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_eq_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_rel_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 7 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 8 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_and_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_eq_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 22 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_xor_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_and_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 24 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_or_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_xor_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 23 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_land_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_or_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 20 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_lor_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_land_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 21 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
//    op_token  offset:16  * struct <Token> 
//    node  offset:8  * struct <Node> 

// FDECL parse_assign_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_lor_expr () )):(= (LVAR 24) (GVAR token)):(IF (CALL consume_if ( 13 :) ) (BLOCK(= (LVAR 16) (CALL get_ptr_if_array ((CALL parse_assign_expr () ):) )):) (IF (CALL consume_if ( 14 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 15 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 16 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 17 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (RETURN (LVAR 8))))))):(RETURN (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 16):(LVAR 24):) )):))
//    op_token  offset:24  * struct <Token> 
//    rhs  offset:16  * struct <Node> 
//    node  offset:8  * struct <Node> 

// FDECL parse_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_assign_expr () )):(RETURN (LVAR 8)):))
//    node  offset:8  * struct <Node> 

// FDECL parse_for func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(= (LVAR 16) (CAST * void   0 )):(CALL expect ( 43 :) ):(CALL expect ( 29 :) ):(IF (GVAR scope) (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 ) NULL ):(= (LVAR 48) (GVAR scope)):(IF (! (CALL consume_if ( 28 :) )) (BLOCK(IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(= (LVAR 16) (CALL parse_block_item () )):) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 28 :) ):)):) NULL ):(IF (! (CALL peek ( 28 :) )) (BLOCK(= (LVAR 24) (CALL parse_expr () )):) (BLOCK(= (LVAR 24) (CALL new_node_num ( 1 :(GVAR token):) )):)):(CALL expect ( 28 :) ):(IF (CALL peek ((!  30 ):) ) (= (LVAR 32) (CALL parse_expr () )) (= (LVAR 32) (CAST * void   0 ))):(CALL expect ( 30 :) ):(= (LVAR 40) (CALL parse_stmt () )):(= (GVAR scope) (LVAR 48)):(RETURN (CALL new_node_for ((LVAR 16):(LVAR 24):(LVAR 32):(LVAR 40):(LVAR 8):) )):))
//    save_scope  offset:48  * struct <LVar> 
//    body  offset:40  * struct <Node> 
//    post  offset:32  * struct <Node> 
//    cond  offset:24  * struct <Node> 
//    init  offset:16  * struct <Node> 
//    op_token  offset:8  * struct <Token> 

// FDECL parse_stmt func ( ) * struct <Node> 
//    
//    (BLOCK(IF (CALL consume_if ( 28 :) ) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 24) (GVAR token)):(SWITCH cond: (MEMBER (DEREF (GVAR token)) kind 0) body: (BLOCK(CASE cond: 49  body:(BLOCK(CALL expect ( 49 :) ):(IF (CALL consume_if ( 28 :) ) (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )) (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):)):)):(CASE cond: 40  body:(BLOCK(CALL expect ( 40 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(IF (CALL consume_if ( 41 :) ) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) ))):)):(CASE cond: 44  body:(BLOCK(++ (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))  1 ):(CALL expect ( 44 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_eq_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(-- (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))  1 ):(RETURN (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 42  body:(BLOCK(CALL expect ( 42 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) )):)):(CASE cond: 43  body:(BLOCK(RETURN (CALL parse_for () )):)):(CASE cond: 31  body:(BLOCK(RETURN (CALL parse_block () )):)):(CASE cond: 47  body:(BLOCK(CALL expect ( 47 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 35 :(LVAR 24):) )):)):(CASE cond: 48  body:(BLOCK(CALL expect ( 48 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 36 :(LVAR 24):) )):)):(CASE cond: 45  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) ) NULL ):(CALL expect ( 45 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 36 :) ):(= (LVAR 16) (CALL new_node_block ((CALL vec_new () ):) )):(WHILE cond:(&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))body: (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) )):(RETURN (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 46  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) ) NULL ):(CALL expect ( 46 :) ):(CALL expect ( 36 :) ):(= (LVAR 8) (CALL parse_stmt () )):(RETURN (CALL new_node_default ((LVAR 8):(LVAR 24):) )):)):)):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (LVAR 8)):))
//    switch  offset:28  int 
//    op_token  offset:24  * struct <Token> 
//    then_  offset:16  * struct <Node> 
//    node  offset:8  * struct <Node> 

// FDECL parse_local_declaration func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_decl ( 0 :) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16)):(IF (! (LVAR 16)) (BLOCK(IF (! (CALL is_struct ((LVAR 24):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) ) (RETURN (CAST * void   0 ))):) NULL ):(= (LVAR 32) (CAST * void   0 )):(IF (CALL is_func ((LVAR 24):) ) (CALL error_at_token ((LVAR 16):(ADDR  "Functions can be declared only in the top level." ):) ) NULL ):(= (LVAR 40) (GVAR token)):(IF (CALL consume_if ( 13 :) ) (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(IF (&& (CALL is_array_of_char ((LVAR 24):) ) (== (MEMBER (DEREF (LVAR 32)) kind 0)  2 )) (BLOCK(= (MEMBER (DEREF (LVAR 24)) array_size 16) (MEMBER (DEREF (LVAR 32)) offset 48)):) (BLOCK(= (LVAR 32) (CALL get_ptr_if_array ((LVAR 32):) )):)):(= (LVAR 32) (CALL new_node_expr ( 20 :(CALL new_node_lvar ((CALL new_lvar ((LVAR 16):(LVAR 24):) ):(LVAR 40):) ):(LVAR 32):(LVAR 40):) )):) (BLOCK(CALL new_lvar ((LVAR 16):(LVAR 24):) ):)):(CALL expect ( 28 :) ):(RETURN (LVAR 32)):))
//    op_token  offset:40  * struct <Token> 
//    node  offset:32  * struct <Node> 
//    type  offset:24  * struct <Type> 
//    ident  offset:16  * struct <Token> 
//    ty_ident  offset:8  * struct <MemberInfo> 

// FDECL parse_block_item func ( ) * struct <Node> 
//    
//    (BLOCK(IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 8) (CALL parse_decl ( 1 :) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16)):(IF (! (LVAR 16)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((LVAR 16):(LVAR 24):) ):(CALL expect ( 28 :) ):(RETURN (CAST * void   0 )):) NULL ):(IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(RETURN (CALL parse_local_declaration () )):) NULL ):(RETURN (CALL parse_stmt () )):))
//    type  offset:24  * struct <Type> 
//    ident  offset:16  * struct <Token> 
//    ty_ident  offset:8  * struct <MemberInfo> 

// FDECL parse_block func ( ) * struct <Node> 
//    
//    (BLOCK(CALL expect ( 31 :) ):(= (LVAR 8) (CALL vec_new () )):(IF (GVAR scope) (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 ) NULL ):(= (LVAR 16) (GVAR scope)):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 24) (CALL parse_block_item () )):(IF (LVAR 24) (CALL vec_push ((LVAR 8):(LVAR 24):) ) NULL ):)):(CALL expect ( 32 :) ):(= (GVAR scope) (LVAR 16)):(RETURN (CALL new_node_block ((LVAR 8):) )):))
//    node  offset:24  * struct <Node> 
//    save_scope  offset:16  * struct <LVar> 
//    vec  offset:8  * struct <Vector> 

// FDECL parse_declaretor func ( * struct <Type>  type ) * struct <MemberInfo> 
//    (LVAR 8) 
//    (BLOCK(WHILE cond:(CALL consume_if ( 5 :) )body: (BLOCK(= (LVAR 8) (CALL new_type_ptr_to ((LVAR 8):) )):)):(= (LVAR 72) (CAST * void   0 )):(= (LVAR 80) (CAST * void   0 )):(IF (CALL peek ( 0 :) ) (BLOCK(= (LVAR 80) (CALL expect ( 0 :) )):(IF (CALL find_lvar_in_scope ((LVAR 80):) ) (CALL error_at_token ((LVAR 80):(ADDR  "Duplicate definition of local variable." ):) ) NULL ):) (IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 72) (CALL parse_declaretor ((ADDR (LVAR 64)):) )):(CALL expect ( 30 :) ):) NULL )):(= (MEMBER (LVAR 136) ptr_to 8) (LVAR 8)):(= (LVAR 144) (ADDR (LVAR 136))):(WHILE cond:(CALL consume_if ( 33 :) )body: (BLOCK(= (LVAR 148)  0 ):(IF (! (CALL peek ( 34 :) )) (= (LVAR 148) (MEMBER (DEREF (CALL expect ( 1 :) )) int_val 16)) NULL ):(= (MEMBER (DEREF (LVAR 144)) ptr_to 8) (CALL new_type_array ((LVAR 8):(LVAR 148):) )):(= (LVAR 144) (MEMBER (DEREF (LVAR 144)) ptr_to 8)):(CALL expect ( 34 :) ):)):(= (LVAR 8) (MEMBER (LVAR 136) ptr_to 8)):(IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 8) (CALL new_type_func ((LVAR 8):) )):(= (MEMBER (LVAR 180) next 0) (CAST * void   0 )):(= (LVAR 188) (ADDR (LVAR 180))):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(IF (CALL peek ( 39 :) ) (BLOCK(CALL consume () ):BREAK :) NULL ):(= (LVAR 196) (CALL parse_decl ( 0 :) )):(IF (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) ) (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )) NULL ):(= (MEMBER (DEREF (LVAR 188)) next 0) (LVAR 196)):(= (LVAR 188) (LVAR 196)):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(= (MEMBER (DEREF (LVAR 8)) params 24) (MEMBER (LVAR 180) next 0)):(CALL expect ( 30 :) ):) NULL ):(IF (LVAR 72) (BLOCK(= (LVAR 204) (MEMBER (DEREF (LVAR 72)) type 16)):(WHILE cond:(!= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (ADDR (LVAR 64)))body: (= (LVAR 204) (MEMBER (DEREF (LVAR 204)) ptr_to 8))):(= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (LVAR 8)):(= (LVAR 8) (MEMBER (DEREF (LVAR 72)) type 16)):(= (LVAR 80) (MEMBER (DEREF (LVAR 72)) ident 8)):) NULL ):(RETURN (CALL new_member_info ((LVAR 80):(LVAR 8):) )):))
//    cursor  offset:204  * struct <Type> 
//    pinfo  offset:196  * struct <MemberInfo> 
//    cursor  offset:188  * struct <MemberInfo> 
//    head  offset:180  struct <MemberInfo> 
//    size  offset:148  int 
//    cursor  offset:144  * struct <Type> 
//    head  offset:136  struct <Type> 
//    ident  offset:80  * struct <Token> 
//    outer  offset:72  * struct <MemberInfo> 
//    anchor  offset:64  struct <Type> 
//    type  offset:8  * struct <Type> 

// FDECL parse_enum_specifier func ( ) * struct <Type> 
//    
//    (BLOCK(= (LVAR 8) (CALL new_type_enum () )):(IF (CALL peek ( 0 :) ) (= (MEMBER (DEREF (LVAR 8)) tag_name 48) (CALL consume_ident () )) NULL ):(= (MEMBER (LVAR 40) next 0) (CAST * void   0 )):(= (LVAR 48) (ADDR (LVAR 40))):(IF (CALL consume_if ( 31 :) ) (BLOCK(= (LVAR 52)  0 ):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 60) (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) )):(= (MEMBER (DEREF (LVAR 60)) tag_name 48) (CALL consume_ident () )):(= (MEMBER (DEREF (LVAR 48)) next 0) (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )):(= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):) NULL ):(= (MEMBER (DEREF (LVAR 8)) member 32) (MEMBER (LVAR 40) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):(LVAR 8):) ):(RETURN (LVAR 8)):))
//    new  offset:60  * struct <Type> 
//    i  offset:52  int 
//    cursor  offset:48  * struct <MemberInfo> 
//    head  offset:40  struct <MemberInfo> 
//    type  offset:8  * struct <Type> 

// FDECL parse_struct_specifier func ( bool  allow_undefined_tag ) * struct <Type> 
//    (LVAR 1) 
//    (BLOCK(= (LVAR 9) (CALL new_type_struct () )):(= (LVAR 17) (CAST * void   0 )):(= (LVAR 25) (CAST * void   0 )):(IF (CALL peek ( 0 :) ) (= (LVAR 25) (CALL consume () )) NULL ):(IF (CALL consume_if ( 31 :) ) (BLOCK(IF (CALL find_tag ((LVAR 25):) ) (CALL error_at_token ((LVAR 25):(ADDR  "Duplicate definition of a tag name." ):) ) NULL ):(= (LVAR 17) (CALL new_tag ((LVAR 25):(LVAR 9):) )):(= (MEMBER (LVAR 57) next 0) (CAST * void   0 )):(= (LVAR 65) (ADDR (LVAR 57))):(= (LVAR 69)  0 ):(WHILE cond:(! (CALL consume_if ( 32 :) ))body: (BLOCK(= (LVAR 77) (CALL parse_decl ( 0 :) )):(= (LVAR 85) (MEMBER (DEREF (LVAR 77)) ident 8)):(= (LVAR 93) (MEMBER (DEREF (LVAR 77)) type 16)):(IF (! (LVAR 85)) (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) ) NULL ):(= (LVAR 101) (MEMBER (LVAR 57) next 0)):(WHILE cond:(LVAR 101)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):)):(= (LVAR 105) (CALL alignof_type ((LVAR 93):) )):(= (LVAR 69) (CALL align_to ((LVAR 69):(LVAR 105):) )):(= (MEMBER (DEREF (LVAR 77)) offset 24) (LVAR 69)):(= (LVAR 69) (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) ))):(= (MEMBER (DEREF (LVAR 65)) next 0) (LVAR 77)):(= (LVAR 65) (LVAR 77)):(CALL expect ( 28 :) ):)):(= (MEMBER (DEREF (LVAR 9)) member 32) (MEMBER (LVAR 57) next 0)):(IF (LVAR 17) (= (MEMBER (DEREF (LVAR 17)) type 16) (LVAR 9)) NULL ):(RETURN (LVAR 9)):) (BLOCK(IF (! (LVAR 25)) (CALL error_at_token ((GVAR token):(ADDR  "Expected either of a tag name  or a definition." ):) ) NULL ):(= (LVAR 17) (CALL find_tag ((LVAR 25):) )):(IF (! (LVAR 17)) (BLOCK(IF (LVAR 1) (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):) (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) )):) (BLOCK(= (LVAR 9) (MEMBER (DEREF (LVAR 17)) type 16)):)):(RETURN (LVAR 9)):)):))
//    align  offset:105  int 
//    ty  offset:101  * struct <MemberInfo> 
//    type  offset:93  * struct <Type> 
//    ident  offset:85  * struct <Token> 
//    ty_ident  offset:77  * struct <MemberInfo> 
//    offset  offset:69  int 
//    cursor  offset:65  * struct <MemberInfo> 
//    head  offset:57  struct <MemberInfo> 
//    tag_name  offset:25  * struct <Token> 
//    tag  offset:17  * struct <TagName> 
//    struct_ty  offset:9  * struct <Type> 
//    allow_undefined_tag  offset:1  bool 

// FDECL parse_type_specifier func ( bool  allow_undefined_tag ) * struct <Type> 
//    (LVAR 1) 
//    (BLOCK(= (LVAR 9) (CALL consume () )):(SWITCH cond: (MEMBER (DEREF (LVAR 9)) kind 0) body: (BLOCK(CASE cond: 51  body:(BLOCK(RETURN (CALL new_type_int () )):)):(CASE cond: 52  body:(BLOCK(RETURN (CALL new_type_char () )):)):(CASE cond: 53  body:(BLOCK(RETURN (CALL new_type_bool () )):)):(CASE cond: 54  body:(BLOCK(RETURN (CALL new_type_void () )):)):(CASE cond: 55  body:(BLOCK(RETURN (CALL parse_struct_specifier ((LVAR 1):) )):)):(CASE cond: 56  body:(BLOCK(RETURN (CALL parse_enum_specifier () )):)):(CASE cond: 0  body:(BLOCK(= (LVAR 17) (CALL find_typedef ((LVAR 9):) )):(IF (LVAR 17) (RETURN (LVAR 17)) NULL ):)):)):(CALL error_at_token ((LVAR 9):(ADDR  "Expected type specifier or typedef name." ):) ):))
//    switch  offset:21  int 
//    ty  offset:17  * struct <Type> 
//    token  offset:9  * struct <Token> 
//    allow_undefined_tag  offset:1  bool 

// FDECL parse_decl func ( bool  allow_undefined_tag ) * struct <MemberInfo> 
//    (LVAR 1) 
//    (BLOCK(IF (! (CALL is_type_specifier ((GVAR token):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected type specifier or typedef name." ):) ) NULL ):(= (LVAR 9) (CALL parse_type_specifier ((LVAR 1):) )):(RETURN (CALL parse_declaretor ((LVAR 9):) )):))
//    type  offset:9  * struct <Type> 
//    allow_undefined_tag  offset:1  bool 

// FDECL parse_func_definition func ( * struct <MemberInfo>  ty_ident ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) type 16)):(= (LVAR 40) (CALL new_func ((LVAR 24):(LVAR 32):(CAST * void   0 ):) )):(= (LVAR 48) (CALL vec_new () )):(= (LVAR 56) (MEMBER (DEREF (LVAR 32)) params 24)):(WHILE cond:(LVAR 56)body: (BLOCK(CALL vec_push ((LVAR 48):(CALL new_node_lvar ((CALL new_lvar ((MEMBER (DEREF (LVAR 56)) ident 8):(MEMBER (DEREF (LVAR 56)) type 16):) ):(MEMBER (DEREF (LVAR 56)) ident 8):) ):) ):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 0)):)):(= (LVAR 64) (CALL parse_block () )):(= (LVAR 68)  0 ):(IF (GVAR locals) (= (LVAR 68) (MEMBER (DEREF (GVAR locals)) offset 24)) NULL ):(= (LVAR 16) (CALL new_node_fdecl ((LVAR 24):(LVAR 48):(LVAR 68):(LVAR 64):(LVAR 32):) )):(= (MEMBER (DEREF (LVAR 40)) body 24) (LVAR 16)):(RETURN (LVAR 16)):))
//    max_offset  offset:68  int 
//    body  offset:64  * struct <Node> 
//    cursor  offset:56  * struct <MemberInfo> 
//    params  offset:48  * struct <Vector> 
//    func  offset:40  * struct <Global> 
//    type  offset:32  * struct <Type> 
//    ident  offset:24  * struct <Token> 
//    decl  offset:16  * struct <Node> 
//    ty_ident  offset:8  * struct <MemberInfo> 

// FDECL parse_initializer_list func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(IF (CALL consume_if ( 31 :) ) (BLOCK(= (LVAR 16) (CALL vec_new () )):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(CALL vec_push ((LVAR 16):(CALL parse_initializer_list () ):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):(= (LVAR 24) (CALL new_node ( 3 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) nodes 64) (LVAR 16)):(RETURN (LVAR 24)):) (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(RETURN (LVAR 32)):)):))
//    node  offset:32  * struct <Node> 
//    node  offset:24  * struct <Node> 
//    vec  offset:16  * struct <Vector> 
//    op_token  offset:8  * struct <Token> 

// FDECL parse_program func ( ) void 
//    
//    (BLOCK(= (GVAR ext_declarations) (CALL vec_new () )):(WHILE cond:(! (CALL at_eof () ))body: (BLOCK(= (GVAR locals) (CAST * void   0 )):(= (GVAR scope) (CAST * void   0 )):(= (GVAR switch_level)  0 ):(IF (CALL consume_if ( 61 :) ) CONTINUE  NULL ):(IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 16) (CALL parse_decl ( 1 :) )):(IF (! (MEMBER (DEREF (LVAR 16)) ident 8)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((MEMBER (DEREF (LVAR 16)) ident 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(CALL expect ( 28 :) ):CONTINUE :) NULL ):(= (LVAR 17)  0 ):(IF (CALL consume_if ( 58 :) ) (BLOCK(= (LVAR 17)  1 ):) NULL ):(= (LVAR 25) (CALL parse_decl ( 0 :) )):(= (LVAR 33) (MEMBER (DEREF (LVAR 25)) ident 8)):(= (LVAR 41) (MEMBER (DEREF (LVAR 25)) type 16)):(IF (! (LVAR 33)) (BLOCK(IF (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) )) (BLOCK(CALL expect ( 28 :) ):CONTINUE :) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )):) NULL ):(IF (! (CALL is_func ((LVAR 41):) )) (BLOCK(= (LVAR 49) (GVAR token)):(= (LVAR 57) (CALL find_gvar ((LVAR 33):) )):(IF (LVAR 57) (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):) (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) ))):(= (MEMBER (DEREF (LVAR 57)) is_extern 32) (LVAR 17)):(IF (CALL consume_if ( 13 :) ) (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):) NULL ):(IF (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) ) (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):) NULL ):(CALL expect ( 28 :) ):CONTINUE :) (IF (CALL consume_if ( 28 :) ) (BLOCK(= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )):CONTINUE :) (IF (CALL peek ( 31 :) ) (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):) (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) )))):)):))
//    func  offset:65  * struct <Global> 
//    gvar  offset:57  * struct <Global> 
//    op_token  offset:49  * struct <Token> 
//    type  offset:41  * struct <Type> 
//    ident  offset:33  * struct <Token> 
//    ty_ident  offset:25  * struct <MemberInfo> 
//    is_extern  offset:17  bool 
//    ty_ident  offset:16  * struct <MemberInfo> 
//    decl  offset:8  * struct <Node> 

// Globals
// switch_level int NULL 
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
// parse_program func ( ) void 
// parse_initializer_list func ( ) * struct <Node> 
// parse_func_definition func ( * struct <MemberInfo>  ty_ident ) * struct <Node> 
// parse_decl func ( bool  allow_undefined_tag ) * struct <MemberInfo> 
// parse_type_specifier func ( bool  allow_undefined_tag ) * struct <Type> 
// parse_struct_specifier func ( bool  allow_undefined_tag ) * struct <Type> 
// parse_enum_specifier func ( ) * struct <Type> 
// parse_declaretor func ( * struct <Type>  type ) * struct <MemberInfo> 
// parse_block func ( ) * struct <Node> 
// parse_block_item func ( ) * struct <Node> 
// parse_local_declaration func ( ) * struct <Node> 
// parse_stmt func ( ) * struct <Node> 
// parse_for func ( ) * struct <Node> 
// parse_expr func ( ) * struct <Node> 
// parse_assign_expr func ( ) * struct <Node> 
// parse_lor_expr func ( ) * struct <Node> 
// parse_land_expr func ( ) * struct <Node> 
// parse_or_expr func ( ) * struct <Node> 
// parse_xor_expr func ( ) * struct <Node> 
// parse_and_expr func ( ) * struct <Node> 
// parse_eq_expr func ( ) * struct <Node> 
// parse_rel_expr func ( ) * struct <Node> 
// parse_shift_expr func ( ) * struct <Node> 
// parse_add_expr func ( ) * struct <Node> 
// parse_mul_expr func ( ) * struct <Node> 
// parse_cast_expr func ( ) * struct <Node> 
// parse_unary_expr func ( ) * struct <Node> 
// get_ptr_if_array func ( * struct <Node>  node ) * struct <Node> 
// parse_postfix_expr func ( ) * struct <Node> 
// parse_prim_expr func ( ) * struct <Node> 
// parse_decl func ( bool - ) * struct <MemberInfo> 
// parse_block_item func ( ) * struct <Node> 
// parse_stmt func ( ) * struct <Node> 
// parse_block func ( ) * struct <Node> 
// parse_assign_expr func ( ) * struct <Node> 
// parse_expr func ( ) * struct <Node> 
// new_member_info func ( * struct <Token>  ident , * struct <Type>  type ) * struct <MemberInfo> 
// get_member_type func ( * struct <Type>  type , * struct <Token>  ident ) * struct <MemberInfo> 
// find_typedef func ( * struct <Token>  ident ) * struct <Type> 
// new_typedef func ( * struct <Token>  ident , * struct <Type>  type ) * struct <Typedef> 
// find_tag func ( * struct <Token>  token ) * struct <TagName> 
// new_tag func ( * struct <Token>  ident , * struct <Type>  type ) * struct <TagName> 
// find_func func ( * struct <Token>  token ) * struct <Global> 
// new_func func ( * struct <Token>  ident , * struct <Type>  type , * struct <Node>  body ) * struct <Global> 
// find_gvar func ( * struct <Token>  token ) * struct <Global> 
// new_gvar func ( * struct <Token>  ident , * struct <Type>  type ) * struct <Global> 
// find_lvar_in_scope func ( * struct <Token>  token ) bool 
// find_lvar func ( * struct <Token>  token ) * struct <LVar> 
// new_lvar func ( * struct <Token>  token , * struct <Type>  type ) * struct <LVar> 
// is_type_specifier func ( * struct <Token>  token ) bool 
// cmp_token func ( * struct <Token>  t1 , * struct <Token>  t2 ) bool 
// expect func ( enum <TokenKind>  kind ) * struct <Token> 
// consume_ident func ( ) * struct <Token> 
// consume_number func ( ) int 
// consume_if func ( enum <TokenKind>  kind ) bool 
// consume func ( ) * struct <Token> 
// at_eof func ( ) bool 
// peek_next func ( ) enum <TokenKind> 
// peek func ( enum <TokenKind>  kind ) bool 
// new_node_fdecl func ( * struct <Token>  name , * struct <Vector>  params , int  max_offset , * struct <Node>  body , * struct <Type>  type ) * struct <Node> 
// add_stmt_to_block func ( * struct <Node>  block , * struct <Node>  node ) void 
// new_node_block func ( * struct <Vector>  stmts ) * struct <Node> 
// new_node_for func ( * struct <Node>  init_ , * struct <Node>  cond_ , * struct <Node>  post_ , * struct <Node>  body_ , * struct <Token>  token ) * struct <Node> 
// new_node_while func ( * struct <Node>  cond_ , * struct <Node>  do_ ) * struct <Node> 
// new_node_default func ( * struct <Node>  body , * struct <Token>  token ) * struct <Node> 
// new_node_case func ( * struct <Node>  const_expr , * struct <Node>  body , * struct <Token>  token ) * struct <Node> 
// new_node_switch func ( * struct <Node>  expr , * struct <Node>  stmt , * struct <Token>  token ) * struct <Node> 
// new_lvar func ( * struct <Token>  token , * struct <Type>  type ) * struct <LVar> 
// new_node_if_then func ( * struct <Node>  cond_ , * struct <Node>  then_ , * struct <Node>  else_ ) * struct <Node> 
// new_node_call func ( * struct <Node>  callee , * struct <Vector>  vec , * struct <Token>  token ) * struct <Node> 
// new_node func ( enum  kind , * struct <Token>  op_token ) * struct <Node> 
// new_node_member func ( * struct <Node>  lhs , * struct <Token>  ident ) * struct <Node> 
// get_member_type func ( * struct <Type>  type , * struct <Token>  ident ) * struct <MemberInfo> 
// new_node_expr func ( enum  kind , * struct <Node>  lhs , * struct <Node>  rhs , * struct <Token>  op_token ) * struct <Node> 
// new_node_binary func ( enum  kind , * struct <Node>  lhs , * struct <Node>  rhs , * struct <Token>  op_token ) * struct <Node> 
// new_node_gvar func ( * struct <Global>  gvar , * struct <Token>  token ) * struct <Node> 
// new_node_lvar func ( * struct <LVar>  lvar , * struct <Token>  token ) * struct <Node> 
// new_node_ident func ( * struct <Token>  token ) * struct <Node> 
// new_node_str func ( * struct <Token>  token ) * struct <Node> 
// new_node_num func ( int  val , * struct <Token>  token ) * struct <Node> 
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
// "Unsupported escape sequence."
// "The expression must have a struct or union type."
// "The member does not exists in the struct."
// "Must be block."
// "Unexpected token: Number is expected."
// "Expected identifier."
// "Unexpected token."
// "Inncomplete type is not allowed."
// "Not a struct."
// "No tag name and the type has no member."
// "Undefined tag name."
// "Unexpected EOF."
// "Identifier is not defined."
// "__LINE__"
// "Can not use declaration here."
// "parse_prim_expr(): Unexpected token."
// "Currently, callee must be an identifier."
// "Undefined identifier."
// "The type of an argument is mismatch %s"
// "with func parameter."
// "Too few arguments is func call."
// "Must be a pointer."
// "a case label may only be used within a switch."
// "a default label may only be used within a switch."
// "Expected an identifier."
// "Functions can be declared only in the top level."
// "Expected identifier."
// "Duplicate definition of local variable."
// "Duplicate definition of a tag name."
// "Missing Identifier."
// "Duplicate member."
// "Expected either of a tag name  or a definition."
// "Tag name is not defined."
// "Expected type specifier or typedef name."
// "Expected type specifier or typedef name."
// "Expected identifier."
// "Expected an identifier."
// "Reinitialization of global variable."
// "Conflicting types."
// "Can not initialize variables with 'extern'."
// "Incomplete type is not allowed."
// "Unsupported initializer."
// "// "
// "\n"
// "U6nexpected token."

// Tagnames
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
	.global switch_level
switch_level:
	.long 0
.LS000000:
	.string "Unsupported escape sequence."
.LS000001:
	.string "The expression must have a struct or union type."
.LS000002:
	.string "The member does not exists in the struct."
.LS000003:
	.string "Must be block."
.LS000004:
	.string "Unexpected token: Number is expected."
.LS000005:
	.string "Expected identifier."
.LS000006:
	.string "Unexpected token."
.LS000007:
	.string "Inncomplete type is not allowed."
.LS000008:
	.string "Not a struct."
.LS000009:
	.string "No tag name and the type has no member."
.LS000010:
	.string "Undefined tag name."
.LS000011:
	.string "Unexpected EOF."
.LS000012:
	.string "Identifier is not defined."
.LS000013:
	.string "__LINE__"
.LS000014:
	.string "Can not use declaration here."
.LS000015:
	.string "parse_prim_expr(): Unexpected token."
.LS000016:
	.string "Currently, callee must be an identifier."
.LS000017:
	.string "Undefined identifier."
.LS000018:
	.string "The type of an argument is mismatch %s"
.LS000019:
	.string "with func parameter."
.LS000020:
	.string "Too few arguments is func call."
.LS000021:
	.string "Must be a pointer."
.LS000022:
	.string "a case label may only be used within a switch."
.LS000023:
	.string "a default label may only be used within a switch."
.LS000024:
	.string "Expected an identifier."
.LS000025:
	.string "Functions can be declared only in the top level."
.LS000026:
	.string "Expected identifier."
.LS000027:
	.string "Duplicate definition of local variable."
.LS000028:
	.string "Duplicate definition of a tag name."
.LS000029:
	.string "Missing Identifier."
.LS000030:
	.string "Duplicate member."
.LS000031:
	.string "Expected either of a tag name  or a definition."
.LS000032:
	.string "Tag name is not defined."
.LS000033:
	.string "Expected type specifier or typedef name."
.LS000034:
	.string "Expected type specifier or typedef name."
.LS000035:
	.string "Expected identifier."
.LS000036:
	.string "Expected an identifier."
.LS000037:
	.string "Reinitialization of global variable."
.LS000038:
	.string "Conflicting types."
.LS000039:
	.string "Can not initialize variables with 'extern'."
.LS000040:
	.string "Incomplete type is not allowed."
.LS000041:
	.string "Unsupported initializer."
.LS000042:
	.string "// "
.LS000043:
	.string "\n"
.LS000044:
	.string "U6nexpected token."

	.text
	.global new_node_num
// Line 15 FDECL new_node_num func ( int  val , * struct <Token>  token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) 
//    (BLOCK(= (LVAR 20) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 20)) kind 0)  1 ):(= (MEMBER (DEREF (LVAR 20)) int_val 32) (LVAR 4)):(= (MEMBER (DEREF (LVAR 20)) token 72) (LVAR 12)):(= (MEMBER (DEREF (LVAR 20)) type 80) (CALL new_type_int () )):(RETURN (LVAR 20)):))
new_node_num:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 4], edi
	mov  [rbp - 12], rsi
// Line 16 (= (LVAR 20) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 16 (CALL calloc ( 1 : 88 :) )
// Line 16  88 
	push 88
// Line 16  1 
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
// Line 17 (= (MEMBER (DEREF (LVAR 20)) kind 0)  1 )
// Line 17 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 17  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 18 (= (MEMBER (DEREF (LVAR 20)) int_val 32) (LVAR 4))
// Line 18 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 18 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 19 (= (MEMBER (DEREF (LVAR 20)) token 72) (LVAR 12))
// Line 19 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 19 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 20 (= (MEMBER (DEREF (LVAR 20)) type 80) (CALL new_type_int () ))
// Line 20 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 20 (CALL new_type_int () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000002
	mov  rax, 0
	call new_type_int
	jmp  .L000003
.L000002:
	sub  rsp, 8
	mov  rax, 0
	call new_type_int
	add  rsp, 8
.L000003:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 21 (RETURN (LVAR 20))
// Line 21 (LVAR 20)
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
	.global new_node_str
// Line 31 FDECL new_node_str func ( * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0)  2 ):(= (MEMBER (DEREF (LVAR 16)) token 72) (LVAR 8)):(= (MEMBER (DEREF (LVAR 16)) type 80) (CALL new_type_array ((CALL new_type_char () ):(MEMBER (DEREF (LVAR 8)) len 32):) )):(= (MEMBER (DEREF (LVAR 16)) int_val 32) (CALL vec_len ((GVAR strings):) )):(CALL vec_push ((GVAR strings):(LVAR 16):) ):(= (MEMBER (DEREF (LVAR 16)) label 56) (CAST * char  (CALL calloc ( 1 :(+ (MEMBER (DEREF (LVAR 8)) len 32)  1 ):) ))):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) str 24)):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56)):(FOR init: (= (LVAR 36)  0 )cond: (< (MEMBER (DEREF (LVAR 8)) len 32) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(IF (!= (DEREF (LVAR 24))  92 ) (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )) (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))):) (BLOCK(++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ):(++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ):(SWITCH cond: (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):)):)):)):(= (DEREF (LVAR 32))  0 ):(= (MEMBER (DEREF (LVAR 16)) offset 48) (+ (CAST int  (- (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56)))  1 )):(RETURN (LVAR 16)):))
new_node_str:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
// Line 32 (= (LVAR 16) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 32 (CALL calloc ( 1 : 88 :) )
// Line 32  88 
	push 88
// Line 32  1 
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
// Line 33 (= (MEMBER (DEREF (LVAR 16)) kind 0)  2 )
// Line 33 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 33  2 
	push 2
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 34 (= (MEMBER (DEREF (LVAR 16)) token 72) (LVAR 8))
// Line 34 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 34 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 35 (= (MEMBER (DEREF (LVAR 16)) type 80) (CALL new_type_array ((CALL new_type_char () ):(MEMBER (DEREF (LVAR 8)) len 32):) ))
// Line 35 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 35 (CALL new_type_array ((CALL new_type_char () ):(MEMBER (DEREF (LVAR 8)) len 32):) )
// Line 35 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 35 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 35 (CALL new_type_char () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000006
	mov  rax, 0
	call new_type_char
	jmp  .L000007
.L000006:
	sub  rsp, 8
	mov  rax, 0
	call new_type_char
	add  rsp, 8
.L000007:
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000008
	mov  rax, 0
	call new_type_array
	jmp  .L000009
.L000008:
	sub  rsp, 8
	mov  rax, 0
	call new_type_array
	add  rsp, 8
.L000009:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 36 (= (MEMBER (DEREF (LVAR 16)) int_val 32) (CALL vec_len ((GVAR strings):) ))
// Line 36 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 36 (CALL vec_len ((GVAR strings):) )
// Line 36 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000010
	mov  rax, 0
	call vec_len
	jmp  .L000011
.L000010:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000011:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 37 (CALL vec_push ((GVAR strings):(LVAR 16):) )
// Line 37 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 37 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000012
	mov  rax, 0
	call vec_push
	jmp  .L000013
.L000012:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L000013:
	push rax
	pop  rax
// Line 39 (= (MEMBER (DEREF (LVAR 16)) label 56) (CAST * char  (CALL calloc ( 1 :(+ (MEMBER (DEREF (LVAR 8)) len 32)  1 ):) )))
// Line 39 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 56
	push rax
// Line 39 (CAST * char  (CALL calloc ( 1 :(+ (MEMBER (DEREF (LVAR 8)) len 32)  1 ):) ))
// Line 39 (CALL calloc ( 1 :(+ (MEMBER (DEREF (LVAR 8)) len 32)  1 ):) )
// Line 39 (+ (MEMBER (DEREF (LVAR 8)) len 32)  1 )
// Line 39 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 39 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 39  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 39  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000014
	mov  rax, 0
	call calloc
	jmp  .L000015
.L000014:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000015:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 40 (= (LVAR 24) (MEMBER (DEREF (LVAR 8)) str 24))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 40 (MEMBER (DEREF (LVAR 8)) str 24)
// Line 40 (LVAR 8)
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
// Line 41 (= (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 41 (MEMBER (DEREF (LVAR 16)) label 56)
// Line 41 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 42 (FOR init: (= (LVAR 36)  0 )cond: (< (MEMBER (DEREF (LVAR 8)) len 32) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(IF (!= (DEREF (LVAR 24))  92 ) (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )) (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))):) (BLOCK(++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ):(++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ):(SWITCH cond: (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):)):)):))
// Line 42 (= (LVAR 36)  0 )
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 42  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000018:
// Line 42 (< (MEMBER (DEREF (LVAR 8)) len 32) (LVAR 36))
// Line 42 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 42 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 42 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
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
// Line 84 (BLOCK(IF (!= (DEREF (LVAR 24))  92 ) (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )) (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))):) (BLOCK(++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ):(++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ):(SWITCH cond: (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):)):)):)
// Line 83 (IF (!= (DEREF (LVAR 24))  92 ) (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )) (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))):) (BLOCK(++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ):(++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ):(SWITCH cond: (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):)):))
// Line 43 (!= (DEREF (LVAR 24))  92 )
// Line 43 (DEREF (LVAR 24))
// Line 43 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 43  92 
	push 92
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000019
// Line 45 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )) (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))):)
// Line 44 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )) (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )))
// Line 44 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 44 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 44 (++ (LVAR 32)  1 )
// Line 44 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 44  1 
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
// Line 44  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 44 (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))
// Line 44 (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )
// Line 44 (= (LVAR 24) (++ (LVAR 24)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 44 (++ (LVAR 24)  1 )
// Line 44 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 44  1 
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
// Line 44  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
	jmp  .L000020
.L000019:
// Line 83 (BLOCK(++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ):(++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ):(SWITCH cond: (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):)):)
// Line 46 (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 )
// Line 46 (= (LVAR 36) (++ (LVAR 36)  1 ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 46 (++ (LVAR 36)  1 )
// Line 46 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  eax, [rax]
	push rax
// Line 46  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 46  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 47 (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )
// Line 47 (= (LVAR 24) (++ (LVAR 24)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 47 (++ (LVAR 24)  1 )
// Line 47 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 47  1 
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
// Line 47  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
// Line 48 (SWITCH cond: (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )) body: (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 48 (DEREF (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ))
// Line 48 (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )
// Line 48 (= (LVAR 24) (++ (LVAR 24)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 48 (++ (LVAR 24)  1 )
// Line 48 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 48  1 
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
// Line 48  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 82 (BLOCK(CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)):(CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)):(CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)):(CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)):(CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)):(CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)):(CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)):(CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)):(CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)):(CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )):)
// Line 49 (CASE cond: 48  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :))
// Line 49  48 
	push 48
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000022
// Line 52 (CASE cond: 97  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :))
// Line 52  97 
	push 97
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000023
// Line 55 (CASE cond: 98  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :))
// Line 55  98 
	push 98
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000024
// Line 58 (CASE cond: 102  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :))
// Line 58  102 
	push 102
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000025
// Line 61 (CASE cond: 110  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :))
// Line 61  110 
	push 110
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000026
// Line 64 (CASE cond: 114  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :))
// Line 64  114 
	push 114
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000027
// Line 67 (CASE cond: 116  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :))
// Line 67  116 
	push 116
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000028
// Line 70 (CASE cond: 92  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :))
// Line 70  92 
	push 92
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000029
// Line 73 (CASE cond: 39  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :))
// Line 73  39 
	push 39
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000030
// Line 76 (CASE cond: 34  body:(BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :))
// Line 76  34 
	push 34
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000031
// Line 79 (DEFAULT body:(CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) ))
	jmp  .L000032
	jmp  .L000021
.L000022:
// Line 50 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 ):BREAK :)
// Line 50 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  0 )
// Line 50 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 50 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 50 (++ (LVAR 32)  1 )
// Line 50 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 50  1 
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
// Line 50  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 50  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 51 BREAK 
	jmp  .L000021
.L000023:
// Line 53 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 ):BREAK :)
// Line 53 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  7 )
// Line 53 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 53 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 53 (++ (LVAR 32)  1 )
// Line 53 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 53  1 
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
// Line 53  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 53  7 
	push 7
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 54 BREAK 
	jmp  .L000021
.L000024:
// Line 56 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 ):BREAK :)
// Line 56 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  8 )
// Line 56 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 56 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 56 (++ (LVAR 32)  1 )
// Line 56 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 56  1 
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
// Line 56  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 56  8 
	push 8
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 57 BREAK 
	jmp  .L000021
.L000025:
// Line 59 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 ):BREAK :)
// Line 59 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  12 )
// Line 59 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 59 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 59 (++ (LVAR 32)  1 )
// Line 59 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 59  1 
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
// Line 59  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 59  12 
	push 12
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 60 BREAK 
	jmp  .L000021
.L000026:
// Line 62 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 ):BREAK :)
// Line 62 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  10 )
// Line 62 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 62 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 62 (++ (LVAR 32)  1 )
// Line 62 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 62  1 
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
// Line 62  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 62  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 63 BREAK 
	jmp  .L000021
.L000027:
// Line 65 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 ):BREAK :)
// Line 65 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  13 )
// Line 65 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 65 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 65 (++ (LVAR 32)  1 )
// Line 65 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 65  1 
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
// Line 65  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 65  13 
	push 13
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 66 BREAK 
	jmp  .L000021
.L000028:
// Line 68 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 ):BREAK :)
// Line 68 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  9 )
// Line 68 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 68 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 68 (++ (LVAR 32)  1 )
// Line 68 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 68  1 
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
// Line 68  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 68  9 
	push 9
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 69 BREAK 
	jmp  .L000021
.L000029:
// Line 71 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 ):BREAK :)
// Line 71 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  92 )
// Line 71 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 71 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 71 (++ (LVAR 32)  1 )
// Line 71 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 71  1 
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
// Line 71  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 71  92 
	push 92
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 72 BREAK 
	jmp  .L000021
.L000030:
// Line 74 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 ):BREAK :)
// Line 74 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  39 )
// Line 74 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 74 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 74 (++ (LVAR 32)  1 )
// Line 74 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 74  1 
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
// Line 74  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 74  39 
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 75 BREAK 
	jmp  .L000021
.L000031:
// Line 77 (BLOCK(= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 ):BREAK :)
// Line 77 (= (DEREF (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 ))  34 )
// Line 77 (++ (= (LVAR 32) (++ (LVAR 32)  1 ))  1 )
// Line 77 (= (LVAR 32) (++ (LVAR 32)  1 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 77 (++ (LVAR 32)  1 )
// Line 77 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 77  1 
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
// Line 77  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop rax
	push rax
// Line 77  34 
	push 34
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 78 BREAK 
	jmp  .L000021
.L000032:
// Line 80 (CALL error_at_token ((LVAR 8):(ADDR  "Unsupported escape sequence." ):) )
// Line 80 (ADDR  "Unsupported escape sequence." )
	lea  rax, .LS000000[rip]
	push rax
// Line 80 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000033
	mov  rax, 0
	call error_at_token
	jmp  .L000034
.L000033:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000034:
	push rax
	pop  rax
.L000021:
.L000020:
.L000016:
// Line 42 (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 )
// Line 42 (= (LVAR 36) (++ (LVAR 36)  1 ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 42 (++ (LVAR 36)  1 )
// Line 42 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  eax, [rax]
	push rax
// Line 42  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 42  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000018
.L000017:
// Line 84 (= (DEREF (LVAR 32))  0 )
// Line 84 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	push rax
// Line 84  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 85 (= (MEMBER (DEREF (LVAR 16)) offset 48) (+ (CAST int  (- (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56)))  1 ))
// Line 85 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	push rax
// Line 85 (+ (CAST int  (- (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56)))  1 )
// Line 85 (CAST int  (- (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56)))
// Line 85 (- (LVAR 32) (MEMBER (DEREF (LVAR 16)) label 56))
// Line 85 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 85 (MEMBER (DEREF (LVAR 16)) label 56)
// Line 85 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	cqo
	mov  rdi, 1
	idiv rdi
	push rax
// Line 85  1 
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
// Line 87 (RETURN (LVAR 16))
// Line 87 (LVAR 16)
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
	.global new_node_ident
// Line 94 FDECL new_node_ident func ( * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0)  0 ):(= (MEMBER (DEREF (LVAR 16)) token 72) (LVAR 8)):(RETURN (LVAR 16)):))
new_node_ident:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 95 (= (LVAR 16) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 95 (CALL calloc ( 1 : 88 :) )
// Line 95  88 
	push 88
// Line 95  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000035
	mov  rax, 0
	call calloc
	jmp  .L000036
.L000035:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000036:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 96 (= (MEMBER (DEREF (LVAR 16)) kind 0)  0 )
// Line 96 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 96  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 97 (= (MEMBER (DEREF (LVAR 16)) token 72) (LVAR 8))
// Line 97 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 97 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 98 (RETURN (LVAR 16))
// Line 98 (LVAR 16)
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
	.global new_node_lvar
// Line 106 FDECL new_node_lvar func ( * struct <LVar>  lvar , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  23 ):(= (MEMBER (DEREF (LVAR 24)) lvar 40) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 8)) type 16)):(RETURN (LVAR 24)):))
new_node_lvar:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 107 (= (LVAR 24) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 107 (CALL calloc ( 1 : 88 :) )
// Line 107  88 
	push 88
// Line 107  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000037
	mov  rax, 0
	call calloc
	jmp  .L000038
.L000037:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000038:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 108 (= (MEMBER (DEREF (LVAR 24)) kind 0)  23 )
// Line 108 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 108  23 
	push 23
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 109 (= (MEMBER (DEREF (LVAR 24)) lvar 40) (LVAR 8))
// Line 109 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	push rax
// Line 109 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 110 (= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16))
// Line 110 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 110 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 111 (= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 8)) type 16))
// Line 111 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 111 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 111 (LVAR 8)
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
// Line 112 (RETURN (LVAR 24))
// Line 112 (LVAR 24)
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
	.global new_node_gvar
// Line 120 FDECL new_node_gvar func ( * struct <Global>  gvar , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  24 ):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 8)) type 16)):(RETURN (LVAR 24)):))
new_node_gvar:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 121 (= (LVAR 24) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 121 (CALL calloc ( 1 : 88 :) )
// Line 121  88 
	push 88
// Line 121  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000039
	mov  rax, 0
	call calloc
	jmp  .L000040
.L000039:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000040:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 122 (= (MEMBER (DEREF (LVAR 24)) kind 0)  24 )
// Line 122 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 122  24 
	push 24
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 123 (= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16))
// Line 123 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 123 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 124 (= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 8)) type 16))
// Line 124 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 124 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 124 (LVAR 8)
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
// Line 125 (RETURN (LVAR 24))
// Line 125 (LVAR 24)
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
	.global new_node_binary
// Line 135 FDECL new_node_binary func ( enum  kind , * struct <Node>  lhs , * struct <Node>  rhs , * struct <Token>  op_token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) (LVAR 20) (LVAR 28) 
//    (BLOCK(= (LVAR 36) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 36)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 36)) lhs 8) (CALL get_ptr_if_array ((LVAR 12):) )):(= (MEMBER (DEREF (LVAR 36)) rhs 16) (CALL get_ptr_if_array ((LVAR 20):) )):(= (MEMBER (DEREF (LVAR 36)) token 72) (LVAR 28)):(RETURN (LVAR 36)):))
new_node_binary:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 4], edi
	mov  [rbp - 12], rsi
	mov  [rbp - 20], rdx
	mov  [rbp - 28], rcx
// Line 136 (= (LVAR 36) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 136 (CALL calloc ( 1 : 88 :) )
// Line 136  88 
	push 88
// Line 136  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000041
	mov  rax, 0
	call calloc
	jmp  .L000042
.L000041:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000042:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 137 (= (MEMBER (DEREF (LVAR 36)) kind 0) (LVAR 4))
// Line 137 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 137 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 138 (= (MEMBER (DEREF (LVAR 36)) lhs 8) (CALL get_ptr_if_array ((LVAR 12):) ))
// Line 138 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 138 (CALL get_ptr_if_array ((LVAR 12):) )
// Line 138 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000043
	mov  rax, 0
	call get_ptr_if_array
	jmp  .L000044
.L000043:
	sub  rsp, 8
	mov  rax, 0
	call get_ptr_if_array
	add  rsp, 8
.L000044:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 139 (= (MEMBER (DEREF (LVAR 36)) rhs 16) (CALL get_ptr_if_array ((LVAR 20):) ))
// Line 139 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 139 (CALL get_ptr_if_array ((LVAR 20):) )
// Line 139 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000045
	mov  rax, 0
	call get_ptr_if_array
	jmp  .L000046
.L000045:
	sub  rsp, 8
	mov  rax, 0
	call get_ptr_if_array
	add  rsp, 8
.L000046:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 140 (= (MEMBER (DEREF (LVAR 36)) token 72) (LVAR 28))
// Line 140 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 140 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 142 (RETURN (LVAR 36))
// Line 142 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_node_expr
// Line 147 FDECL new_node_expr func ( enum  kind , * struct <Node>  lhs , * struct <Node>  rhs , * struct <Token>  op_token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) (LVAR 20) (LVAR 28) 
//    (BLOCK(= (LVAR 36) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 36)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 36)) lhs 8) (LVAR 12)):(= (MEMBER (DEREF (LVAR 36)) rhs 16) (LVAR 20)):(= (MEMBER (DEREF (LVAR 36)) token 72) (LVAR 28)):(RETURN (LVAR 36)):))
new_node_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 4], edi
	mov  [rbp - 12], rsi
	mov  [rbp - 20], rdx
	mov  [rbp - 28], rcx
// Line 148 (= (LVAR 36) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 148 (CALL calloc ( 1 : 88 :) )
// Line 148  88 
	push 88
// Line 148  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000047
	mov  rax, 0
	call calloc
	jmp  .L000048
.L000047:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000048:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 149 (= (MEMBER (DEREF (LVAR 36)) kind 0) (LVAR 4))
// Line 149 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 149 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 150 (= (MEMBER (DEREF (LVAR 36)) lhs 8) (LVAR 12))
// Line 150 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 150 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 151 (= (MEMBER (DEREF (LVAR 36)) rhs 16) (LVAR 20))
// Line 151 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 151 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 152 (= (MEMBER (DEREF (LVAR 36)) token 72) (LVAR 28))
// Line 152 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 152 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 154 (RETURN (LVAR 36))
// Line 154 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_node_member
// Line 159 FDECL new_node_member func ( * struct <Node>  lhs , * struct <Token>  ident ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  26 ):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(= (LVAR 32) (CALL type ((LVAR 8):) )):(IF (! (CALL is_struct ((LVAR 32):) )) (CALL error_at_node ((LVAR 8):(ADDR  "The expression must have a struct or union type." ):) ) NULL ):(= (LVAR 40) (CALL get_member_type ((LVAR 32):(LVAR 16):) )):(IF (! (LVAR 40)) (CALL error_at_token ((LVAR 16):(ADDR  "The member does not exists in the struct." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 24)) offset 48) (MEMBER (DEREF (LVAR 40)) offset 24)):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 40)) type 16)):(RETURN (LVAR 24)):))
new_node_member:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 160 (= (LVAR 24) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 160 (CALL calloc ( 1 : 88 :) )
// Line 160  88 
	push 88
// Line 160  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000049
	mov  rax, 0
	call calloc
	jmp  .L000050
.L000049:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000050:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 161 (= (MEMBER (DEREF (LVAR 24)) kind 0)  26 )
// Line 161 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 161  26 
	push 26
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 162 (= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8))
// Line 162 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 162 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 163 (= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16))
// Line 163 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 163 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 164 (= (LVAR 32) (CALL type ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 164 (CALL type ((LVAR 8):) )
// Line 164 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000051
	mov  rax, 0
	call type
	jmp  .L000052
.L000051:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000052:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 167 (IF (! (CALL is_struct ((LVAR 32):) )) (CALL error_at_node ((LVAR 8):(ADDR  "The expression must have a struct or union type." ):) ) NULL )
// Line 165 (! (CALL is_struct ((LVAR 32):) ))
// Line 165 (CALL is_struct ((LVAR 32):) )
// Line 165 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000057
	mov  rax, 0
	call is_struct
	jmp  .L000058
.L000057:
	sub  rsp, 8
	mov  rax, 0
	call is_struct
	add  rsp, 8
.L000058:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000055
	mov  rax, 1
	jmp  .L000056
.L000055:
	mov  rax, 0
.L000056:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000053
// Line 166 (CALL error_at_node ((LVAR 8):(ADDR  "The expression must have a struct or union type." ):) )
// Line 166 (ADDR  "The expression must have a struct or union type." )
	lea  rax, .LS000001[rip]
	push rax
// Line 166 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000059
	mov  rax, 0
	call error_at_node
	jmp  .L000060
.L000059:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000060:
	push rax
	pop  rax
	jmp  .L000054
.L000053:
.L000054:
// Line 167 (= (LVAR 40) (CALL get_member_type ((LVAR 32):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 167 (CALL get_member_type ((LVAR 32):(LVAR 16):) )
// Line 167 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 167 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000061
	mov  rax, 0
	call get_member_type
	jmp  .L000062
.L000061:
	sub  rsp, 8
	mov  rax, 0
	call get_member_type
	add  rsp, 8
.L000062:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 170 (IF (! (LVAR 40)) (CALL error_at_token ((LVAR 16):(ADDR  "The member does not exists in the struct." ):) ) NULL )
// Line 168 (! (LVAR 40))
// Line 168 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000065
	mov  rax, 1
	jmp  .L000066
.L000065:
	mov  rax, 0
.L000066:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000063
// Line 169 (CALL error_at_token ((LVAR 16):(ADDR  "The member does not exists in the struct." ):) )
// Line 169 (ADDR  "The member does not exists in the struct." )
	lea  rax, .LS000002[rip]
	push rax
// Line 169 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000067
	mov  rax, 0
	call error_at_token
	jmp  .L000068
.L000067:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000068:
	push rax
	pop  rax
	jmp  .L000064
.L000063:
.L000064:
// Line 170 (= (MEMBER (DEREF (LVAR 24)) offset 48) (MEMBER (DEREF (LVAR 40)) offset 24))
// Line 170 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	push rax
// Line 170 (MEMBER (DEREF (LVAR 40)) offset 24)
// Line 170 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 171 (= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 40)) type 16))
// Line 171 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 171 (MEMBER (DEREF (LVAR 40)) type 16)
// Line 171 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
// Line 172 (RETURN (LVAR 24))
// Line 172 (LVAR 24)
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
	.global new_node
// Line 177 FDECL new_node func ( enum  kind , * struct <Token>  op_token ) * struct <Node> 
//    (LVAR 4) (LVAR 12) 
//    (BLOCK(= (LVAR 20) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 20)) kind 0) (LVAR 4)):(= (MEMBER (DEREF (LVAR 20)) token 72) (LVAR 12)):(RETURN (LVAR 20)):))
new_node:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 4], edi
	mov  [rbp - 12], rsi
// Line 178 (= (LVAR 20) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 178 (CALL calloc ( 1 : 88 :) )
// Line 178  88 
	push 88
// Line 178  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000069
	mov  rax, 0
	call calloc
	jmp  .L000070
.L000069:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000070:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 179 (= (MEMBER (DEREF (LVAR 20)) kind 0) (LVAR 4))
// Line 179 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 179 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 180 (= (MEMBER (DEREF (LVAR 20)) token 72) (LVAR 12))
// Line 180 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 180 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 181 (RETURN (LVAR 20))
// Line 181 (LVAR 20)
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
	.global new_node_call
// Line 190 FDECL new_node_call func ( * struct <Node>  callee , * struct <Vector>  vec , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  25 ):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) nodes 64) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24)):(= (MEMBER (DEREF (LVAR 32)) type 80) (MEMBER (DEREF (LVAR 8)) type 80)):(RETURN (LVAR 32)):))
new_node_call:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 24], rdx
// Line 192 (= (LVAR 32) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 192 (CALL calloc ( 1 : 88 :) )
// Line 192  88 
	push 88
// Line 192  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000071
	mov  rax, 0
	call calloc
	jmp  .L000072
.L000071:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000072:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 193 (= (MEMBER (DEREF (LVAR 32)) kind 0)  25 )
// Line 193 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 193  25 
	push 25
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 194 (= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8))
// Line 194 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 194 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 195 (= (MEMBER (DEREF (LVAR 32)) nodes 64) (LVAR 16))
// Line 195 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	push rax
// Line 195 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 196 (= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24))
// Line 196 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 196 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 197 (= (MEMBER (DEREF (LVAR 32)) type 80) (MEMBER (DEREF (LVAR 8)) type 80))
// Line 197 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 197 (MEMBER (DEREF (LVAR 8)) type 80)
// Line 197 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 198 (RETURN (LVAR 32))
// Line 198 (LVAR 32)
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
	.global new_node_if_then
// Line 207 FDECL new_node_if_then func ( * struct <Node>  cond_ , * struct <Node>  then_ , * struct <Node>  else_ ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  28 ):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) xhs 24) (LVAR 24)):(= (MEMBER (DEREF (LVAR 32)) token 72) (GVAR token)):(RETURN (LVAR 32)):))
new_node_if_then:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 24], rdx
// Line 208 (= (LVAR 32) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 208 (CALL calloc ( 1 : 88 :) )
// Line 208  88 
	push 88
// Line 208  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000073
	mov  rax, 0
	call calloc
	jmp  .L000074
.L000073:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000074:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 209 (= (MEMBER (DEREF (LVAR 32)) kind 0)  28 )
// Line 209 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 209  28 
	push 28
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 210 (= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8))
// Line 210 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 210 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 211 (= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16))
// Line 211 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 211 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 212 (= (MEMBER (DEREF (LVAR 32)) xhs 24) (LVAR 24))
// Line 212 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 212 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 213 (= (MEMBER (DEREF (LVAR 32)) token 72) (GVAR token))
// Line 213 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 213 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 214 (RETURN (LVAR 32))
// Line 214 (LVAR 32)
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
	.global new_node_switch
// Line 219 FDECL new_node_switch func ( * struct <Node>  expr , * struct <Node>  stmt , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  31 ):(= (MEMBER (DEREF (LVAR 32)) lvar 40) (CALL new_lvar ((LVAR 24):(CALL new_type_int () ):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) nodes 64) (CALL vec_new () )):(= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24)):(RETURN (LVAR 32)):))
new_node_switch:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 24], rdx
// Line 220 (= (LVAR 32) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 220 (CALL calloc ( 1 : 88 :) )
// Line 220  88 
	push 88
// Line 220  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000075
	mov  rax, 0
	call calloc
	jmp  .L000076
.L000075:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000076:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 221 (= (MEMBER (DEREF (LVAR 32)) kind 0)  31 )
// Line 221 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 221  31 
	push 31
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 222 (= (MEMBER (DEREF (LVAR 32)) lvar 40) (CALL new_lvar ((LVAR 24):(CALL new_type_int () ):) ))
// Line 222 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	push rax
// Line 222 (CALL new_lvar ((LVAR 24):(CALL new_type_int () ):) )
// Line 222 (CALL new_type_int () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000077
	mov  rax, 0
	call new_type_int
	jmp  .L000078
.L000077:
	sub  rsp, 8
	mov  rax, 0
	call new_type_int
	add  rsp, 8
.L000078:
	push rax
// Line 222 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000079
	mov  rax, 0
	call new_lvar
	jmp  .L000080
.L000079:
	sub  rsp, 8
	mov  rax, 0
	call new_lvar
	add  rsp, 8
.L000080:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 223 (= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8))
// Line 223 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 223 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 224 (= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16))
// Line 224 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 224 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 225 (= (MEMBER (DEREF (LVAR 32)) nodes 64) (CALL vec_new () ))
// Line 225 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	push rax
// Line 225 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000081
	mov  rax, 0
	call vec_new
	jmp  .L000082
.L000081:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L000082:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 226 (= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24))
// Line 226 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 226 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 227 (RETURN (LVAR 32))
// Line 227 (LVAR 32)
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
	.global new_node_case
// Line 230 FDECL new_node_case func ( * struct <Node>  const_expr , * struct <Node>  body , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 32)) kind 0)  32 ):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24)):(RETURN (LVAR 32)):))
new_node_case:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 24], rdx
// Line 231 (= (LVAR 32) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 231 (CALL calloc ( 1 : 88 :) )
// Line 231  88 
	push 88
// Line 231  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000083
	mov  rax, 0
	call calloc
	jmp  .L000084
.L000083:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000084:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 232 (= (MEMBER (DEREF (LVAR 32)) kind 0)  32 )
// Line 232 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 232  32 
	push 32
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 233 (= (MEMBER (DEREF (LVAR 32)) lhs 8) (LVAR 8))
// Line 233 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 233 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 234 (= (MEMBER (DEREF (LVAR 32)) rhs 16) (LVAR 16))
// Line 234 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 234 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 235 (= (MEMBER (DEREF (LVAR 32)) token 72) (LVAR 24))
// Line 235 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 235 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 236 (RETURN (LVAR 32))
// Line 236 (LVAR 32)
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
	.global new_node_default
// Line 239 FDECL new_node_default func ( * struct <Node>  body , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  33 ):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16)):(RETURN (LVAR 24)):))
new_node_default:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 240 (= (LVAR 24) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 240 (CALL calloc ( 1 : 88 :) )
// Line 240  88 
	push 88
// Line 240  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000085
	mov  rax, 0
	call calloc
	jmp  .L000086
.L000085:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000086:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 241 (= (MEMBER (DEREF (LVAR 24)) kind 0)  33 )
// Line 241 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 241  33 
	push 33
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 242 (= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8))
// Line 242 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 242 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 243 (= (MEMBER (DEREF (LVAR 24)) token 72) (LVAR 16))
// Line 243 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 243 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 244 (RETURN (LVAR 24))
// Line 244 (LVAR 24)
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
	.global new_node_while
// Line 252 FDECL new_node_while func ( * struct <Node>  cond_ , * struct <Node>  do_ ) * struct <Node> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 24)) kind 0)  29 ):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) token 72) (GVAR token)):(RETURN (LVAR 24)):))
new_node_while:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 253 (= (LVAR 24) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 253 (CALL calloc ( 1 : 88 :) )
// Line 253  88 
	push 88
// Line 253  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000087
	mov  rax, 0
	call calloc
	jmp  .L000088
.L000087:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000088:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 254 (= (MEMBER (DEREF (LVAR 24)) kind 0)  29 )
// Line 254 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 254  29 
	push 29
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 255 (= (MEMBER (DEREF (LVAR 24)) lhs 8) (LVAR 8))
// Line 255 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 255 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 256 (= (MEMBER (DEREF (LVAR 24)) rhs 16) (LVAR 16))
// Line 256 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 256 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 257 (= (MEMBER (DEREF (LVAR 24)) token 72) (GVAR token))
// Line 257 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 257 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 258 (RETURN (LVAR 24))
// Line 258 (LVAR 24)
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
	.global new_node_for
// Line 268 FDECL new_node_for func ( * struct <Node>  init_ , * struct <Node>  cond_ , * struct <Node>  post_ , * struct <Node>  body_ , * struct <Token>  token ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 24) (LVAR 32) (LVAR 40) 
//    (BLOCK(= (LVAR 48) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 48)) kind 0)  30 ):(= (MEMBER (DEREF (LVAR 48)) lhs 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 48)) rhs 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 48)) xhs 24) (LVAR 24)):(= (LVAR 56) (CALL vec_new () )):(CALL vec_push ((LVAR 56):(LVAR 32):) ):(= (MEMBER (DEREF (LVAR 48)) nodes 64) (LVAR 56)):(= (MEMBER (DEREF (LVAR 48)) token 72) (LVAR 40)):(RETURN (LVAR 48)):))
new_node_for:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 24], rdx
	mov  [rbp - 32], rcx
	mov  [rbp - 40], r8
// Line 270 (= (LVAR 48) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 270 (CALL calloc ( 1 : 88 :) )
// Line 270  88 
	push 88
// Line 270  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000089
	mov  rax, 0
	call calloc
	jmp  .L000090
.L000089:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000090:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 271 (= (MEMBER (DEREF (LVAR 48)) kind 0)  30 )
// Line 271 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 271  30 
	push 30
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 272 (= (MEMBER (DEREF (LVAR 48)) lhs 8) (LVAR 8))
// Line 272 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 272 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 273 (= (MEMBER (DEREF (LVAR 48)) rhs 16) (LVAR 16))
// Line 273 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 273 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 274 (= (MEMBER (DEREF (LVAR 48)) xhs 24) (LVAR 24))
// Line 274 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 274 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 275 (= (LVAR 56) (CALL vec_new () ))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 275 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000091
	mov  rax, 0
	call vec_new
	jmp  .L000092
.L000091:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L000092:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 276 (CALL vec_push ((LVAR 56):(LVAR 32):) )
// Line 276 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 276 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000093
	mov  rax, 0
	call vec_push
	jmp  .L000094
.L000093:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L000094:
	push rax
	pop  rax
// Line 277 (= (MEMBER (DEREF (LVAR 48)) nodes 64) (LVAR 56))
// Line 277 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	push rax
// Line 277 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 278 (= (MEMBER (DEREF (LVAR 48)) token 72) (LVAR 40))
// Line 278 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 278 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 279 (RETURN (LVAR 48))
// Line 279 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_node_block
// Line 286 FDECL new_node_block func ( * struct <Vector>  stmts ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 16)) kind 0)  37 ):(= (MEMBER (DEREF (LVAR 16)) nodes 64) (LVAR 8)):(= (MEMBER (DEREF (LVAR 16)) token 72) (GVAR token)):(RETURN (LVAR 16)):))
new_node_block:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 287 (= (LVAR 16) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 287 (CALL calloc ( 1 : 88 :) )
// Line 287  88 
	push 88
// Line 287  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000095
	mov  rax, 0
	call calloc
	jmp  .L000096
.L000095:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000096:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 288 (= (MEMBER (DEREF (LVAR 16)) kind 0)  37 )
// Line 288 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 288  37 
	push 37
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 289 (= (MEMBER (DEREF (LVAR 16)) nodes 64) (LVAR 8))
// Line 289 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	push rax
// Line 289 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 290 (= (MEMBER (DEREF (LVAR 16)) token 72) (GVAR token))
// Line 290 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 290 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 291 (RETURN (LVAR 16))
// Line 291 (LVAR 16)
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
	.global add_stmt_to_block
// Line 294 FDECL add_stmt_to_block func ( * struct <Node>  block , * struct <Node>  node ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 ) (BLOCK(IF (LVAR 16) (CALL vec_push ((MEMBER (DEREF (LVAR 8)) nodes 64):(LVAR 16):) ) NULL ):(RETURN NULL ):) (CALL error_at_node ((LVAR 8):(ADDR  "Must be block." ):) )):))
add_stmt_to_block:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 301 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 ) (BLOCK(IF (LVAR 16) (CALL vec_push ((MEMBER (DEREF (LVAR 8)) nodes 64):(LVAR 16):) ) NULL ):(RETURN NULL ):) (CALL error_at_node ((LVAR 8):(ADDR  "Must be block." ):) ))
// Line 295 (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 )
// Line 295 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 295 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 295  37 
	push 37
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000097
// Line 299 (BLOCK(IF (LVAR 16) (CALL vec_push ((MEMBER (DEREF (LVAR 8)) nodes 64):(LVAR 16):) ) NULL ):(RETURN NULL ):)
// Line 298 (IF (LVAR 16) (CALL vec_push ((MEMBER (DEREF (LVAR 8)) nodes 64):(LVAR 16):) ) NULL )
// Line 296 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000099
// Line 297 (CALL vec_push ((MEMBER (DEREF (LVAR 8)) nodes 64):(LVAR 16):) )
// Line 297 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 297 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 297 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000101
	mov  rax, 0
	call vec_push
	jmp  .L000102
.L000101:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L000102:
	push rax
	pop  rax
	jmp  .L000100
.L000099:
.L000100:
// Line 298 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000098
.L000097:
// Line 300 (CALL error_at_node ((LVAR 8):(ADDR  "Must be block." ):) )
// Line 300 (ADDR  "Must be block." )
	lea  rax, .LS000003[rip]
	push rax
// Line 300 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000103
	mov  rax, 0
	call error_at_node
	jmp  .L000104
.L000103:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000104:
	push rax
	pop  rax
.L000098:
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_node_fdecl
// Line 310 FDECL new_node_fdecl func ( * struct <Token>  name , * struct <Vector>  params , int  max_offset , * struct <Node>  body , * struct <Type>  type ) * struct <Node> 
//    (LVAR 8) (LVAR 16) (LVAR 20) (LVAR 28) (LVAR 36) 
//    (BLOCK(= (LVAR 44) (CALL calloc ( 1 : 88 :) )):(= (MEMBER (DEREF (LVAR 44)) kind 0)  38 ):(= (MEMBER (DEREF (LVAR 44)) lhs 8) (LVAR 28)):(= (MEMBER (DEREF (LVAR 44)) nodes 64) (LVAR 16)):(= (MEMBER (DEREF (LVAR 44)) offset 48) (LVAR 20)):(= (MEMBER (DEREF (LVAR 44)) token 72) (LVAR 8)):(= (MEMBER (DEREF (LVAR 44)) type 80) (LVAR 36)):(RETURN (LVAR 44)):))
new_node_fdecl:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 20], edx
	mov  [rbp - 28], rcx
	mov  [rbp - 36], r8
// Line 312 (= (LVAR 44) (CALL calloc ( 1 : 88 :) ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 312 (CALL calloc ( 1 : 88 :) )
// Line 312  88 
	push 88
// Line 312  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000105
	mov  rax, 0
	call calloc
	jmp  .L000106
.L000105:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000106:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 313 (= (MEMBER (DEREF (LVAR 44)) kind 0)  38 )
// Line 313 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 313  38 
	push 38
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 314 (= (MEMBER (DEREF (LVAR 44)) lhs 8) (LVAR 28))
// Line 314 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 314 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 315 (= (MEMBER (DEREF (LVAR 44)) nodes 64) (LVAR 16))
// Line 315 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	push rax
// Line 315 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 316 (= (MEMBER (DEREF (LVAR 44)) offset 48) (LVAR 20))
// Line 316 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	push rax
// Line 316 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 317 (= (MEMBER (DEREF (LVAR 44)) token 72) (LVAR 8))
// Line 317 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	push rax
// Line 317 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 318 (= (MEMBER (DEREF (LVAR 44)) type 80) (LVAR 36))
// Line 318 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 318 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 319 (RETURN (LVAR 44))
// Line 319 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global peek
// Line 325 FDECL peek func ( enum <TokenKind>  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(RETURN (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4))):))
peek:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 325 (RETURN (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4)))
// Line 325 (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4))
// Line 325 (MEMBER (DEREF (GVAR token)) kind 0)
// Line 325 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 325 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global peek_next
// Line 328 FDECL peek_next func ( ) enum <TokenKind> 
//    
//    (BLOCK(RETURN (MEMBER (DEREF (MEMBER (DEREF (GVAR token)) next 8)) kind 0)):))
peek_next:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 328 (RETURN (MEMBER (DEREF (MEMBER (DEREF (GVAR token)) next 8)) kind 0))
// Line 328 (MEMBER (DEREF (MEMBER (DEREF (GVAR token)) next 8)) kind 0)
// Line 328 (MEMBER (DEREF (GVAR token)) next 8)
// Line 328 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global at_eof
// Line 332 FDECL at_eof func ( ) bool 
//    
//    (BLOCK(RETURN (== (MEMBER (DEREF (GVAR token)) kind 0)  60 )):))
at_eof:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 332 (RETURN (== (MEMBER (DEREF (GVAR token)) kind 0)  60 ))
// Line 332 (== (MEMBER (DEREF (GVAR token)) kind 0)  60 )
// Line 332 (MEMBER (DEREF (GVAR token)) kind 0)
// Line 332 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 332  60 
	push 60
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global consume
// Line 335 FDECL consume func ( ) * struct <Token> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 8)):))
consume:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 336 (= (LVAR 8) (GVAR token))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 336 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 337 (= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8))
	lea  rax, token[rip]
	push rax
// Line 337 (MEMBER (DEREF (GVAR token)) next 8)
// Line 337 (GVAR token)
	lea  rax, token[rip]
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
// Line 338 (RETURN (LVAR 8))
// Line 338 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global consume_if
// Line 343 FDECL consume_if func ( enum <TokenKind>  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(IF (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4)) (BLOCK(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN  1 ):) NULL ):(RETURN  0 ):))
consume_if:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 348 (IF (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4)) (BLOCK(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN  1 ):) NULL )
// Line 344 (== (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4))
// Line 344 (MEMBER (DEREF (GVAR token)) kind 0)
// Line 344 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 344 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000107
// Line 348 (BLOCK(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN  1 ):)
// Line 345 (= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8))
	lea  rax, token[rip]
	push rax
// Line 345 (MEMBER (DEREF (GVAR token)) next 8)
// Line 345 (GVAR token)
	lea  rax, token[rip]
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
// Line 346 (RETURN  1 )
// Line 1420  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000108
.L000107:
.L000108:
// Line 348 (RETURN  0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global consume_number
// Line 353 FDECL consume_number func ( ) int 
//    
//    (BLOCK(IF (!= (MEMBER (DEREF (GVAR token)) kind 0)  1 ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token: Number is expected." ):) ):) NULL ):(= (LVAR 4) (MEMBER (DEREF (GVAR token)) int_val 16)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 4)):))
consume_number:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 357 (IF (!= (MEMBER (DEREF (GVAR token)) kind 0)  1 ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token: Number is expected." ):) ):) NULL )
// Line 354 (!= (MEMBER (DEREF (GVAR token)) kind 0)  1 )
// Line 354 (MEMBER (DEREF (GVAR token)) kind 0)
// Line 354 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 354  1 
	push 1
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000109
// Line 357 (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token: Number is expected." ):) ):)
// Line 355 (CALL error_at_token ((GVAR token):(ADDR  "Unexpected token: Number is expected." ):) )
// Line 355 (ADDR  "Unexpected token: Number is expected." )
	lea  rax, .LS000004[rip]
	push rax
// Line 355 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000111
	mov  rax, 0
	call error_at_token
	jmp  .L000112
.L000111:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000112:
	push rax
	pop  rax
	jmp  .L000110
.L000109:
.L000110:
// Line 357 (= (LVAR 4) (MEMBER (DEREF (GVAR token)) int_val 16))
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 357 (MEMBER (DEREF (GVAR token)) int_val 16)
// Line 357 (GVAR token)
	lea  rax, token[rip]
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
// Line 358 (= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8))
	lea  rax, token[rip]
	push rax
// Line 358 (MEMBER (DEREF (GVAR token)) next 8)
// Line 358 (GVAR token)
	lea  rax, token[rip]
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
// Line 359 (RETURN (LVAR 4))
// Line 359 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global consume_ident
// Line 364 FDECL consume_ident func ( ) * struct <Token> 
//    
//    (BLOCK(IF (!= (MEMBER (DEREF (GVAR token)) kind 0)  0 ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ):) NULL ):(= (LVAR 8) (GVAR token)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 8)):))
consume_ident:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 368 (IF (!= (MEMBER (DEREF (GVAR token)) kind 0)  0 ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ):) NULL )
// Line 365 (!= (MEMBER (DEREF (GVAR token)) kind 0)  0 )
// Line 365 (MEMBER (DEREF (GVAR token)) kind 0)
// Line 365 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 365  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000113
// Line 368 (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ):)
// Line 366 (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) )
// Line 366 (ADDR  "Expected identifier." )
	lea  rax, .LS000005[rip]
	push rax
// Line 366 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000115
	mov  rax, 0
	call error_at_token
	jmp  .L000116
.L000115:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000116:
	push rax
	pop  rax
	jmp  .L000114
.L000113:
.L000114:
// Line 368 (= (LVAR 8) (GVAR token))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 368 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 369 (= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8))
	lea  rax, token[rip]
	push rax
// Line 369 (MEMBER (DEREF (GVAR token)) next 8)
// Line 369 (GVAR token)
	lea  rax, token[rip]
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
// Line 370 (RETURN (LVAR 8))
// Line 370 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global expect
// Line 375 FDECL expect func ( enum <TokenKind>  kind ) * struct <Token> 
//    (LVAR 4) 
//    (BLOCK(IF (!= (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4)) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token." ):) ):) NULL ):(= (LVAR 12) (GVAR token)):(= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8)):(RETURN (LVAR 12)):))
expect:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 379 (IF (!= (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4)) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token." ):) ):) NULL )
// Line 376 (!= (MEMBER (DEREF (GVAR token)) kind 0) (LVAR 4))
// Line 376 (MEMBER (DEREF (GVAR token)) kind 0)
// Line 376 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 376 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000117
// Line 379 (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected token." ):) ):)
// Line 377 (CALL error_at_token ((GVAR token):(ADDR  "Unexpected token." ):) )
// Line 377 (ADDR  "Unexpected token." )
	lea  rax, .LS000006[rip]
	push rax
// Line 377 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000119
	mov  rax, 0
	call error_at_token
	jmp  .L000120
.L000119:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000120:
	push rax
	pop  rax
	jmp  .L000118
.L000117:
.L000118:
// Line 379 (= (LVAR 12) (GVAR token))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 379 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 380 (= (GVAR token) (MEMBER (DEREF (GVAR token)) next 8))
	lea  rax, token[rip]
	push rax
// Line 380 (MEMBER (DEREF (GVAR token)) next 8)
// Line 380 (GVAR token)
	lea  rax, token[rip]
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
// Line 381 (RETURN (LVAR 12))
// Line 381 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global cmp_token
// Line 384 FDECL cmp_token func ( * struct <Token>  t1 , * struct <Token>  t2 ) bool 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (LVAR 16)) len 32)) (== (CALL memcmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (LVAR 16)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN  1 ):) NULL ):(RETURN  0 ):))
cmp_token:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 388 (IF (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (LVAR 16)) len 32)) (== (CALL memcmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (LVAR 16)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )) (BLOCK(RETURN  1 ):) NULL )
// Line 385 (&& (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (LVAR 16)) len 32)) (== (CALL memcmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (LVAR 16)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 ))
// Line 385 (== (MEMBER (DEREF (LVAR 8)) len 32) (MEMBER (DEREF (LVAR 16)) len 32))
// Line 385 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 385 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 385 (MEMBER (DEREF (LVAR 16)) len 32)
// Line 385 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
	je   .L000123
// Line 385 (== (CALL memcmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (LVAR 16)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )  0 )
// Line 385 (CALL memcmp ((MEMBER (DEREF (LVAR 8)) str 24):(MEMBER (DEREF (LVAR 16)) str 24):(MEMBER (DEREF (LVAR 8)) len 32):) )
// Line 385 (MEMBER (DEREF (LVAR 8)) len 32)
// Line 385 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 385 (MEMBER (DEREF (LVAR 16)) str 24)
// Line 385 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 385 (MEMBER (DEREF (LVAR 8)) str 24)
// Line 385 (LVAR 8)
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
	jnz  .L000125
	mov  rax, 0
	call memcmp
	jmp  .L000126
.L000125:
	sub  rsp, 8
	mov  rax, 0
	call memcmp
	add  rsp, 8
.L000126:
	push rax
// Line 385  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000123
	mov  rax, 1
	jmp  .L000124
.L000123:
	mov  rax, 0
.L000124:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000121
// Line 388 (BLOCK(RETURN  1 ):)
// Line 386 (RETURN  1 )
// Line 1420  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000122
.L000121:
.L000122:
// Line 388 (RETURN  0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global is_type_specifier
// Line 392 FDECL is_type_specifier func ( * struct <Token>  token ) bool 
//    (LVAR 8) 
//    (BLOCK(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK(RETURN  1 ):)):)):(IF (CALL find_typedef ((LVAR 8):) ) (RETURN  1 ) NULL ):(RETURN  0 ):))
is_type_specifier:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 393 (SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK(RETURN  1 ):)):))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 393 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 393 (LVAR 8)
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
// Line 402 (BLOCK(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK(RETURN  1 ):)):)
// Line 394 (CASE cond: 51  body:(BLOCK))
// Line 394  51 
	push 51
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000128
// Line 395 (CASE cond: 52  body:(BLOCK))
// Line 395  52 
	push 52
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000129
// Line 396 (CASE cond: 53  body:(BLOCK))
// Line 396  53 
	push 53
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000130
// Line 397 (CASE cond: 54  body:(BLOCK))
// Line 397  54 
	push 54
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000131
// Line 398 (CASE cond: 55  body:(BLOCK))
// Line 398  55 
	push 55
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000132
// Line 399 (CASE cond: 56  body:(BLOCK(RETURN  1 ):))
// Line 399  56 
	push 56
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000133
	jmp  .L000127
.L000128:
// Line 395 (BLOCK)
.L000129:
// Line 396 (BLOCK)
.L000130:
// Line 397 (BLOCK)
.L000131:
// Line 398 (BLOCK)
.L000132:
// Line 399 (BLOCK)
.L000133:
// Line 400 (BLOCK(RETURN  1 ):)
// Line 400 (RETURN  1 )
// Line 1420  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000127:
// Line 404 (IF (CALL find_typedef ((LVAR 8):) ) (RETURN  1 ) NULL )
// Line 402 (CALL find_typedef ((LVAR 8):) )
// Line 402 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000136
	mov  rax, 0
	call find_typedef
	jmp  .L000137
.L000136:
	sub  rsp, 8
	mov  rax, 0
	call find_typedef
	add  rsp, 8
.L000137:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000134
// Line 403 (RETURN  1 )
// Line 1420  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000135
.L000134:
.L000135:
// Line 404 (RETURN  0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_lvar
// Line 410 FDECL new_lvar func ( * struct <Token>  token , * struct <Type>  type ) * struct <LVar> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 48 :) )):(= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8)):(= (LVAR 32) (CALL sizeof_type ((LVAR 16):) )):(IF (== (LVAR 32)  0 ) (BLOCK(CALL print_structs () ):(CALL error_at_token ((LVAR 8):(ADDR  "Inncomplete type is not allowed." ):) ):) NULL ):(IF (GVAR locals) (BLOCK(= (LVAR 28) (+ (MEMBER (DEREF (GVAR locals)) offset 24) (LVAR 32))):) (BLOCK(= (LVAR 28) (LVAR 32)):)):(= (MEMBER (DEREF (LVAR 24)) offset 24) (LVAR 28)):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR locals)):(= (GVAR locals) (LVAR 24)):(= (MEMBER (DEREF (LVAR 24)) scope 32) (GVAR scope)):(= (GVAR scope) (LVAR 24)):(RETURN (LVAR 24)):))
new_lvar:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 411 (= (LVAR 24) (CALL calloc ( 1 : 48 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 411 (CALL calloc ( 1 : 48 :) )
// Line 411  48 
	push 48
// Line 411  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000138
	mov  rax, 0
	call calloc
	jmp  .L000139
.L000138:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000139:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 412 (= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8))
// Line 412 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 412 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 414 (= (LVAR 32) (CALL sizeof_type ((LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 414 (CALL sizeof_type ((LVAR 16):) )
// Line 414 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000140
	mov  rax, 0
	call sizeof_type
	jmp  .L000141
.L000140:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000141:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 419 (IF (== (LVAR 32)  0 ) (BLOCK(CALL print_structs () ):(CALL error_at_token ((LVAR 8):(ADDR  "Inncomplete type is not allowed." ):) ):) NULL )
// Line 415 (== (LVAR 32)  0 )
// Line 415 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  eax, [rax]
	push rax
// Line 415  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000142
// Line 419 (BLOCK(CALL print_structs () ):(CALL error_at_token ((LVAR 8):(ADDR  "Inncomplete type is not allowed." ):) ):)
// Line 416 (CALL print_structs () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000144
	mov  rax, 0
	call print_structs
	jmp  .L000145
.L000144:
	sub  rsp, 8
	mov  rax, 0
	call print_structs
	add  rsp, 8
.L000145:
	push rax
	pop  rax
// Line 417 (CALL error_at_token ((LVAR 8):(ADDR  "Inncomplete type is not allowed." ):) )
// Line 417 (ADDR  "Inncomplete type is not allowed." )
	lea  rax, .LS000007[rip]
	push rax
// Line 417 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000146
	mov  rax, 0
	call error_at_token
	jmp  .L000147
.L000146:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000147:
	push rax
	pop  rax
	jmp  .L000143
.L000142:
.L000143:
// Line 424 (IF (GVAR locals) (BLOCK(= (LVAR 28) (+ (MEMBER (DEREF (GVAR locals)) offset 24) (LVAR 32))):) (BLOCK(= (LVAR 28) (LVAR 32)):))
// Line 419 (GVAR locals)
	lea  rax, locals[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000148
// Line 421 (BLOCK(= (LVAR 28) (+ (MEMBER (DEREF (GVAR locals)) offset 24) (LVAR 32))):)
// Line 420 (= (LVAR 28) (+ (MEMBER (DEREF (GVAR locals)) offset 24) (LVAR 32)))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 420 (+ (MEMBER (DEREF (GVAR locals)) offset 24) (LVAR 32))
// Line 420 (MEMBER (DEREF (GVAR locals)) offset 24)
// Line 420 (GVAR locals)
	lea  rax, locals[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
// Line 420 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
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
	jmp  .L000149
.L000148:
// Line 424 (BLOCK(= (LVAR 28) (LVAR 32)):)
// Line 422 (= (LVAR 28) (LVAR 32))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 422 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000149:
// Line 424 (= (MEMBER (DEREF (LVAR 24)) offset 24) (LVAR 28))
// Line 424 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 424 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 425 (= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16))
// Line 425 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 425 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 426 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR locals))
// Line 426 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 426 (GVAR locals)
	lea  rax, locals[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 427 (= (GVAR locals) (LVAR 24))
	lea  rax, locals[rip]
	push rax
// Line 427 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 428 (= (MEMBER (DEREF (LVAR 24)) scope 32) (GVAR scope))
// Line 428 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 428 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 429 (= (GVAR scope) (LVAR 24))
	lea  rax, scope[rip]
	push rax
// Line 429 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 431 (RETURN (LVAR 24))
// Line 431 (LVAR 24)
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
	.global find_lvar
// Line 434 FDECL find_lvar func ( * struct <Token>  token ) * struct <LVar> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR scope))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
find_lvar:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 435 (FOR init: (= (LVAR 16) (GVAR scope))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):))
// Line 435 (= (LVAR 16) (GVAR scope))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 435 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
.L000152:
// Line 435 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000151
// Line 440 (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)
// Line 439 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL )
// Line 436 (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) )
// Line 436 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 436 (MEMBER (DEREF (LVAR 16)) token 8)
// Line 436 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000155
	mov  rax, 0
	call cmp_token
	jmp  .L000156
.L000155:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L000156:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000153
// Line 439 (BLOCK(RETURN (LVAR 16)):)
// Line 437 (RETURN (LVAR 16))
// Line 437 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000154
.L000153:
.L000154:
.L000150:
// Line 435 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 435 (MEMBER (DEREF (LVAR 16)) scope 32)
// Line 435 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000152
.L000151:
// Line 440 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global find_lvar_in_scope
// Line 443 FDECL find_lvar_in_scope func ( * struct <Token>  token ) bool 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR scope))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32)) body (BLOCK(IF (MEMBER (DEREF (LVAR 16)) scope_head 40) (RETURN  0 ) NULL ):(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN  1 ):) NULL ):)):(RETURN  0 ):))
find_lvar_in_scope:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 444 (FOR init: (= (LVAR 16) (GVAR scope))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32)) body (BLOCK(IF (MEMBER (DEREF (LVAR 16)) scope_head 40) (RETURN  0 ) NULL ):(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN  1 ):) NULL ):))
// Line 444 (= (LVAR 16) (GVAR scope))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 444 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
.L000159:
// Line 444 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000158
// Line 451 (BLOCK(IF (MEMBER (DEREF (LVAR 16)) scope_head 40) (RETURN  0 ) NULL ):(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN  1 ):) NULL ):)
// Line 447 (IF (MEMBER (DEREF (LVAR 16)) scope_head 40) (RETURN  0 ) NULL )
// Line 445 (MEMBER (DEREF (LVAR 16)) scope_head 40)
// Line 445 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000160
// Line 446 (RETURN  0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000161
.L000160:
.L000161:
// Line 450 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN  1 ):) NULL )
// Line 447 (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) )
// Line 447 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 447 (MEMBER (DEREF (LVAR 16)) token 8)
// Line 447 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000164
	mov  rax, 0
	call cmp_token
	jmp  .L000165
.L000164:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L000165:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000162
// Line 450 (BLOCK(RETURN  1 ):)
// Line 448 (RETURN  1 )
// Line 1420  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000163
.L000162:
.L000163:
.L000157:
// Line 444 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) scope 32))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 444 (MEMBER (DEREF (LVAR 16)) scope 32)
// Line 444 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000159
.L000158:
// Line 451 (RETURN  0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_gvar
// Line 456 FDECL new_gvar func ( * struct <Token>  ident , * struct <Type>  type ) * struct <Global> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR globals)):(= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (GVAR globals) (LVAR 24)):(RETURN (LVAR 24)):))
new_gvar:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 457 (= (LVAR 24) (CALL calloc ( 1 : 40 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 457 (CALL calloc ( 1 : 40 :) )
// Line 457  40 
	push 40
// Line 457  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000166
	mov  rax, 0
	call calloc
	jmp  .L000167
.L000166:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000167:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 458 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR globals))
// Line 458 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 458 (GVAR globals)
	lea  rax, globals[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 459 (= (MEMBER (DEREF (LVAR 24)) token 8) (LVAR 8))
// Line 459 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 459 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 460 (= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16))
// Line 460 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 460 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 461 (= (GVAR globals) (LVAR 24))
	lea  rax, globals[rip]
	push rax
// Line 461 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 462 (RETURN (LVAR 24))
// Line 462 (LVAR 24)
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
	.global find_gvar
// Line 465 FDECL find_gvar func ( * struct <Token>  token ) * struct <Global> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR globals))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
find_gvar:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 466 (FOR init: (= (LVAR 16) (GVAR globals))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):))
// Line 466 (= (LVAR 16) (GVAR globals))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 466 (GVAR globals)
	lea  rax, globals[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
.L000170:
// Line 466 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000169
// Line 471 (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)
// Line 470 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL )
// Line 467 (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) )
// Line 467 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 467 (MEMBER (DEREF (LVAR 16)) token 8)
// Line 467 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000173
	mov  rax, 0
	call cmp_token
	jmp  .L000174
.L000173:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L000174:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000171
// Line 470 (BLOCK(RETURN (LVAR 16)):)
// Line 468 (RETURN (LVAR 16))
// Line 468 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000172
.L000171:
.L000172:
.L000168:
// Line 466 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 466 (MEMBER (DEREF (LVAR 16)) next 0)
// Line 466 (LVAR 16)
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
	jmp  .L000170
.L000169:
// Line 471 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_func
// Line 476 FDECL new_func func ( * struct <Token>  ident , * struct <Type>  type , * struct <Node>  body ) * struct <Global> 
//    (LVAR 8) (LVAR 16) (LVAR 24) 
//    (BLOCK(= (LVAR 32) (CALL calloc ( 1 : 40 :) )):(= (MEMBER (DEREF (LVAR 32)) next 0) (GVAR functions)):(= (MEMBER (DEREF (LVAR 32)) token 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 32)) type 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 32)) body 24) (LVAR 24)):(= (GVAR functions) (LVAR 32)):(RETURN (LVAR 32)):))
new_func:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
	mov  [rbp - 24], rdx
// Line 477 (= (LVAR 32) (CALL calloc ( 1 : 40 :) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 477 (CALL calloc ( 1 : 40 :) )
// Line 477  40 
	push 40
// Line 477  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000175
	mov  rax, 0
	call calloc
	jmp  .L000176
.L000175:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000176:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 478 (= (MEMBER (DEREF (LVAR 32)) next 0) (GVAR functions))
// Line 478 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 478 (GVAR functions)
	lea  rax, functions[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 479 (= (MEMBER (DEREF (LVAR 32)) token 8) (LVAR 8))
// Line 479 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 479 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 480 (= (MEMBER (DEREF (LVAR 32)) type 16) (LVAR 16))
// Line 480 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 480 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 481 (= (MEMBER (DEREF (LVAR 32)) body 24) (LVAR 24))
// Line 481 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 481 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 482 (= (GVAR functions) (LVAR 32))
	lea  rax, functions[rip]
	push rax
// Line 482 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 483 (RETURN (LVAR 32))
// Line 483 (LVAR 32)
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
	.global find_func
// Line 486 FDECL find_func func ( * struct <Token>  token ) * struct <Global> 
//    (LVAR 8) 
//    (BLOCK(FOR init: (= (LVAR 16) (GVAR functions))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
find_func:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 487 (FOR init: (= (LVAR 16) (GVAR functions))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):))
// Line 487 (= (LVAR 16) (GVAR functions))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 487 (GVAR functions)
	lea  rax, functions[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
.L000179:
// Line 487 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000178
// Line 492 (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)
// Line 491 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL )
// Line 488 (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) token 8):(LVAR 8):) )
// Line 488 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 488 (MEMBER (DEREF (LVAR 16)) token 8)
// Line 488 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000182
	mov  rax, 0
	call cmp_token
	jmp  .L000183
.L000182:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L000183:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000180
// Line 491 (BLOCK(RETURN (LVAR 16)):)
// Line 489 (RETURN (LVAR 16))
// Line 489 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000181
.L000180:
.L000181:
.L000177:
// Line 487 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 487 (MEMBER (DEREF (LVAR 16)) next 0)
// Line 487 (LVAR 16)
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
	jmp  .L000179
.L000178:
// Line 492 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_tag
// Line 497 FDECL new_tag func ( * struct <Token>  ident , * struct <Type>  type ) * struct <TagName> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 24) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 16)) tag_name 48) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR tagnames)):(= (MEMBER (DEREF (LVAR 24)) ident 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (GVAR tagnames) (LVAR 24)):))
new_tag:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 500 (IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL )
// Line 498 (! (LVAR 8))
// Line 498 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000186
	mov  rax, 1
	jmp  .L000187
.L000186:
	mov  rax, 0
.L000187:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000184
// Line 499 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000185
.L000184:
.L000185:
// Line 500 (= (LVAR 24) (CALL calloc ( 1 : 24 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 500 (CALL calloc ( 1 : 24 :) )
// Line 500  24 
	push 24
// Line 500  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000188
	mov  rax, 0
	call calloc
	jmp  .L000189
.L000188:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000189:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 501 (= (MEMBER (DEREF (LVAR 16)) tag_name 48) (LVAR 8))
// Line 501 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	push rax
// Line 501 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 502 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR tagnames))
// Line 502 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 502 (GVAR tagnames)
	lea  rax, tagnames[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 503 (= (MEMBER (DEREF (LVAR 24)) ident 8) (LVAR 8))
// Line 503 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 503 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 504 (= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16))
// Line 504 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 504 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 505 (= (GVAR tagnames) (LVAR 24))
	lea  rax, tagnames[rip]
	push rax
// Line 505 (LVAR 24)
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
	.global find_tag
// Line 508 FDECL find_tag func ( * struct <Token>  token ) * struct <TagName> 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(FOR init: (= (LVAR 16) (GVAR tagnames))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)):(RETURN (CAST * void   0 )):))
find_tag:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 511 (IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL )
// Line 509 (! (LVAR 8))
// Line 509 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000192
	mov  rax, 1
	jmp  .L000193
.L000192:
	mov  rax, 0
.L000193:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000190
// Line 510 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000191
.L000190:
.L000191:
// Line 511 (FOR init: (= (LVAR 16) (GVAR tagnames))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)) body (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):))
// Line 511 (= (LVAR 16) (GVAR tagnames))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 511 (GVAR tagnames)
	lea  rax, tagnames[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
.L000196:
// Line 511 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000195
// Line 516 (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL ):)
// Line 515 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 8):(LVAR 8):) ) (BLOCK(RETURN (LVAR 16)):) NULL )
// Line 512 (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 8):(LVAR 8):) )
// Line 512 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 512 (MEMBER (DEREF (LVAR 16)) ident 8)
// Line 512 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000199
	mov  rax, 0
	call cmp_token
	jmp  .L000200
.L000199:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L000200:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000197
// Line 515 (BLOCK(RETURN (LVAR 16)):)
// Line 513 (RETURN (LVAR 16))
// Line 513 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000198
.L000197:
.L000198:
.L000194:
// Line 511 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 511 (MEMBER (DEREF (LVAR 16)) next 0)
// Line 511 (LVAR 16)
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
	jmp  .L000196
.L000195:
// Line 516 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_typedef
// Line 519 FDECL new_typedef func ( * struct <Token>  ident , * struct <Type>  type ) * struct <Typedef> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 24) (CALL calloc ( 1 : 24 :) )):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR tdef_names)):(= (MEMBER (DEREF (LVAR 24)) ident 16) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) type 8) (LVAR 16)):(= (GVAR tdef_names) (LVAR 24)):))
new_typedef:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 522 (IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL )
// Line 520 (! (LVAR 8))
// Line 520 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000203
	mov  rax, 1
	jmp  .L000204
.L000203:
	mov  rax, 0
.L000204:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000201
// Line 521 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000202
.L000201:
.L000202:
// Line 522 (= (LVAR 24) (CALL calloc ( 1 : 24 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 522 (CALL calloc ( 1 : 24 :) )
// Line 522  24 
	push 24
// Line 522  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000205
	mov  rax, 0
	call calloc
	jmp  .L000206
.L000205:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000206:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 523 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR tdef_names))
// Line 523 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 523 (GVAR tdef_names)
	lea  rax, tdef_names[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 524 (= (MEMBER (DEREF (LVAR 24)) ident 16) (LVAR 8))
// Line 524 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 524 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 525 (= (MEMBER (DEREF (LVAR 24)) type 8) (LVAR 16))
// Line 525 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 525 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 526 (= (GVAR tdef_names) (LVAR 24))
	lea  rax, tdef_names[rip]
	push rax
// Line 526 (LVAR 24)
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
	.global find_typedef
// Line 529 FDECL find_typedef func ( * struct <Token>  ident ) * struct <Type> 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 16) (GVAR tdef_names)):(WHILE cond:(LVAR 16)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 16):(LVAR 8):) ) (BLOCK(RETURN (MEMBER (DEREF (LVAR 16)) type 8)):) NULL ):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):)):(RETURN (CAST * void   0 )):))
find_typedef:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 532 (IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL )
// Line 530 (! (LVAR 8))
// Line 530 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000209
	mov  rax, 1
	jmp  .L000210
.L000209:
	mov  rax, 0
.L000210:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000207
// Line 531 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000208
.L000207:
.L000208:
// Line 532 (= (LVAR 16) (GVAR tdef_names))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 532 (GVAR tdef_names)
	lea  rax, tdef_names[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 539 (WHILE cond:(LVAR 16)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 16):(LVAR 8):) ) (BLOCK(RETURN (MEMBER (DEREF (LVAR 16)) type 8)):) NULL ):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):))
.L000211:
// Line 533 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000212
// Line 539 (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 16):(LVAR 8):) ) (BLOCK(RETURN (MEMBER (DEREF (LVAR 16)) type 8)):) NULL ):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):)
// Line 537 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 16):(LVAR 8):) ) (BLOCK(RETURN (MEMBER (DEREF (LVAR 16)) type 8)):) NULL )
// Line 534 (CALL cmp_token ((MEMBER (DEREF (LVAR 16)) ident 16):(LVAR 8):) )
// Line 534 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 534 (MEMBER (DEREF (LVAR 16)) ident 16)
// Line 534 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000215
	mov  rax, 0
	call cmp_token
	jmp  .L000216
.L000215:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L000216:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000213
// Line 537 (BLOCK(RETURN (MEMBER (DEREF (LVAR 16)) type 8)):)
// Line 535 (RETURN (MEMBER (DEREF (LVAR 16)) type 8))
// Line 535 (MEMBER (DEREF (LVAR 16)) type 8)
// Line 535 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000214
.L000213:
.L000214:
// Line 537 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 537 (MEMBER (DEREF (LVAR 16)) next 0)
// Line 537 (LVAR 16)
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
	jmp  .L000211
.L000212:
// Line 539 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global get_member_type
// Line 542 FDECL get_member_type func ( * struct <Type>  type , * struct <Token>  ident ) * struct <MemberInfo> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (CALL is_struct ((LVAR 8):) )) (CALL error_at_token ((LVAR 16):(ADDR  "Not a struct." ):) ) NULL ):(IF (! (MEMBER (DEREF (LVAR 8)) tag_name 48)) (BLOCK(IF (! (MEMBER (DEREF (LVAR 8)) member 32)) (CALL error_at_token ((LVAR 16):(ADDR  "No tag name and the type has no member." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) member 32)):) (BLOCK(= (LVAR 32) (CALL find_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):) )):(IF (! (LVAR 32)) (CALL error_at_token ((LVAR 16):(ADDR  "Undefined tag name." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 32)) type 16)) member 32)):)):(WHILE cond:(LVAR 24)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 24)) ident 8):(LVAR 16):) ) (RETURN (LVAR 24)) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(RETURN (CAST * void   0 )):))
get_member_type:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 545 (IF (! (CALL is_struct ((LVAR 8):) )) (CALL error_at_token ((LVAR 16):(ADDR  "Not a struct." ):) ) NULL )
// Line 543 (! (CALL is_struct ((LVAR 8):) ))
// Line 543 (CALL is_struct ((LVAR 8):) )
// Line 543 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000221
	mov  rax, 0
	call is_struct
	jmp  .L000222
.L000221:
	sub  rsp, 8
	mov  rax, 0
	call is_struct
	add  rsp, 8
.L000222:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000219
	mov  rax, 1
	jmp  .L000220
.L000219:
	mov  rax, 0
.L000220:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000217
// Line 544 (CALL error_at_token ((LVAR 16):(ADDR  "Not a struct." ):) )
// Line 544 (ADDR  "Not a struct." )
	lea  rax, .LS000008[rip]
	push rax
// Line 544 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000223
	mov  rax, 0
	call error_at_token
	jmp  .L000224
.L000223:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000224:
	push rax
	pop  rax
	jmp  .L000218
.L000217:
.L000218:
// Line 557 (IF (! (MEMBER (DEREF (LVAR 8)) tag_name 48)) (BLOCK(IF (! (MEMBER (DEREF (LVAR 8)) member 32)) (CALL error_at_token ((LVAR 16):(ADDR  "No tag name and the type has no member." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) member 32)):) (BLOCK(= (LVAR 32) (CALL find_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):) )):(IF (! (LVAR 32)) (CALL error_at_token ((LVAR 16):(ADDR  "Undefined tag name." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 32)) type 16)) member 32)):))
// Line 546 (! (MEMBER (DEREF (LVAR 8)) tag_name 48))
// Line 546 (MEMBER (DEREF (LVAR 8)) tag_name 48)
// Line 546 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000227
	mov  rax, 1
	jmp  .L000228
.L000227:
	mov  rax, 0
.L000228:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000225
// Line 550 (BLOCK(IF (! (MEMBER (DEREF (LVAR 8)) member 32)) (CALL error_at_token ((LVAR 16):(ADDR  "No tag name and the type has no member." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) member 32)):)
// Line 549 (IF (! (MEMBER (DEREF (LVAR 8)) member 32)) (CALL error_at_token ((LVAR 16):(ADDR  "No tag name and the type has no member." ):) ) NULL )
// Line 547 (! (MEMBER (DEREF (LVAR 8)) member 32))
// Line 547 (MEMBER (DEREF (LVAR 8)) member 32)
// Line 547 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000231
	mov  rax, 1
	jmp  .L000232
.L000231:
	mov  rax, 0
.L000232:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000229
// Line 548 (CALL error_at_token ((LVAR 16):(ADDR  "No tag name and the type has no member." ):) )
// Line 548 (ADDR  "No tag name and the type has no member." )
	lea  rax, .LS000009[rip]
	push rax
// Line 548 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000233
	mov  rax, 0
	call error_at_token
	jmp  .L000234
.L000233:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000234:
	push rax
	pop  rax
	jmp  .L000230
.L000229:
.L000230:
// Line 549 (= (LVAR 24) (MEMBER (DEREF (LVAR 8)) member 32))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 549 (MEMBER (DEREF (LVAR 8)) member 32)
// Line 549 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000226
.L000225:
// Line 557 (BLOCK(= (LVAR 32) (CALL find_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):) )):(IF (! (LVAR 32)) (CALL error_at_token ((LVAR 16):(ADDR  "Undefined tag name." ):) ) NULL ):(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 32)) type 16)) member 32)):)
// Line 551 (= (LVAR 32) (CALL find_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 551 (CALL find_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):) )
// Line 551 (MEMBER (DEREF (LVAR 8)) tag_name 48)
// Line 551 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000235
	mov  rax, 0
	call find_tag
	jmp  .L000236
.L000235:
	sub  rsp, 8
	mov  rax, 0
	call find_tag
	add  rsp, 8
.L000236:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 554 (IF (! (LVAR 32)) (CALL error_at_token ((LVAR 16):(ADDR  "Undefined tag name." ):) ) NULL )
// Line 552 (! (LVAR 32))
// Line 552 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000239
	mov  rax, 1
	jmp  .L000240
.L000239:
	mov  rax, 0
.L000240:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000237
// Line 553 (CALL error_at_token ((LVAR 16):(ADDR  "Undefined tag name." ):) )
// Line 553 (ADDR  "Undefined tag name." )
	lea  rax, .LS000010[rip]
	push rax
// Line 553 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000241
	mov  rax, 0
	call error_at_token
	jmp  .L000242
.L000241:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000242:
	push rax
	pop  rax
	jmp  .L000238
.L000237:
.L000238:
// Line 554 (= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 32)) type 16)) member 32))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 554 (MEMBER (DEREF (MEMBER (DEREF (LVAR 32)) type 16)) member 32)
// Line 554 (MEMBER (DEREF (LVAR 32)) type 16)
// Line 554 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000226:
// Line 562 (WHILE cond:(LVAR 24)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 24)) ident 8):(LVAR 16):) ) (RETURN (LVAR 24)) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):))
.L000243:
// Line 557 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000244
// Line 562 (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 24)) ident 8):(LVAR 16):) ) (RETURN (LVAR 24)) NULL ):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)
// Line 560 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 24)) ident 8):(LVAR 16):) ) (RETURN (LVAR 24)) NULL )
// Line 558 (CALL cmp_token ((MEMBER (DEREF (LVAR 24)) ident 8):(LVAR 16):) )
// Line 558 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 558 (MEMBER (DEREF (LVAR 24)) ident 8)
// Line 558 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000247
	mov  rax, 0
	call cmp_token
	jmp  .L000248
.L000247:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L000248:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000245
// Line 559 (RETURN (LVAR 24))
// Line 559 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000246
.L000245:
.L000246:
// Line 560 (= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 560 (MEMBER (DEREF (LVAR 24)) next 0)
// Line 560 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
	jmp  .L000243
.L000244:
// Line 562 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_member_info
// Line 565 FDECL new_member_info func ( * struct <Token>  ident , * struct <Type>  type ) * struct <MemberInfo> 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 24) (CALL calloc ( 1 : 32 :) )):(= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) ident 8) (LVAR 8)):(RETURN (LVAR 24)):))
new_member_info:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 566 (= (LVAR 24) (CALL calloc ( 1 : 32 :) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 566 (CALL calloc ( 1 : 32 :) )
// Line 566  32 
	push 32
// Line 566  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000249
	mov  rax, 0
	call calloc
	jmp  .L000250
.L000249:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000250:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 567 (= (MEMBER (DEREF (LVAR 24)) type 16) (LVAR 16))
// Line 567 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 567 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 568 (= (MEMBER (DEREF (LVAR 24)) ident 8) (LVAR 8))
// Line 568 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 568 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 569 (RETURN (LVAR 24))
// Line 569 (LVAR 24)
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
	.global parse_prim_expr
// Line 581 FDECL parse_prim_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(IF (CALL at_eof () ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected EOF." ):) ):) NULL ):(IF (CALL peek ( 1 :) ) (BLOCK(RETURN (CALL new_node_num ((CALL consume_number () ):(LVAR 8):) )):) NULL ):(IF (CALL peek ( 2 :) ) (BLOCK(RETURN (CALL new_node_str ((CALL consume () ):) )):) NULL ):(IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (LVAR 16)):) NULL ):(IF (CALL consume_if ( 0 :) ) (BLOCK(= (LVAR 24) (CALL find_lvar ((LVAR 8):) )):(IF (LVAR 24) (RETURN (CALL new_node_lvar ((LVAR 24):(LVAR 8):) )) NULL ):(= (LVAR 32) (CALL find_gvar ((LVAR 8):) )):(IF (LVAR 32) (RETURN (CALL new_node_gvar ((LVAR 32):(LVAR 8):) )) NULL ):(= (LVAR 40) (CALL find_tag ((LVAR 8):) )):(IF (&& (LVAR 40) (CALL is_enum_el ((MEMBER (DEREF (LVAR 40)) type 16):) )) (BLOCK(RETURN (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) )):) NULL ):(IF (CALL peek ( 29 :) ) (BLOCK(IF (CALL find_func ((LVAR 8):) ) (RETURN (CALL new_node_ident ((LVAR 8):) )) NULL ):) NULL ):(CALL error_at_token ((LVAR 8):(ADDR  "Identifier is not defined." ):) ):) NULL ):(IF (CALL consume_if ( 61 :) ) (BLOCK(IF (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(ADDR  "__LINE__" ): 8 :) )  0 ) (RETURN (CALL new_node_num ((CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) ):(LVAR 8):) )) NULL ):) NULL ):(IF (CALL is_type_specifier ((GVAR token):) ) (CALL error_at_token ((GVAR token):(ADDR  "Can not use declaration here." ):) ) NULL ):(CALL error_at_token ((GVAR token):(ADDR  "parse_prim_expr(): Unexpected token." ):) ):))
parse_prim_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
// Line 582 (= (LVAR 8) (GVAR token))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 582 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 586 (IF (CALL at_eof () ) (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected EOF." ):) ):) NULL )
// Line 583 (CALL at_eof () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000253
	mov  rax, 0
	call at_eof
	jmp  .L000254
.L000253:
	sub  rsp, 8
	mov  rax, 0
	call at_eof
	add  rsp, 8
.L000254:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000251
// Line 586 (BLOCK(CALL error_at_token ((GVAR token):(ADDR  "Unexpected EOF." ):) ):)
// Line 584 (CALL error_at_token ((GVAR token):(ADDR  "Unexpected EOF." ):) )
// Line 584 (ADDR  "Unexpected EOF." )
	lea  rax, .LS000011[rip]
	push rax
// Line 584 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000255
	mov  rax, 0
	call error_at_token
	jmp  .L000256
.L000255:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000256:
	push rax
	pop  rax
	jmp  .L000252
.L000251:
.L000252:
// Line 589 (IF (CALL peek ( 1 :) ) (BLOCK(RETURN (CALL new_node_num ((CALL consume_number () ):(LVAR 8):) )):) NULL )
// Line 586 (CALL peek ( 1 :) )
// Line 586  1 
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000259
	mov  rax, 0
	call peek
	jmp  .L000260
.L000259:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000260:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000257
// Line 589 (BLOCK(RETURN (CALL new_node_num ((CALL consume_number () ):(LVAR 8):) )):)
// Line 587 (RETURN (CALL new_node_num ((CALL consume_number () ):(LVAR 8):) ))
// Line 587 (CALL new_node_num ((CALL consume_number () ):(LVAR 8):) )
// Line 587 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 587 (CALL consume_number () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000261
	mov  rax, 0
	call consume_number
	jmp  .L000262
.L000261:
	sub  rsp, 8
	mov  rax, 0
	call consume_number
	add  rsp, 8
.L000262:
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000263
	mov  rax, 0
	call new_node_num
	jmp  .L000264
.L000263:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000264:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000258
.L000257:
.L000258:
// Line 592 (IF (CALL peek ( 2 :) ) (BLOCK(RETURN (CALL new_node_str ((CALL consume () ):) )):) NULL )
// Line 589 (CALL peek ( 2 :) )
// Line 589  2 
	push 2
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000267
	mov  rax, 0
	call peek
	jmp  .L000268
.L000267:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000268:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000265
// Line 592 (BLOCK(RETURN (CALL new_node_str ((CALL consume () ):) )):)
// Line 590 (RETURN (CALL new_node_str ((CALL consume () ):) ))
// Line 590 (CALL new_node_str ((CALL consume () ):) )
// Line 590 (CALL consume () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000269
	mov  rax, 0
	call consume
	jmp  .L000270
.L000269:
	sub  rsp, 8
	mov  rax, 0
	call consume
	add  rsp, 8
.L000270:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000271
	mov  rax, 0
	call new_node_str
	jmp  .L000272
.L000271:
	sub  rsp, 8
	mov  rax, 0
	call new_node_str
	add  rsp, 8
.L000272:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000266
.L000265:
.L000266:
// Line 597 (IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (LVAR 16)):) NULL )
// Line 592 (CALL consume_if ( 29 :) )
// Line 592  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000275
	mov  rax, 0
	call consume_if
	jmp  .L000276
.L000275:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000276:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000273
// Line 597 (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (LVAR 16)):)
// Line 593 (= (LVAR 16) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 593 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000277
	mov  rax, 0
	call parse_expr
	jmp  .L000278
.L000277:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000278:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 594 (CALL expect ( 30 :) )
// Line 594  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000279
	mov  rax, 0
	call expect
	jmp  .L000280
.L000279:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000280:
	push rax
	pop  rax
// Line 595 (RETURN (LVAR 16))
// Line 595 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000274
.L000273:
.L000274:
// Line 614 (IF (CALL consume_if ( 0 :) ) (BLOCK(= (LVAR 24) (CALL find_lvar ((LVAR 8):) )):(IF (LVAR 24) (RETURN (CALL new_node_lvar ((LVAR 24):(LVAR 8):) )) NULL ):(= (LVAR 32) (CALL find_gvar ((LVAR 8):) )):(IF (LVAR 32) (RETURN (CALL new_node_gvar ((LVAR 32):(LVAR 8):) )) NULL ):(= (LVAR 40) (CALL find_tag ((LVAR 8):) )):(IF (&& (LVAR 40) (CALL is_enum_el ((MEMBER (DEREF (LVAR 40)) type 16):) )) (BLOCK(RETURN (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) )):) NULL ):(IF (CALL peek ( 29 :) ) (BLOCK(IF (CALL find_func ((LVAR 8):) ) (RETURN (CALL new_node_ident ((LVAR 8):) )) NULL ):) NULL ):(CALL error_at_token ((LVAR 8):(ADDR  "Identifier is not defined." ):) ):) NULL )
// Line 597 (CALL consume_if ( 0 :) )
// Line 597  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000283
	mov  rax, 0
	call consume_if
	jmp  .L000284
.L000283:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000284:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000281
// Line 614 (BLOCK(= (LVAR 24) (CALL find_lvar ((LVAR 8):) )):(IF (LVAR 24) (RETURN (CALL new_node_lvar ((LVAR 24):(LVAR 8):) )) NULL ):(= (LVAR 32) (CALL find_gvar ((LVAR 8):) )):(IF (LVAR 32) (RETURN (CALL new_node_gvar ((LVAR 32):(LVAR 8):) )) NULL ):(= (LVAR 40) (CALL find_tag ((LVAR 8):) )):(IF (&& (LVAR 40) (CALL is_enum_el ((MEMBER (DEREF (LVAR 40)) type 16):) )) (BLOCK(RETURN (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) )):) NULL ):(IF (CALL peek ( 29 :) ) (BLOCK(IF (CALL find_func ((LVAR 8):) ) (RETURN (CALL new_node_ident ((LVAR 8):) )) NULL ):) NULL ):(CALL error_at_token ((LVAR 8):(ADDR  "Identifier is not defined." ):) ):)
// Line 598 (= (LVAR 24) (CALL find_lvar ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 598 (CALL find_lvar ((LVAR 8):) )
// Line 598 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000285
	mov  rax, 0
	call find_lvar
	jmp  .L000286
.L000285:
	sub  rsp, 8
	mov  rax, 0
	call find_lvar
	add  rsp, 8
.L000286:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 601 (IF (LVAR 24) (RETURN (CALL new_node_lvar ((LVAR 24):(LVAR 8):) )) NULL )
// Line 599 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000287
// Line 600 (RETURN (CALL new_node_lvar ((LVAR 24):(LVAR 8):) ))
// Line 600 (CALL new_node_lvar ((LVAR 24):(LVAR 8):) )
// Line 600 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 600 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000289
	mov  rax, 0
	call new_node_lvar
	jmp  .L000290
.L000289:
	sub  rsp, 8
	mov  rax, 0
	call new_node_lvar
	add  rsp, 8
.L000290:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000288
.L000287:
.L000288:
// Line 601 (= (LVAR 32) (CALL find_gvar ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 601 (CALL find_gvar ((LVAR 8):) )
// Line 601 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000291
	mov  rax, 0
	call find_gvar
	jmp  .L000292
.L000291:
	sub  rsp, 8
	mov  rax, 0
	call find_gvar
	add  rsp, 8
.L000292:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 604 (IF (LVAR 32) (RETURN (CALL new_node_gvar ((LVAR 32):(LVAR 8):) )) NULL )
// Line 602 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000293
// Line 603 (RETURN (CALL new_node_gvar ((LVAR 32):(LVAR 8):) ))
// Line 603 (CALL new_node_gvar ((LVAR 32):(LVAR 8):) )
// Line 603 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 603 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000295
	mov  rax, 0
	call new_node_gvar
	jmp  .L000296
.L000295:
	sub  rsp, 8
	mov  rax, 0
	call new_node_gvar
	add  rsp, 8
.L000296:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000294
.L000293:
.L000294:
// Line 604 (= (LVAR 40) (CALL find_tag ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 604 (CALL find_tag ((LVAR 8):) )
// Line 604 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000297
	mov  rax, 0
	call find_tag
	jmp  .L000298
.L000297:
	sub  rsp, 8
	mov  rax, 0
	call find_tag
	add  rsp, 8
.L000298:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 608 (IF (&& (LVAR 40) (CALL is_enum_el ((MEMBER (DEREF (LVAR 40)) type 16):) )) (BLOCK(RETURN (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) )):) NULL )
// Line 605 (&& (LVAR 40) (CALL is_enum_el ((MEMBER (DEREF (LVAR 40)) type 16):) ))
// Line 605 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000301
// Line 605 (CALL is_enum_el ((MEMBER (DEREF (LVAR 40)) type 16):) )
// Line 605 (MEMBER (DEREF (LVAR 40)) type 16)
// Line 605 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000303
	mov  rax, 0
	call is_enum_el
	jmp  .L000304
.L000303:
	sub  rsp, 8
	mov  rax, 0
	call is_enum_el
	add  rsp, 8
.L000304:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000301
	mov  rax, 1
	jmp  .L000302
.L000301:
	mov  rax, 0
.L000302:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000299
// Line 608 (BLOCK(RETURN (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) )):)
// Line 606 (RETURN (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) ))
// Line 606 (CALL new_node_num ((MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40):(LVAR 8):) )
// Line 606 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 606 (MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) type 16)) offset 40)
// Line 606 (MEMBER (DEREF (LVAR 40)) type 16)
// Line 606 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000305
	mov  rax, 0
	call new_node_num
	jmp  .L000306
.L000305:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000306:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000300
.L000299:
.L000300:
// Line 612 (IF (CALL peek ( 29 :) ) (BLOCK(IF (CALL find_func ((LVAR 8):) ) (RETURN (CALL new_node_ident ((LVAR 8):) )) NULL ):) NULL )
// Line 608 (CALL peek ( 29 :) )
// Line 608  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000309
	mov  rax, 0
	call peek
	jmp  .L000310
.L000309:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000310:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000307
// Line 612 (BLOCK(IF (CALL find_func ((LVAR 8):) ) (RETURN (CALL new_node_ident ((LVAR 8):) )) NULL ):)
// Line 611 (IF (CALL find_func ((LVAR 8):) ) (RETURN (CALL new_node_ident ((LVAR 8):) )) NULL )
// Line 609 (CALL find_func ((LVAR 8):) )
// Line 609 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000313
	mov  rax, 0
	call find_func
	jmp  .L000314
.L000313:
	sub  rsp, 8
	mov  rax, 0
	call find_func
	add  rsp, 8
.L000314:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000311
// Line 610 (RETURN (CALL new_node_ident ((LVAR 8):) ))
// Line 610 (CALL new_node_ident ((LVAR 8):) )
// Line 610 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000315
	mov  rax, 0
	call new_node_ident
	jmp  .L000316
.L000315:
	sub  rsp, 8
	mov  rax, 0
	call new_node_ident
	add  rsp, 8
.L000316:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000312
.L000311:
.L000312:
	jmp  .L000308
.L000307:
.L000308:
// Line 612 (CALL error_at_token ((LVAR 8):(ADDR  "Identifier is not defined." ):) )
// Line 612 (ADDR  "Identifier is not defined." )
	lea  rax, .LS000012[rip]
	push rax
// Line 612 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000317
	mov  rax, 0
	call error_at_token
	jmp  .L000318
.L000317:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000318:
	push rax
	pop  rax
	jmp  .L000282
.L000281:
.L000282:
// Line 619 (IF (CALL consume_if ( 61 :) ) (BLOCK(IF (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(ADDR  "__LINE__" ): 8 :) )  0 ) (RETURN (CALL new_node_num ((CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) ):(LVAR 8):) )) NULL ):) NULL )
// Line 614 (CALL consume_if ( 61 :) )
// Line 614  61 
	push 61
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000321
	mov  rax, 0
	call consume_if
	jmp  .L000322
.L000321:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000322:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000319
// Line 619 (BLOCK(IF (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(ADDR  "__LINE__" ): 8 :) )  0 ) (RETURN (CALL new_node_num ((CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) ):(LVAR 8):) )) NULL ):)
// Line 618 (IF (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(ADDR  "__LINE__" ): 8 :) )  0 ) (RETURN (CALL new_node_num ((CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) ):(LVAR 8):) )) NULL )
// Line 615 (== (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(ADDR  "__LINE__" ): 8 :) )  0 )
// Line 615 (CALL strncmp ((MEMBER (DEREF (LVAR 8)) str 24):(ADDR  "__LINE__" ): 8 :) )
// Line 615  8 
	push 8
// Line 615 (ADDR  "__LINE__" )
	lea  rax, .LS000013[rip]
	push rax
// Line 615 (MEMBER (DEREF (LVAR 8)) str 24)
// Line 615 (LVAR 8)
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
	jnz  .L000325
	mov  rax, 0
	call strncmp
	jmp  .L000326
.L000325:
	sub  rsp, 8
	mov  rax, 0
	call strncmp
	add  rsp, 8
.L000326:
	push rax
// Line 615  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000323
// Line 616 (RETURN (CALL new_node_num ((CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) ):(LVAR 8):) ))
// Line 616 (CALL new_node_num ((CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) ):(LVAR 8):) )
// Line 617 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 616 (CALL get_line ((MEMBER (DEREF (LVAR 8)) str 24):(GVAR source_text):) )
// Line 616 (GVAR source_text)
	lea  rax, source_text[rip]
	mov  rax, [rax]
	push rax
// Line 616 (MEMBER (DEREF (LVAR 8)) str 24)
// Line 616 (LVAR 8)
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
	mov  rax, rsp
	and  rax, 15
	jnz  .L000327
	mov  rax, 0
	call get_line
	jmp  .L000328
.L000327:
	sub  rsp, 8
	mov  rax, 0
	call get_line
	add  rsp, 8
.L000328:
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000329
	mov  rax, 0
	call new_node_num
	jmp  .L000330
.L000329:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000330:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000324
.L000323:
.L000324:
	jmp  .L000320
.L000319:
.L000320:
// Line 621 (IF (CALL is_type_specifier ((GVAR token):) ) (CALL error_at_token ((GVAR token):(ADDR  "Can not use declaration here." ):) ) NULL )
// Line 619 (CALL is_type_specifier ((GVAR token):) )
// Line 619 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000333
	mov  rax, 0
	call is_type_specifier
	jmp  .L000334
.L000333:
	sub  rsp, 8
	mov  rax, 0
	call is_type_specifier
	add  rsp, 8
.L000334:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000331
// Line 620 (CALL error_at_token ((GVAR token):(ADDR  "Can not use declaration here." ):) )
// Line 620 (ADDR  "Can not use declaration here." )
	lea  rax, .LS000014[rip]
	push rax
// Line 620 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000335
	mov  rax, 0
	call error_at_token
	jmp  .L000336
.L000335:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000336:
	push rax
	pop  rax
	jmp  .L000332
.L000331:
.L000332:
// Line 621 (CALL error_at_token ((GVAR token):(ADDR  "parse_prim_expr(): Unexpected token." ):) )
// Line 621 (ADDR  "parse_prim_expr(): Unexpected token." )
	lea  rax, .LS000015[rip]
	push rax
// Line 621 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000337
	mov  rax, 0
	call error_at_token
	jmp  .L000338
.L000337:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000338:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_postfix_expr
// Line 624 FDECL parse_postfix_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_prim_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 29 :) ) (BLOCK(IF (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 ) (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) ) NULL ):(= (LVAR 24) (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) )):(IF (! (LVAR 24)) (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 8)) type 80) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8)):(= (LVAR 32) (CALL vec_new () )):(= (LVAR 40) (GVAR token)):(= (LVAR 48) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24)):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(IF (LVAR 48) (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) ) NULL ):(CALL expect ( 30 :) ):(= (LVAR 8) (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (IF (CALL consume_if ( 33 :) ) (BLOCK(= (LVAR 64) (CALL parse_expr () )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )):(= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )):(CALL expect ( 34 :) ):) (IF (CALL consume_if ( 18 :) ) (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8)))))))):)):))
parse_postfix_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 96
// Line 625 (= (LVAR 8) (CALL parse_prim_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 625 (CALL parse_prim_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000339
	mov  rax, 0
	call parse_prim_expr
	jmp  .L000340
.L000339:
	sub  rsp, 8
	mov  rax, 0
	call parse_prim_expr
	add  rsp, 8
.L000340:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 686 (WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 29 :) ) (BLOCK(IF (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 ) (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) ) NULL ):(= (LVAR 24) (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) )):(IF (! (LVAR 24)) (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 8)) type 80) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8)):(= (LVAR 32) (CALL vec_new () )):(= (LVAR 40) (GVAR token)):(= (LVAR 48) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24)):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(IF (LVAR 48) (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) ) NULL ):(CALL expect ( 30 :) ):(= (LVAR 8) (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (IF (CALL consume_if ( 33 :) ) (BLOCK(= (LVAR 64) (CALL parse_expr () )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )):(= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )):(CALL expect ( 34 :) ):) (IF (CALL consume_if ( 18 :) ) (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8)))))))):))
.L000341:
// Line 1420  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000342
// Line 686 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 29 :) ) (BLOCK(IF (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 ) (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) ) NULL ):(= (LVAR 24) (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) )):(IF (! (LVAR 24)) (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 8)) type 80) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8)):(= (LVAR 32) (CALL vec_new () )):(= (LVAR 40) (GVAR token)):(= (LVAR 48) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24)):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(IF (LVAR 48) (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) ) NULL ):(CALL expect ( 30 :) ):(= (LVAR 8) (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (IF (CALL consume_if ( 33 :) ) (BLOCK(= (LVAR 64) (CALL parse_expr () )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )):(= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )):(CALL expect ( 34 :) ):) (IF (CALL consume_if ( 18 :) ) (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8)))))))):)
// Line 627 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 627 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 685 (IF (CALL consume_if ( 29 :) ) (BLOCK(IF (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 ) (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) ) NULL ):(= (LVAR 24) (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) )):(IF (! (LVAR 24)) (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 8)) type 80) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8)):(= (LVAR 32) (CALL vec_new () )):(= (LVAR 40) (GVAR token)):(= (LVAR 48) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24)):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(IF (LVAR 48) (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) ) NULL ):(CALL expect ( 30 :) ):(= (LVAR 8) (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (IF (CALL consume_if ( 33 :) ) (BLOCK(= (LVAR 64) (CALL parse_expr () )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )):(= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )):(CALL expect ( 34 :) ):) (IF (CALL consume_if ( 18 :) ) (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8))))))))
// Line 628 (CALL consume_if ( 29 :) )
// Line 628  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000345
	mov  rax, 0
	call consume_if
	jmp  .L000346
.L000345:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000346:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000343
// Line 659 (BLOCK(IF (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 ) (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) ) NULL ):(= (LVAR 24) (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) )):(IF (! (LVAR 24)) (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) ) NULL ):(= (MEMBER (DEREF (LVAR 8)) type 80) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8)):(= (LVAR 32) (CALL vec_new () )):(= (LVAR 40) (GVAR token)):(= (LVAR 48) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24)):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(IF (LVAR 48) (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) ) NULL ):(CALL expect ( 30 :) ):(= (LVAR 8) (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) )):)
// Line 631 (IF (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 ) (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) ) NULL )
// Line 629 (!= (MEMBER (DEREF (LVAR 8)) kind 0)  0 )
// Line 629 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 629 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 629  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000347
// Line 630 (CALL error_at_node ((LVAR 8):(ADDR  "Currently, callee must be an identifier." ):) )
// Line 630 (ADDR  "Currently, callee must be an identifier." )
	lea  rax, .LS000016[rip]
	push rax
// Line 630 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000349
	mov  rax, 0
	call error_at_node
	jmp  .L000350
.L000349:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000350:
	push rax
	pop  rax
	jmp  .L000348
.L000347:
.L000348:
// Line 631 (= (LVAR 24) (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 631 (CALL find_func ((MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 631 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 631 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000351
	mov  rax, 0
	call find_func
	jmp  .L000352
.L000351:
	sub  rsp, 8
	mov  rax, 0
	call find_func
	add  rsp, 8
.L000352:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 634 (IF (! (LVAR 24)) (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) ) NULL )
// Line 632 (! (LVAR 24))
// Line 632 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000355
	mov  rax, 1
	jmp  .L000356
.L000355:
	mov  rax, 0
.L000356:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000353
// Line 633 (CALL error_at_node ((LVAR 8):(ADDR  "Undefined identifier." ):) )
// Line 633 (ADDR  "Undefined identifier." )
	lea  rax, .LS000017[rip]
	push rax
// Line 633 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000357
	mov  rax, 0
	call error_at_node
	jmp  .L000358
.L000357:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000358:
	push rax
	pop  rax
	jmp  .L000354
.L000353:
.L000354:
// Line 634 (= (MEMBER (DEREF (LVAR 8)) type 80) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8))
// Line 634 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 634 (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) ptr_to 8)
// Line 634 (MEMBER (DEREF (LVAR 24)) type 16)
// Line 634 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
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
// Line 635 (= (LVAR 32) (CALL vec_new () ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 635 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000359
	mov  rax, 0
	call vec_new
	jmp  .L000360
.L000359:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L000360:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 636 (= (LVAR 40) (GVAR token))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 636 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 637 (= (LVAR 48) (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 637 (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) type 16)) params 24)
// Line 637 (MEMBER (DEREF (LVAR 24)) type 16)
// Line 637 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
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
// Line 655 (WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):))
.L000361:
// Line 638 (! (CALL peek ( 30 :) ))
// Line 638 (CALL peek ( 30 :) )
// Line 638  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000365
	mov  rax, 0
	call peek
	jmp  .L000366
.L000365:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000366:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000363
	mov  rax, 1
	jmp  .L000364
.L000363:
	mov  rax, 0
.L000364:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000362
// Line 655 (BLOCK(= (LVAR 56) (CALL parse_assign_expr () )):(IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL ):(IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL ):(CALL vec_push ((LVAR 32):(LVAR 56):) ):(IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)
// Line 641 (= (LVAR 56) (CALL parse_assign_expr () ))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 641 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000367
	mov  rax, 0
	call parse_assign_expr
	jmp  .L000368
.L000367:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L000368:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 644 (IF (CALL is_array ((CALL type ((LVAR 56):) ):) ) (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )) NULL )
// Line 642 (CALL is_array ((CALL type ((LVAR 56):) ):) )
// Line 642 (CALL type ((LVAR 56):) )
// Line 642 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000371
	mov  rax, 0
	call type
	jmp  .L000372
.L000371:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000372:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000373
	mov  rax, 0
	call is_array
	jmp  .L000374
.L000373:
	sub  rsp, 8
	mov  rax, 0
	call is_array
	add  rsp, 8
.L000374:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000369
// Line 643 (= (LVAR 56) (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) ))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 643 (CALL new_node_expr ( 21 :(LVAR 56):(CAST * void   0 ):(MEMBER (DEREF (LVAR 56)) token 72):) )
// Line 643 (MEMBER (DEREF (LVAR 56)) token 72)
// Line 643 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 643 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
// Line 643  21 
	push 21
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000375
	mov  rax, 0
	call new_node_expr
	jmp  .L000376
.L000375:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L000376:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000370
.L000369:
.L000370:
// Line 649 (IF (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))) (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):) NULL )
// Line 644 (&& (LVAR 48) (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) )))
// Line 644 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000379
// Line 644 (! (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ))
// Line 644 (CALL is_compatible_type ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) )
// Line 644 (CALL type ((LVAR 56):) )
// Line 644 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000383
	mov  rax, 0
	call type
	jmp  .L000384
.L000383:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000384:
	push rax
// Line 644 (MEMBER (DEREF (LVAR 48)) type 16)
// Line 644 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000385
	mov  rax, 0
	call is_compatible_type
	jmp  .L000386
.L000385:
	sub  rsp, 8
	mov  rax, 0
	call is_compatible_type
	add  rsp, 8
.L000386:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000381
	mov  rax, 1
	jmp  .L000382
.L000381:
	mov  rax, 0
.L000382:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000379
	mov  rax, 1
	jmp  .L000380
.L000379:
	mov  rax, 0
.L000380:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000377
// Line 649 (BLOCK(CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) ):(CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) ):)
// Line 645 (CALL error_types ((MEMBER (DEREF (LVAR 48)) type 16):(CALL type ((LVAR 56):) ):) )
// Line 645 (CALL type ((LVAR 56):) )
// Line 645 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000387
	mov  rax, 0
	call type
	jmp  .L000388
.L000387:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000388:
	push rax
// Line 645 (MEMBER (DEREF (LVAR 48)) type 16)
// Line 645 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000389
	mov  rax, 0
	call error_types
	jmp  .L000390
.L000389:
	sub  rsp, 8
	mov  rax, 0
	call error_types
	add  rsp, 8
.L000390:
	push rax
	pop  rax
// Line 646 (CALL error_at_node ((LVAR 56):(ADDR  "The type of an argument is mismatch %s" ):(ADDR  "with func parameter." ):) )
// Line 647 (ADDR  "with func parameter." )
	lea  rax, .LS000019[rip]
	push rax
// Line 646 (ADDR  "The type of an argument is mismatch %s" )
	lea  rax, .LS000018[rip]
	push rax
// Line 646 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000391
	mov  rax, 0
	call error_at_node
	jmp  .L000392
.L000391:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000392:
	push rax
	pop  rax
	jmp  .L000378
.L000377:
.L000378:
// Line 649 (CALL vec_push ((LVAR 32):(LVAR 56):) )
// Line 649 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
// Line 649 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000393
	mov  rax, 0
	call vec_push
	jmp  .L000394
.L000393:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L000394:
	push rax
	pop  rax
// Line 652 (IF (LVAR 48) (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)) NULL )
// Line 650 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000395
// Line 651 (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 651 (MEMBER (DEREF (LVAR 48)) next 0)
// Line 651 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
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
	jmp  .L000396
.L000395:
.L000396:
// Line 654 (IF (! (CALL consume_if ( 35 :) )) BREAK  NULL )
// Line 652 (! (CALL consume_if ( 35 :) ))
// Line 652 (CALL consume_if ( 35 :) )
// Line 652  35 
	push 35
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000401
	mov  rax, 0
	call consume_if
	jmp  .L000402
.L000401:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000402:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000399
	mov  rax, 1
	jmp  .L000400
.L000399:
	mov  rax, 0
.L000400:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000397
// Line 653 BREAK 
	jmp  .L000362
	jmp  .L000398
.L000397:
.L000398:
	jmp  .L000361
.L000362:
// Line 657 (IF (LVAR 48) (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) ) NULL )
// Line 655 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000403
// Line 656 (CALL error_at_token ((GVAR token):(ADDR  "Too few arguments is func call." ):) )
// Line 656 (ADDR  "Too few arguments is func call." )
	lea  rax, .LS000020[rip]
	push rax
// Line 656 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000405
	mov  rax, 0
	call error_at_token
	jmp  .L000406
.L000405:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000406:
	push rax
	pop  rax
	jmp  .L000404
.L000403:
.L000404:
// Line 657 (CALL expect ( 30 :) )
// Line 657  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000407
	mov  rax, 0
	call expect
	jmp  .L000408
.L000407:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000408:
	push rax
	pop  rax
// Line 658 (= (LVAR 8) (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 658 (CALL new_node_call ((LVAR 8):(LVAR 32):(MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 658 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 658 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
// Line 658 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 658 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000409
	mov  rax, 0
	call new_node_call
	jmp  .L000410
.L000409:
	sub  rsp, 8
	mov  rax, 0
	call new_node_call
	add  rsp, 8
.L000410:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000344
.L000343:
// Line 685 (IF (CALL consume_if ( 33 :) ) (BLOCK(= (LVAR 64) (CALL parse_expr () )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )):(= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )):(CALL expect ( 34 :) ):) (IF (CALL consume_if ( 18 :) ) (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8)))))))
// Line 659 (CALL consume_if ( 33 :) )
// Line 659  33 
	push 33
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000413
	mov  rax, 0
	call consume_if
	jmp  .L000414
.L000413:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000414:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000411
// Line 664 (BLOCK(= (LVAR 64) (CALL parse_expr () )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )):(= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )):(CALL expect ( 34 :) ):)
// Line 660 (= (LVAR 64) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 64
	push rax
// Line 660 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000415
	mov  rax, 0
	call parse_expr
	jmp  .L000416
.L000415:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000416:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 661 (= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 661 (CALL new_node_binary ( 4 :(LVAR 8):(LVAR 64):(GVAR token):) )
// Line 661 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
// Line 661 (LVAR 64)
	mov  rax, rbp
	sub  rax, 64
	mov  rax, [rax]
	push rax
// Line 661 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 661  4 
	push 4
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000417
	mov  rax, 0
	call new_node_binary
	jmp  .L000418
.L000417:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000418:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 662 (= (LVAR 8) (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 662 (CALL new_node_expr ( 22 :(LVAR 8):(CAST * void   0 ):(GVAR token):) )
// Line 662 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 662 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 662  22 
	push 22
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000419
	mov  rax, 0
	call new_node_expr
	jmp  .L000420
.L000419:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L000420:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 663 (CALL expect ( 34 :) )
// Line 663  34 
	push 34
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000421
	mov  rax, 0
	call expect
	jmp  .L000422
.L000421:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000422:
	push rax
	pop  rax
	jmp  .L000412
.L000411:
// Line 685 (IF (CALL consume_if ( 18 :) ) (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8))))))
// Line 664 (CALL consume_if ( 18 :) )
// Line 664  18 
	push 18
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000425
	mov  rax, 0
	call consume_if
	jmp  .L000426
.L000425:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000426:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000423
// Line 670 (BLOCK(= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):)
// Line 665 (= (LVAR 72) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 72
	push rax
// Line 665 (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )
// Line 666 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 665 (CALL new_node_num ( 1 :(LVAR 16):) )
// Line 665 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 665  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000427
	mov  rax, 0
	call new_node_num
	jmp  .L000428
.L000427:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000428:
	push rax
// Line 665 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 665  4 
	push 4
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000429
	mov  rax, 0
	call new_node_binary
	jmp  .L000430
.L000429:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000430:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 667 (= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 667 (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 72):(LVAR 16):) )
// Line 667 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 667 (LVAR 72)
	mov  rax, rbp
	sub  rax, 72
	mov  rax, [rax]
	push rax
// Line 667 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 667  20 
	push 20
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000431
	mov  rax, 0
	call new_node_expr
	jmp  .L000432
.L000431:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L000432:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 668 (= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 668 (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )
// Line 669 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 668 (CALL new_node_num ( 1 :(LVAR 16):) )
// Line 668 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 668  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000433
	mov  rax, 0
	call new_node_num
	jmp  .L000434
.L000433:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000434:
	push rax
// Line 668 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 668  5 
	push 5
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000435
	mov  rax, 0
	call new_node_binary
	jmp  .L000436
.L000435:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000436:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000424
.L000423:
// Line 685 (IF (CALL consume_if ( 19 :) ) (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):) (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8)))))
// Line 670 (CALL consume_if ( 19 :) )
// Line 670  19 
	push 19
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000439
	mov  rax, 0
	call consume_if
	jmp  .L000440
.L000439:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000440:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000437
// Line 676 (BLOCK(= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )):)
// Line 671 (= (LVAR 80) (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 80
	push rax
// Line 671 (CALL new_node_binary ( 5 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )
// Line 672 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 671 (CALL new_node_num ( 1 :(LVAR 16):) )
// Line 671 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 671  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000441
	mov  rax, 0
	call new_node_num
	jmp  .L000442
.L000441:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000442:
	push rax
// Line 671 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 671  5 
	push 5
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000443
	mov  rax, 0
	call new_node_binary
	jmp  .L000444
.L000443:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000444:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 673 (= (LVAR 8) (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 673 (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 80):(LVAR 16):) )
// Line 673 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 673 (LVAR 80)
	mov  rax, rbp
	sub  rax, 80
	mov  rax, [rax]
	push rax
// Line 673 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 673  20 
	push 20
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000445
	mov  rax, 0
	call new_node_expr
	jmp  .L000446
.L000445:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L000446:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 674 (= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 674 (CALL new_node_binary ( 4 :(LVAR 8):(CALL new_node_num ( 1 :(LVAR 16):) ):(LVAR 16):) )
// Line 675 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 674 (CALL new_node_num ( 1 :(LVAR 16):) )
// Line 674 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 674  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000447
	mov  rax, 0
	call new_node_num
	jmp  .L000448
.L000447:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000448:
	push rax
// Line 674 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 674  4 
	push 4
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000449
	mov  rax, 0
	call new_node_binary
	jmp  .L000450
.L000449:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000450:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000438
.L000437:
// Line 685 (IF (CALL consume_if ( 37 :) ) (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8))))
// Line 676 (CALL consume_if ( 37 :) )
// Line 676  37 
	push 37
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000453
	mov  rax, 0
	call consume_if
	jmp  .L000454
.L000453:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000454:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000451
// Line 678 (BLOCK(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):)
// Line 677 (= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 677 (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )
// Line 677 (CALL consume_ident () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000455
	mov  rax, 0
	call consume_ident
	jmp  .L000456
.L000455:
	sub  rsp, 8
	mov  rax, 0
	call consume_ident
	add  rsp, 8
.L000456:
	push rax
// Line 677 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000457
	mov  rax, 0
	call new_node_member
	jmp  .L000458
.L000457:
	sub  rsp, 8
	mov  rax, 0
	call new_node_member
	add  rsp, 8
.L000458:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000452
.L000451:
// Line 685 (IF (CALL consume_if ( 38 :) ) (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):) (RETURN (LVAR 8)))
// Line 678 (CALL consume_if ( 38 :) )
// Line 678  38 
	push 38
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000461
	mov  rax, 0
	call consume_if
	jmp  .L000462
.L000461:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000462:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000459
// Line 683 (BLOCK(IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL ):(= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )):(= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )):)
// Line 681 (IF (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) )) (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) ) NULL )
// Line 679 (! (CALL is_ptr ((CALL type ((LVAR 8):) ):) ))
// Line 679 (CALL is_ptr ((CALL type ((LVAR 8):) ):) )
// Line 679 (CALL type ((LVAR 8):) )
// Line 679 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000467
	mov  rax, 0
	call type
	jmp  .L000468
.L000467:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000468:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000469
	mov  rax, 0
	call is_ptr
	jmp  .L000470
.L000469:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000470:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000465
	mov  rax, 1
	jmp  .L000466
.L000465:
	mov  rax, 0
.L000466:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000463
// Line 680 (CALL error_at_node ((LVAR 8):(ADDR  "Must be a pointer." ):) )
// Line 680 (ADDR  "Must be a pointer." )
	lea  rax, .LS000021[rip]
	push rax
// Line 680 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000471
	mov  rax, 0
	call error_at_node
	jmp  .L000472
.L000471:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000472:
	push rax
	pop  rax
	jmp  .L000464
.L000463:
.L000464:
// Line 681 (= (LVAR 8) (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 681 (CALL new_node_binary ( 22 :(LVAR 8):(CAST * void   0 ):(LVAR 16):) )
// Line 681 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 681 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 681  22 
	push 22
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000473
	mov  rax, 0
	call new_node_binary
	jmp  .L000474
.L000473:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000474:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 682 (= (LVAR 8) (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 682 (CALL new_node_member ((LVAR 8):(CALL consume_ident () ):) )
// Line 682 (CALL consume_ident () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000475
	mov  rax, 0
	call consume_ident
	jmp  .L000476
.L000475:
	sub  rsp, 8
	mov  rax, 0
	call consume_ident
	add  rsp, 8
.L000476:
	push rax
// Line 682 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000477
	mov  rax, 0
	call new_node_member
	jmp  .L000478
.L000477:
	sub  rsp, 8
	mov  rax, 0
	call new_node_member
	add  rsp, 8
.L000478:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000460
.L000459:
// Line 684 (RETURN (LVAR 8))
// Line 684 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000460:
.L000452:
.L000438:
.L000424:
.L000412:
.L000344:
	jmp  .L000341
.L000342:
	mov  rsp, rbp
	pop  rbp
	ret
	.global get_ptr_if_array
// Line 688 FDECL get_ptr_if_array func ( * struct <Node>  node ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL ):(IF (CALL is_array ((CALL type ((LVAR 8):) ):) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(LVAR 8):(CAST * void   0 ):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (BLOCK(RETURN (LVAR 8)):)):))
get_ptr_if_array:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 691 (IF (! (LVAR 8)) (RETURN (CAST * void   0 )) NULL )
// Line 689 (! (LVAR 8))
// Line 689 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000481
	mov  rax, 1
	jmp  .L000482
.L000481:
	mov  rax, 0
.L000482:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000479
// Line 690 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000480
.L000479:
.L000480:
// Line 696 (IF (CALL is_array ((CALL type ((LVAR 8):) ):) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(LVAR 8):(CAST * void   0 ):(MEMBER (DEREF (LVAR 8)) token 72):) )):) (BLOCK(RETURN (LVAR 8)):))
// Line 691 (CALL is_array ((CALL type ((LVAR 8):) ):) )
// Line 691 (CALL type ((LVAR 8):) )
// Line 691 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000485
	mov  rax, 0
	call type
	jmp  .L000486
.L000485:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000486:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000487
	mov  rax, 0
	call is_array
	jmp  .L000488
.L000487:
	sub  rsp, 8
	mov  rax, 0
	call is_array
	add  rsp, 8
.L000488:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000483
// Line 693 (BLOCK(RETURN (CALL new_node_expr ( 21 :(LVAR 8):(CAST * void   0 ):(MEMBER (DEREF (LVAR 8)) token 72):) )):)
// Line 692 (RETURN (CALL new_node_expr ( 21 :(LVAR 8):(CAST * void   0 ):(MEMBER (DEREF (LVAR 8)) token 72):) ))
// Line 692 (CALL new_node_expr ( 21 :(LVAR 8):(CAST * void   0 ):(MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 692 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 692 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 692 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
	jnz  .L000489
	mov  rax, 0
	call new_node_expr
	jmp  .L000490
.L000489:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L000490:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000484
.L000483:
// Line 696 (BLOCK(RETURN (LVAR 8)):)
// Line 694 (RETURN (LVAR 8))
// Line 694 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000484:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_unary_expr
// Line 698 FDECL parse_unary_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(IF (CALL consume_if ( 3 :) ) (BLOCK(RETURN (CALL parse_unary_expr () )):) (IF (CALL consume_if ( 4 :) ) (BLOCK(RETURN (CALL new_node_binary ( 5 :(CALL new_node_num ( 0 :(GVAR token):) ):(CALL parse_unary_expr () ):(LVAR 8):) )):) (IF (CALL consume_if ( 22 :) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_unary_expr () )):(RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 50 :) ) (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):) (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):))))))):))
parse_unary_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
// Line 699 (= (LVAR 8) (GVAR token))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 699 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 728 (IF (CALL consume_if ( 3 :) ) (BLOCK(RETURN (CALL parse_unary_expr () )):) (IF (CALL consume_if ( 4 :) ) (BLOCK(RETURN (CALL new_node_binary ( 5 :(CALL new_node_num ( 0 :(GVAR token):) ):(CALL parse_unary_expr () ):(LVAR 8):) )):) (IF (CALL consume_if ( 22 :) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_unary_expr () )):(RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 50 :) ) (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):) (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):)))))))
// Line 700 (CALL consume_if ( 3 :) )
// Line 700  3 
	push 3
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000493
	mov  rax, 0
	call consume_if
	jmp  .L000494
.L000493:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000494:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000491
// Line 702 (BLOCK(RETURN (CALL parse_unary_expr () )):)
// Line 701 (RETURN (CALL parse_unary_expr () ))
// Line 701 (CALL parse_unary_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000495
	mov  rax, 0
	call parse_unary_expr
	jmp  .L000496
.L000495:
	sub  rsp, 8
	mov  rax, 0
	call parse_unary_expr
	add  rsp, 8
.L000496:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000492
.L000491:
// Line 728 (IF (CALL consume_if ( 4 :) ) (BLOCK(RETURN (CALL new_node_binary ( 5 :(CALL new_node_num ( 0 :(GVAR token):) ):(CALL parse_unary_expr () ):(LVAR 8):) )):) (IF (CALL consume_if ( 22 :) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_unary_expr () )):(RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 50 :) ) (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):) (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):))))))
// Line 702 (CALL consume_if ( 4 :) )
// Line 702  4 
	push 4
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000499
	mov  rax, 0
	call consume_if
	jmp  .L000500
.L000499:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000500:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000497
// Line 705 (BLOCK(RETURN (CALL new_node_binary ( 5 :(CALL new_node_num ( 0 :(GVAR token):) ):(CALL parse_unary_expr () ):(LVAR 8):) )):)
// Line 703 (RETURN (CALL new_node_binary ( 5 :(CALL new_node_num ( 0 :(GVAR token):) ):(CALL parse_unary_expr () ):(LVAR 8):) ))
// Line 703 (CALL new_node_binary ( 5 :(CALL new_node_num ( 0 :(GVAR token):) ):(CALL parse_unary_expr () ):(LVAR 8):) )
// Line 704 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 704 (CALL parse_unary_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000501
	mov  rax, 0
	call parse_unary_expr
	jmp  .L000502
.L000501:
	sub  rsp, 8
	mov  rax, 0
	call parse_unary_expr
	add  rsp, 8
.L000502:
	push rax
// Line 703 (CALL new_node_num ( 0 :(GVAR token):) )
// Line 703 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
// Line 703  0 
	push 0
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000503
	mov  rax, 0
	call new_node_num
	jmp  .L000504
.L000503:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000504:
	push rax
// Line 703  5 
	push 5
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000505
	mov  rax, 0
	call new_node_binary
	jmp  .L000506
.L000505:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000506:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000498
.L000497:
// Line 728 (IF (CALL consume_if ( 22 :) ) (BLOCK(RETURN (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_unary_expr () )):(RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 50 :) ) (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):) (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):)))))
// Line 705 (CALL consume_if ( 22 :) )
// Line 705  22 
	push 22
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000509
	mov  rax, 0
	call consume_if
	jmp  .L000510
.L000509:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000510:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000507
// Line 707 (BLOCK(RETURN (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) )):)
// Line 706 (RETURN (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) ))
// Line 706 (CALL new_node_expr ( 21 :(CALL parse_unary_expr () ):(CAST * void   0 ):(LVAR 8):) )
// Line 706 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 706 (CALL parse_unary_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000511
	mov  rax, 0
	call parse_unary_expr
	jmp  .L000512
.L000511:
	sub  rsp, 8
	mov  rax, 0
	call parse_unary_expr
	add  rsp, 8
.L000512:
	push rax
// Line 706  21 
	push 21
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000513
	mov  rax, 0
	call new_node_expr
	jmp  .L000514
.L000513:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L000514:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000508
.L000507:
// Line 728 (IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_unary_expr () )):(RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )):) (IF (CALL consume_if ( 50 :) ) (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):) (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):))))
// Line 707 (CALL consume_if ( 5 :) )
// Line 707  5 
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000517
	mov  rax, 0
	call consume_if
	jmp  .L000518
.L000517:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000518:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000515
// Line 710 (BLOCK(= (LVAR 16) (CALL parse_unary_expr () )):(RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )):)
// Line 708 (= (LVAR 16) (CALL parse_unary_expr () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 708 (CALL parse_unary_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000519
	mov  rax, 0
	call parse_unary_expr
	jmp  .L000520
.L000519:
	sub  rsp, 8
	mov  rax, 0
	call parse_unary_expr
	add  rsp, 8
.L000520:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 709 (RETURN (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) ))
// Line 709 (CALL new_node_binary ( 22 :(LVAR 16):(CAST * void   0 ):(LVAR 8):) )
// Line 709 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 709 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 709  22 
	push 22
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000521
	mov  rax, 0
	call new_node_binary
	jmp  .L000522
.L000521:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000522:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000516
.L000515:
// Line 728 (IF (CALL consume_if ( 50 :) ) (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):) (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):)))
// Line 710 (CALL consume_if ( 50 :) )
// Line 710  50 
	push 50
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000525
	mov  rax, 0
	call consume_if
	jmp  .L000526
.L000525:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000526:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000523
// Line 720 (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)):(RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )):)
// Line 719 (IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):) (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):))
// Line 712 (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) ))
// Line 712 (CALL peek ( 29 :) )
// Line 712  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000531
	mov  rax, 0
	call peek
	jmp  .L000532
.L000531:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000532:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000529
// Line 712 (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )
// Line 712 (MEMBER (DEREF (GVAR token)) next 8)
// Line 712 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000533
	mov  rax, 0
	call is_type_specifier
	jmp  .L000534
.L000533:
	sub  rsp, 8
	mov  rax, 0
	call is_type_specifier
	add  rsp, 8
.L000534:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000529
	mov  rax, 1
	jmp  .L000530
.L000529:
	mov  rax, 0
.L000530:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000527
// Line 716 (BLOCK(CALL expect ( 29 :) ):(= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)):(CALL expect ( 30 :) ):)
// Line 713 (CALL expect ( 29 :) )
// Line 713  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000535
	mov  rax, 0
	call expect
	jmp  .L000536
.L000535:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000536:
	push rax
	pop  rax
// Line 714 (= (LVAR 24) (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 714 (MEMBER (DEREF (CALL parse_decl ( 0 :) )) type 16)
// Line 714 (CALL parse_decl ( 0 :) )
// Line 1420  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000537
	mov  rax, 0
	call parse_decl
	jmp  .L000538
.L000537:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L000538:
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
// Line 715 (CALL expect ( 30 :) )
// Line 715  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000539
	mov  rax, 0
	call expect
	jmp  .L000540
.L000539:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000540:
	push rax
	pop  rax
	jmp  .L000528
.L000527:
// Line 719 (BLOCK(= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) )):)
// Line 717 (= (LVAR 24) (CALL type ((CALL parse_unary_expr () ):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 717 (CALL type ((CALL parse_unary_expr () ):) )
// Line 717 (CALL parse_unary_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000541
	mov  rax, 0
	call parse_unary_expr
	jmp  .L000542
.L000541:
	sub  rsp, 8
	mov  rax, 0
	call parse_unary_expr
	add  rsp, 8
.L000542:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000543
	mov  rax, 0
	call type
	jmp  .L000544
.L000543:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000544:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000528:
// Line 719 (RETURN (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) ))
// Line 719 (CALL new_node_num ((CALL sizeof_type ((LVAR 24):) ):(LVAR 8):) )
// Line 719 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 719 (CALL sizeof_type ((LVAR 24):) )
// Line 719 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000545
	mov  rax, 0
	call sizeof_type
	jmp  .L000546
.L000545:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000546:
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000547
	mov  rax, 0
	call new_node_num
	jmp  .L000548
.L000547:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000548:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000524
.L000523:
// Line 728 (IF (CALL consume_if ( 25 :) ) (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):) (BLOCK(RETURN (CALL parse_postfix_expr () )):))
// Line 720 (CALL consume_if ( 25 :) )
// Line 720  25 
	push 25
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000551
	mov  rax, 0
	call consume_if
	jmp  .L000552
.L000551:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000552:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000549
// Line 725 (BLOCK(= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () )):(= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () )):(RETURN (LVAR 32)):)
// Line 721 (= (LVAR 32) (CALL new_node ( 14 :(LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 721 (CALL new_node ( 14 :(LVAR 8):) )
// Line 721 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 721  14 
	push 14
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000553
	mov  rax, 0
	call new_node
	jmp  .L000554
.L000553:
	sub  rsp, 8
	mov  rax, 0
	call new_node
	add  rsp, 8
.L000554:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 722 (= (MEMBER (DEREF (LVAR 32)) lhs 8) (CALL parse_unary_expr () ))
// Line 722 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 722 (CALL parse_unary_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000555
	mov  rax, 0
	call parse_unary_expr
	jmp  .L000556
.L000555:
	sub  rsp, 8
	mov  rax, 0
	call parse_unary_expr
	add  rsp, 8
.L000556:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 723 (= (MEMBER (DEREF (LVAR 32)) type 80) (CALL new_type_int () ))
// Line 723 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 723 (CALL new_type_int () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000557
	mov  rax, 0
	call new_type_int
	jmp  .L000558
.L000557:
	sub  rsp, 8
	mov  rax, 0
	call new_type_int
	add  rsp, 8
.L000558:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 724 (RETURN (LVAR 32))
// Line 724 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000550
.L000549:
// Line 728 (BLOCK(RETURN (CALL parse_postfix_expr () )):)
// Line 726 (RETURN (CALL parse_postfix_expr () ))
// Line 726 (CALL parse_postfix_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000559
	mov  rax, 0
	call parse_postfix_expr
	jmp  .L000560
.L000559:
	sub  rsp, 8
	mov  rax, 0
	call parse_postfix_expr
	add  rsp, 8
.L000560:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000550:
.L000524:
.L000516:
.L000508:
.L000498:
.L000492:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_cast_expr
// Line 730 FDECL parse_cast_expr func ( ) * struct <Node> 
//    
//    (BLOCK(IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 8) (GVAR token)):(= (LVAR 16) (CALL parse_decl ( 0 :) )):(CALL expect ( 30 :) ):(= (LVAR 24) (CALL new_node ( 27 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 16)) type 16)):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (CALL parse_cast_expr () )):(RETURN (LVAR 24)):) NULL ):(RETURN (CALL parse_unary_expr () )):))
parse_cast_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 741 (IF (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )) (BLOCK(CALL expect ( 29 :) ):(= (LVAR 8) (GVAR token)):(= (LVAR 16) (CALL parse_decl ( 0 :) )):(CALL expect ( 30 :) ):(= (LVAR 24) (CALL new_node ( 27 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 16)) type 16)):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (CALL parse_cast_expr () )):(RETURN (LVAR 24)):) NULL )
// Line 731 (&& (CALL peek ( 29 :) ) (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) ))
// Line 731 (CALL peek ( 29 :) )
// Line 731  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000565
	mov  rax, 0
	call peek
	jmp  .L000566
.L000565:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000566:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000563
// Line 731 (CALL is_type_specifier ((MEMBER (DEREF (GVAR token)) next 8):) )
// Line 731 (MEMBER (DEREF (GVAR token)) next 8)
// Line 731 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000567
	mov  rax, 0
	call is_type_specifier
	jmp  .L000568
.L000567:
	sub  rsp, 8
	mov  rax, 0
	call is_type_specifier
	add  rsp, 8
.L000568:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000563
	mov  rax, 1
	jmp  .L000564
.L000563:
	mov  rax, 0
.L000564:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000561
// Line 741 (BLOCK(CALL expect ( 29 :) ):(= (LVAR 8) (GVAR token)):(= (LVAR 16) (CALL parse_decl ( 0 :) )):(CALL expect ( 30 :) ):(= (LVAR 24) (CALL new_node ( 27 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 16)) type 16)):(= (MEMBER (DEREF (LVAR 24)) lhs 8) (CALL parse_cast_expr () )):(RETURN (LVAR 24)):)
// Line 732 (CALL expect ( 29 :) )
// Line 732  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000569
	mov  rax, 0
	call expect
	jmp  .L000570
.L000569:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000570:
	push rax
	pop  rax
// Line 733 (= (LVAR 8) (GVAR token))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 733 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 734 (= (LVAR 16) (CALL parse_decl ( 0 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 734 (CALL parse_decl ( 0 :) )
// Line 1420  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000571
	mov  rax, 0
	call parse_decl
	jmp  .L000572
.L000571:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L000572:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 735 (CALL expect ( 30 :) )
// Line 735  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000573
	mov  rax, 0
	call expect
	jmp  .L000574
.L000573:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000574:
	push rax
	pop  rax
// Line 736 (= (LVAR 24) (CALL new_node ( 27 :(LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 736 (CALL new_node ( 27 :(LVAR 8):) )
// Line 736 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 736  27 
	push 27
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000575
	mov  rax, 0
	call new_node
	jmp  .L000576
.L000575:
	sub  rsp, 8
	mov  rax, 0
	call new_node
	add  rsp, 8
.L000576:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 737 (= (MEMBER (DEREF (LVAR 24)) type 80) (MEMBER (DEREF (LVAR 16)) type 16))
// Line 737 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	push rax
// Line 737 (MEMBER (DEREF (LVAR 16)) type 16)
// Line 737 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 738 (= (MEMBER (DEREF (LVAR 24)) lhs 8) (CALL parse_cast_expr () ))
// Line 738 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 738 (CALL parse_cast_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000577
	mov  rax, 0
	call parse_cast_expr
	jmp  .L000578
.L000577:
	sub  rsp, 8
	mov  rax, 0
	call parse_cast_expr
	add  rsp, 8
.L000578:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 739 (RETURN (LVAR 24))
// Line 739 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000562
.L000561:
.L000562:
// Line 741 (RETURN (CALL parse_unary_expr () ))
// Line 741 (CALL parse_unary_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000579
	mov  rax, 0
	call parse_unary_expr
	jmp  .L000580
.L000579:
	sub  rsp, 8
	mov  rax, 0
	call parse_unary_expr
	add  rsp, 8
.L000580:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_mul_expr
// Line 744 FDECL parse_mul_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_cast_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 24) (GVAR token)):(IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) (IF (CALL consume_if ( 6 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
parse_mul_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 745 (= (LVAR 8) (CALL parse_cast_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 745 (CALL parse_cast_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000581
	mov  rax, 0
	call parse_cast_expr
	jmp  .L000582
.L000581:
	sub  rsp, 8
	mov  rax, 0
	call parse_cast_expr
	add  rsp, 8
.L000582:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 761 (WHILE cond: 1 body: (BLOCK(= (LVAR 24) (GVAR token)):(IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) (IF (CALL consume_if ( 6 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):))
.L000583:
// Line 1420  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000584
// Line 761 (BLOCK(= (LVAR 24) (GVAR token)):(IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) (IF (CALL consume_if ( 6 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)
// Line 749 (= (LVAR 24) (GVAR token))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 749 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 759 (IF (CALL consume_if ( 5 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) (IF (CALL consume_if ( 6 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) NULL ))
// Line 750 (CALL consume_if ( 5 :) )
// Line 750  5 
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000587
	mov  rax, 0
	call consume_if
	jmp  .L000588
.L000587:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000588:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000585
// Line 754 (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :)
// Line 751 (= (LVAR 16) (CALL parse_cast_expr () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 751 (CALL parse_cast_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000589
	mov  rax, 0
	call parse_cast_expr
	jmp  .L000590
.L000589:
	sub  rsp, 8
	mov  rax, 0
	call parse_cast_expr
	add  rsp, 8
.L000590:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 752 (= (LVAR 8) (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 752 (CALL new_node_binary ( 6 :(LVAR 8):(LVAR 16):(LVAR 24):) )
// Line 752 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 752 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 752 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 752  6 
	push 6
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000591
	mov  rax, 0
	call new_node_binary
	jmp  .L000592
.L000591:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000592:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 753 CONTINUE 
	jmp  .L000583
	jmp  .L000586
.L000585:
// Line 759 (IF (CALL consume_if ( 6 :) ) (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :) NULL )
// Line 754 (CALL consume_if ( 6 :) )
// Line 754  6 
	push 6
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000595
	mov  rax, 0
	call consume_if
	jmp  .L000596
.L000595:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000596:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000593
// Line 759 (BLOCK(= (LVAR 16) (CALL parse_cast_expr () )):(= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )):CONTINUE :)
// Line 755 (= (LVAR 16) (CALL parse_cast_expr () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 755 (CALL parse_cast_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000597
	mov  rax, 0
	call parse_cast_expr
	jmp  .L000598
.L000597:
	sub  rsp, 8
	mov  rax, 0
	call parse_cast_expr
	add  rsp, 8
.L000598:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 756 (= (LVAR 8) (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 756 (CALL new_node_binary ( 7 :(LVAR 8):(LVAR 16):(LVAR 24):) )
// Line 756 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 756 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 756 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 756  7 
	push 7
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000599
	mov  rax, 0
	call new_node_binary
	jmp  .L000600
.L000599:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000600:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 757 CONTINUE 
	jmp  .L000583
	jmp  .L000594
.L000593:
.L000594:
.L000586:
// Line 759 (RETURN (LVAR 8))
// Line 759 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000583
.L000584:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_add_expr
// Line 763 FDECL parse_add_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_mul_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 3 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 4 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
parse_add_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 764 (= (LVAR 8) (CALL parse_mul_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 764 (CALL parse_mul_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000601
	mov  rax, 0
	call parse_mul_expr
	jmp  .L000602
.L000601:
	sub  rsp, 8
	mov  rax, 0
	call parse_mul_expr
	add  rsp, 8
.L000602:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 777 (WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 3 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 4 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):))
.L000603:
// Line 1420  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000604
// Line 777 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 3 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 4 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)
// Line 767 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 767 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 775 (IF (CALL consume_if ( 3 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 4 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) NULL ))
// Line 768 (CALL consume_if ( 3 :) )
// Line 768  3 
	push 3
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000607
	mov  rax, 0
	call consume_if
	jmp  .L000608
.L000607:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000608:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000605
// Line 771 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 769 (= (LVAR 8) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 769 (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )
// Line 769 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 769 (CALL parse_mul_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000609
	mov  rax, 0
	call parse_mul_expr
	jmp  .L000610
.L000609:
	sub  rsp, 8
	mov  rax, 0
	call parse_mul_expr
	add  rsp, 8
.L000610:
	push rax
// Line 769 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 769  4 
	push 4
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000611
	mov  rax, 0
	call new_node_binary
	jmp  .L000612
.L000611:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000612:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 770 CONTINUE 
	jmp  .L000603
	jmp  .L000606
.L000605:
// Line 775 (IF (CALL consume_if ( 4 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 771 (CALL consume_if ( 4 :) )
// Line 771  4 
	push 4
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000615
	mov  rax, 0
	call consume_if
	jmp  .L000616
.L000615:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000616:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000613
// Line 775 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 772 (= (LVAR 8) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 772 (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_mul_expr () ):(LVAR 16):) )
// Line 772 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 772 (CALL parse_mul_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000617
	mov  rax, 0
	call parse_mul_expr
	jmp  .L000618
.L000617:
	sub  rsp, 8
	mov  rax, 0
	call parse_mul_expr
	add  rsp, 8
.L000618:
	push rax
// Line 772 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 772  5 
	push 5
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000619
	mov  rax, 0
	call new_node_binary
	jmp  .L000620
.L000619:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000620:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 773 CONTINUE 
	jmp  .L000603
	jmp  .L000614
.L000613:
.L000614:
.L000606:
// Line 775 (RETURN (LVAR 8))
// Line 775 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000603
.L000604:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_shift_expr
// Line 779 FDECL parse_shift_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_add_expr () )):(WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 26 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 27 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
parse_shift_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 780 (= (LVAR 8) (CALL parse_add_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 780 (CALL parse_add_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000621
	mov  rax, 0
	call parse_add_expr
	jmp  .L000622
.L000621:
	sub  rsp, 8
	mov  rax, 0
	call parse_add_expr
	add  rsp, 8
.L000622:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 793 (WHILE cond: 1 body: (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 26 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 27 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):))
.L000623:
// Line 1420  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000624
// Line 793 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 26 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 27 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)
// Line 783 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 783 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 791 (IF (CALL consume_if ( 26 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 27 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) NULL ))
// Line 784 (CALL consume_if ( 26 :) )
// Line 784  26 
	push 26
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000627
	mov  rax, 0
	call consume_if
	jmp  .L000628
.L000627:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000628:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000625
// Line 787 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 785 (= (LVAR 8) (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 785 (CALL new_node_binary ( 18 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )
// Line 785 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 785 (CALL parse_add_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000629
	mov  rax, 0
	call parse_add_expr
	jmp  .L000630
.L000629:
	sub  rsp, 8
	mov  rax, 0
	call parse_add_expr
	add  rsp, 8
.L000630:
	push rax
// Line 785 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 785  18 
	push 18
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000631
	mov  rax, 0
	call new_node_binary
	jmp  .L000632
.L000631:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000632:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 786 CONTINUE 
	jmp  .L000623
	jmp  .L000626
.L000625:
// Line 791 (IF (CALL consume_if ( 27 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 787 (CALL consume_if ( 27 :) )
// Line 787  27 
	push 27
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000635
	mov  rax, 0
	call consume_if
	jmp  .L000636
.L000635:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000636:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000633
// Line 791 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 788 (= (LVAR 8) (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 788 (CALL new_node_binary ( 19 :(LVAR 8):(CALL parse_add_expr () ):(LVAR 16):) )
// Line 788 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 788 (CALL parse_add_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000637
	mov  rax, 0
	call parse_add_expr
	jmp  .L000638
.L000637:
	sub  rsp, 8
	mov  rax, 0
	call parse_add_expr
	add  rsp, 8
.L000638:
	push rax
// Line 788 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 788  19 
	push 19
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000639
	mov  rax, 0
	call new_node_binary
	jmp  .L000640
.L000639:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000640:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 789 CONTINUE 
	jmp  .L000623
	jmp  .L000634
.L000633:
.L000634:
.L000626:
// Line 791 (RETURN (LVAR 8))
// Line 791 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000623
.L000624:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_rel_expr
// Line 795 FDECL parse_rel_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_shift_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 10 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 9 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 12 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL )))):(RETURN (LVAR 8)):)):))
parse_rel_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 796 (= (LVAR 8) (CALL parse_shift_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 796 (CALL parse_shift_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000641
	mov  rax, 0
	call parse_shift_expr
	jmp  .L000642
.L000641:
	sub  rsp, 8
	mov  rax, 0
	call parse_shift_expr
	add  rsp, 8
.L000642:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 798 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 10 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 9 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 12 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL )))):(RETURN (LVAR 8)):))
.L000645:
// Line 798  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000644
// Line 815 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 10 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 9 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 12 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL )))):(RETURN (LVAR 8)):)
// Line 799 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 799 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 813 (IF (CALL consume_if ( 10 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 9 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 12 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL ))))
// Line 800 (CALL consume_if ( 10 :) )
// Line 800  10 
	push 10
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000648
	mov  rax, 0
	call consume_if
	jmp  .L000649
.L000648:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000649:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000646
// Line 803 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 801 (= (LVAR 8) (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 801 (CALL new_node_binary ( 10 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )
// Line 801 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 801 (CALL parse_shift_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000650
	mov  rax, 0
	call parse_shift_expr
	jmp  .L000651
.L000650:
	sub  rsp, 8
	mov  rax, 0
	call parse_shift_expr
	add  rsp, 8
.L000651:
	push rax
// Line 801 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 801  10 
	push 10
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000652
	mov  rax, 0
	call new_node_binary
	jmp  .L000653
.L000652:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000653:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 802 CONTINUE 
	jmp  .L000643
	jmp  .L000647
.L000646:
// Line 813 (IF (CALL consume_if ( 9 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 12 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL )))
// Line 803 (CALL consume_if ( 9 :) )
// Line 803  9 
	push 9
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000656
	mov  rax, 0
	call consume_if
	jmp  .L000657
.L000656:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000657:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000654
// Line 806 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 804 (= (LVAR 8) (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 804 (CALL new_node_binary ( 11 :(LVAR 8):(CALL parse_shift_expr () ):(LVAR 16):) )
// Line 804 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 804 (CALL parse_shift_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000658
	mov  rax, 0
	call parse_shift_expr
	jmp  .L000659
.L000658:
	sub  rsp, 8
	mov  rax, 0
	call parse_shift_expr
	add  rsp, 8
.L000659:
	push rax
// Line 804 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 804  11 
	push 11
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000660
	mov  rax, 0
	call new_node_binary
	jmp  .L000661
.L000660:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000661:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 805 CONTINUE 
	jmp  .L000643
	jmp  .L000655
.L000654:
// Line 813 (IF (CALL consume_if ( 12 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL ))
// Line 806 (CALL consume_if ( 12 :) )
// Line 806  12 
	push 12
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000664
	mov  rax, 0
	call consume_if
	jmp  .L000665
.L000664:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000665:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000662
// Line 809 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :)
// Line 807 (= (LVAR 8) (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 807 (CALL new_node_binary ( 10 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )
// Line 807 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 807 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 807 (CALL parse_shift_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000666
	mov  rax, 0
	call parse_shift_expr
	jmp  .L000667
.L000666:
	sub  rsp, 8
	mov  rax, 0
	call parse_shift_expr
	add  rsp, 8
.L000667:
	push rax
// Line 807  10 
	push 10
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000668
	mov  rax, 0
	call new_node_binary
	jmp  .L000669
.L000668:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000669:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 808 CONTINUE 
	jmp  .L000643
	jmp  .L000663
.L000662:
// Line 813 (IF (CALL consume_if ( 11 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :) NULL )
// Line 809 (CALL consume_if ( 11 :) )
// Line 809  11 
	push 11
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000672
	mov  rax, 0
	call consume_if
	jmp  .L000673
.L000672:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000673:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000670
// Line 813 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )):CONTINUE :)
// Line 810 (= (LVAR 8) (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 810 (CALL new_node_binary ( 11 :(CALL parse_shift_expr () ):(LVAR 8):(LVAR 16):) )
// Line 810 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 810 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 810 (CALL parse_shift_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000674
	mov  rax, 0
	call parse_shift_expr
	jmp  .L000675
.L000674:
	sub  rsp, 8
	mov  rax, 0
	call parse_shift_expr
	add  rsp, 8
.L000675:
	push rax
// Line 810  11 
	push 11
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000676
	mov  rax, 0
	call new_node_binary
	jmp  .L000677
.L000676:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000677:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 811 CONTINUE 
	jmp  .L000643
	jmp  .L000671
.L000670:
.L000671:
.L000663:
.L000655:
.L000647:
// Line 813 (RETURN (LVAR 8))
// Line 813 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000643:
	jmp  .L000645
.L000644:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_eq_expr
// Line 817 FDECL parse_eq_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_rel_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 7 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 8 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)):))
parse_eq_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 818 (= (LVAR 8) (CALL parse_rel_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 818 (CALL parse_rel_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000678
	mov  rax, 0
	call parse_rel_expr
	jmp  .L000679
.L000678:
	sub  rsp, 8
	mov  rax, 0
	call parse_rel_expr
	add  rsp, 8
.L000679:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 819 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 7 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 8 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):))
.L000682:
// Line 819  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000681
// Line 830 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 7 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 8 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) NULL )):(RETURN (LVAR 8)):)
// Line 820 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 820 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 828 (IF (CALL consume_if ( 7 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) (IF (CALL consume_if ( 8 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) NULL ))
// Line 821 (CALL consume_if ( 7 :) )
// Line 821  7 
	push 7
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000685
	mov  rax, 0
	call consume_if
	jmp  .L000686
.L000685:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000686:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000683
// Line 824 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 822 (= (LVAR 8) (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 822 (CALL new_node_binary ( 8 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )
// Line 822 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 822 (CALL parse_rel_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000687
	mov  rax, 0
	call parse_rel_expr
	jmp  .L000688
.L000687:
	sub  rsp, 8
	mov  rax, 0
	call parse_rel_expr
	add  rsp, 8
.L000688:
	push rax
// Line 822 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 822  8 
	push 8
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000689
	mov  rax, 0
	call new_node_binary
	jmp  .L000690
.L000689:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000690:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 823 CONTINUE 
	jmp  .L000680
	jmp  .L000684
.L000683:
// Line 828 (IF (CALL consume_if ( 8 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 824 (CALL consume_if ( 8 :) )
// Line 824  8 
	push 8
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000693
	mov  rax, 0
	call consume_if
	jmp  .L000694
.L000693:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000694:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000691
// Line 828 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 825 (= (LVAR 8) (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 825 (CALL new_node_binary ( 9 :(LVAR 8):(CALL parse_rel_expr () ):(LVAR 16):) )
// Line 825 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 825 (CALL parse_rel_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000695
	mov  rax, 0
	call parse_rel_expr
	jmp  .L000696
.L000695:
	sub  rsp, 8
	mov  rax, 0
	call parse_rel_expr
	add  rsp, 8
.L000696:
	push rax
// Line 825 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 825  9 
	push 9
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000697
	mov  rax, 0
	call new_node_binary
	jmp  .L000698
.L000697:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000698:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 826 CONTINUE 
	jmp  .L000680
	jmp  .L000692
.L000691:
.L000692:
.L000684:
// Line 828 (RETURN (LVAR 8))
// Line 828 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000680:
	jmp  .L000682
.L000681:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_and_expr
// Line 832 FDECL parse_and_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_eq_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 22 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
parse_and_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 833 (= (LVAR 8) (CALL parse_eq_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 833 (CALL parse_eq_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000699
	mov  rax, 0
	call parse_eq_expr
	jmp  .L000700
.L000699:
	sub  rsp, 8
	mov  rax, 0
	call parse_eq_expr
	add  rsp, 8
.L000700:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 834 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 22 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):))
.L000703:
// Line 834  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000702
// Line 842 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 22 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)
// Line 835 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 835 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 840 (IF (CALL consume_if ( 22 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 836 (CALL consume_if ( 22 :) )
// Line 836  22 
	push 22
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000706
	mov  rax, 0
	call consume_if
	jmp  .L000707
.L000706:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000707:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000704
// Line 840 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 837 (= (LVAR 8) (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 837 (CALL new_node_binary ( 15 :(LVAR 8):(CALL parse_eq_expr () ):(LVAR 16):) )
// Line 837 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 837 (CALL parse_eq_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000708
	mov  rax, 0
	call parse_eq_expr
	jmp  .L000709
.L000708:
	sub  rsp, 8
	mov  rax, 0
	call parse_eq_expr
	add  rsp, 8
.L000709:
	push rax
// Line 837 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 837  15 
	push 15
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000710
	mov  rax, 0
	call new_node_binary
	jmp  .L000711
.L000710:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000711:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 838 CONTINUE 
	jmp  .L000701
	jmp  .L000705
.L000704:
.L000705:
// Line 840 (RETURN (LVAR 8))
// Line 840 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000701:
	jmp  .L000703
.L000702:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_xor_expr
// Line 844 FDECL parse_xor_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_and_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 24 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
parse_xor_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 845 (= (LVAR 8) (CALL parse_and_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 845 (CALL parse_and_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000712
	mov  rax, 0
	call parse_and_expr
	jmp  .L000713
.L000712:
	sub  rsp, 8
	mov  rax, 0
	call parse_and_expr
	add  rsp, 8
.L000713:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 846 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 24 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):))
.L000716:
// Line 846  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000715
// Line 854 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 24 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)
// Line 847 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 847 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 852 (IF (CALL consume_if ( 24 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 848 (CALL consume_if ( 24 :) )
// Line 848  24 
	push 24
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000719
	mov  rax, 0
	call consume_if
	jmp  .L000720
.L000719:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000720:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000717
// Line 852 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 849 (= (LVAR 8) (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 849 (CALL new_node_binary ( 17 :(LVAR 8):(CALL parse_and_expr () ):(LVAR 16):) )
// Line 849 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 849 (CALL parse_and_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000721
	mov  rax, 0
	call parse_and_expr
	jmp  .L000722
.L000721:
	sub  rsp, 8
	mov  rax, 0
	call parse_and_expr
	add  rsp, 8
.L000722:
	push rax
// Line 849 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 849  17 
	push 17
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000723
	mov  rax, 0
	call new_node_binary
	jmp  .L000724
.L000723:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000724:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 850 CONTINUE 
	jmp  .L000714
	jmp  .L000718
.L000717:
.L000718:
// Line 852 (RETURN (LVAR 8))
// Line 852 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000714:
	jmp  .L000716
.L000715:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_or_expr
// Line 856 FDECL parse_or_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_xor_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 23 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
parse_or_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 857 (= (LVAR 8) (CALL parse_xor_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 857 (CALL parse_xor_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000725
	mov  rax, 0
	call parse_xor_expr
	jmp  .L000726
.L000725:
	sub  rsp, 8
	mov  rax, 0
	call parse_xor_expr
	add  rsp, 8
.L000726:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 858 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 23 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):))
.L000729:
// Line 858  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000728
// Line 866 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 23 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)
// Line 859 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 859 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 864 (IF (CALL consume_if ( 23 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 860 (CALL consume_if ( 23 :) )
// Line 860  23 
	push 23
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000732
	mov  rax, 0
	call consume_if
	jmp  .L000733
.L000732:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000733:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000730
// Line 864 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 861 (= (LVAR 8) (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 861 (CALL new_node_binary ( 16 :(LVAR 8):(CALL parse_xor_expr () ):(LVAR 16):) )
// Line 861 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 861 (CALL parse_xor_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000734
	mov  rax, 0
	call parse_xor_expr
	jmp  .L000735
.L000734:
	sub  rsp, 8
	mov  rax, 0
	call parse_xor_expr
	add  rsp, 8
.L000735:
	push rax
// Line 861 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 861  16 
	push 16
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000736
	mov  rax, 0
	call new_node_binary
	jmp  .L000737
.L000736:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000737:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 862 CONTINUE 
	jmp  .L000727
	jmp  .L000731
.L000730:
.L000731:
// Line 864 (RETURN (LVAR 8))
// Line 864 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000727:
	jmp  .L000729
.L000728:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_land_expr
// Line 868 FDECL parse_land_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_or_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 20 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
parse_land_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 869 (= (LVAR 8) (CALL parse_or_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 869 (CALL parse_or_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000738
	mov  rax, 0
	call parse_or_expr
	jmp  .L000739
.L000738:
	sub  rsp, 8
	mov  rax, 0
	call parse_or_expr
	add  rsp, 8
.L000739:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 870 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 20 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):))
.L000742:
// Line 870  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000741
// Line 878 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 20 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)
// Line 871 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 871 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 876 (IF (CALL consume_if ( 20 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 872 (CALL consume_if ( 20 :) )
// Line 872  20 
	push 20
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000745
	mov  rax, 0
	call consume_if
	jmp  .L000746
.L000745:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000746:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000743
// Line 876 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 873 (= (LVAR 8) (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 873 (CALL new_node_binary ( 12 :(LVAR 8):(CALL parse_or_expr () ):(LVAR 16):) )
// Line 873 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 873 (CALL parse_or_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000747
	mov  rax, 0
	call parse_or_expr
	jmp  .L000748
.L000747:
	sub  rsp, 8
	mov  rax, 0
	call parse_or_expr
	add  rsp, 8
.L000748:
	push rax
// Line 873 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 873  12 
	push 12
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000749
	mov  rax, 0
	call new_node_binary
	jmp  .L000750
.L000749:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000750:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 874 CONTINUE 
	jmp  .L000740
	jmp  .L000744
.L000743:
.L000744:
// Line 876 (RETURN (LVAR 8))
// Line 876 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000740:
	jmp  .L000742
.L000741:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_lor_expr
// Line 880 FDECL parse_lor_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_land_expr () )):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 21 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)):))
parse_lor_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 881 (= (LVAR 8) (CALL parse_land_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 881 (CALL parse_land_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000751
	mov  rax, 0
	call parse_land_expr
	jmp  .L000752
.L000751:
	sub  rsp, 8
	mov  rax, 0
	call parse_land_expr
	add  rsp, 8
.L000752:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 882 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 21 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):))
.L000755:
// Line 882  1 
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000754
// Line 890 (BLOCK(= (LVAR 16) (GVAR token)):(IF (CALL consume_if ( 21 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) )):CONTINUE :) NULL ):(RETURN (LVAR 8)):)
// Line 883 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 883 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 888 (IF (CALL consume_if ( 21 :) ) (BLOCK(= (LVAR 8) (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) )):CONTINUE :) NULL )
// Line 884 (CALL consume_if ( 21 :) )
// Line 884  21 
	push 21
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000758
	mov  rax, 0
	call consume_if
	jmp  .L000759
.L000758:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000759:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000756
// Line 888 (BLOCK(= (LVAR 8) (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) )):CONTINUE :)
// Line 885 (= (LVAR 8) (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 885 (CALL new_node_binary ( 13 :(LVAR 8):(CALL parse_land_expr () ):(LVAR 16):) )
// Line 885 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 885 (CALL parse_land_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000760
	mov  rax, 0
	call parse_land_expr
	jmp  .L000761
.L000760:
	sub  rsp, 8
	mov  rax, 0
	call parse_land_expr
	add  rsp, 8
.L000761:
	push rax
// Line 885 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 885  13 
	push 13
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000762
	mov  rax, 0
	call new_node_binary
	jmp  .L000763
.L000762:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000763:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 886 CONTINUE 
	jmp  .L000753
	jmp  .L000757
.L000756:
.L000757:
// Line 888 (RETURN (LVAR 8))
// Line 888 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000753:
	jmp  .L000755
.L000754:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_assign_expr
// Line 891 FDECL parse_assign_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_lor_expr () )):(= (LVAR 24) (GVAR token)):(IF (CALL consume_if ( 13 :) ) (BLOCK(= (LVAR 16) (CALL get_ptr_if_array ((CALL parse_assign_expr () ):) )):) (IF (CALL consume_if ( 14 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 15 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 16 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 17 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (RETURN (LVAR 8))))))):(RETURN (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 16):(LVAR 24):) )):))
parse_assign_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 892 (= (LVAR 8) (CALL parse_lor_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 892 (CALL parse_lor_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000764
	mov  rax, 0
	call parse_lor_expr
	jmp  .L000765
.L000764:
	sub  rsp, 8
	mov  rax, 0
	call parse_lor_expr
	add  rsp, 8
.L000765:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 894 (= (LVAR 24) (GVAR token))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 894 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 907 (IF (CALL consume_if ( 13 :) ) (BLOCK(= (LVAR 16) (CALL get_ptr_if_array ((CALL parse_assign_expr () ):) )):) (IF (CALL consume_if ( 14 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 15 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 16 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 17 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (RETURN (LVAR 8)))))))
// Line 895 (CALL consume_if ( 13 :) )
// Line 895  13 
	push 13
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000768
	mov  rax, 0
	call consume_if
	jmp  .L000769
.L000768:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000769:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000766
// Line 897 (BLOCK(= (LVAR 16) (CALL get_ptr_if_array ((CALL parse_assign_expr () ):) )):)
// Line 896 (= (LVAR 16) (CALL get_ptr_if_array ((CALL parse_assign_expr () ):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 896 (CALL get_ptr_if_array ((CALL parse_assign_expr () ):) )
// Line 896 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000770
	mov  rax, 0
	call parse_assign_expr
	jmp  .L000771
.L000770:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L000771:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000772
	mov  rax, 0
	call get_ptr_if_array
	jmp  .L000773
.L000772:
	sub  rsp, 8
	mov  rax, 0
	call get_ptr_if_array
	add  rsp, 8
.L000773:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000767
.L000766:
// Line 907 (IF (CALL consume_if ( 14 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 15 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 16 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 17 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (RETURN (LVAR 8))))))
// Line 897 (CALL consume_if ( 14 :) )
// Line 897  14 
	push 14
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000776
	mov  rax, 0
	call consume_if
	jmp  .L000777
.L000776:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000777:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000774
// Line 899 (BLOCK(= (LVAR 16) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):)
// Line 898 (= (LVAR 16) (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 898 (CALL new_node_binary ( 4 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )
// Line 898 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 898 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000778
	mov  rax, 0
	call parse_assign_expr
	jmp  .L000779
.L000778:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L000779:
	push rax
// Line 898 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 898  4 
	push 4
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000780
	mov  rax, 0
	call new_node_binary
	jmp  .L000781
.L000780:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000781:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000775
.L000774:
// Line 907 (IF (CALL consume_if ( 15 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 16 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 17 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (RETURN (LVAR 8)))))
// Line 899 (CALL consume_if ( 15 :) )
// Line 899  15 
	push 15
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000784
	mov  rax, 0
	call consume_if
	jmp  .L000785
.L000784:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000785:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000782
// Line 901 (BLOCK(= (LVAR 16) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):)
// Line 900 (= (LVAR 16) (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 900 (CALL new_node_binary ( 5 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )
// Line 900 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 900 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000786
	mov  rax, 0
	call parse_assign_expr
	jmp  .L000787
.L000786:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L000787:
	push rax
// Line 900 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 900  5 
	push 5
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000788
	mov  rax, 0
	call new_node_binary
	jmp  .L000789
.L000788:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000789:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000783
.L000782:
// Line 907 (IF (CALL consume_if ( 16 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (IF (CALL consume_if ( 17 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (RETURN (LVAR 8))))
// Line 901 (CALL consume_if ( 16 :) )
// Line 901  16 
	push 16
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000792
	mov  rax, 0
	call consume_if
	jmp  .L000793
.L000792:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000793:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000790
// Line 903 (BLOCK(= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):)
// Line 902 (= (LVAR 16) (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 902 (CALL new_node_binary ( 6 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )
// Line 902 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 902 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000794
	mov  rax, 0
	call parse_assign_expr
	jmp  .L000795
.L000794:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L000795:
	push rax
// Line 902 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 902  6 
	push 6
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000796
	mov  rax, 0
	call new_node_binary
	jmp  .L000797
.L000796:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000797:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000791
.L000790:
// Line 907 (IF (CALL consume_if ( 17 :) ) (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):) (RETURN (LVAR 8)))
// Line 903 (CALL consume_if ( 17 :) )
// Line 903  17 
	push 17
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000800
	mov  rax, 0
	call consume_if
	jmp  .L000801
.L000800:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000801:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000798
// Line 905 (BLOCK(= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )):)
// Line 904 (= (LVAR 16) (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 904 (CALL new_node_binary ( 7 :(LVAR 8):(CALL parse_assign_expr () ):(LVAR 24):) )
// Line 904 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 904 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000802
	mov  rax, 0
	call parse_assign_expr
	jmp  .L000803
.L000802:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L000803:
	push rax
// Line 904 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 904  7 
	push 7
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000804
	mov  rax, 0
	call new_node_binary
	jmp  .L000805
.L000804:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000805:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000799
.L000798:
// Line 906 (RETURN (LVAR 8))
// Line 906 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000799:
.L000791:
.L000783:
.L000775:
.L000767:
// Line 907 (RETURN (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 16):(LVAR 24):) ))
// Line 907 (CALL new_node_expr ( 20 :(LVAR 8):(LVAR 16):(LVAR 24):) )
// Line 907 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 907 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 907 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 907  20 
	push 20
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000806
	mov  rax, 0
	call new_node_expr
	jmp  .L000807
.L000806:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L000807:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_expr
// Line 910 FDECL parse_expr func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_assign_expr () )):(RETURN (LVAR 8)):))
parse_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 911 (= (LVAR 8) (CALL parse_assign_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 911 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000808
	mov  rax, 0
	call parse_assign_expr
	jmp  .L000809
.L000808:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L000809:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 912 (RETURN (LVAR 8))
// Line 912 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_for
// Line 915 FDECL parse_for func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(= (LVAR 16) (CAST * void   0 )):(CALL expect ( 43 :) ):(CALL expect ( 29 :) ):(IF (GVAR scope) (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 ) NULL ):(= (LVAR 48) (GVAR scope)):(IF (! (CALL consume_if ( 28 :) )) (BLOCK(IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(= (LVAR 16) (CALL parse_block_item () )):) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 28 :) ):)):) NULL ):(IF (! (CALL peek ( 28 :) )) (BLOCK(= (LVAR 24) (CALL parse_expr () )):) (BLOCK(= (LVAR 24) (CALL new_node_num ( 1 :(GVAR token):) )):)):(CALL expect ( 28 :) ):(IF (CALL peek ((!  30 ):) ) (= (LVAR 32) (CALL parse_expr () )) (= (LVAR 32) (CAST * void   0 ))):(CALL expect ( 30 :) ):(= (LVAR 40) (CALL parse_stmt () )):(= (GVAR scope) (LVAR 48)):(RETURN (CALL new_node_for ((LVAR 16):(LVAR 24):(LVAR 32):(LVAR 40):(LVAR 8):) )):))
parse_for:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
// Line 916 (= (LVAR 8) (GVAR token))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 916 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 917 (= (LVAR 16) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 921 (CALL expect ( 43 :) )
// Line 921  43 
	push 43
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000810
	mov  rax, 0
	call expect
	jmp  .L000811
.L000810:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000811:
	push rax
	pop  rax
// Line 922 (CALL expect ( 29 :) )
// Line 922  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000812
	mov  rax, 0
	call expect
	jmp  .L000813
.L000812:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000813:
	push rax
	pop  rax
// Line 925 (IF (GVAR scope) (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 ) NULL )
// Line 923 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000814
// Line 924 (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 )
// Line 924 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	push rax
// Line 1420  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
	jmp  .L000815
.L000814:
.L000815:
// Line 925 (= (LVAR 48) (GVAR scope))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 925 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 936 (IF (! (CALL consume_if ( 28 :) )) (BLOCK(IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(= (LVAR 16) (CALL parse_block_item () )):) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 28 :) ):)):) NULL )
// Line 927 (! (CALL consume_if ( 28 :) ))
// Line 927 (CALL consume_if ( 28 :) )
// Line 927  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000820
	mov  rax, 0
	call consume_if
	jmp  .L000821
.L000820:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000821:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000818
	mov  rax, 1
	jmp  .L000819
.L000818:
	mov  rax, 0
.L000819:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000816
// Line 936 (BLOCK(IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(= (LVAR 16) (CALL parse_block_item () )):) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 28 :) ):)):)
// Line 934 (IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(= (LVAR 16) (CALL parse_block_item () )):) (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 28 :) ):))
// Line 928 (CALL is_type_specifier ((GVAR token):) )
// Line 928 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000824
	mov  rax, 0
	call is_type_specifier
	jmp  .L000825
.L000824:
	sub  rsp, 8
	mov  rax, 0
	call is_type_specifier
	add  rsp, 8
.L000825:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000822
// Line 930 (BLOCK(= (LVAR 16) (CALL parse_block_item () )):)
// Line 929 (= (LVAR 16) (CALL parse_block_item () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 929 (CALL parse_block_item () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000826
	mov  rax, 0
	call parse_block_item
	jmp  .L000827
.L000826:
	sub  rsp, 8
	mov  rax, 0
	call parse_block_item
	add  rsp, 8
.L000827:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000823
.L000822:
// Line 934 (BLOCK(= (LVAR 16) (CALL parse_expr () )):(CALL expect ( 28 :) ):)
// Line 931 (= (LVAR 16) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 931 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000828
	mov  rax, 0
	call parse_expr
	jmp  .L000829
.L000828:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000829:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 932 (CALL expect ( 28 :) )
// Line 932  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000830
	mov  rax, 0
	call expect
	jmp  .L000831
.L000830:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000831:
	push rax
	pop  rax
.L000823:
	jmp  .L000817
.L000816:
.L000817:
// Line 941 (IF (! (CALL peek ( 28 :) )) (BLOCK(= (LVAR 24) (CALL parse_expr () )):) (BLOCK(= (LVAR 24) (CALL new_node_num ( 1 :(GVAR token):) )):))
// Line 936 (! (CALL peek ( 28 :) ))
// Line 936 (CALL peek ( 28 :) )
// Line 936  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000836
	mov  rax, 0
	call peek
	jmp  .L000837
.L000836:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000837:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000834
	mov  rax, 1
	jmp  .L000835
.L000834:
	mov  rax, 0
.L000835:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000832
// Line 938 (BLOCK(= (LVAR 24) (CALL parse_expr () )):)
// Line 937 (= (LVAR 24) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 937 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000838
	mov  rax, 0
	call parse_expr
	jmp  .L000839
.L000838:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000839:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000833
.L000832:
// Line 941 (BLOCK(= (LVAR 24) (CALL new_node_num ( 1 :(GVAR token):) )):)
// Line 939 (= (LVAR 24) (CALL new_node_num ( 1 :(GVAR token):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 939 (CALL new_node_num ( 1 :(GVAR token):) )
// Line 939 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
// Line 939  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000840
	mov  rax, 0
	call new_node_num
	jmp  .L000841
.L000840:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000841:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000833:
// Line 941 (CALL expect ( 28 :) )
// Line 941  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000842
	mov  rax, 0
	call expect
	jmp  .L000843
.L000842:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000843:
	push rax
	pop  rax
// Line 946 (IF (CALL peek ((!  30 ):) ) (= (LVAR 32) (CALL parse_expr () )) (= (LVAR 32) (CAST * void   0 )))
// Line 942 (CALL peek ((!  30 ):) )
// Line 942 (!  30 )
// Line 942  30 
	push 30
	pop  rax
	cmp  eax, 0
	jne  .L000846
	mov  rax, 1
	jmp  .L000847
.L000846:
	mov  rax, 0
.L000847:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000848
	mov  rax, 0
	call peek
	jmp  .L000849
.L000848:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000849:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000844
// Line 943 (= (LVAR 32) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 943 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000850
	mov  rax, 0
	call parse_expr
	jmp  .L000851
.L000850:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000851:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000845
.L000844:
// Line 945 (= (LVAR 32) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000845:
// Line 946 (CALL expect ( 30 :) )
// Line 946  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000852
	mov  rax, 0
	call expect
	jmp  .L000853
.L000852:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000853:
	push rax
	pop  rax
// Line 948 (= (LVAR 40) (CALL parse_stmt () ))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 948 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000854
	mov  rax, 0
	call parse_stmt
	jmp  .L000855
.L000854:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L000855:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 950 (= (GVAR scope) (LVAR 48))
	lea  rax, scope[rip]
	push rax
// Line 950 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 951 (RETURN (CALL new_node_for ((LVAR 16):(LVAR 24):(LVAR 32):(LVAR 40):(LVAR 8):) ))
// Line 951 (CALL new_node_for ((LVAR 16):(LVAR 24):(LVAR 32):(LVAR 40):(LVAR 8):) )
// Line 951 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 951 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
// Line 951 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 951 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 951 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	pop  r8
	mov  rax, rsp
	and  rax, 15
	jnz  .L000856
	mov  rax, 0
	call new_node_for
	jmp  .L000857
.L000856:
	sub  rsp, 8
	mov  rax, 0
	call new_node_for
	add  rsp, 8
.L000857:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_stmt
// Line 954 FDECL parse_stmt func ( ) * struct <Node> 
//    
//    (BLOCK(IF (CALL consume_if ( 28 :) ) (RETURN (CAST * void   0 )) NULL ):(= (LVAR 24) (GVAR token)):(SWITCH cond: (MEMBER (DEREF (GVAR token)) kind 0) body: (BLOCK(CASE cond: 49  body:(BLOCK(CALL expect ( 49 :) ):(IF (CALL consume_if ( 28 :) ) (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )) (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):)):)):(CASE cond: 40  body:(BLOCK(CALL expect ( 40 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(IF (CALL consume_if ( 41 :) ) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) ))):)):(CASE cond: 44  body:(BLOCK(++ (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))  1 ):(CALL expect ( 44 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_eq_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(-- (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))  1 ):(RETURN (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 42  body:(BLOCK(CALL expect ( 42 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) )):)):(CASE cond: 43  body:(BLOCK(RETURN (CALL parse_for () )):)):(CASE cond: 31  body:(BLOCK(RETURN (CALL parse_block () )):)):(CASE cond: 47  body:(BLOCK(CALL expect ( 47 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 35 :(LVAR 24):) )):)):(CASE cond: 48  body:(BLOCK(CALL expect ( 48 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 36 :(LVAR 24):) )):)):(CASE cond: 45  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) ) NULL ):(CALL expect ( 45 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 36 :) ):(= (LVAR 16) (CALL new_node_block ((CALL vec_new () ):) )):(WHILE cond:(&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))body: (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) )):(RETURN (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 46  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) ) NULL ):(CALL expect ( 46 :) ):(CALL expect ( 36 :) ):(= (LVAR 8) (CALL parse_stmt () )):(RETURN (CALL new_node_default ((LVAR 8):(LVAR 24):) )):)):)):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (LVAR 8)):))
parse_stmt:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 957 (IF (CALL consume_if ( 28 :) ) (RETURN (CAST * void   0 )) NULL )
// Line 955 (CALL consume_if ( 28 :) )
// Line 955  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000860
	mov  rax, 0
	call consume_if
	jmp  .L000861
.L000860:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000861:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000858
// Line 956 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000859
.L000858:
.L000859:
// Line 959 (= (LVAR 24) (GVAR token))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 959 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 960 (SWITCH cond: (MEMBER (DEREF (GVAR token)) kind 0) body: (BLOCK(CASE cond: 49  body:(BLOCK(CALL expect ( 49 :) ):(IF (CALL consume_if ( 28 :) ) (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )) (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):)):)):(CASE cond: 40  body:(BLOCK(CALL expect ( 40 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(IF (CALL consume_if ( 41 :) ) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) ))):)):(CASE cond: 44  body:(BLOCK(++ (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))  1 ):(CALL expect ( 44 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_eq_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(-- (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))  1 ):(RETURN (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 42  body:(BLOCK(CALL expect ( 42 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) )):)):(CASE cond: 43  body:(BLOCK(RETURN (CALL parse_for () )):)):(CASE cond: 31  body:(BLOCK(RETURN (CALL parse_block () )):)):(CASE cond: 47  body:(BLOCK(CALL expect ( 47 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 35 :(LVAR 24):) )):)):(CASE cond: 48  body:(BLOCK(CALL expect ( 48 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 36 :(LVAR 24):) )):)):(CASE cond: 45  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) ) NULL ):(CALL expect ( 45 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 36 :) ):(= (LVAR 16) (CALL new_node_block ((CALL vec_new () ):) )):(WHILE cond:(&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))body: (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) )):(RETURN (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 46  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) ) NULL ):(CALL expect ( 46 :) ):(CALL expect ( 36 :) ):(= (LVAR 8) (CALL parse_stmt () )):(RETURN (CALL new_node_default ((LVAR 8):(LVAR 24):) )):)):))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 960 (MEMBER (DEREF (GVAR token)) kind 0)
// Line 960 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 1027 (BLOCK(CASE cond: 49  body:(BLOCK(CALL expect ( 49 :) ):(IF (CALL consume_if ( 28 :) ) (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )) (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):)):)):(CASE cond: 40  body:(BLOCK(CALL expect ( 40 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(IF (CALL consume_if ( 41 :) ) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) ))):)):(CASE cond: 44  body:(BLOCK(++ (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))  1 ):(CALL expect ( 44 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_eq_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(-- (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))  1 ):(RETURN (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 42  body:(BLOCK(CALL expect ( 42 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) )):)):(CASE cond: 43  body:(BLOCK(RETURN (CALL parse_for () )):)):(CASE cond: 31  body:(BLOCK(RETURN (CALL parse_block () )):)):(CASE cond: 47  body:(BLOCK(CALL expect ( 47 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 35 :(LVAR 24):) )):)):(CASE cond: 48  body:(BLOCK(CALL expect ( 48 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 36 :(LVAR 24):) )):)):(CASE cond: 45  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) ) NULL ):(CALL expect ( 45 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 36 :) ):(= (LVAR 16) (CALL new_node_block ((CALL vec_new () ):) )):(WHILE cond:(&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))body: (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) )):(RETURN (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) )):)):(CASE cond: 46  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) ) NULL ):(CALL expect ( 46 :) ):(CALL expect ( 36 :) ):(= (LVAR 8) (CALL parse_stmt () )):(RETURN (CALL new_node_default ((LVAR 8):(LVAR 24):) )):)):)
// Line 961 (CASE cond: 49  body:(BLOCK(CALL expect ( 49 :) ):(IF (CALL consume_if ( 28 :) ) (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )) (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):)):))
// Line 961  49 
	push 49
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000863
// Line 970 (CASE cond: 40  body:(BLOCK(CALL expect ( 40 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(IF (CALL consume_if ( 41 :) ) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) ))):))
// Line 970  40 
	push 40
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000864
// Line 980 (CASE cond: 44  body:(BLOCK(++ (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))  1 ):(CALL expect ( 44 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_eq_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(-- (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))  1 ):(RETURN (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) )):))
// Line 980  44 
	push 44
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000865
// Line 989 (CASE cond: 42  body:(BLOCK(CALL expect ( 42 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) )):))
// Line 989  42 
	push 42
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000866
// Line 995 (CASE cond: 43  body:(BLOCK(RETURN (CALL parse_for () )):))
// Line 995  43 
	push 43
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000867
// Line 997 (CASE cond: 31  body:(BLOCK(RETURN (CALL parse_block () )):))
// Line 997  31 
	push 31
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000868
// Line 999 (CASE cond: 47  body:(BLOCK(CALL expect ( 47 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 35 :(LVAR 24):) )):))
// Line 999  47 
	push 47
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000869
// Line 1003 (CASE cond: 48  body:(BLOCK(CALL expect ( 48 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 36 :(LVAR 24):) )):))
// Line 1003  48 
	push 48
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000870
// Line 1007 (CASE cond: 45  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) ) NULL ):(CALL expect ( 45 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 36 :) ):(= (LVAR 16) (CALL new_node_block ((CALL vec_new () ):) )):(WHILE cond:(&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))body: (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) )):(RETURN (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) )):))
// Line 1007  45 
	push 45
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000871
// Line 1018 (CASE cond: 46  body:(BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) ) NULL ):(CALL expect ( 46 :) ):(CALL expect ( 36 :) ):(= (LVAR 8) (CALL parse_stmt () )):(RETURN (CALL new_node_default ((LVAR 8):(LVAR 24):) )):))
// Line 1018  46 
	push 46
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000872
	jmp  .L000862
.L000863:
// Line 962 (BLOCK(CALL expect ( 49 :) ):(IF (CALL consume_if ( 28 :) ) (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )) (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):)):)
// Line 962 (CALL expect ( 49 :) )
// Line 962  49 
	push 49
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000873
	mov  rax, 0
	call expect
	jmp  .L000874
.L000873:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000874:
	push rax
	pop  rax
// Line 970 (IF (CALL consume_if ( 28 :) ) (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )) (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):))
// Line 963 (CALL consume_if ( 28 :) )
// Line 963  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000877
	mov  rax, 0
	call consume_if
	jmp  .L000878
.L000877:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000878:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000875
// Line 964 (RETURN (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) ))
// Line 964 (CALL new_node_binary ( 34 :(CAST * void   0 ):(CAST * void   0 ):(LVAR 24):) )
// Line 964 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 964  34 
	push 34
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000879
	mov  rax, 0
	call new_node_binary
	jmp  .L000880
.L000879:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000880:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000876
.L000875:
// Line 970 (BLOCK(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 28 :) ):(RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )):)
// Line 966 (= (LVAR 8) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 966 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000881
	mov  rax, 0
	call parse_expr
	jmp  .L000882
.L000881:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000882:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 967 (CALL expect ( 28 :) )
// Line 967  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000883
	mov  rax, 0
	call expect
	jmp  .L000884
.L000883:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000884:
	push rax
	pop  rax
// Line 968 (RETURN (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) ))
// Line 968 (CALL new_node_binary ( 34 :(LVAR 8):(CAST * void   0 ):(LVAR 24):) )
// Line 968 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 968 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 968  34 
	push 34
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000885
	mov  rax, 0
	call new_node_binary
	jmp  .L000886
.L000885:
	sub  rsp, 8
	mov  rax, 0
	call new_node_binary
	add  rsp, 8
.L000886:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000876:
.L000864:
// Line 971 (BLOCK(CALL expect ( 40 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(IF (CALL consume_if ( 41 :) ) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) ))):)
// Line 971 (CALL expect ( 40 :) )
// Line 971  40 
	push 40
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000887
	mov  rax, 0
	call expect
	jmp  .L000888
.L000887:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000888:
	push rax
	pop  rax
// Line 972 (CALL expect ( 29 :) )
// Line 972  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000889
	mov  rax, 0
	call expect
	jmp  .L000890
.L000889:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000890:
	push rax
	pop  rax
// Line 973 (= (LVAR 8) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 973 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000891
	mov  rax, 0
	call parse_expr
	jmp  .L000892
.L000891:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000892:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 974 (CALL expect ( 30 :) )
// Line 974  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000893
	mov  rax, 0
	call expect
	jmp  .L000894
.L000893:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000894:
	push rax
	pop  rax
// Line 975 (= (LVAR 16) (CALL parse_stmt () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 975 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000895
	mov  rax, 0
	call parse_stmt
	jmp  .L000896
.L000895:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L000896:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 980 (IF (CALL consume_if ( 41 :) ) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )) (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) )))
// Line 976 (CALL consume_if ( 41 :) )
// Line 976  41 
	push 41
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000899
	mov  rax, 0
	call consume_if
	jmp  .L000900
.L000899:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L000900:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000897
// Line 977 (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) ))
// Line 977 (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CALL parse_stmt () ):) )
// Line 977 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000901
	mov  rax, 0
	call parse_stmt
	jmp  .L000902
.L000901:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L000902:
	push rax
// Line 977 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 977 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000903
	mov  rax, 0
	call new_node_if_then
	jmp  .L000904
.L000903:
	sub  rsp, 8
	mov  rax, 0
	call new_node_if_then
	add  rsp, 8
.L000904:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000898
.L000897:
// Line 979 (RETURN (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) ))
// Line 979 (CALL new_node_if_then ((LVAR 8):(LVAR 16):(CAST * void   0 ):) )
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 979 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 979 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000905
	mov  rax, 0
	call new_node_if_then
	jmp  .L000906
.L000905:
	sub  rsp, 8
	mov  rax, 0
	call new_node_if_then
	add  rsp, 8
.L000906:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000898:
.L000865:
// Line 981 (BLOCK(++ (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))  1 ):(CALL expect ( 44 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_eq_expr () )):(CALL expect ( 30 :) ):(= (LVAR 16) (CALL parse_stmt () )):(-- (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))  1 ):(RETURN (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) )):)
// Line 981 (++ (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))  1 )
// Line 981 (= (GVAR switch_level) (++ (GVAR switch_level)  1 ))
	lea  rax, switch_level[rip]
	push rax
// Line 981 (++ (GVAR switch_level)  1 )
// Line 981 (GVAR switch_level)
	lea  rax, switch_level[rip]
	mov  eax, [rax]
	push rax
// Line 981  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 981  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 982 (CALL expect ( 44 :) )
// Line 982  44 
	push 44
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000907
	mov  rax, 0
	call expect
	jmp  .L000908
.L000907:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000908:
	push rax
	pop  rax
// Line 983 (CALL expect ( 29 :) )
// Line 983  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000909
	mov  rax, 0
	call expect
	jmp  .L000910
.L000909:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000910:
	push rax
	pop  rax
// Line 984 (= (LVAR 8) (CALL parse_eq_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 984 (CALL parse_eq_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000911
	mov  rax, 0
	call parse_eq_expr
	jmp  .L000912
.L000911:
	sub  rsp, 8
	mov  rax, 0
	call parse_eq_expr
	add  rsp, 8
.L000912:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 985 (CALL expect ( 30 :) )
// Line 985  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000913
	mov  rax, 0
	call expect
	jmp  .L000914
.L000913:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000914:
	push rax
	pop  rax
// Line 986 (= (LVAR 16) (CALL parse_stmt () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 986 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000915
	mov  rax, 0
	call parse_stmt
	jmp  .L000916
.L000915:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L000916:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 987 (-- (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))  1 )
// Line 987 (= (GVAR switch_level) (-- (GVAR switch_level)  1 ))
	lea  rax, switch_level[rip]
	push rax
// Line 987 (-- (GVAR switch_level)  1 )
// Line 987 (GVAR switch_level)
	lea  rax, switch_level[rip]
	mov  eax, [rax]
	push rax
// Line 987  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 987  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
// Line 988 (RETURN (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) ))
// Line 988 (CALL new_node_switch ((LVAR 8):(LVAR 16):(LVAR 24):) )
// Line 988 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 988 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 988 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000917
	mov  rax, 0
	call new_node_switch
	jmp  .L000918
.L000917:
	sub  rsp, 8
	mov  rax, 0
	call new_node_switch
	add  rsp, 8
.L000918:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000866:
// Line 990 (BLOCK(CALL expect ( 42 :) ):(CALL expect ( 29 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 30 :) ):(RETURN (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) )):)
// Line 990 (CALL expect ( 42 :) )
// Line 990  42 
	push 42
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000919
	mov  rax, 0
	call expect
	jmp  .L000920
.L000919:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000920:
	push rax
	pop  rax
// Line 991 (CALL expect ( 29 :) )
// Line 991  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000921
	mov  rax, 0
	call expect
	jmp  .L000922
.L000921:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000922:
	push rax
	pop  rax
// Line 992 (= (LVAR 8) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 992 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000923
	mov  rax, 0
	call parse_expr
	jmp  .L000924
.L000923:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000924:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 993 (CALL expect ( 30 :) )
// Line 993  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000925
	mov  rax, 0
	call expect
	jmp  .L000926
.L000925:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000926:
	push rax
	pop  rax
// Line 994 (RETURN (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) ))
// Line 994 (CALL new_node_while ((LVAR 8):(CALL parse_stmt () ):) )
// Line 994 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000927
	mov  rax, 0
	call parse_stmt
	jmp  .L000928
.L000927:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L000928:
	push rax
// Line 994 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000929
	mov  rax, 0
	call new_node_while
	jmp  .L000930
.L000929:
	sub  rsp, 8
	mov  rax, 0
	call new_node_while
	add  rsp, 8
.L000930:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000867:
// Line 996 (BLOCK(RETURN (CALL parse_for () )):)
// Line 996 (RETURN (CALL parse_for () ))
// Line 996 (CALL parse_for () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000931
	mov  rax, 0
	call parse_for
	jmp  .L000932
.L000931:
	sub  rsp, 8
	mov  rax, 0
	call parse_for
	add  rsp, 8
.L000932:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000868:
// Line 998 (BLOCK(RETURN (CALL parse_block () )):)
// Line 998 (RETURN (CALL parse_block () ))
// Line 998 (CALL parse_block () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000933
	mov  rax, 0
	call parse_block
	jmp  .L000934
.L000933:
	sub  rsp, 8
	mov  rax, 0
	call parse_block
	add  rsp, 8
.L000934:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000869:
// Line 1000 (BLOCK(CALL expect ( 47 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 35 :(LVAR 24):) )):)
// Line 1000 (CALL expect ( 47 :) )
// Line 1000  47 
	push 47
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000935
	mov  rax, 0
	call expect
	jmp  .L000936
.L000935:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000936:
	push rax
	pop  rax
// Line 1001 (CALL expect ( 28 :) )
// Line 1001  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000937
	mov  rax, 0
	call expect
	jmp  .L000938
.L000937:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000938:
	push rax
	pop  rax
// Line 1002 (RETURN (CALL new_node ( 35 :(LVAR 24):) ))
// Line 1002 (CALL new_node ( 35 :(LVAR 24):) )
// Line 1002 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1002  35 
	push 35
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000939
	mov  rax, 0
	call new_node
	jmp  .L000940
.L000939:
	sub  rsp, 8
	mov  rax, 0
	call new_node
	add  rsp, 8
.L000940:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000870:
// Line 1004 (BLOCK(CALL expect ( 48 :) ):(CALL expect ( 28 :) ):(RETURN (CALL new_node ( 36 :(LVAR 24):) )):)
// Line 1004 (CALL expect ( 48 :) )
// Line 1004  48 
	push 48
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000941
	mov  rax, 0
	call expect
	jmp  .L000942
.L000941:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000942:
	push rax
	pop  rax
// Line 1005 (CALL expect ( 28 :) )
// Line 1005  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000943
	mov  rax, 0
	call expect
	jmp  .L000944
.L000943:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000944:
	push rax
	pop  rax
// Line 1006 (RETURN (CALL new_node ( 36 :(LVAR 24):) ))
// Line 1006 (CALL new_node ( 36 :(LVAR 24):) )
// Line 1006 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1006  36 
	push 36
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000945
	mov  rax, 0
	call new_node
	jmp  .L000946
.L000945:
	sub  rsp, 8
	mov  rax, 0
	call new_node
	add  rsp, 8
.L000946:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000871:
// Line 1008 (BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) ) NULL ):(CALL expect ( 45 :) ):(= (LVAR 8) (CALL parse_expr () )):(CALL expect ( 36 :) ):(= (LVAR 16) (CALL new_node_block ((CALL vec_new () ):) )):(WHILE cond:(&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))body: (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) )):(RETURN (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) )):)
// Line 1011 (IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) ) NULL )
// Line 1008 (== (GVAR switch_level)  0 )
// Line 1008 (GVAR switch_level)
	lea  rax, switch_level[rip]
	mov  eax, [rax]
	push rax
// Line 1008  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000947
// Line 1009 (CALL error_at_token ((LVAR 24):(ADDR  "a case label may only be used within a switch." ):) )
// Line 1010 (ADDR  "a case label may only be used within a switch." )
	lea  rax, .LS000022[rip]
	push rax
// Line 1009 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000949
	mov  rax, 0
	call error_at_token
	jmp  .L000950
.L000949:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000950:
	push rax
	pop  rax
	jmp  .L000948
.L000947:
.L000948:
// Line 1011 (CALL expect ( 45 :) )
// Line 1011  45 
	push 45
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000951
	mov  rax, 0
	call expect
	jmp  .L000952
.L000951:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000952:
	push rax
	pop  rax
// Line 1012 (= (LVAR 8) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1012 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000953
	mov  rax, 0
	call parse_expr
	jmp  .L000954
.L000953:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000954:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1013 (CALL expect ( 36 :) )
// Line 1013  36 
	push 36
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000955
	mov  rax, 0
	call expect
	jmp  .L000956
.L000955:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000956:
	push rax
	pop  rax
// Line 1014 (= (LVAR 16) (CALL new_node_block ((CALL vec_new () ):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1014 (CALL new_node_block ((CALL vec_new () ):) )
// Line 1014 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000957
	mov  rax, 0
	call vec_new
	jmp  .L000958
.L000957:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L000958:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000959
	mov  rax, 0
	call new_node_block
	jmp  .L000960
.L000959:
	sub  rsp, 8
	mov  rax, 0
	call new_node_block
	add  rsp, 8
.L000960:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1017 (WHILE cond:(&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))body: (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) ))
.L000961:
// Line 1015 (&& (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) ))) (! (CALL peek ( 32 :) )))
// Line 1015 (&& (! (CALL peek ( 45 :) )) (! (CALL peek ( 46 :) )))
// Line 1015 (! (CALL peek ( 45 :) ))
// Line 1015 (CALL peek ( 45 :) )
// Line 1015  45 
	push 45
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000969
	mov  rax, 0
	call peek
	jmp  .L000970
.L000969:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000970:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000967
	mov  rax, 1
	jmp  .L000968
.L000967:
	mov  rax, 0
.L000968:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000965
// Line 1015 (! (CALL peek ( 46 :) ))
// Line 1015 (CALL peek ( 46 :) )
// Line 1015  46 
	push 46
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000973
	mov  rax, 0
	call peek
	jmp  .L000974
.L000973:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000974:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000971
	mov  rax, 1
	jmp  .L000972
.L000971:
	mov  rax, 0
.L000972:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000965
	mov  rax, 1
	jmp  .L000966
.L000965:
	mov  rax, 0
.L000966:
	push  rax
	pop  rax
	cmp  eax, 0
	je   .L000963
// Line 1015 (! (CALL peek ( 32 :) ))
// Line 1015 (CALL peek ( 32 :) )
// Line 1015  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000977
	mov  rax, 0
	call peek
	jmp  .L000978
.L000977:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L000978:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000975
	mov  rax, 1
	jmp  .L000976
.L000975:
	mov  rax, 0
.L000976:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000963
	mov  rax, 1
	jmp  .L000964
.L000963:
	mov  rax, 0
.L000964:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000962
// Line 1016 (CALL add_stmt_to_block ((LVAR 16):(CALL parse_stmt () ):) )
// Line 1016 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000979
	mov  rax, 0
	call parse_stmt
	jmp  .L000980
.L000979:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L000980:
	push rax
// Line 1016 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000981
	mov  rax, 0
	call add_stmt_to_block
	jmp  .L000982
.L000981:
	sub  rsp, 8
	mov  rax, 0
	call add_stmt_to_block
	add  rsp, 8
.L000982:
	push rax
	pop  rax
	jmp  .L000961
.L000962:
// Line 1017 (RETURN (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) ))
// Line 1017 (CALL new_node_case ((LVAR 8):(LVAR 16):(LVAR 24):) )
// Line 1017 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1017 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 1017 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000983
	mov  rax, 0
	call new_node_case
	jmp  .L000984
.L000983:
	sub  rsp, 8
	mov  rax, 0
	call new_node_case
	add  rsp, 8
.L000984:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000872:
// Line 1019 (BLOCK(IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) ) NULL ):(CALL expect ( 46 :) ):(CALL expect ( 36 :) ):(= (LVAR 8) (CALL parse_stmt () )):(RETURN (CALL new_node_default ((LVAR 8):(LVAR 24):) )):)
// Line 1022 (IF (== (GVAR switch_level)  0 ) (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) ) NULL )
// Line 1019 (== (GVAR switch_level)  0 )
// Line 1019 (GVAR switch_level)
	lea  rax, switch_level[rip]
	mov  eax, [rax]
	push rax
// Line 1019  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000985
// Line 1020 (CALL error_at_token ((LVAR 24):(ADDR  "a default label may only be used within a switch." ):) )
// Line 1021 (ADDR  "a default label may only be used within a switch." )
	lea  rax, .LS000023[rip]
	push rax
// Line 1020 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000987
	mov  rax, 0
	call error_at_token
	jmp  .L000988
.L000987:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000988:
	push rax
	pop  rax
	jmp  .L000986
.L000985:
.L000986:
// Line 1022 (CALL expect ( 46 :) )
// Line 1022  46 
	push 46
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000989
	mov  rax, 0
	call expect
	jmp  .L000990
.L000989:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000990:
	push rax
	pop  rax
// Line 1023 (CALL expect ( 36 :) )
// Line 1023  36 
	push 36
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000991
	mov  rax, 0
	call expect
	jmp  .L000992
.L000991:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L000992:
	push rax
	pop  rax
// Line 1024 (= (LVAR 8) (CALL parse_stmt () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1024 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000993
	mov  rax, 0
	call parse_stmt
	jmp  .L000994
.L000993:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L000994:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1025 (RETURN (CALL new_node_default ((LVAR 8):(LVAR 24):) ))
// Line 1025 (CALL new_node_default ((LVAR 8):(LVAR 24):) )
// Line 1025 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1025 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000995
	mov  rax, 0
	call new_node_default
	jmp  .L000996
.L000995:
	sub  rsp, 8
	mov  rax, 0
	call new_node_default
	add  rsp, 8
.L000996:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000862:
// Line 1027 (= (LVAR 8) (CALL parse_expr () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1027 (CALL parse_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000997
	mov  rax, 0
	call parse_expr
	jmp  .L000998
.L000997:
	sub  rsp, 8
	mov  rax, 0
	call parse_expr
	add  rsp, 8
.L000998:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1028 (CALL expect ( 28 :) )
// Line 1028  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000999
	mov  rax, 0
	call expect
	jmp  .L001000
.L000999:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001000:
	push rax
	pop  rax
// Line 1029 (RETURN (LVAR 8))
// Line 1029 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_local_declaration
// Line 1032 FDECL parse_local_declaration func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (CALL parse_decl ( 0 :) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16)):(IF (! (LVAR 16)) (BLOCK(IF (! (CALL is_struct ((LVAR 24):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) ) (RETURN (CAST * void   0 ))):) NULL ):(= (LVAR 32) (CAST * void   0 )):(IF (CALL is_func ((LVAR 24):) ) (CALL error_at_token ((LVAR 16):(ADDR  "Functions can be declared only in the top level." ):) ) NULL ):(= (LVAR 40) (GVAR token)):(IF (CALL consume_if ( 13 :) ) (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(IF (&& (CALL is_array_of_char ((LVAR 24):) ) (== (MEMBER (DEREF (LVAR 32)) kind 0)  2 )) (BLOCK(= (MEMBER (DEREF (LVAR 24)) array_size 16) (MEMBER (DEREF (LVAR 32)) offset 48)):) (BLOCK(= (LVAR 32) (CALL get_ptr_if_array ((LVAR 32):) )):)):(= (LVAR 32) (CALL new_node_expr ( 20 :(CALL new_node_lvar ((CALL new_lvar ((LVAR 16):(LVAR 24):) ):(LVAR 40):) ):(LVAR 32):(LVAR 40):) )):) (BLOCK(CALL new_lvar ((LVAR 16):(LVAR 24):) ):)):(CALL expect ( 28 :) ):(RETURN (LVAR 32)):))
parse_local_declaration:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
// Line 1033 (= (LVAR 8) (CALL parse_decl ( 0 :) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1033 (CALL parse_decl ( 0 :) )
// Line 1420  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001001
	mov  rax, 0
	call parse_decl
	jmp  .L001002
.L001001:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L001002:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1034 (= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1034 (MEMBER (DEREF (LVAR 8)) ident 8)
// Line 1034 (LVAR 8)
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
// Line 1035 (= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 1035 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 1035 (LVAR 8)
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
// Line 1043 (IF (! (LVAR 16)) (BLOCK(IF (! (CALL is_struct ((LVAR 24):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) ) (RETURN (CAST * void   0 ))):) NULL )
// Line 1037 (! (LVAR 16))
// Line 1037 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001005
	mov  rax, 1
	jmp  .L001006
.L001005:
	mov  rax, 0
.L001006:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001003
// Line 1043 (BLOCK(IF (! (CALL is_struct ((LVAR 24):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) ) (RETURN (CAST * void   0 ))):)
// Line 1042 (IF (! (CALL is_struct ((LVAR 24):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) ) (RETURN (CAST * void   0 )))
// Line 1038 (! (CALL is_struct ((LVAR 24):) ))
// Line 1038 (CALL is_struct ((LVAR 24):) )
// Line 1038 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001011
	mov  rax, 0
	call is_struct
	jmp  .L001012
.L001011:
	sub  rsp, 8
	mov  rax, 0
	call is_struct
	add  rsp, 8
.L001012:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001009
	mov  rax, 1
	jmp  .L001010
.L001009:
	mov  rax, 0
.L001010:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001007
// Line 1039 (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )
// Line 1039 (ADDR  "Expected an identifier." )
	lea  rax, .LS000024[rip]
	push rax
// Line 1039 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001013
	mov  rax, 0
	call error_at_token
	jmp  .L001014
.L001013:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001014:
	push rax
	pop  rax
	jmp  .L001008
.L001007:
// Line 1041 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001008:
	jmp  .L001004
.L001003:
.L001004:
// Line 1043 (= (LVAR 32) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1047 (IF (CALL is_func ((LVAR 24):) ) (CALL error_at_token ((LVAR 16):(ADDR  "Functions can be declared only in the top level." ):) ) NULL )
// Line 1044 (CALL is_func ((LVAR 24):) )
// Line 1044 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001017
	mov  rax, 0
	call is_func
	jmp  .L001018
.L001017:
	sub  rsp, 8
	mov  rax, 0
	call is_func
	add  rsp, 8
.L001018:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001015
// Line 1045 (CALL error_at_token ((LVAR 16):(ADDR  "Functions can be declared only in the top level." ):) )
// Line 1046 (ADDR  "Functions can be declared only in the top level." )
	lea  rax, .LS000025[rip]
	push rax
// Line 1045 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001019
	mov  rax, 0
	call error_at_token
	jmp  .L001020
.L001019:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001020:
	push rax
	pop  rax
	jmp  .L001016
.L001015:
.L001016:
// Line 1047 (= (LVAR 40) (GVAR token))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 1047 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1061 (IF (CALL consume_if ( 13 :) ) (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(IF (&& (CALL is_array_of_char ((LVAR 24):) ) (== (MEMBER (DEREF (LVAR 32)) kind 0)  2 )) (BLOCK(= (MEMBER (DEREF (LVAR 24)) array_size 16) (MEMBER (DEREF (LVAR 32)) offset 48)):) (BLOCK(= (LVAR 32) (CALL get_ptr_if_array ((LVAR 32):) )):)):(= (LVAR 32) (CALL new_node_expr ( 20 :(CALL new_node_lvar ((CALL new_lvar ((LVAR 16):(LVAR 24):) ):(LVAR 40):) ):(LVAR 32):(LVAR 40):) )):) (BLOCK(CALL new_lvar ((LVAR 16):(LVAR 24):) ):))
// Line 1048 (CALL consume_if ( 13 :) )
// Line 1048  13 
	push 13
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001023
	mov  rax, 0
	call consume_if
	jmp  .L001024
.L001023:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001024:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001021
// Line 1058 (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(IF (&& (CALL is_array_of_char ((LVAR 24):) ) (== (MEMBER (DEREF (LVAR 32)) kind 0)  2 )) (BLOCK(= (MEMBER (DEREF (LVAR 24)) array_size 16) (MEMBER (DEREF (LVAR 32)) offset 48)):) (BLOCK(= (LVAR 32) (CALL get_ptr_if_array ((LVAR 32):) )):)):(= (LVAR 32) (CALL new_node_expr ( 20 :(CALL new_node_lvar ((CALL new_lvar ((LVAR 16):(LVAR 24):) ):(LVAR 40):) ):(LVAR 32):(LVAR 40):) )):)
// Line 1049 (= (LVAR 32) (CALL parse_assign_expr () ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 1049 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001025
	mov  rax, 0
	call parse_assign_expr
	jmp  .L001026
.L001025:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L001026:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1055 (IF (&& (CALL is_array_of_char ((LVAR 24):) ) (== (MEMBER (DEREF (LVAR 32)) kind 0)  2 )) (BLOCK(= (MEMBER (DEREF (LVAR 24)) array_size 16) (MEMBER (DEREF (LVAR 32)) offset 48)):) (BLOCK(= (LVAR 32) (CALL get_ptr_if_array ((LVAR 32):) )):))
// Line 1050 (&& (CALL is_array_of_char ((LVAR 24):) ) (== (MEMBER (DEREF (LVAR 32)) kind 0)  2 ))
// Line 1050 (CALL is_array_of_char ((LVAR 24):) )
// Line 1050 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001031
	mov  rax, 0
	call is_array_of_char
	jmp  .L001032
.L001031:
	sub  rsp, 8
	mov  rax, 0
	call is_array_of_char
	add  rsp, 8
.L001032:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L001029
// Line 1050 (== (MEMBER (DEREF (LVAR 32)) kind 0)  2 )
// Line 1050 (MEMBER (DEREF (LVAR 32)) kind 0)
// Line 1050 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 1050  2 
	push 2
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	je   .L001029
	mov  rax, 1
	jmp  .L001030
.L001029:
	mov  rax, 0
.L001030:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L001027
// Line 1052 (BLOCK(= (MEMBER (DEREF (LVAR 24)) array_size 16) (MEMBER (DEREF (LVAR 32)) offset 48)):)
// Line 1051 (= (MEMBER (DEREF (LVAR 24)) array_size 16) (MEMBER (DEREF (LVAR 32)) offset 48))
// Line 1051 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 1051 (MEMBER (DEREF (LVAR 32)) offset 48)
// Line 1051 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L001028
.L001027:
// Line 1055 (BLOCK(= (LVAR 32) (CALL get_ptr_if_array ((LVAR 32):) )):)
// Line 1053 (= (LVAR 32) (CALL get_ptr_if_array ((LVAR 32):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 1053 (CALL get_ptr_if_array ((LVAR 32):) )
// Line 1053 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001033
	mov  rax, 0
	call get_ptr_if_array
	jmp  .L001034
.L001033:
	sub  rsp, 8
	mov  rax, 0
	call get_ptr_if_array
	add  rsp, 8
.L001034:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L001028:
// Line 1055 (= (LVAR 32) (CALL new_node_expr ( 20 :(CALL new_node_lvar ((CALL new_lvar ((LVAR 16):(LVAR 24):) ):(LVAR 40):) ):(LVAR 32):(LVAR 40):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 1055 (CALL new_node_expr ( 20 :(CALL new_node_lvar ((CALL new_lvar ((LVAR 16):(LVAR 24):) ):(LVAR 40):) ):(LVAR 32):(LVAR 40):) )
// Line 1057 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
// Line 1057 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 1056 (CALL new_node_lvar ((CALL new_lvar ((LVAR 16):(LVAR 24):) ):(LVAR 40):) )
// Line 1056 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
// Line 1056 (CALL new_lvar ((LVAR 16):(LVAR 24):) )
// Line 1056 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1056 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001035
	mov  rax, 0
	call new_lvar
	jmp  .L001036
.L001035:
	sub  rsp, 8
	mov  rax, 0
	call new_lvar
	add  rsp, 8
.L001036:
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001037
	mov  rax, 0
	call new_node_lvar
	jmp  .L001038
.L001037:
	sub  rsp, 8
	mov  rax, 0
	call new_node_lvar
	add  rsp, 8
.L001038:
	push rax
// Line 1055  20 
	push 20
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L001039
	mov  rax, 0
	call new_node_expr
	jmp  .L001040
.L001039:
	sub  rsp, 8
	mov  rax, 0
	call new_node_expr
	add  rsp, 8
.L001040:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001022
.L001021:
// Line 1061 (BLOCK(CALL new_lvar ((LVAR 16):(LVAR 24):) ):)
// Line 1059 (CALL new_lvar ((LVAR 16):(LVAR 24):) )
// Line 1059 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1059 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001041
	mov  rax, 0
	call new_lvar
	jmp  .L001042
.L001041:
	sub  rsp, 8
	mov  rax, 0
	call new_lvar
	add  rsp, 8
.L001042:
	push rax
	pop  rax
.L001022:
// Line 1061 (CALL expect ( 28 :) )
// Line 1061  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001043
	mov  rax, 0
	call expect
	jmp  .L001044
.L001043:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001044:
	push rax
	pop  rax
// Line 1062 (RETURN (LVAR 32))
// Line 1062 (LVAR 32)
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
	.global parse_block_item
// Line 1065 FDECL parse_block_item func ( ) * struct <Node> 
//    
//    (BLOCK(IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 8) (CALL parse_decl ( 1 :) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16)):(IF (! (LVAR 16)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((LVAR 16):(LVAR 24):) ):(CALL expect ( 28 :) ):(RETURN (CAST * void   0 )):) NULL ):(IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(RETURN (CALL parse_local_declaration () )):) NULL ):(RETURN (CALL parse_stmt () )):))
parse_block_item:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 1076 (IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 8) (CALL parse_decl ( 1 :) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16)):(IF (! (LVAR 16)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((LVAR 16):(LVAR 24):) ):(CALL expect ( 28 :) ):(RETURN (CAST * void   0 )):) NULL )
// Line 1066 (CALL consume_if ( 59 :) )
// Line 1066  59 
	push 59
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001047
	mov  rax, 0
	call consume_if
	jmp  .L001048
.L001047:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001048:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001045
// Line 1076 (BLOCK(= (LVAR 8) (CALL parse_decl ( 1 :) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16)):(IF (! (LVAR 16)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((LVAR 16):(LVAR 24):) ):(CALL expect ( 28 :) ):(RETURN (CAST * void   0 )):)
// Line 1067 (= (LVAR 8) (CALL parse_decl ( 1 :) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1067 (CALL parse_decl ( 1 :) )
// Line 1420  1 
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001049
	mov  rax, 0
	call parse_decl
	jmp  .L001050
.L001049:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L001050:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1068 (= (LVAR 16) (MEMBER (DEREF (LVAR 8)) ident 8))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1068 (MEMBER (DEREF (LVAR 8)) ident 8)
// Line 1068 (LVAR 8)
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
// Line 1069 (= (LVAR 24) (MEMBER (DEREF (LVAR 8)) type 16))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 1069 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 1069 (LVAR 8)
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
// Line 1072 (IF (! (LVAR 16)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL )
// Line 1070 (! (LVAR 16))
// Line 1070 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001053
	mov  rax, 1
	jmp  .L001054
.L001053:
	mov  rax, 0
.L001054:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001051
// Line 1071 (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) )
// Line 1071 (ADDR  "Expected identifier." )
	lea  rax, .LS000026[rip]
	push rax
// Line 1071 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001055
	mov  rax, 0
	call error_at_token
	jmp  .L001056
.L001055:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001056:
	push rax
	pop  rax
	jmp  .L001052
.L001051:
.L001052:
// Line 1072 (CALL new_typedef ((LVAR 16):(LVAR 24):) )
// Line 1072 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1072 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001057
	mov  rax, 0
	call new_typedef
	jmp  .L001058
.L001057:
	sub  rsp, 8
	mov  rax, 0
	call new_typedef
	add  rsp, 8
.L001058:
	push rax
	pop  rax
// Line 1073 (CALL expect ( 28 :) )
// Line 1073  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001059
	mov  rax, 0
	call expect
	jmp  .L001060
.L001059:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001060:
	push rax
	pop  rax
// Line 1074 (RETURN (CAST * void   0 ))
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L001046
.L001045:
.L001046:
// Line 1080 (IF (CALL is_type_specifier ((GVAR token):) ) (BLOCK(RETURN (CALL parse_local_declaration () )):) NULL )
// Line 1076 (CALL is_type_specifier ((GVAR token):) )
// Line 1076 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001063
	mov  rax, 0
	call is_type_specifier
	jmp  .L001064
.L001063:
	sub  rsp, 8
	mov  rax, 0
	call is_type_specifier
	add  rsp, 8
.L001064:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001061
// Line 1080 (BLOCK(RETURN (CALL parse_local_declaration () )):)
// Line 1078 (RETURN (CALL parse_local_declaration () ))
// Line 1078 (CALL parse_local_declaration () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001065
	mov  rax, 0
	call parse_local_declaration
	jmp  .L001066
.L001065:
	sub  rsp, 8
	mov  rax, 0
	call parse_local_declaration
	add  rsp, 8
.L001066:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L001062
.L001061:
.L001062:
// Line 1080 (RETURN (CALL parse_stmt () ))
// Line 1080 (CALL parse_stmt () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001067
	mov  rax, 0
	call parse_stmt
	jmp  .L001068
.L001067:
	sub  rsp, 8
	mov  rax, 0
	call parse_stmt
	add  rsp, 8
.L001068:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_block
// Line 1083 FDECL parse_block func ( ) * struct <Node> 
//    
//    (BLOCK(CALL expect ( 31 :) ):(= (LVAR 8) (CALL vec_new () )):(IF (GVAR scope) (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 ) NULL ):(= (LVAR 16) (GVAR scope)):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 24) (CALL parse_block_item () )):(IF (LVAR 24) (CALL vec_push ((LVAR 8):(LVAR 24):) ) NULL ):)):(CALL expect ( 32 :) ):(= (GVAR scope) (LVAR 16)):(RETURN (CALL new_node_block ((LVAR 8):) )):))
parse_block:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 1084 (CALL expect ( 31 :) )
// Line 1084  31 
	push 31
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001069
	mov  rax, 0
	call expect
	jmp  .L001070
.L001069:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001070:
	push rax
	pop  rax
// Line 1085 (= (LVAR 8) (CALL vec_new () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1085 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001071
	mov  rax, 0
	call vec_new
	jmp  .L001072
.L001071:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L001072:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1088 (IF (GVAR scope) (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 ) NULL )
// Line 1086 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001073
// Line 1087 (= (MEMBER (DEREF (GVAR scope)) scope_head 40)  1 )
// Line 1087 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	push rax
// Line 1420  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
	jmp  .L001074
.L001073:
.L001074:
// Line 1088 (= (LVAR 16) (GVAR scope))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1088 (GVAR scope)
	lea  rax, scope[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1095 (WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 24) (CALL parse_block_item () )):(IF (LVAR 24) (CALL vec_push ((LVAR 8):(LVAR 24):) ) NULL ):))
.L001075:
// Line 1090 (! (CALL peek ( 32 :) ))
// Line 1090 (CALL peek ( 32 :) )
// Line 1090  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001079
	mov  rax, 0
	call peek
	jmp  .L001080
.L001079:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001080:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001077
	mov  rax, 1
	jmp  .L001078
.L001077:
	mov  rax, 0
.L001078:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001076
// Line 1095 (BLOCK(= (LVAR 24) (CALL parse_block_item () )):(IF (LVAR 24) (CALL vec_push ((LVAR 8):(LVAR 24):) ) NULL ):)
// Line 1091 (= (LVAR 24) (CALL parse_block_item () ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 1091 (CALL parse_block_item () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001081
	mov  rax, 0
	call parse_block_item
	jmp  .L001082
.L001081:
	sub  rsp, 8
	mov  rax, 0
	call parse_block_item
	add  rsp, 8
.L001082:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1094 (IF (LVAR 24) (CALL vec_push ((LVAR 8):(LVAR 24):) ) NULL )
// Line 1092 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001083
// Line 1093 (CALL vec_push ((LVAR 8):(LVAR 24):) )
// Line 1093 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 1093 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001085
	mov  rax, 0
	call vec_push
	jmp  .L001086
.L001085:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L001086:
	push rax
	pop  rax
	jmp  .L001084
.L001083:
.L001084:
	jmp  .L001075
.L001076:
// Line 1095 (CALL expect ( 32 :) )
// Line 1095  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001087
	mov  rax, 0
	call expect
	jmp  .L001088
.L001087:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001088:
	push rax
	pop  rax
// Line 1096 (= (GVAR scope) (LVAR 16))
	lea  rax, scope[rip]
	push rax
// Line 1096 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1098 (RETURN (CALL new_node_block ((LVAR 8):) ))
// Line 1098 (CALL new_node_block ((LVAR 8):) )
// Line 1098 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001089
	mov  rax, 0
	call new_node_block
	jmp  .L001090
.L001089:
	sub  rsp, 8
	mov  rax, 0
	call new_node_block
	add  rsp, 8
.L001090:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_declaretor
// Line 1101 FDECL parse_declaretor func ( * struct <Type>  type ) * struct <MemberInfo> 
//    (LVAR 8) 
//    (BLOCK(WHILE cond:(CALL consume_if ( 5 :) )body: (BLOCK(= (LVAR 8) (CALL new_type_ptr_to ((LVAR 8):) )):)):(= (LVAR 72) (CAST * void   0 )):(= (LVAR 80) (CAST * void   0 )):(IF (CALL peek ( 0 :) ) (BLOCK(= (LVAR 80) (CALL expect ( 0 :) )):(IF (CALL find_lvar_in_scope ((LVAR 80):) ) (CALL error_at_token ((LVAR 80):(ADDR  "Duplicate definition of local variable." ):) ) NULL ):) (IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 72) (CALL parse_declaretor ((ADDR (LVAR 64)):) )):(CALL expect ( 30 :) ):) NULL )):(= (MEMBER (LVAR 136) ptr_to 8) (LVAR 8)):(= (LVAR 144) (ADDR (LVAR 136))):(WHILE cond:(CALL consume_if ( 33 :) )body: (BLOCK(= (LVAR 148)  0 ):(IF (! (CALL peek ( 34 :) )) (= (LVAR 148) (MEMBER (DEREF (CALL expect ( 1 :) )) int_val 16)) NULL ):(= (MEMBER (DEREF (LVAR 144)) ptr_to 8) (CALL new_type_array ((LVAR 8):(LVAR 148):) )):(= (LVAR 144) (MEMBER (DEREF (LVAR 144)) ptr_to 8)):(CALL expect ( 34 :) ):)):(= (LVAR 8) (MEMBER (LVAR 136) ptr_to 8)):(IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 8) (CALL new_type_func ((LVAR 8):) )):(= (MEMBER (LVAR 180) next 0) (CAST * void   0 )):(= (LVAR 188) (ADDR (LVAR 180))):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(IF (CALL peek ( 39 :) ) (BLOCK(CALL consume () ):BREAK :) NULL ):(= (LVAR 196) (CALL parse_decl ( 0 :) )):(IF (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) ) (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )) NULL ):(= (MEMBER (DEREF (LVAR 188)) next 0) (LVAR 196)):(= (LVAR 188) (LVAR 196)):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(= (MEMBER (DEREF (LVAR 8)) params 24) (MEMBER (LVAR 180) next 0)):(CALL expect ( 30 :) ):) NULL ):(IF (LVAR 72) (BLOCK(= (LVAR 204) (MEMBER (DEREF (LVAR 72)) type 16)):(WHILE cond:(!= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (ADDR (LVAR 64)))body: (= (LVAR 204) (MEMBER (DEREF (LVAR 204)) ptr_to 8))):(= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (LVAR 8)):(= (LVAR 8) (MEMBER (DEREF (LVAR 72)) type 16)):(= (LVAR 80) (MEMBER (DEREF (LVAR 72)) ident 8)):) NULL ):(RETURN (CALL new_member_info ((LVAR 80):(LVAR 8):) )):))
parse_declaretor:
	push rbp
	mov  rbp, rsp
	sub  rsp, 208
	mov  [rbp - 8], rdi
// Line 1107 (WHILE cond:(CALL consume_if ( 5 :) )body: (BLOCK(= (LVAR 8) (CALL new_type_ptr_to ((LVAR 8):) )):))
.L001091:
// Line 1103 (CALL consume_if ( 5 :) )
// Line 1103  5 
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001093
	mov  rax, 0
	call consume_if
	jmp  .L001094
.L001093:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001094:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001092
// Line 1107 (BLOCK(= (LVAR 8) (CALL new_type_ptr_to ((LVAR 8):) )):)
// Line 1104 (= (LVAR 8) (CALL new_type_ptr_to ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1104 (CALL new_type_ptr_to ((LVAR 8):) )
// Line 1104 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001095
	mov  rax, 0
	call new_type_ptr_to
	jmp  .L001096
.L001095:
	sub  rsp, 8
	mov  rax, 0
	call new_type_ptr_to
	add  rsp, 8
.L001096:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001091
.L001092:
// Line 1108 (= (LVAR 72) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 72
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1109 (= (LVAR 80) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 80
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1120 (IF (CALL peek ( 0 :) ) (BLOCK(= (LVAR 80) (CALL expect ( 0 :) )):(IF (CALL find_lvar_in_scope ((LVAR 80):) ) (CALL error_at_token ((LVAR 80):(ADDR  "Duplicate definition of local variable." ):) ) NULL ):) (IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 72) (CALL parse_declaretor ((ADDR (LVAR 64)):) )):(CALL expect ( 30 :) ):) NULL ))
// Line 1111 (CALL peek ( 0 :) )
// Line 1111  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001099
	mov  rax, 0
	call peek
	jmp  .L001100
.L001099:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001100:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001097
// Line 1115 (BLOCK(= (LVAR 80) (CALL expect ( 0 :) )):(IF (CALL find_lvar_in_scope ((LVAR 80):) ) (CALL error_at_token ((LVAR 80):(ADDR  "Duplicate definition of local variable." ):) ) NULL ):)
// Line 1112 (= (LVAR 80) (CALL expect ( 0 :) ))
	mov  rax, rbp
	sub  rax, 80
	push rax
// Line 1112 (CALL expect ( 0 :) )
// Line 1112  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001101
	mov  rax, 0
	call expect
	jmp  .L001102
.L001101:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001102:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1115 (IF (CALL find_lvar_in_scope ((LVAR 80):) ) (CALL error_at_token ((LVAR 80):(ADDR  "Duplicate definition of local variable." ):) ) NULL )
// Line 1113 (CALL find_lvar_in_scope ((LVAR 80):) )
// Line 1113 (LVAR 80)
	mov  rax, rbp
	sub  rax, 80
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001105
	mov  rax, 0
	call find_lvar_in_scope
	jmp  .L001106
.L001105:
	sub  rsp, 8
	mov  rax, 0
	call find_lvar_in_scope
	add  rsp, 8
.L001106:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001103
// Line 1114 (CALL error_at_token ((LVAR 80):(ADDR  "Duplicate definition of local variable." ):) )
// Line 1114 (ADDR  "Duplicate definition of local variable." )
	lea  rax, .LS000027[rip]
	push rax
// Line 1114 (LVAR 80)
	mov  rax, rbp
	sub  rax, 80
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001107
	mov  rax, 0
	call error_at_token
	jmp  .L001108
.L001107:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001108:
	push rax
	pop  rax
	jmp  .L001104
.L001103:
.L001104:
	jmp  .L001098
.L001097:
// Line 1120 (IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 72) (CALL parse_declaretor ((ADDR (LVAR 64)):) )):(CALL expect ( 30 :) ):) NULL )
// Line 1115 (CALL consume_if ( 29 :) )
// Line 1115  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001111
	mov  rax, 0
	call consume_if
	jmp  .L001112
.L001111:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001112:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001109
// Line 1120 (BLOCK(= (LVAR 72) (CALL parse_declaretor ((ADDR (LVAR 64)):) )):(CALL expect ( 30 :) ):)
// Line 1116 (= (LVAR 72) (CALL parse_declaretor ((ADDR (LVAR 64)):) ))
	mov  rax, rbp
	sub  rax, 72
	push rax
// Line 1116 (CALL parse_declaretor ((ADDR (LVAR 64)):) )
// Line 1116 (ADDR (LVAR 64))
	mov  rax, rbp
	sub  rax, 64
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001113
	mov  rax, 0
	call parse_declaretor
	jmp  .L001114
.L001113:
	sub  rsp, 8
	mov  rax, 0
	call parse_declaretor
	add  rsp, 8
.L001114:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1117 (CALL expect ( 30 :) )
// Line 1117  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001115
	mov  rax, 0
	call expect
	jmp  .L001116
.L001115:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001116:
	push rax
	pop  rax
	jmp  .L001110
.L001109:
.L001110:
.L001098:
// Line 1121 (= (MEMBER (LVAR 136) ptr_to 8) (LVAR 8))
	mov  rax, rbp
	sub  rax, 136
	add  rax, 8
	push rax
// Line 1121 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1122 (= (LVAR 144) (ADDR (LVAR 136)))
	mov  rax, rbp
	sub  rax, 144
	push rax
// Line 1122 (ADDR (LVAR 136))
	mov  rax, rbp
	sub  rax, 136
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1132 (WHILE cond:(CALL consume_if ( 33 :) )body: (BLOCK(= (LVAR 148)  0 ):(IF (! (CALL peek ( 34 :) )) (= (LVAR 148) (MEMBER (DEREF (CALL expect ( 1 :) )) int_val 16)) NULL ):(= (MEMBER (DEREF (LVAR 144)) ptr_to 8) (CALL new_type_array ((LVAR 8):(LVAR 148):) )):(= (LVAR 144) (MEMBER (DEREF (LVAR 144)) ptr_to 8)):(CALL expect ( 34 :) ):))
.L001117:
// Line 1123 (CALL consume_if ( 33 :) )
// Line 1123  33 
	push 33
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001119
	mov  rax, 0
	call consume_if
	jmp  .L001120
.L001119:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001120:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001118
// Line 1132 (BLOCK(= (LVAR 148)  0 ):(IF (! (CALL peek ( 34 :) )) (= (LVAR 148) (MEMBER (DEREF (CALL expect ( 1 :) )) int_val 16)) NULL ):(= (MEMBER (DEREF (LVAR 144)) ptr_to 8) (CALL new_type_array ((LVAR 8):(LVAR 148):) )):(= (LVAR 144) (MEMBER (DEREF (LVAR 144)) ptr_to 8)):(CALL expect ( 34 :) ):)
// Line 1124 (= (LVAR 148)  0 )
	mov  rax, rbp
	sub  rax, 148
	push rax
// Line 1124  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1128 (IF (! (CALL peek ( 34 :) )) (= (LVAR 148) (MEMBER (DEREF (CALL expect ( 1 :) )) int_val 16)) NULL )
// Line 1125 (! (CALL peek ( 34 :) ))
// Line 1125 (CALL peek ( 34 :) )
// Line 1125  34 
	push 34
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001125
	mov  rax, 0
	call peek
	jmp  .L001126
.L001125:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001126:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001123
	mov  rax, 1
	jmp  .L001124
.L001123:
	mov  rax, 0
.L001124:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001121
// Line 1127 (= (LVAR 148) (MEMBER (DEREF (CALL expect ( 1 :) )) int_val 16))
	mov  rax, rbp
	sub  rax, 148
	push rax
// Line 1127 (MEMBER (DEREF (CALL expect ( 1 :) )) int_val 16)
// Line 1127 (CALL expect ( 1 :) )
// Line 1127  1 
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001127
	mov  rax, 0
	call expect
	jmp  .L001128
.L001127:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001128:
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
	jmp  .L001122
.L001121:
.L001122:
// Line 1128 (= (MEMBER (DEREF (LVAR 144)) ptr_to 8) (CALL new_type_array ((LVAR 8):(LVAR 148):) ))
// Line 1128 (LVAR 144)
	mov  rax, rbp
	sub  rax, 144
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 1128 (CALL new_type_array ((LVAR 8):(LVAR 148):) )
// Line 1128 (LVAR 148)
	mov  rax, rbp
	sub  rax, 148
	mov  eax, [rax]
	push rax
// Line 1128 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001129
	mov  rax, 0
	call new_type_array
	jmp  .L001130
.L001129:
	sub  rsp, 8
	mov  rax, 0
	call new_type_array
	add  rsp, 8
.L001130:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1129 (= (LVAR 144) (MEMBER (DEREF (LVAR 144)) ptr_to 8))
	mov  rax, rbp
	sub  rax, 144
	push rax
// Line 1129 (MEMBER (DEREF (LVAR 144)) ptr_to 8)
// Line 1129 (LVAR 144)
	mov  rax, rbp
	sub  rax, 144
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
// Line 1130 (CALL expect ( 34 :) )
// Line 1130  34 
	push 34
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001131
	mov  rax, 0
	call expect
	jmp  .L001132
.L001131:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001132:
	push rax
	pop  rax
	jmp  .L001117
.L001118:
// Line 1132 (= (LVAR 8) (MEMBER (LVAR 136) ptr_to 8))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1132 (MEMBER (LVAR 136) ptr_to 8)
	mov  rax, rbp
	sub  rax, 136
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1156 (IF (CALL consume_if ( 29 :) ) (BLOCK(= (LVAR 8) (CALL new_type_func ((LVAR 8):) )):(= (MEMBER (LVAR 180) next 0) (CAST * void   0 )):(= (LVAR 188) (ADDR (LVAR 180))):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(IF (CALL peek ( 39 :) ) (BLOCK(CALL consume () ):BREAK :) NULL ):(= (LVAR 196) (CALL parse_decl ( 0 :) )):(IF (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) ) (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )) NULL ):(= (MEMBER (DEREF (LVAR 188)) next 0) (LVAR 196)):(= (LVAR 188) (LVAR 196)):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(= (MEMBER (DEREF (LVAR 8)) params 24) (MEMBER (LVAR 180) next 0)):(CALL expect ( 30 :) ):) NULL )
// Line 1134 (CALL consume_if ( 29 :) )
// Line 1134  29 
	push 29
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001135
	mov  rax, 0
	call consume_if
	jmp  .L001136
.L001135:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001136:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001133
// Line 1156 (BLOCK(= (LVAR 8) (CALL new_type_func ((LVAR 8):) )):(= (MEMBER (LVAR 180) next 0) (CAST * void   0 )):(= (LVAR 188) (ADDR (LVAR 180))):(WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(IF (CALL peek ( 39 :) ) (BLOCK(CALL consume () ):BREAK :) NULL ):(= (LVAR 196) (CALL parse_decl ( 0 :) )):(IF (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) ) (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )) NULL ):(= (MEMBER (DEREF (LVAR 188)) next 0) (LVAR 196)):(= (LVAR 188) (LVAR 196)):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(= (MEMBER (DEREF (LVAR 8)) params 24) (MEMBER (LVAR 180) next 0)):(CALL expect ( 30 :) ):)
// Line 1135 (= (LVAR 8) (CALL new_type_func ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1135 (CALL new_type_func ((LVAR 8):) )
// Line 1135 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001137
	mov  rax, 0
	call new_type_func
	jmp  .L001138
.L001137:
	sub  rsp, 8
	mov  rax, 0
	call new_type_func
	add  rsp, 8
.L001138:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1137 (= (MEMBER (LVAR 180) next 0) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 180
	add  rax, 0
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1138 (= (LVAR 188) (ADDR (LVAR 180)))
	mov  rax, rbp
	sub  rax, 188
	push rax
// Line 1138 (ADDR (LVAR 180))
	mov  rax, rbp
	sub  rax, 180
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1152 (WHILE cond:(! (CALL peek ( 30 :) ))body: (BLOCK(IF (CALL peek ( 39 :) ) (BLOCK(CALL consume () ):BREAK :) NULL ):(= (LVAR 196) (CALL parse_decl ( 0 :) )):(IF (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) ) (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )) NULL ):(= (MEMBER (DEREF (LVAR 188)) next 0) (LVAR 196)):(= (LVAR 188) (LVAR 196)):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):))
.L001139:
// Line 1139 (! (CALL peek ( 30 :) ))
// Line 1139 (CALL peek ( 30 :) )
// Line 1139  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001143
	mov  rax, 0
	call peek
	jmp  .L001144
.L001143:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001144:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001141
	mov  rax, 1
	jmp  .L001142
.L001141:
	mov  rax, 0
.L001142:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001140
// Line 1152 (BLOCK(IF (CALL peek ( 39 :) ) (BLOCK(CALL consume () ):BREAK :) NULL ):(= (LVAR 196) (CALL parse_decl ( 0 :) )):(IF (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) ) (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )) NULL ):(= (MEMBER (DEREF (LVAR 188)) next 0) (LVAR 196)):(= (LVAR 188) (LVAR 196)):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)
// Line 1144 (IF (CALL peek ( 39 :) ) (BLOCK(CALL consume () ):BREAK :) NULL )
// Line 1140 (CALL peek ( 39 :) )
// Line 1140  39 
	push 39
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001147
	mov  rax, 0
	call peek
	jmp  .L001148
.L001147:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001148:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001145
// Line 1144 (BLOCK(CALL consume () ):BREAK :)
// Line 1141 (CALL consume () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001149
	mov  rax, 0
	call consume
	jmp  .L001150
.L001149:
	sub  rsp, 8
	mov  rax, 0
	call consume
	add  rsp, 8
.L001150:
	push rax
	pop  rax
// Line 1142 BREAK 
	jmp  .L001140
	jmp  .L001146
.L001145:
.L001146:
// Line 1144 (= (LVAR 196) (CALL parse_decl ( 0 :) ))
	mov  rax, rbp
	sub  rax, 196
	push rax
// Line 1144 (CALL parse_decl ( 0 :) )
// Line 1420  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001151
	mov  rax, 0
	call parse_decl
	jmp  .L001152
.L001151:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L001152:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1147 (IF (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) ) (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )) NULL )
// Line 1145 (CALL is_array ((MEMBER (DEREF (LVAR 196)) type 16):) )
// Line 1145 (MEMBER (DEREF (LVAR 196)) type 16)
// Line 1145 (LVAR 196)
	mov  rax, rbp
	sub  rax, 196
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001155
	mov  rax, 0
	call is_array
	jmp  .L001156
.L001155:
	sub  rsp, 8
	mov  rax, 0
	call is_array
	add  rsp, 8
.L001156:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001153
// Line 1146 (= (MEMBER (DEREF (LVAR 196)) type 16) (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) ))
// Line 1146 (LVAR 196)
	mov  rax, rbp
	sub  rax, 196
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 1146 (CALL new_type_ptr_to ((MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8):) )
// Line 1146 (MEMBER (DEREF (MEMBER (DEREF (LVAR 196)) type 16)) ptr_to 8)
// Line 1146 (MEMBER (DEREF (LVAR 196)) type 16)
// Line 1146 (LVAR 196)
	mov  rax, rbp
	sub  rax, 196
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001157
	mov  rax, 0
	call new_type_ptr_to
	jmp  .L001158
.L001157:
	sub  rsp, 8
	mov  rax, 0
	call new_type_ptr_to
	add  rsp, 8
.L001158:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001154
.L001153:
.L001154:
// Line 1147 (= (MEMBER (DEREF (LVAR 188)) next 0) (LVAR 196))
// Line 1147 (LVAR 188)
	mov  rax, rbp
	sub  rax, 188
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 1147 (LVAR 196)
	mov  rax, rbp
	sub  rax, 196
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1148 (= (LVAR 188) (LVAR 196))
	mov  rax, rbp
	sub  rax, 188
	push rax
// Line 1148 (LVAR 196)
	mov  rax, rbp
	sub  rax, 196
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1151 (IF (! (CALL consume_if ( 35 :) )) BREAK  NULL )
// Line 1149 (! (CALL consume_if ( 35 :) ))
// Line 1149 (CALL consume_if ( 35 :) )
// Line 1149  35 
	push 35
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001163
	mov  rax, 0
	call consume_if
	jmp  .L001164
.L001163:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001164:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001161
	mov  rax, 1
	jmp  .L001162
.L001161:
	mov  rax, 0
.L001162:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001159
// Line 1150 BREAK 
	jmp  .L001140
	jmp  .L001160
.L001159:
.L001160:
	jmp  .L001139
.L001140:
// Line 1152 (= (MEMBER (DEREF (LVAR 8)) params 24) (MEMBER (LVAR 180) next 0))
// Line 1152 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 1152 (MEMBER (LVAR 180) next 0)
	mov  rax, rbp
	sub  rax, 180
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1153 (CALL expect ( 30 :) )
// Line 1153  30 
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001165
	mov  rax, 0
	call expect
	jmp  .L001166
.L001165:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001166:
	push rax
	pop  rax
	jmp  .L001134
.L001133:
.L001134:
// Line 1165 (IF (LVAR 72) (BLOCK(= (LVAR 204) (MEMBER (DEREF (LVAR 72)) type 16)):(WHILE cond:(!= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (ADDR (LVAR 64)))body: (= (LVAR 204) (MEMBER (DEREF (LVAR 204)) ptr_to 8))):(= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (LVAR 8)):(= (LVAR 8) (MEMBER (DEREF (LVAR 72)) type 16)):(= (LVAR 80) (MEMBER (DEREF (LVAR 72)) ident 8)):) NULL )
// Line 1156 (LVAR 72)
	mov  rax, rbp
	sub  rax, 72
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001167
// Line 1165 (BLOCK(= (LVAR 204) (MEMBER (DEREF (LVAR 72)) type 16)):(WHILE cond:(!= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (ADDR (LVAR 64)))body: (= (LVAR 204) (MEMBER (DEREF (LVAR 204)) ptr_to 8))):(= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (LVAR 8)):(= (LVAR 8) (MEMBER (DEREF (LVAR 72)) type 16)):(= (LVAR 80) (MEMBER (DEREF (LVAR 72)) ident 8)):)
// Line 1157 (= (LVAR 204) (MEMBER (DEREF (LVAR 72)) type 16))
	mov  rax, rbp
	sub  rax, 204
	push rax
// Line 1157 (MEMBER (DEREF (LVAR 72)) type 16)
// Line 1157 (LVAR 72)
	mov  rax, rbp
	sub  rax, 72
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
// Line 1160 (WHILE cond:(!= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (ADDR (LVAR 64)))body: (= (LVAR 204) (MEMBER (DEREF (LVAR 204)) ptr_to 8)))
.L001169:
// Line 1158 (!= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (ADDR (LVAR 64)))
// Line 1158 (MEMBER (DEREF (LVAR 204)) ptr_to 8)
// Line 1158 (LVAR 204)
	mov  rax, rbp
	sub  rax, 204
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 1158 (ADDR (LVAR 64))
	mov  rax, rbp
	sub  rax, 64
	push rax
	pop  rdi
	pop  rax
	cmp  rax, rdi
	setne al
	movzb rax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001170
// Line 1159 (= (LVAR 204) (MEMBER (DEREF (LVAR 204)) ptr_to 8))
	mov  rax, rbp
	sub  rax, 204
	push rax
// Line 1159 (MEMBER (DEREF (LVAR 204)) ptr_to 8)
// Line 1159 (LVAR 204)
	mov  rax, rbp
	sub  rax, 204
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
	jmp  .L001169
.L001170:
// Line 1160 (= (MEMBER (DEREF (LVAR 204)) ptr_to 8) (LVAR 8))
// Line 1160 (LVAR 204)
	mov  rax, rbp
	sub  rax, 204
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 1160 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1161 (= (LVAR 8) (MEMBER (DEREF (LVAR 72)) type 16))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1161 (MEMBER (DEREF (LVAR 72)) type 16)
// Line 1161 (LVAR 72)
	mov  rax, rbp
	sub  rax, 72
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
// Line 1162 (= (LVAR 80) (MEMBER (DEREF (LVAR 72)) ident 8))
	mov  rax, rbp
	sub  rax, 80
	push rax
// Line 1162 (MEMBER (DEREF (LVAR 72)) ident 8)
// Line 1162 (LVAR 72)
	mov  rax, rbp
	sub  rax, 72
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
	jmp  .L001168
.L001167:
.L001168:
// Line 1165 (RETURN (CALL new_member_info ((LVAR 80):(LVAR 8):) ))
// Line 1165 (CALL new_member_info ((LVAR 80):(LVAR 8):) )
// Line 1165 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 1165 (LVAR 80)
	mov  rax, rbp
	sub  rax, 80
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001171
	mov  rax, 0
	call new_member_info
	jmp  .L001172
.L001171:
	sub  rsp, 8
	mov  rax, 0
	call new_member_info
	add  rsp, 8
.L001172:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_enum_specifier
// Line 1168 FDECL parse_enum_specifier func ( ) * struct <Type> 
//    
//    (BLOCK(= (LVAR 8) (CALL new_type_enum () )):(IF (CALL peek ( 0 :) ) (= (MEMBER (DEREF (LVAR 8)) tag_name 48) (CALL consume_ident () )) NULL ):(= (MEMBER (LVAR 40) next 0) (CAST * void   0 )):(= (LVAR 48) (ADDR (LVAR 40))):(IF (CALL consume_if ( 31 :) ) (BLOCK(= (LVAR 52)  0 ):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 60) (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) )):(= (MEMBER (DEREF (LVAR 60)) tag_name 48) (CALL consume_ident () )):(= (MEMBER (DEREF (LVAR 48)) next 0) (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )):(= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):) NULL ):(= (MEMBER (DEREF (LVAR 8)) member 32) (MEMBER (LVAR 40) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):(LVAR 8):) ):(RETURN (LVAR 8)):))
parse_enum_specifier:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
// Line 1169 (= (LVAR 8) (CALL new_type_enum () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1169 (CALL new_type_enum () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001173
	mov  rax, 0
	call new_type_enum
	jmp  .L001174
.L001173:
	sub  rsp, 8
	mov  rax, 0
	call new_type_enum
	add  rsp, 8
.L001174:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1172 (IF (CALL peek ( 0 :) ) (= (MEMBER (DEREF (LVAR 8)) tag_name 48) (CALL consume_ident () )) NULL )
// Line 1170 (CALL peek ( 0 :) )
// Line 1170  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001177
	mov  rax, 0
	call peek
	jmp  .L001178
.L001177:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001178:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001175
// Line 1171 (= (MEMBER (DEREF (LVAR 8)) tag_name 48) (CALL consume_ident () ))
// Line 1171 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	push rax
// Line 1171 (CALL consume_ident () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001179
	mov  rax, 0
	call consume_ident
	jmp  .L001180
.L001179:
	sub  rsp, 8
	mov  rax, 0
	call consume_ident
	add  rsp, 8
.L001180:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001176
.L001175:
.L001176:
// Line 1173 (= (MEMBER (LVAR 40) next 0) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 40
	add  rax, 0
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1174 (= (LVAR 48) (ADDR (LVAR 40)))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 1174 (ADDR (LVAR 40))
	mov  rax, rbp
	sub  rax, 40
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1188 (IF (CALL consume_if ( 31 :) ) (BLOCK(= (LVAR 52)  0 ):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 60) (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) )):(= (MEMBER (DEREF (LVAR 60)) tag_name 48) (CALL consume_ident () )):(= (MEMBER (DEREF (LVAR 48)) next 0) (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )):(= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):) NULL )
// Line 1175 (CALL consume_if ( 31 :) )
// Line 1175  31 
	push 31
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001183
	mov  rax, 0
	call consume_if
	jmp  .L001184
.L001183:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001184:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001181
// Line 1188 (BLOCK(= (LVAR 52)  0 ):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 60) (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) )):(= (MEMBER (DEREF (LVAR 60)) tag_name 48) (CALL consume_ident () )):(= (MEMBER (DEREF (LVAR 48)) next 0) (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )):(= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):)
// Line 1176 (= (LVAR 52)  0 )
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 1176  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1186 (WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(= (LVAR 60) (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) )):(= (MEMBER (DEREF (LVAR 60)) tag_name 48) (CALL consume_ident () )):(= (MEMBER (DEREF (LVAR 48)) next 0) (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )):(= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):))
.L001185:
// Line 1177 (! (CALL peek ( 32 :) ))
// Line 1177 (CALL peek ( 32 :) )
// Line 1177  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001189
	mov  rax, 0
	call peek
	jmp  .L001190
.L001189:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001190:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001187
	mov  rax, 1
	jmp  .L001188
.L001187:
	mov  rax, 0
.L001188:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001186
// Line 1186 (BLOCK(= (LVAR 60) (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) )):(= (MEMBER (DEREF (LVAR 60)) tag_name 48) (CALL consume_ident () )):(= (MEMBER (DEREF (LVAR 48)) next 0) (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )):(= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0)):(CALL new_tag ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)
// Line 1178 (= (LVAR 60) (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) ))
	mov  rax, rbp
	sub  rax, 60
	push rax
// Line 1178 (CALL new_type_enum_el ((++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ):) )
// Line 1178 (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )
// Line 1178 (= (LVAR 52) (++ (LVAR 52)  1 ))
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 1178 (++ (LVAR 52)  1 )
// Line 1178 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 1178  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 1178  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001191
	mov  rax, 0
	call new_type_enum_el
	jmp  .L001192
.L001191:
	sub  rsp, 8
	mov  rax, 0
	call new_type_enum_el
	add  rsp, 8
.L001192:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1179 (= (MEMBER (DEREF (LVAR 60)) tag_name 48) (CALL consume_ident () ))
// Line 1179 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	push rax
// Line 1179 (CALL consume_ident () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001193
	mov  rax, 0
	call consume_ident
	jmp  .L001194
.L001193:
	sub  rsp, 8
	mov  rax, 0
	call consume_ident
	add  rsp, 8
.L001194:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1180 (= (MEMBER (DEREF (LVAR 48)) next 0) (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) ))
// Line 1180 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 1180 (CALL new_member_info ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )
// Line 1180 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 1180 (MEMBER (DEREF (LVAR 60)) tag_name 48)
// Line 1180 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001195
	mov  rax, 0
	call new_member_info
	jmp  .L001196
.L001195:
	sub  rsp, 8
	mov  rax, 0
	call new_member_info
	add  rsp, 8
.L001196:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1181 (= (LVAR 48) (MEMBER (DEREF (LVAR 48)) next 0))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 1181 (MEMBER (DEREF (LVAR 48)) next 0)
// Line 1181 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
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
// Line 1182 (CALL new_tag ((MEMBER (DEREF (LVAR 60)) tag_name 48):(LVAR 60):) )
// Line 1182 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
// Line 1182 (MEMBER (DEREF (LVAR 60)) tag_name 48)
// Line 1182 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001197
	mov  rax, 0
	call new_tag
	jmp  .L001198
.L001197:
	sub  rsp, 8
	mov  rax, 0
	call new_tag
	add  rsp, 8
.L001198:
	push rax
	pop  rax
// Line 1185 (IF (! (CALL consume_if ( 35 :) )) BREAK  NULL )
// Line 1183 (! (CALL consume_if ( 35 :) ))
// Line 1183 (CALL consume_if ( 35 :) )
// Line 1183  35 
	push 35
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001203
	mov  rax, 0
	call consume_if
	jmp  .L001204
.L001203:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001204:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001201
	mov  rax, 1
	jmp  .L001202
.L001201:
	mov  rax, 0
.L001202:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001199
// Line 1184 BREAK 
	jmp  .L001186
	jmp  .L001200
.L001199:
.L001200:
	jmp  .L001185
.L001186:
// Line 1186 (CALL expect ( 32 :) )
// Line 1186  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001205
	mov  rax, 0
	call expect
	jmp  .L001206
.L001205:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001206:
	push rax
	pop  rax
	jmp  .L001182
.L001181:
.L001182:
// Line 1188 (= (MEMBER (DEREF (LVAR 8)) member 32) (MEMBER (LVAR 40) next 0))
// Line 1188 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 1188 (MEMBER (LVAR 40) next 0)
	mov  rax, rbp
	sub  rax, 40
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1189 (CALL new_tag ((MEMBER (DEREF (LVAR 8)) tag_name 48):(LVAR 8):) )
// Line 1189 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 1189 (MEMBER (DEREF (LVAR 8)) tag_name 48)
// Line 1189 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001207
	mov  rax, 0
	call new_tag
	jmp  .L001208
.L001207:
	sub  rsp, 8
	mov  rax, 0
	call new_tag
	add  rsp, 8
.L001208:
	push rax
	pop  rax
// Line 1190 (RETURN (LVAR 8))
// Line 1190 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_struct_specifier
// Line 1193 FDECL parse_struct_specifier func ( bool  allow_undefined_tag ) * struct <Type> 
//    (LVAR 1) 
//    (BLOCK(= (LVAR 9) (CALL new_type_struct () )):(= (LVAR 17) (CAST * void   0 )):(= (LVAR 25) (CAST * void   0 )):(IF (CALL peek ( 0 :) ) (= (LVAR 25) (CALL consume () )) NULL ):(IF (CALL consume_if ( 31 :) ) (BLOCK(IF (CALL find_tag ((LVAR 25):) ) (CALL error_at_token ((LVAR 25):(ADDR  "Duplicate definition of a tag name." ):) ) NULL ):(= (LVAR 17) (CALL new_tag ((LVAR 25):(LVAR 9):) )):(= (MEMBER (LVAR 57) next 0) (CAST * void   0 )):(= (LVAR 65) (ADDR (LVAR 57))):(= (LVAR 69)  0 ):(WHILE cond:(! (CALL consume_if ( 32 :) ))body: (BLOCK(= (LVAR 77) (CALL parse_decl ( 0 :) )):(= (LVAR 85) (MEMBER (DEREF (LVAR 77)) ident 8)):(= (LVAR 93) (MEMBER (DEREF (LVAR 77)) type 16)):(IF (! (LVAR 85)) (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) ) NULL ):(= (LVAR 101) (MEMBER (LVAR 57) next 0)):(WHILE cond:(LVAR 101)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):)):(= (LVAR 105) (CALL alignof_type ((LVAR 93):) )):(= (LVAR 69) (CALL align_to ((LVAR 69):(LVAR 105):) )):(= (MEMBER (DEREF (LVAR 77)) offset 24) (LVAR 69)):(= (LVAR 69) (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) ))):(= (MEMBER (DEREF (LVAR 65)) next 0) (LVAR 77)):(= (LVAR 65) (LVAR 77)):(CALL expect ( 28 :) ):)):(= (MEMBER (DEREF (LVAR 9)) member 32) (MEMBER (LVAR 57) next 0)):(IF (LVAR 17) (= (MEMBER (DEREF (LVAR 17)) type 16) (LVAR 9)) NULL ):(RETURN (LVAR 9)):) (BLOCK(IF (! (LVAR 25)) (CALL error_at_token ((GVAR token):(ADDR  "Expected either of a tag name  or a definition." ):) ) NULL ):(= (LVAR 17) (CALL find_tag ((LVAR 25):) )):(IF (! (LVAR 17)) (BLOCK(IF (LVAR 1) (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):) (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) )):) (BLOCK(= (LVAR 9) (MEMBER (DEREF (LVAR 17)) type 16)):)):(RETURN (LVAR 9)):)):))
parse_struct_specifier:
	push rbp
	mov  rbp, rsp
	sub  rsp, 112
	mov  [rbp - 1], dil
// Line 1194 (= (LVAR 9) (CALL new_type_struct () ))
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 1194 (CALL new_type_struct () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001209
	mov  rax, 0
	call new_type_struct
	jmp  .L001210
.L001209:
	sub  rsp, 8
	mov  rax, 0
	call new_type_struct
	add  rsp, 8
.L001210:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1196 (= (LVAR 17) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1198 (= (LVAR 25) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 25
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1201 (IF (CALL peek ( 0 :) ) (= (LVAR 25) (CALL consume () )) NULL )
// Line 1199 (CALL peek ( 0 :) )
// Line 1199  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001213
	mov  rax, 0
	call peek
	jmp  .L001214
.L001213:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001214:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001211
// Line 1200 (= (LVAR 25) (CALL consume () ))
	mov  rax, rbp
	sub  rax, 25
	push rax
// Line 1200 (CALL consume () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001215
	mov  rax, 0
	call consume
	jmp  .L001216
.L001215:
	sub  rsp, 8
	mov  rax, 0
	call consume
	add  rsp, 8
.L001216:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001212
.L001211:
.L001212:
// Line 1253 (IF (CALL consume_if ( 31 :) ) (BLOCK(IF (CALL find_tag ((LVAR 25):) ) (CALL error_at_token ((LVAR 25):(ADDR  "Duplicate definition of a tag name." ):) ) NULL ):(= (LVAR 17) (CALL new_tag ((LVAR 25):(LVAR 9):) )):(= (MEMBER (LVAR 57) next 0) (CAST * void   0 )):(= (LVAR 65) (ADDR (LVAR 57))):(= (LVAR 69)  0 ):(WHILE cond:(! (CALL consume_if ( 32 :) ))body: (BLOCK(= (LVAR 77) (CALL parse_decl ( 0 :) )):(= (LVAR 85) (MEMBER (DEREF (LVAR 77)) ident 8)):(= (LVAR 93) (MEMBER (DEREF (LVAR 77)) type 16)):(IF (! (LVAR 85)) (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) ) NULL ):(= (LVAR 101) (MEMBER (LVAR 57) next 0)):(WHILE cond:(LVAR 101)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):)):(= (LVAR 105) (CALL alignof_type ((LVAR 93):) )):(= (LVAR 69) (CALL align_to ((LVAR 69):(LVAR 105):) )):(= (MEMBER (DEREF (LVAR 77)) offset 24) (LVAR 69)):(= (LVAR 69) (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) ))):(= (MEMBER (DEREF (LVAR 65)) next 0) (LVAR 77)):(= (LVAR 65) (LVAR 77)):(CALL expect ( 28 :) ):)):(= (MEMBER (DEREF (LVAR 9)) member 32) (MEMBER (LVAR 57) next 0)):(IF (LVAR 17) (= (MEMBER (DEREF (LVAR 17)) type 16) (LVAR 9)) NULL ):(RETURN (LVAR 9)):) (BLOCK(IF (! (LVAR 25)) (CALL error_at_token ((GVAR token):(ADDR  "Expected either of a tag name  or a definition." ):) ) NULL ):(= (LVAR 17) (CALL find_tag ((LVAR 25):) )):(IF (! (LVAR 17)) (BLOCK(IF (LVAR 1) (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):) (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) )):) (BLOCK(= (LVAR 9) (MEMBER (DEREF (LVAR 17)) type 16)):)):(RETURN (LVAR 9)):))
// Line 1201 (CALL consume_if ( 31 :) )
// Line 1201  31 
	push 31
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001219
	mov  rax, 0
	call consume_if
	jmp  .L001220
.L001219:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001220:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001217
// Line 1238 (BLOCK(IF (CALL find_tag ((LVAR 25):) ) (CALL error_at_token ((LVAR 25):(ADDR  "Duplicate definition of a tag name." ):) ) NULL ):(= (LVAR 17) (CALL new_tag ((LVAR 25):(LVAR 9):) )):(= (MEMBER (LVAR 57) next 0) (CAST * void   0 )):(= (LVAR 65) (ADDR (LVAR 57))):(= (LVAR 69)  0 ):(WHILE cond:(! (CALL consume_if ( 32 :) ))body: (BLOCK(= (LVAR 77) (CALL parse_decl ( 0 :) )):(= (LVAR 85) (MEMBER (DEREF (LVAR 77)) ident 8)):(= (LVAR 93) (MEMBER (DEREF (LVAR 77)) type 16)):(IF (! (LVAR 85)) (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) ) NULL ):(= (LVAR 101) (MEMBER (LVAR 57) next 0)):(WHILE cond:(LVAR 101)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):)):(= (LVAR 105) (CALL alignof_type ((LVAR 93):) )):(= (LVAR 69) (CALL align_to ((LVAR 69):(LVAR 105):) )):(= (MEMBER (DEREF (LVAR 77)) offset 24) (LVAR 69)):(= (LVAR 69) (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) ))):(= (MEMBER (DEREF (LVAR 65)) next 0) (LVAR 77)):(= (LVAR 65) (LVAR 77)):(CALL expect ( 28 :) ):)):(= (MEMBER (DEREF (LVAR 9)) member 32) (MEMBER (LVAR 57) next 0)):(IF (LVAR 17) (= (MEMBER (DEREF (LVAR 17)) type 16) (LVAR 9)) NULL ):(RETURN (LVAR 9)):)
// Line 1205 (IF (CALL find_tag ((LVAR 25):) ) (CALL error_at_token ((LVAR 25):(ADDR  "Duplicate definition of a tag name." ):) ) NULL )
// Line 1203 (CALL find_tag ((LVAR 25):) )
// Line 1203 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001223
	mov  rax, 0
	call find_tag
	jmp  .L001224
.L001223:
	sub  rsp, 8
	mov  rax, 0
	call find_tag
	add  rsp, 8
.L001224:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001221
// Line 1204 (CALL error_at_token ((LVAR 25):(ADDR  "Duplicate definition of a tag name." ):) )
// Line 1204 (ADDR  "Duplicate definition of a tag name." )
	lea  rax, .LS000028[rip]
	push rax
// Line 1204 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001225
	mov  rax, 0
	call error_at_token
	jmp  .L001226
.L001225:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001226:
	push rax
	pop  rax
	jmp  .L001222
.L001221:
.L001222:
// Line 1205 (= (LVAR 17) (CALL new_tag ((LVAR 25):(LVAR 9):) ))
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 1205 (CALL new_tag ((LVAR 25):(LVAR 9):) )
// Line 1205 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
// Line 1205 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001227
	mov  rax, 0
	call new_tag
	jmp  .L001228
.L001227:
	sub  rsp, 8
	mov  rax, 0
	call new_tag
	add  rsp, 8
.L001228:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1208 (= (MEMBER (LVAR 57) next 0) (CAST * void   0 ))
	mov  rax, rbp
	sub  rax, 57
	add  rax, 0
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1209 (= (LVAR 65) (ADDR (LVAR 57)))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 1209 (ADDR (LVAR 57))
	mov  rax, rbp
	sub  rax, 57
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1210 (= (LVAR 69)  0 )
	mov  rax, rbp
	sub  rax, 69
	push rax
// Line 1210  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1234 (WHILE cond:(! (CALL consume_if ( 32 :) ))body: (BLOCK(= (LVAR 77) (CALL parse_decl ( 0 :) )):(= (LVAR 85) (MEMBER (DEREF (LVAR 77)) ident 8)):(= (LVAR 93) (MEMBER (DEREF (LVAR 77)) type 16)):(IF (! (LVAR 85)) (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) ) NULL ):(= (LVAR 101) (MEMBER (LVAR 57) next 0)):(WHILE cond:(LVAR 101)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):)):(= (LVAR 105) (CALL alignof_type ((LVAR 93):) )):(= (LVAR 69) (CALL align_to ((LVAR 69):(LVAR 105):) )):(= (MEMBER (DEREF (LVAR 77)) offset 24) (LVAR 69)):(= (LVAR 69) (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) ))):(= (MEMBER (DEREF (LVAR 65)) next 0) (LVAR 77)):(= (LVAR 65) (LVAR 77)):(CALL expect ( 28 :) ):))
.L001229:
// Line 1211 (! (CALL consume_if ( 32 :) ))
// Line 1211 (CALL consume_if ( 32 :) )
// Line 1211  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001233
	mov  rax, 0
	call consume_if
	jmp  .L001234
.L001233:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001234:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001231
	mov  rax, 1
	jmp  .L001232
.L001231:
	mov  rax, 0
.L001232:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001230
// Line 1234 (BLOCK(= (LVAR 77) (CALL parse_decl ( 0 :) )):(= (LVAR 85) (MEMBER (DEREF (LVAR 77)) ident 8)):(= (LVAR 93) (MEMBER (DEREF (LVAR 77)) type 16)):(IF (! (LVAR 85)) (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) ) NULL ):(= (LVAR 101) (MEMBER (LVAR 57) next 0)):(WHILE cond:(LVAR 101)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):)):(= (LVAR 105) (CALL alignof_type ((LVAR 93):) )):(= (LVAR 69) (CALL align_to ((LVAR 69):(LVAR 105):) )):(= (MEMBER (DEREF (LVAR 77)) offset 24) (LVAR 69)):(= (LVAR 69) (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) ))):(= (MEMBER (DEREF (LVAR 65)) next 0) (LVAR 77)):(= (LVAR 65) (LVAR 77)):(CALL expect ( 28 :) ):)
// Line 1213 (= (LVAR 77) (CALL parse_decl ( 0 :) ))
	mov  rax, rbp
	sub  rax, 77
	push rax
// Line 1213 (CALL parse_decl ( 0 :) )
// Line 1420  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001235
	mov  rax, 0
	call parse_decl
	jmp  .L001236
.L001235:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L001236:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1214 (= (LVAR 85) (MEMBER (DEREF (LVAR 77)) ident 8))
	mov  rax, rbp
	sub  rax, 85
	push rax
// Line 1214 (MEMBER (DEREF (LVAR 77)) ident 8)
// Line 1214 (LVAR 77)
	mov  rax, rbp
	sub  rax, 77
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
// Line 1215 (= (LVAR 93) (MEMBER (DEREF (LVAR 77)) type 16))
	mov  rax, rbp
	sub  rax, 93
	push rax
// Line 1215 (MEMBER (DEREF (LVAR 77)) type 16)
// Line 1215 (LVAR 77)
	mov  rax, rbp
	sub  rax, 77
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
// Line 1219 (IF (! (LVAR 85)) (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) ) NULL )
// Line 1216 (! (LVAR 85))
// Line 1216 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001239
	mov  rax, 1
	jmp  .L001240
.L001239:
	mov  rax, 0
.L001240:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001237
// Line 1217 (CALL error_at_token ((GVAR token):(ADDR  "Missing Identifier." ):) )
// Line 1217 (ADDR  "Missing Identifier." )
	lea  rax, .LS000029[rip]
	push rax
// Line 1217 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001241
	mov  rax, 0
	call error_at_token
	jmp  .L001242
.L001241:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001242:
	push rax
	pop  rax
	jmp  .L001238
.L001237:
.L001238:
// Line 1219 (= (LVAR 101) (MEMBER (LVAR 57) next 0))
	mov  rax, rbp
	sub  rax, 101
	push rax
// Line 1219 (MEMBER (LVAR 57) next 0)
	mov  rax, rbp
	sub  rax, 57
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1226 (WHILE cond:(LVAR 101)body: (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):))
.L001243:
// Line 1220 (LVAR 101)
	mov  rax, rbp
	sub  rax, 101
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001244
// Line 1226 (BLOCK(IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL ):(= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0)):)
// Line 1223 (IF (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) ) (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) ) NULL )
// Line 1221 (CALL cmp_token ((MEMBER (DEREF (LVAR 101)) ident 8):(LVAR 85):) )
// Line 1221 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  rax, [rax]
	push rax
// Line 1221 (MEMBER (DEREF (LVAR 101)) ident 8)
// Line 1221 (LVAR 101)
	mov  rax, rbp
	sub  rax, 101
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001247
	mov  rax, 0
	call cmp_token
	jmp  .L001248
.L001247:
	sub  rsp, 8
	mov  rax, 0
	call cmp_token
	add  rsp, 8
.L001248:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001245
// Line 1222 (CALL error_at_token ((LVAR 85):(ADDR  "Duplicate member." ):) )
// Line 1222 (ADDR  "Duplicate member." )
	lea  rax, .LS000030[rip]
	push rax
// Line 1222 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001249
	mov  rax, 0
	call error_at_token
	jmp  .L001250
.L001249:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001250:
	push rax
	pop  rax
	jmp  .L001246
.L001245:
.L001246:
// Line 1223 (= (LVAR 101) (MEMBER (DEREF (LVAR 101)) next 0))
	mov  rax, rbp
	sub  rax, 101
	push rax
// Line 1223 (MEMBER (DEREF (LVAR 101)) next 0)
// Line 1223 (LVAR 101)
	mov  rax, rbp
	sub  rax, 101
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
	jmp  .L001243
.L001244:
// Line 1226 (= (LVAR 105) (CALL alignof_type ((LVAR 93):) ))
	mov  rax, rbp
	sub  rax, 105
	push rax
// Line 1226 (CALL alignof_type ((LVAR 93):) )
// Line 1226 (LVAR 93)
	mov  rax, rbp
	sub  rax, 93
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001251
	mov  rax, 0
	call alignof_type
	jmp  .L001252
.L001251:
	sub  rsp, 8
	mov  rax, 0
	call alignof_type
	add  rsp, 8
.L001252:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1227 (= (LVAR 69) (CALL align_to ((LVAR 69):(LVAR 105):) ))
	mov  rax, rbp
	sub  rax, 69
	push rax
// Line 1227 (CALL align_to ((LVAR 69):(LVAR 105):) )
// Line 1227 (LVAR 105)
	mov  rax, rbp
	sub  rax, 105
	mov  eax, [rax]
	push rax
// Line 1227 (LVAR 69)
	mov  rax, rbp
	sub  rax, 69
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001253
	mov  rax, 0
	call align_to
	jmp  .L001254
.L001253:
	sub  rsp, 8
	mov  rax, 0
	call align_to
	add  rsp, 8
.L001254:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1228 (= (MEMBER (DEREF (LVAR 77)) offset 24) (LVAR 69))
// Line 1228 (LVAR 77)
	mov  rax, rbp
	sub  rax, 77
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 1228 (LVAR 69)
	mov  rax, rbp
	sub  rax, 69
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1229 (= (LVAR 69) (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) )))
	mov  rax, rbp
	sub  rax, 69
	push rax
// Line 1229 (+= (LVAR 69) (CALL sizeof_type ((LVAR 93):) ))
// Line 1229 (LVAR 69)
	mov  rax, rbp
	sub  rax, 69
	mov  eax, [rax]
	push rax
// Line 1229 (CALL sizeof_type ((LVAR 93):) )
// Line 1229 (LVAR 93)
	mov  rax, rbp
	sub  rax, 93
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001255
	mov  rax, 0
	call sizeof_type
	jmp  .L001256
.L001255:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L001256:
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
// Line 1230 (= (MEMBER (DEREF (LVAR 65)) next 0) (LVAR 77))
// Line 1230 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 1230 (LVAR 77)
	mov  rax, rbp
	sub  rax, 77
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1231 (= (LVAR 65) (LVAR 77))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 1231 (LVAR 77)
	mov  rax, rbp
	sub  rax, 77
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1232 (CALL expect ( 28 :) )
// Line 1232  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001257
	mov  rax, 0
	call expect
	jmp  .L001258
.L001257:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001258:
	push rax
	pop  rax
	jmp  .L001229
.L001230:
// Line 1234 (= (MEMBER (DEREF (LVAR 9)) member 32) (MEMBER (LVAR 57) next 0))
// Line 1234 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 1234 (MEMBER (LVAR 57) next 0)
	mov  rax, rbp
	sub  rax, 57
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1237 (IF (LVAR 17) (= (MEMBER (DEREF (LVAR 17)) type 16) (LVAR 9)) NULL )
// Line 1235 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001259
// Line 1236 (= (MEMBER (DEREF (LVAR 17)) type 16) (LVAR 9))
// Line 1236 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 1236 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001260
.L001259:
.L001260:
// Line 1237 (RETURN (LVAR 9))
// Line 1237 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L001218
.L001217:
// Line 1253 (BLOCK(IF (! (LVAR 25)) (CALL error_at_token ((GVAR token):(ADDR  "Expected either of a tag name  or a definition." ):) ) NULL ):(= (LVAR 17) (CALL find_tag ((LVAR 25):) )):(IF (! (LVAR 17)) (BLOCK(IF (LVAR 1) (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):) (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) )):) (BLOCK(= (LVAR 9) (MEMBER (DEREF (LVAR 17)) type 16)):)):(RETURN (LVAR 9)):)
// Line 1242 (IF (! (LVAR 25)) (CALL error_at_token ((GVAR token):(ADDR  "Expected either of a tag name  or a definition." ):) ) NULL )
// Line 1239 (! (LVAR 25))
// Line 1239 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001263
	mov  rax, 1
	jmp  .L001264
.L001263:
	mov  rax, 0
.L001264:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001261
// Line 1240 (CALL error_at_token ((GVAR token):(ADDR  "Expected either of a tag name  or a definition." ):) )
// Line 1241 (ADDR  "Expected either of a tag name  or a definition." )
	lea  rax, .LS000031[rip]
	push rax
// Line 1240 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001265
	mov  rax, 0
	call error_at_token
	jmp  .L001266
.L001265:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001266:
	push rax
	pop  rax
	jmp  .L001262
.L001261:
.L001262:
// Line 1242 (= (LVAR 17) (CALL find_tag ((LVAR 25):) ))
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 1242 (CALL find_tag ((LVAR 25):) )
// Line 1242 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001267
	mov  rax, 0
	call find_tag
	jmp  .L001268
.L001267:
	sub  rsp, 8
	mov  rax, 0
	call find_tag
	add  rsp, 8
.L001268:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1251 (IF (! (LVAR 17)) (BLOCK(IF (LVAR 1) (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):) (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) )):) (BLOCK(= (LVAR 9) (MEMBER (DEREF (LVAR 17)) type 16)):))
// Line 1243 (! (LVAR 17))
// Line 1243 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001271
	mov  rax, 1
	jmp  .L001272
.L001271:
	mov  rax, 0
.L001272:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001269
// Line 1248 (BLOCK(IF (LVAR 1) (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):) (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) )):)
// Line 1248 (IF (LVAR 1) (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):) (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) ))
// Line 1244 (LVAR 1)
	mov  rax, rbp
	sub  rax, 1
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001273
// Line 1246 (BLOCK(= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25)):)
// Line 1245 (= (MEMBER (DEREF (LVAR 9)) tag_name 48) (LVAR 25))
// Line 1245 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	push rax
// Line 1245 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001274
.L001273:
// Line 1247 (CALL error_at_token ((LVAR 25):(ADDR  "Tag name is not defined." ):) )
// Line 1247 (ADDR  "Tag name is not defined." )
	lea  rax, .LS000032[rip]
	push rax
// Line 1247 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001275
	mov  rax, 0
	call error_at_token
	jmp  .L001276
.L001275:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001276:
	push rax
	pop  rax
.L001274:
	jmp  .L001270
.L001269:
// Line 1251 (BLOCK(= (LVAR 9) (MEMBER (DEREF (LVAR 17)) type 16)):)
// Line 1249 (= (LVAR 9) (MEMBER (DEREF (LVAR 17)) type 16))
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 1249 (MEMBER (DEREF (LVAR 17)) type 16)
// Line 1249 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
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
.L001270:
// Line 1251 (RETURN (LVAR 9))
// Line 1251 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001218:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_type_specifier
// Line 1255 FDECL parse_type_specifier func ( bool  allow_undefined_tag ) * struct <Type> 
//    (LVAR 1) 
//    (BLOCK(= (LVAR 9) (CALL consume () )):(SWITCH cond: (MEMBER (DEREF (LVAR 9)) kind 0) body: (BLOCK(CASE cond: 51  body:(BLOCK(RETURN (CALL new_type_int () )):)):(CASE cond: 52  body:(BLOCK(RETURN (CALL new_type_char () )):)):(CASE cond: 53  body:(BLOCK(RETURN (CALL new_type_bool () )):)):(CASE cond: 54  body:(BLOCK(RETURN (CALL new_type_void () )):)):(CASE cond: 55  body:(BLOCK(RETURN (CALL parse_struct_specifier ((LVAR 1):) )):)):(CASE cond: 56  body:(BLOCK(RETURN (CALL parse_enum_specifier () )):)):(CASE cond: 0  body:(BLOCK(= (LVAR 17) (CALL find_typedef ((LVAR 9):) )):(IF (LVAR 17) (RETURN (LVAR 17)) NULL ):)):)):(CALL error_at_token ((LVAR 9):(ADDR  "Expected type specifier or typedef name." ):) ):))
parse_type_specifier:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 1], dil
// Line 1256 (= (LVAR 9) (CALL consume () ))
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 1256 (CALL consume () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001277
	mov  rax, 0
	call consume
	jmp  .L001278
.L001277:
	sub  rsp, 8
	mov  rax, 0
	call consume
	add  rsp, 8
.L001278:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1258 (SWITCH cond: (MEMBER (DEREF (LVAR 9)) kind 0) body: (BLOCK(CASE cond: 51  body:(BLOCK(RETURN (CALL new_type_int () )):)):(CASE cond: 52  body:(BLOCK(RETURN (CALL new_type_char () )):)):(CASE cond: 53  body:(BLOCK(RETURN (CALL new_type_bool () )):)):(CASE cond: 54  body:(BLOCK(RETURN (CALL new_type_void () )):)):(CASE cond: 55  body:(BLOCK(RETURN (CALL parse_struct_specifier ((LVAR 1):) )):)):(CASE cond: 56  body:(BLOCK(RETURN (CALL parse_enum_specifier () )):)):(CASE cond: 0  body:(BLOCK(= (LVAR 17) (CALL find_typedef ((LVAR 9):) )):(IF (LVAR 17) (RETURN (LVAR 17)) NULL ):)):))
	mov  rax, rbp
	sub  rax, 21
	push rax
// Line 1258 (MEMBER (DEREF (LVAR 9)) kind 0)
// Line 1258 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 1278 (BLOCK(CASE cond: 51  body:(BLOCK(RETURN (CALL new_type_int () )):)):(CASE cond: 52  body:(BLOCK(RETURN (CALL new_type_char () )):)):(CASE cond: 53  body:(BLOCK(RETURN (CALL new_type_bool () )):)):(CASE cond: 54  body:(BLOCK(RETURN (CALL new_type_void () )):)):(CASE cond: 55  body:(BLOCK(RETURN (CALL parse_struct_specifier ((LVAR 1):) )):)):(CASE cond: 56  body:(BLOCK(RETURN (CALL parse_enum_specifier () )):)):(CASE cond: 0  body:(BLOCK(= (LVAR 17) (CALL find_typedef ((LVAR 9):) )):(IF (LVAR 17) (RETURN (LVAR 17)) NULL ):)):)
// Line 1259 (CASE cond: 51  body:(BLOCK(RETURN (CALL new_type_int () )):))
// Line 1259  51 
	push 51
	mov  rax, rbp
	sub  rax, 21
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L001280
// Line 1261 (CASE cond: 52  body:(BLOCK(RETURN (CALL new_type_char () )):))
// Line 1261  52 
	push 52
	mov  rax, rbp
	sub  rax, 21
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L001281
// Line 1263 (CASE cond: 53  body:(BLOCK(RETURN (CALL new_type_bool () )):))
// Line 1263  53 
	push 53
	mov  rax, rbp
	sub  rax, 21
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L001282
// Line 1265 (CASE cond: 54  body:(BLOCK(RETURN (CALL new_type_void () )):))
// Line 1265  54 
	push 54
	mov  rax, rbp
	sub  rax, 21
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L001283
// Line 1267 (CASE cond: 55  body:(BLOCK(RETURN (CALL parse_struct_specifier ((LVAR 1):) )):))
// Line 1267  55 
	push 55
	mov  rax, rbp
	sub  rax, 21
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L001284
// Line 1269 (CASE cond: 56  body:(BLOCK(RETURN (CALL parse_enum_specifier () )):))
// Line 1269  56 
	push 56
	mov  rax, rbp
	sub  rax, 21
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L001285
// Line 1271 (CASE cond: 0  body:(BLOCK(= (LVAR 17) (CALL find_typedef ((LVAR 9):) )):(IF (LVAR 17) (RETURN (LVAR 17)) NULL ):))
// Line 1271  0 
	push 0
	mov  rax, rbp
	sub  rax, 21
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L001286
	jmp  .L001279
.L001280:
// Line 1260 (BLOCK(RETURN (CALL new_type_int () )):)
// Line 1260 (RETURN (CALL new_type_int () ))
// Line 1260 (CALL new_type_int () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001287
	mov  rax, 0
	call new_type_int
	jmp  .L001288
.L001287:
	sub  rsp, 8
	mov  rax, 0
	call new_type_int
	add  rsp, 8
.L001288:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001281:
// Line 1262 (BLOCK(RETURN (CALL new_type_char () )):)
// Line 1262 (RETURN (CALL new_type_char () ))
// Line 1262 (CALL new_type_char () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001289
	mov  rax, 0
	call new_type_char
	jmp  .L001290
.L001289:
	sub  rsp, 8
	mov  rax, 0
	call new_type_char
	add  rsp, 8
.L001290:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001282:
// Line 1264 (BLOCK(RETURN (CALL new_type_bool () )):)
// Line 1264 (RETURN (CALL new_type_bool () ))
// Line 1264 (CALL new_type_bool () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001291
	mov  rax, 0
	call new_type_bool
	jmp  .L001292
.L001291:
	sub  rsp, 8
	mov  rax, 0
	call new_type_bool
	add  rsp, 8
.L001292:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001283:
// Line 1266 (BLOCK(RETURN (CALL new_type_void () )):)
// Line 1266 (RETURN (CALL new_type_void () ))
// Line 1266 (CALL new_type_void () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001293
	mov  rax, 0
	call new_type_void
	jmp  .L001294
.L001293:
	sub  rsp, 8
	mov  rax, 0
	call new_type_void
	add  rsp, 8
.L001294:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001284:
// Line 1268 (BLOCK(RETURN (CALL parse_struct_specifier ((LVAR 1):) )):)
// Line 1268 (RETURN (CALL parse_struct_specifier ((LVAR 1):) ))
// Line 1268 (CALL parse_struct_specifier ((LVAR 1):) )
// Line 1268 (LVAR 1)
	mov  rax, rbp
	sub  rax, 1
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001295
	mov  rax, 0
	call parse_struct_specifier
	jmp  .L001296
.L001295:
	sub  rsp, 8
	mov  rax, 0
	call parse_struct_specifier
	add  rsp, 8
.L001296:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001285:
// Line 1270 (BLOCK(RETURN (CALL parse_enum_specifier () )):)
// Line 1270 (RETURN (CALL parse_enum_specifier () ))
// Line 1270 (CALL parse_enum_specifier () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001297
	mov  rax, 0
	call parse_enum_specifier
	jmp  .L001298
.L001297:
	sub  rsp, 8
	mov  rax, 0
	call parse_enum_specifier
	add  rsp, 8
.L001298:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001286:
// Line 1273 (BLOCK(= (LVAR 17) (CALL find_typedef ((LVAR 9):) )):(IF (LVAR 17) (RETURN (LVAR 17)) NULL ):)
// Line 1273 (= (LVAR 17) (CALL find_typedef ((LVAR 9):) ))
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 1273 (CALL find_typedef ((LVAR 9):) )
// Line 1273 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001299
	mov  rax, 0
	call find_typedef
	jmp  .L001300
.L001299:
	sub  rsp, 8
	mov  rax, 0
	call find_typedef
	add  rsp, 8
.L001300:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1276 (IF (LVAR 17) (RETURN (LVAR 17)) NULL )
// Line 1274 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001301
// Line 1275 (RETURN (LVAR 17))
// Line 1275 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L001302
.L001301:
.L001302:
.L001279:
// Line 1278 (CALL error_at_token ((LVAR 9):(ADDR  "Expected type specifier or typedef name." ):) )
// Line 1278 (ADDR  "Expected type specifier or typedef name." )
	lea  rax, .LS000033[rip]
	push rax
// Line 1278 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001303
	mov  rax, 0
	call error_at_token
	jmp  .L001304
.L001303:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001304:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_decl
// Line 1281 FDECL parse_decl func ( bool  allow_undefined_tag ) * struct <MemberInfo> 
//    (LVAR 1) 
//    (BLOCK(IF (! (CALL is_type_specifier ((GVAR token):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected type specifier or typedef name." ):) ) NULL ):(= (LVAR 9) (CALL parse_type_specifier ((LVAR 1):) )):(RETURN (CALL parse_declaretor ((LVAR 9):) )):))
parse_decl:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 1], dil
// Line 1286 (IF (! (CALL is_type_specifier ((GVAR token):) )) (CALL error_at_token ((GVAR token):(ADDR  "Expected type specifier or typedef name." ):) ) NULL )
// Line 1283 (! (CALL is_type_specifier ((GVAR token):) ))
// Line 1283 (CALL is_type_specifier ((GVAR token):) )
// Line 1283 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001309
	mov  rax, 0
	call is_type_specifier
	jmp  .L001310
.L001309:
	sub  rsp, 8
	mov  rax, 0
	call is_type_specifier
	add  rsp, 8
.L001310:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001307
	mov  rax, 1
	jmp  .L001308
.L001307:
	mov  rax, 0
.L001308:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001305
// Line 1284 (CALL error_at_token ((GVAR token):(ADDR  "Expected type specifier or typedef name." ):) )
// Line 1284 (ADDR  "Expected type specifier or typedef name." )
	lea  rax, .LS000034[rip]
	push rax
// Line 1284 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001311
	mov  rax, 0
	call error_at_token
	jmp  .L001312
.L001311:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001312:
	push rax
	pop  rax
	jmp  .L001306
.L001305:
.L001306:
// Line 1286 (= (LVAR 9) (CALL parse_type_specifier ((LVAR 1):) ))
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 1286 (CALL parse_type_specifier ((LVAR 1):) )
// Line 1286 (LVAR 1)
	mov  rax, rbp
	sub  rax, 1
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001313
	mov  rax, 0
	call parse_type_specifier
	jmp  .L001314
.L001313:
	sub  rsp, 8
	mov  rax, 0
	call parse_type_specifier
	add  rsp, 8
.L001314:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1287 (RETURN (CALL parse_declaretor ((LVAR 9):) ))
// Line 1287 (CALL parse_declaretor ((LVAR 9):) )
// Line 1287 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001315
	mov  rax, 0
	call parse_declaretor
	jmp  .L001316
.L001315:
	sub  rsp, 8
	mov  rax, 0
	call parse_declaretor
	add  rsp, 8
.L001316:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_func_definition
// Line 1290 FDECL parse_func_definition func ( * struct <MemberInfo>  ty_ident ) * struct <Node> 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 24) (MEMBER (DEREF (LVAR 8)) ident 8)):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) type 16)):(= (LVAR 40) (CALL new_func ((LVAR 24):(LVAR 32):(CAST * void   0 ):) )):(= (LVAR 48) (CALL vec_new () )):(= (LVAR 56) (MEMBER (DEREF (LVAR 32)) params 24)):(WHILE cond:(LVAR 56)body: (BLOCK(CALL vec_push ((LVAR 48):(CALL new_node_lvar ((CALL new_lvar ((MEMBER (DEREF (LVAR 56)) ident 8):(MEMBER (DEREF (LVAR 56)) type 16):) ):(MEMBER (DEREF (LVAR 56)) ident 8):) ):) ):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 0)):)):(= (LVAR 64) (CALL parse_block () )):(= (LVAR 68)  0 ):(IF (GVAR locals) (= (LVAR 68) (MEMBER (DEREF (GVAR locals)) offset 24)) NULL ):(= (LVAR 16) (CALL new_node_fdecl ((LVAR 24):(LVAR 48):(LVAR 68):(LVAR 64):(LVAR 32):) )):(= (MEMBER (DEREF (LVAR 40)) body 24) (LVAR 16)):(RETURN (LVAR 16)):))
parse_func_definition:
	push rbp
	mov  rbp, rsp
	sub  rsp, 80
	mov  [rbp - 8], rdi
// Line 1292 (= (LVAR 24) (MEMBER (DEREF (LVAR 8)) ident 8))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 1292 (MEMBER (DEREF (LVAR 8)) ident 8)
// Line 1292 (LVAR 8)
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
// Line 1293 (= (LVAR 32) (MEMBER (DEREF (LVAR 8)) type 16))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 1293 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 1293 (LVAR 8)
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
// Line 1294 (= (LVAR 40) (CALL new_func ((LVAR 24):(LVAR 32):(CAST * void   0 ):) ))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 1294 (CALL new_func ((LVAR 24):(LVAR 32):(CAST * void   0 ):) )
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 1294 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 1294 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L001317
	mov  rax, 0
	call new_func
	jmp  .L001318
.L001317:
	sub  rsp, 8
	mov  rax, 0
	call new_func
	add  rsp, 8
.L001318:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1296 (= (LVAR 48) (CALL vec_new () ))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 1296 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001319
	mov  rax, 0
	call vec_new
	jmp  .L001320
.L001319:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L001320:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1297 (= (LVAR 56) (MEMBER (DEREF (LVAR 32)) params 24))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 1297 (MEMBER (DEREF (LVAR 32)) params 24)
// Line 1297 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
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
// Line 1303 (WHILE cond:(LVAR 56)body: (BLOCK(CALL vec_push ((LVAR 48):(CALL new_node_lvar ((CALL new_lvar ((MEMBER (DEREF (LVAR 56)) ident 8):(MEMBER (DEREF (LVAR 56)) type 16):) ):(MEMBER (DEREF (LVAR 56)) ident 8):) ):) ):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 0)):))
.L001321:
// Line 1298 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001322
// Line 1303 (BLOCK(CALL vec_push ((LVAR 48):(CALL new_node_lvar ((CALL new_lvar ((MEMBER (DEREF (LVAR 56)) ident 8):(MEMBER (DEREF (LVAR 56)) type 16):) ):(MEMBER (DEREF (LVAR 56)) ident 8):) ):) ):(= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 0)):)
// Line 1299 (CALL vec_push ((LVAR 48):(CALL new_node_lvar ((CALL new_lvar ((MEMBER (DEREF (LVAR 56)) ident 8):(MEMBER (DEREF (LVAR 56)) type 16):) ):(MEMBER (DEREF (LVAR 56)) ident 8):) ):) )
// Line 1299 (CALL new_node_lvar ((CALL new_lvar ((MEMBER (DEREF (LVAR 56)) ident 8):(MEMBER (DEREF (LVAR 56)) type 16):) ):(MEMBER (DEREF (LVAR 56)) ident 8):) )
// Line 1300 (MEMBER (DEREF (LVAR 56)) ident 8)
// Line 1300 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 1299 (CALL new_lvar ((MEMBER (DEREF (LVAR 56)) ident 8):(MEMBER (DEREF (LVAR 56)) type 16):) )
// Line 1299 (MEMBER (DEREF (LVAR 56)) type 16)
// Line 1299 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 1299 (MEMBER (DEREF (LVAR 56)) ident 8)
// Line 1299 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001323
	mov  rax, 0
	call new_lvar
	jmp  .L001324
.L001323:
	sub  rsp, 8
	mov  rax, 0
	call new_lvar
	add  rsp, 8
.L001324:
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001325
	mov  rax, 0
	call new_node_lvar
	jmp  .L001326
.L001325:
	sub  rsp, 8
	mov  rax, 0
	call new_node_lvar
	add  rsp, 8
.L001326:
	push rax
// Line 1299 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001327
	mov  rax, 0
	call vec_push
	jmp  .L001328
.L001327:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L001328:
	push rax
	pop  rax
// Line 1301 (= (LVAR 56) (MEMBER (DEREF (LVAR 56)) next 0))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 1301 (MEMBER (DEREF (LVAR 56)) next 0)
// Line 1301 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
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
	jmp  .L001321
.L001322:
// Line 1303 (= (LVAR 64) (CALL parse_block () ))
	mov  rax, rbp
	sub  rax, 64
	push rax
// Line 1303 (CALL parse_block () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001329
	mov  rax, 0
	call parse_block
	jmp  .L001330
.L001329:
	sub  rsp, 8
	mov  rax, 0
	call parse_block
	add  rsp, 8
.L001330:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1304 (= (LVAR 68)  0 )
	mov  rax, rbp
	sub  rax, 68
	push rax
// Line 1304  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1307 (IF (GVAR locals) (= (LVAR 68) (MEMBER (DEREF (GVAR locals)) offset 24)) NULL )
// Line 1305 (GVAR locals)
	lea  rax, locals[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001331
// Line 1306 (= (LVAR 68) (MEMBER (DEREF (GVAR locals)) offset 24))
	mov  rax, rbp
	sub  rax, 68
	push rax
// Line 1306 (MEMBER (DEREF (GVAR locals)) offset 24)
// Line 1306 (GVAR locals)
	lea  rax, locals[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L001332
.L001331:
.L001332:
// Line 1307 (= (LVAR 16) (CALL new_node_fdecl ((LVAR 24):(LVAR 48):(LVAR 68):(LVAR 64):(LVAR 32):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1307 (CALL new_node_fdecl ((LVAR 24):(LVAR 48):(LVAR 68):(LVAR 64):(LVAR 32):) )
// Line 1307 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 1307 (LVAR 64)
	mov  rax, rbp
	sub  rax, 64
	mov  rax, [rax]
	push rax
// Line 1307 (LVAR 68)
	mov  rax, rbp
	sub  rax, 68
	mov  eax, [rax]
	push rax
// Line 1307 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
// Line 1307 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	pop  r8
	mov  rax, rsp
	and  rax, 15
	jnz  .L001333
	mov  rax, 0
	call new_node_fdecl
	jmp  .L001334
.L001333:
	sub  rsp, 8
	mov  rax, 0
	call new_node_fdecl
	add  rsp, 8
.L001334:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1308 (= (MEMBER (DEREF (LVAR 40)) body 24) (LVAR 16))
// Line 1308 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 1308 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1309 (RETURN (LVAR 16))
// Line 1309 (LVAR 16)
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
	.global parse_initializer_list
// Line 1312 FDECL parse_initializer_list func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR token)):(IF (CALL consume_if ( 31 :) ) (BLOCK(= (LVAR 16) (CALL vec_new () )):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(CALL vec_push ((LVAR 16):(CALL parse_initializer_list () ):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):(= (LVAR 24) (CALL new_node ( 3 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) nodes 64) (LVAR 16)):(RETURN (LVAR 24)):) (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(RETURN (LVAR 32)):)):))
parse_initializer_list:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
// Line 1313 (= (LVAR 8) (GVAR token))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1313 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1329 (IF (CALL consume_if ( 31 :) ) (BLOCK(= (LVAR 16) (CALL vec_new () )):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(CALL vec_push ((LVAR 16):(CALL parse_initializer_list () ):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):(= (LVAR 24) (CALL new_node ( 3 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) nodes 64) (LVAR 16)):(RETURN (LVAR 24)):) (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(RETURN (LVAR 32)):))
// Line 1314 (CALL consume_if ( 31 :) )
// Line 1314  31 
	push 31
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001337
	mov  rax, 0
	call consume_if
	jmp  .L001338
.L001337:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001338:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001335
// Line 1325 (BLOCK(= (LVAR 16) (CALL vec_new () )):(WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(CALL vec_push ((LVAR 16):(CALL parse_initializer_list () ):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)):(CALL expect ( 32 :) ):(= (LVAR 24) (CALL new_node ( 3 :(LVAR 8):) )):(= (MEMBER (DEREF (LVAR 24)) nodes 64) (LVAR 16)):(RETURN (LVAR 24)):)
// Line 1315 (= (LVAR 16) (CALL vec_new () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1315 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001339
	mov  rax, 0
	call vec_new
	jmp  .L001340
.L001339:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L001340:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1321 (WHILE cond:(! (CALL peek ( 32 :) ))body: (BLOCK(CALL vec_push ((LVAR 16):(CALL parse_initializer_list () ):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):))
.L001341:
// Line 1316 (! (CALL peek ( 32 :) ))
// Line 1316 (CALL peek ( 32 :) )
// Line 1316  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001345
	mov  rax, 0
	call peek
	jmp  .L001346
.L001345:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001346:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001343
	mov  rax, 1
	jmp  .L001344
.L001343:
	mov  rax, 0
.L001344:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001342
// Line 1321 (BLOCK(CALL vec_push ((LVAR 16):(CALL parse_initializer_list () ):) ):(IF (! (CALL consume_if ( 35 :) )) BREAK  NULL ):)
// Line 1317 (CALL vec_push ((LVAR 16):(CALL parse_initializer_list () ):) )
// Line 1317 (CALL parse_initializer_list () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001347
	mov  rax, 0
	call parse_initializer_list
	jmp  .L001348
.L001347:
	sub  rsp, 8
	mov  rax, 0
	call parse_initializer_list
	add  rsp, 8
.L001348:
	push rax
// Line 1317 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001349
	mov  rax, 0
	call vec_push
	jmp  .L001350
.L001349:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L001350:
	push rax
	pop  rax
// Line 1320 (IF (! (CALL consume_if ( 35 :) )) BREAK  NULL )
// Line 1318 (! (CALL consume_if ( 35 :) ))
// Line 1318 (CALL consume_if ( 35 :) )
// Line 1318  35 
	push 35
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001355
	mov  rax, 0
	call consume_if
	jmp  .L001356
.L001355:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001356:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001353
	mov  rax, 1
	jmp  .L001354
.L001353:
	mov  rax, 0
.L001354:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001351
// Line 1319 BREAK 
	jmp  .L001342
	jmp  .L001352
.L001351:
.L001352:
	jmp  .L001341
.L001342:
// Line 1321 (CALL expect ( 32 :) )
// Line 1321  32 
	push 32
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001357
	mov  rax, 0
	call expect
	jmp  .L001358
.L001357:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001358:
	push rax
	pop  rax
// Line 1322 (= (LVAR 24) (CALL new_node ( 3 :(LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 1322 (CALL new_node ( 3 :(LVAR 8):) )
// Line 1322 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 1322  3 
	push 3
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001359
	mov  rax, 0
	call new_node
	jmp  .L001360
.L001359:
	sub  rsp, 8
	mov  rax, 0
	call new_node
	add  rsp, 8
.L001360:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1323 (= (MEMBER (DEREF (LVAR 24)) nodes 64) (LVAR 16))
// Line 1323 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	push rax
// Line 1323 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1324 (RETURN (LVAR 24))
// Line 1324 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L001336
.L001335:
// Line 1329 (BLOCK(= (LVAR 32) (CALL parse_assign_expr () )):(RETURN (LVAR 32)):)
// Line 1326 (= (LVAR 32) (CALL parse_assign_expr () ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 1326 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001361
	mov  rax, 0
	call parse_assign_expr
	jmp  .L001362
.L001361:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L001362:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1327 (RETURN (LVAR 32))
// Line 1327 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L001336:
	mov  rsp, rbp
	pop  rbp
	ret
	.global parse_program
// Line 1331 FDECL parse_program func ( ) void 
//    
//    (BLOCK(= (GVAR ext_declarations) (CALL vec_new () )):(WHILE cond:(! (CALL at_eof () ))body: (BLOCK(= (GVAR locals) (CAST * void   0 )):(= (GVAR scope) (CAST * void   0 )):(= (GVAR switch_level)  0 ):(IF (CALL consume_if ( 61 :) ) CONTINUE  NULL ):(IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 16) (CALL parse_decl ( 1 :) )):(IF (! (MEMBER (DEREF (LVAR 16)) ident 8)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((MEMBER (DEREF (LVAR 16)) ident 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(CALL expect ( 28 :) ):CONTINUE :) NULL ):(= (LVAR 17)  0 ):(IF (CALL consume_if ( 58 :) ) (BLOCK(= (LVAR 17)  1 ):) NULL ):(= (LVAR 25) (CALL parse_decl ( 0 :) )):(= (LVAR 33) (MEMBER (DEREF (LVAR 25)) ident 8)):(= (LVAR 41) (MEMBER (DEREF (LVAR 25)) type 16)):(IF (! (LVAR 33)) (BLOCK(IF (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) )) (BLOCK(CALL expect ( 28 :) ):CONTINUE :) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )):) NULL ):(IF (! (CALL is_func ((LVAR 41):) )) (BLOCK(= (LVAR 49) (GVAR token)):(= (LVAR 57) (CALL find_gvar ((LVAR 33):) )):(IF (LVAR 57) (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):) (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) ))):(= (MEMBER (DEREF (LVAR 57)) is_extern 32) (LVAR 17)):(IF (CALL consume_if ( 13 :) ) (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):) NULL ):(IF (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) ) (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):) NULL ):(CALL expect ( 28 :) ):CONTINUE :) (IF (CALL consume_if ( 28 :) ) (BLOCK(= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )):CONTINUE :) (IF (CALL peek ( 31 :) ) (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):) (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) )))):)):))
parse_program:
	push rbp
	mov  rbp, rsp
	sub  rsp, 80
// Line 1332 (= (GVAR ext_declarations) (CALL vec_new () ))
	lea  rax, ext_declarations[rip]
	push rax
// Line 1332 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001363
	mov  rax, 0
	call vec_new
	jmp  .L001364
.L001363:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L001364:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1419 (WHILE cond:(! (CALL at_eof () ))body: (BLOCK(= (GVAR locals) (CAST * void   0 )):(= (GVAR scope) (CAST * void   0 )):(= (GVAR switch_level)  0 ):(IF (CALL consume_if ( 61 :) ) CONTINUE  NULL ):(IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 16) (CALL parse_decl ( 1 :) )):(IF (! (MEMBER (DEREF (LVAR 16)) ident 8)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((MEMBER (DEREF (LVAR 16)) ident 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(CALL expect ( 28 :) ):CONTINUE :) NULL ):(= (LVAR 17)  0 ):(IF (CALL consume_if ( 58 :) ) (BLOCK(= (LVAR 17)  1 ):) NULL ):(= (LVAR 25) (CALL parse_decl ( 0 :) )):(= (LVAR 33) (MEMBER (DEREF (LVAR 25)) ident 8)):(= (LVAR 41) (MEMBER (DEREF (LVAR 25)) type 16)):(IF (! (LVAR 33)) (BLOCK(IF (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) )) (BLOCK(CALL expect ( 28 :) ):CONTINUE :) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )):) NULL ):(IF (! (CALL is_func ((LVAR 41):) )) (BLOCK(= (LVAR 49) (GVAR token)):(= (LVAR 57) (CALL find_gvar ((LVAR 33):) )):(IF (LVAR 57) (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):) (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) ))):(= (MEMBER (DEREF (LVAR 57)) is_extern 32) (LVAR 17)):(IF (CALL consume_if ( 13 :) ) (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):) NULL ):(IF (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) ) (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):) NULL ):(CALL expect ( 28 :) ):CONTINUE :) (IF (CALL consume_if ( 28 :) ) (BLOCK(= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )):CONTINUE :) (IF (CALL peek ( 31 :) ) (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):) (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) )))):))
.L001365:
// Line 1333 (! (CALL at_eof () ))
// Line 1333 (CALL at_eof () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001369
	mov  rax, 0
	call at_eof
	jmp  .L001370
.L001369:
	sub  rsp, 8
	mov  rax, 0
	call at_eof
	add  rsp, 8
.L001370:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001367
	mov  rax, 1
	jmp  .L001368
.L001367:
	mov  rax, 0
.L001368:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001366
// Line 1419 (BLOCK(= (GVAR locals) (CAST * void   0 )):(= (GVAR scope) (CAST * void   0 )):(= (GVAR switch_level)  0 ):(IF (CALL consume_if ( 61 :) ) CONTINUE  NULL ):(IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 16) (CALL parse_decl ( 1 :) )):(IF (! (MEMBER (DEREF (LVAR 16)) ident 8)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((MEMBER (DEREF (LVAR 16)) ident 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(CALL expect ( 28 :) ):CONTINUE :) NULL ):(= (LVAR 17)  0 ):(IF (CALL consume_if ( 58 :) ) (BLOCK(= (LVAR 17)  1 ):) NULL ):(= (LVAR 25) (CALL parse_decl ( 0 :) )):(= (LVAR 33) (MEMBER (DEREF (LVAR 25)) ident 8)):(= (LVAR 41) (MEMBER (DEREF (LVAR 25)) type 16)):(IF (! (LVAR 33)) (BLOCK(IF (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) )) (BLOCK(CALL expect ( 28 :) ):CONTINUE :) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )):) NULL ):(IF (! (CALL is_func ((LVAR 41):) )) (BLOCK(= (LVAR 49) (GVAR token)):(= (LVAR 57) (CALL find_gvar ((LVAR 33):) )):(IF (LVAR 57) (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):) (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) ))):(= (MEMBER (DEREF (LVAR 57)) is_extern 32) (LVAR 17)):(IF (CALL consume_if ( 13 :) ) (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):) NULL ):(IF (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) ) (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):) NULL ):(CALL expect ( 28 :) ):CONTINUE :) (IF (CALL consume_if ( 28 :) ) (BLOCK(= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )):CONTINUE :) (IF (CALL peek ( 31 :) ) (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):) (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) )))):)
// Line 1334 (= (GVAR locals) (CAST * void   0 ))
	lea  rax, locals[rip]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1335 (= (GVAR scope) (CAST * void   0 ))
	lea  rax, scope[rip]
	push rax
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1336 (= (GVAR switch_level)  0 )
	lea  rax, switch_level[rip]
	push rax
// Line 1336  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 1340 (IF (CALL consume_if ( 61 :) ) CONTINUE  NULL )
// Line 1338 (CALL consume_if ( 61 :) )
// Line 1338  61 
	push 61
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001373
	mov  rax, 0
	call consume_if
	jmp  .L001374
.L001373:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001374:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001371
// Line 1339 CONTINUE 
	jmp  .L001365
	jmp  .L001372
.L001371:
.L001372:
// Line 1348 (IF (CALL consume_if ( 59 :) ) (BLOCK(= (LVAR 16) (CALL parse_decl ( 1 :) )):(IF (! (MEMBER (DEREF (LVAR 16)) ident 8)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((MEMBER (DEREF (LVAR 16)) ident 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(CALL expect ( 28 :) ):CONTINUE :) NULL )
// Line 1340 (CALL consume_if ( 59 :) )
// Line 1340  59 
	push 59
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001377
	mov  rax, 0
	call consume_if
	jmp  .L001378
.L001377:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001378:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001375
// Line 1348 (BLOCK(= (LVAR 16) (CALL parse_decl ( 1 :) )):(IF (! (MEMBER (DEREF (LVAR 16)) ident 8)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL ):(CALL new_typedef ((MEMBER (DEREF (LVAR 16)) ident 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(CALL expect ( 28 :) ):CONTINUE :)
// Line 1341 (= (LVAR 16) (CALL parse_decl ( 1 :) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 1341 (CALL parse_decl ( 1 :) )
// Line 1420  1 
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001379
	mov  rax, 0
	call parse_decl
	jmp  .L001380
.L001379:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L001380:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1344 (IF (! (MEMBER (DEREF (LVAR 16)) ident 8)) (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) ) NULL )
// Line 1342 (! (MEMBER (DEREF (LVAR 16)) ident 8))
// Line 1342 (MEMBER (DEREF (LVAR 16)) ident 8)
// Line 1342 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001383
	mov  rax, 1
	jmp  .L001384
.L001383:
	mov  rax, 0
.L001384:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001381
// Line 1343 (CALL error_at_token ((GVAR token):(ADDR  "Expected identifier." ):) )
// Line 1343 (ADDR  "Expected identifier." )
	lea  rax, .LS000035[rip]
	push rax
// Line 1343 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001385
	mov  rax, 0
	call error_at_token
	jmp  .L001386
.L001385:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001386:
	push rax
	pop  rax
	jmp  .L001382
.L001381:
.L001382:
// Line 1344 (CALL new_typedef ((MEMBER (DEREF (LVAR 16)) ident 8):(MEMBER (DEREF (LVAR 16)) type 16):) )
// Line 1344 (MEMBER (DEREF (LVAR 16)) type 16)
// Line 1344 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 1344 (MEMBER (DEREF (LVAR 16)) ident 8)
// Line 1344 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001387
	mov  rax, 0
	call new_typedef
	jmp  .L001388
.L001387:
	sub  rsp, 8
	mov  rax, 0
	call new_typedef
	add  rsp, 8
.L001388:
	push rax
	pop  rax
// Line 1345 (CALL expect ( 28 :) )
// Line 1345  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001389
	mov  rax, 0
	call expect
	jmp  .L001390
.L001389:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001390:
	push rax
	pop  rax
// Line 1346 CONTINUE 
	jmp  .L001365
	jmp  .L001376
.L001375:
.L001376:
// Line 1348 (= (LVAR 17)  0 )
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 1420  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 1352 (IF (CALL consume_if ( 58 :) ) (BLOCK(= (LVAR 17)  1 ):) NULL )
// Line 1349 (CALL consume_if ( 58 :) )
// Line 1349  58 
	push 58
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001393
	mov  rax, 0
	call consume_if
	jmp  .L001394
.L001393:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001394:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001391
// Line 1352 (BLOCK(= (LVAR 17)  1 ):)
// Line 1350 (= (LVAR 17)  1 )
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 1420  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
	jmp  .L001392
.L001391:
.L001392:
// Line 1352 (= (LVAR 25) (CALL parse_decl ( 0 :) ))
	mov  rax, rbp
	sub  rax, 25
	push rax
// Line 1352 (CALL parse_decl ( 0 :) )
// Line 1420  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001395
	mov  rax, 0
	call parse_decl
	jmp  .L001396
.L001395:
	sub  rsp, 8
	mov  rax, 0
	call parse_decl
	add  rsp, 8
.L001396:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1353 (= (LVAR 33) (MEMBER (DEREF (LVAR 25)) ident 8))
	mov  rax, rbp
	sub  rax, 33
	push rax
// Line 1353 (MEMBER (DEREF (LVAR 25)) ident 8)
// Line 1353 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
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
// Line 1354 (= (LVAR 41) (MEMBER (DEREF (LVAR 25)) type 16))
	mov  rax, rbp
	sub  rax, 41
	push rax
// Line 1354 (MEMBER (DEREF (LVAR 25)) type 16)
// Line 1354 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
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
// Line 1365 (IF (! (LVAR 33)) (BLOCK(IF (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) )) (BLOCK(CALL expect ( 28 :) ):CONTINUE :) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )):) NULL )
// Line 1355 (! (LVAR 33))
// Line 1355 (LVAR 33)
	mov  rax, rbp
	sub  rax, 33
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001399
	mov  rax, 1
	jmp  .L001400
.L001399:
	mov  rax, 0
.L001400:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001397
// Line 1365 (BLOCK(IF (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) )) (BLOCK(CALL expect ( 28 :) ):CONTINUE :) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )):)
// Line 1363 (IF (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) )) (BLOCK(CALL expect ( 28 :) ):CONTINUE :) (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) ))
// Line 1356 (|| (CALL is_struct ((LVAR 41):) ) (CALL is_enum ((LVAR 41):) ))
// Line 1356 (CALL is_struct ((LVAR 41):) )
// Line 1356 (LVAR 41)
	mov  rax, rbp
	sub  rax, 41
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001405
	mov  rax, 0
	call is_struct
	jmp  .L001406
.L001405:
	sub  rsp, 8
	mov  rax, 0
	call is_struct
	add  rsp, 8
.L001406:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001403
// Line 1356 (CALL is_enum ((LVAR 41):) )
// Line 1356 (LVAR 41)
	mov  rax, rbp
	sub  rax, 41
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001407
	mov  rax, 0
	call is_enum
	jmp  .L001408
.L001407:
	sub  rsp, 8
	mov  rax, 0
	call is_enum
	add  rsp, 8
.L001408:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001403
	mov  rax, 0
	jmp  .L001404
.L001403:
	mov  rax, 1
.L001404:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L001401
// Line 1360 (BLOCK(CALL expect ( 28 :) ):CONTINUE :)
// Line 1358 (CALL expect ( 28 :) )
// Line 1358  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001409
	mov  rax, 0
	call expect
	jmp  .L001410
.L001409:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001410:
	push rax
	pop  rax
// Line 1359 CONTINUE 
	jmp  .L001365
	jmp  .L001402
.L001401:
// Line 1362 (CALL error_at_token ((GVAR token):(ADDR  "Expected an identifier." ):) )
// Line 1362 (ADDR  "Expected an identifier." )
	lea  rax, .LS000036[rip]
	push rax
// Line 1362 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001411
	mov  rax, 0
	call error_at_token
	jmp  .L001412
.L001411:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001412:
	push rax
	pop  rax
.L001402:
	jmp  .L001398
.L001397:
.L001398:
// Line 1418 (IF (! (CALL is_func ((LVAR 41):) )) (BLOCK(= (LVAR 49) (GVAR token)):(= (LVAR 57) (CALL find_gvar ((LVAR 33):) )):(IF (LVAR 57) (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):) (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) ))):(= (MEMBER (DEREF (LVAR 57)) is_extern 32) (LVAR 17)):(IF (CALL consume_if ( 13 :) ) (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):) NULL ):(IF (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) ) (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):) NULL ):(CALL expect ( 28 :) ):CONTINUE :) (IF (CALL consume_if ( 28 :) ) (BLOCK(= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )):CONTINUE :) (IF (CALL peek ( 31 :) ) (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):) (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) ))))
// Line 1365 (! (CALL is_func ((LVAR 41):) ))
// Line 1365 (CALL is_func ((LVAR 41):) )
// Line 1365 (LVAR 41)
	mov  rax, rbp
	sub  rax, 41
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001417
	mov  rax, 0
	call is_func
	jmp  .L001418
.L001417:
	sub  rsp, 8
	mov  rax, 0
	call is_func
	add  rsp, 8
.L001418:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001415
	mov  rax, 1
	jmp  .L001416
.L001415:
	mov  rax, 0
.L001416:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001413
// Line 1403 (BLOCK(= (LVAR 49) (GVAR token)):(= (LVAR 57) (CALL find_gvar ((LVAR 33):) )):(IF (LVAR 57) (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):) (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) ))):(= (MEMBER (DEREF (LVAR 57)) is_extern 32) (LVAR 17)):(IF (CALL consume_if ( 13 :) ) (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):) NULL ):(IF (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) ) (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):) NULL ):(CALL expect ( 28 :) ):CONTINUE :)
// Line 1367 (= (LVAR 49) (GVAR token))
	mov  rax, rbp
	sub  rax, 49
	push rax
// Line 1367 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1368 (= (LVAR 57) (CALL find_gvar ((LVAR 33):) ))
	mov  rax, rbp
	sub  rax, 57
	push rax
// Line 1368 (CALL find_gvar ((LVAR 33):) )
// Line 1368 (LVAR 33)
	mov  rax, rbp
	sub  rax, 33
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001419
	mov  rax, 0
	call find_gvar
	jmp  .L001420
.L001419:
	sub  rsp, 8
	mov  rax, 0
	call find_gvar
	add  rsp, 8
.L001420:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1377 (IF (LVAR 57) (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):) (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) )))
// Line 1369 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001421
// Line 1375 (BLOCK(IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL ):(IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL ):)
// Line 1373 (IF (MEMBER (DEREF (LVAR 57)) body 24) (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) ) NULL )
// Line 1370 (MEMBER (DEREF (LVAR 57)) body 24)
// Line 1370 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001423
// Line 1371 (CALL error_at_token ((LVAR 33):(ADDR  "Reinitialization of global variable." ):) )
// Line 1372 (ADDR  "Reinitialization of global variable." )
	lea  rax, .LS000037[rip]
	push rax
// Line 1371 (LVAR 33)
	mov  rax, rbp
	sub  rax, 33
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001425
	mov  rax, 0
	call error_at_token
	jmp  .L001426
.L001425:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001426:
	push rax
	pop  rax
	jmp  .L001424
.L001423:
.L001424:
// Line 1375 (IF (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )) (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) ) NULL )
// Line 1373 (! (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) ))
// Line 1373 (CALL is_identical_type ((MEMBER (DEREF (LVAR 57)) type 16):(LVAR 41):) )
// Line 1373 (LVAR 41)
	mov  rax, rbp
	sub  rax, 41
	mov  rax, [rax]
	push rax
// Line 1373 (MEMBER (DEREF (LVAR 57)) type 16)
// Line 1373 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001431
	mov  rax, 0
	call is_identical_type
	jmp  .L001432
.L001431:
	sub  rsp, 8
	mov  rax, 0
	call is_identical_type
	add  rsp, 8
.L001432:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L001429
	mov  rax, 1
	jmp  .L001430
.L001429:
	mov  rax, 0
.L001430:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001427
// Line 1374 (CALL error_at_token ((LVAR 33):(ADDR  "Conflicting types." ):) )
// Line 1374 (ADDR  "Conflicting types." )
	lea  rax, .LS000038[rip]
	push rax
// Line 1374 (LVAR 33)
	mov  rax, rbp
	sub  rax, 33
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001433
	mov  rax, 0
	call error_at_token
	jmp  .L001434
.L001433:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001434:
	push rax
	pop  rax
	jmp  .L001428
.L001427:
.L001428:
	jmp  .L001422
.L001421:
// Line 1376 (= (LVAR 57) (CALL new_gvar ((LVAR 33):(LVAR 41):) ))
	mov  rax, rbp
	sub  rax, 57
	push rax
// Line 1376 (CALL new_gvar ((LVAR 33):(LVAR 41):) )
// Line 1376 (LVAR 41)
	mov  rax, rbp
	sub  rax, 41
	mov  rax, [rax]
	push rax
// Line 1376 (LVAR 33)
	mov  rax, rbp
	sub  rax, 33
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001435
	mov  rax, 0
	call new_gvar
	jmp  .L001436
.L001435:
	sub  rsp, 8
	mov  rax, 0
	call new_gvar
	add  rsp, 8
.L001436:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L001422:
// Line 1377 (= (MEMBER (DEREF (LVAR 57)) is_extern 32) (LVAR 17))
// Line 1377 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 1377 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 1388 (IF (CALL consume_if ( 13 :) ) (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):) NULL )
// Line 1378 (CALL consume_if ( 13 :) )
// Line 1378  13 
	push 13
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001439
	mov  rax, 0
	call consume_if
	jmp  .L001440
.L001439:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001440:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001437
// Line 1388 (BLOCK(IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL ):(IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))):)
// Line 1383 (IF (LVAR 17) (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) ) NULL )
// Line 1379 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001441
// Line 1380 (CALL error_at_token ((LVAR 49):(ADDR  "Can not initialize variables with 'extern'." ):) )
// Line 1382 (ADDR  "Can not initialize variables with 'extern'." )
	lea  rax, .LS000039[rip]
	push rax
// Line 1381 (LVAR 49)
	mov  rax, rbp
	sub  rax, 49
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001443
	mov  rax, 0
	call error_at_token
	jmp  .L001444
.L001443:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001444:
	push rax
	pop  rax
	jmp  .L001442
.L001441:
.L001442:
// Line 1387 (IF (CALL peek ( 31 :) ) (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):) (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () )))
// Line 1383 (CALL peek ( 31 :) )
// Line 1383  31 
	push 31
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001447
	mov  rax, 0
	call peek
	jmp  .L001448
.L001447:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001448:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001445
// Line 1385 (BLOCK(= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () )):)
// Line 1384 (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_initializer_list () ))
// Line 1384 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 1384 (CALL parse_initializer_list () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001449
	mov  rax, 0
	call parse_initializer_list
	jmp  .L001450
.L001449:
	sub  rsp, 8
	mov  rax, 0
	call parse_initializer_list
	add  rsp, 8
.L001450:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L001446
.L001445:
// Line 1386 (= (MEMBER (DEREF (LVAR 57)) body 24) (CALL parse_assign_expr () ))
// Line 1386 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 1386 (CALL parse_assign_expr () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001451
	mov  rax, 0
	call parse_assign_expr
	jmp  .L001452
.L001451:
	sub  rsp, 8
	mov  rax, 0
	call parse_assign_expr
	add  rsp, 8
.L001452:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L001446:
	jmp  .L001438
.L001437:
.L001438:
// Line 1401 (IF (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) ) (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):) NULL )
// Line 1388 (CALL is_array_of_char ((MEMBER (DEREF (LVAR 57)) type 16):) )
// Line 1388 (MEMBER (DEREF (LVAR 57)) type 16)
// Line 1388 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001455
	mov  rax, 0
	call is_array_of_char
	jmp  .L001456
.L001455:
	sub  rsp, 8
	mov  rax, 0
	call is_array_of_char
	add  rsp, 8
.L001456:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001453
// Line 1401 (BLOCK(IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))):)
// Line 1400 (IF (! (MEMBER (DEREF (LVAR 57)) body 24)) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):) (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) )))
// Line 1389 (! (MEMBER (DEREF (LVAR 57)) body 24))
// Line 1389 (MEMBER (DEREF (LVAR 57)) body 24)
// Line 1389 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L001459
	mov  rax, 1
	jmp  .L001460
.L001459:
	mov  rax, 0
.L001460:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001457
// Line 1394 (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL ):)
// Line 1394 (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) ) NULL )
// Line 1391 (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 )
// Line 1391 (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)
// Line 1391 (MEMBER (DEREF (LVAR 57)) type 16)
// Line 1391 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  eax, [rax]
	push rax
// Line 1391  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001461
// Line 1392 (CALL error_at_token ((MEMBER (DEREF (LVAR 57)) token 8):(ADDR  "Incomplete type is not allowed." ):) )
// Line 1393 (ADDR  "Incomplete type is not allowed." )
	lea  rax, .LS000040[rip]
	push rax
// Line 1392 (MEMBER (DEREF (LVAR 57)) token 8)
// Line 1392 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001463
	mov  rax, 0
	call error_at_token
	jmp  .L001464
.L001463:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001464:
	push rax
	pop  rax
	jmp  .L001462
.L001461:
.L001462:
	jmp  .L001458
.L001457:
// Line 1400 (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 ) (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):) (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) ))
// Line 1394 (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)  2 )
// Line 1394 (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) kind 0)
// Line 1394 (MEMBER (DEREF (LVAR 57)) body 24)
// Line 1394 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 1394  2 
	push 2
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001465
// Line 1398 (BLOCK(IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL ):)
// Line 1398 (IF (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 ) (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)) NULL )
// Line 1396 (== (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)  0 )
// Line 1396 (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16)
// Line 1396 (MEMBER (DEREF (LVAR 57)) type 16)
// Line 1396 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  eax, [rax]
	push rax
// Line 1396  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001467
// Line 1397 (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) type 16)) array_size 16) (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48))
// Line 1397 (MEMBER (DEREF (LVAR 57)) type 16)
// Line 1397 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 1397 (MEMBER (DEREF (MEMBER (DEREF (LVAR 57)) body 24)) offset 48)
// Line 1397 (MEMBER (DEREF (LVAR 57)) body 24)
// Line 1397 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L001468
.L001467:
.L001468:
	jmp  .L001466
.L001465:
// Line 1399 (CALL error_at_node ((MEMBER (DEREF (LVAR 57)) body 24):(ADDR  "Unsupported initializer." ):) )
// Line 1399 (ADDR  "Unsupported initializer." )
	lea  rax, .LS000041[rip]
	push rax
// Line 1399 (MEMBER (DEREF (LVAR 57)) body 24)
// Line 1399 (LVAR 57)
	mov  rax, rbp
	sub  rax, 57
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001469
	mov  rax, 0
	call error_at_node
	jmp  .L001470
.L001469:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L001470:
	push rax
	pop  rax
.L001466:
.L001458:
	jmp  .L001454
.L001453:
.L001454:
// Line 1401 (CALL expect ( 28 :) )
// Line 1401  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001471
	mov  rax, 0
	call expect
	jmp  .L001472
.L001471:
	sub  rsp, 8
	mov  rax, 0
	call expect
	add  rsp, 8
.L001472:
	push rax
	pop  rax
// Line 1402 CONTINUE 
	jmp  .L001365
	jmp  .L001414
.L001413:
// Line 1418 (IF (CALL consume_if ( 28 :) ) (BLOCK(= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )):CONTINUE :) (IF (CALL peek ( 31 :) ) (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):) (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) )))
// Line 1403 (CALL consume_if ( 28 :) )
// Line 1403  28 
	push 28
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001475
	mov  rax, 0
	call consume_if
	jmp  .L001476
.L001475:
	sub  rsp, 8
	mov  rax, 0
	call consume_if
	add  rsp, 8
.L001476:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001473
// Line 1407 (BLOCK(= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )):CONTINUE :)
// Line 1405 (= (LVAR 65) (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 1405 (CALL new_func ((LVAR 33):(LVAR 41):(CAST * void   0 ):) )
// Line 1420 (CAST * void   0 )
// Line 1420  0 
	push 0
// Line 1405 (LVAR 41)
	mov  rax, rbp
	sub  rax, 41
	mov  rax, [rax]
	push rax
// Line 1405 (LVAR 33)
	mov  rax, rbp
	sub  rax, 33
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L001477
	mov  rax, 0
	call new_func
	jmp  .L001478
.L001477:
	sub  rsp, 8
	mov  rax, 0
	call new_func
	add  rsp, 8
.L001478:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1406 CONTINUE 
	jmp  .L001365
	jmp  .L001474
.L001473:
// Line 1418 (IF (CALL peek ( 31 :) ) (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):) (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) ))
// Line 1407 (CALL peek ( 31 :) )
// Line 1407  31 
	push 31
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001481
	mov  rax, 0
	call peek
	jmp  .L001482
.L001481:
	sub  rsp, 8
	mov  rax, 0
	call peek
	add  rsp, 8
.L001482:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L001479
// Line 1416 (BLOCK(= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) )):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL print_locals () ):(CALL vec_push ((GVAR ext_declarations):(LVAR 8):) ):)
// Line 1410 (= (LVAR 8) (CALL parse_func_definition ((LVAR 25):) ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 1410 (CALL parse_func_definition ((LVAR 25):) )
// Line 1410 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001483
	mov  rax, 0
	call parse_func_definition
	jmp  .L001484
.L001483:
	sub  rsp, 8
	mov  rax, 0
	call parse_func_definition
	add  rsp, 8
.L001484:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 1411 (CALL fprintf ((GVAR output):(ADDR  "// " ):) )
// Line 1411 (ADDR  "// " )
	lea  rax, .LS000042[rip]
	push rax
// Line 1411 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001485
	mov  rax, 0
	call fprintf
	jmp  .L001486
.L001485:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L001486:
	push rax
	pop  rax
// Line 1412 (CALL print_node ((LVAR 8):) )
// Line 1412 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001487
	mov  rax, 0
	call print_node
	jmp  .L001488
.L001487:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L001488:
	push rax
	pop  rax
// Line 1413 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 1413 (ADDR  "\n" )
	lea  rax, .LS000043[rip]
	push rax
// Line 1413 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001489
	mov  rax, 0
	call fprintf
	jmp  .L001490
.L001489:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L001490:
	push rax
	pop  rax
// Line 1414 (CALL print_locals () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L001491
	mov  rax, 0
	call print_locals
	jmp  .L001492
.L001491:
	sub  rsp, 8
	mov  rax, 0
	call print_locals
	add  rsp, 8
.L001492:
	push rax
	pop  rax
// Line 1415 (CALL vec_push ((GVAR ext_declarations):(LVAR 8):) )
// Line 1415 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 1415 (GVAR ext_declarations)
	lea  rax, ext_declarations[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001493
	mov  rax, 0
	call vec_push
	jmp  .L001494
.L001493:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L001494:
	push rax
	pop  rax
	jmp  .L001480
.L001479:
// Line 1417 (CALL error_at_token ((GVAR token):(ADDR  "U6nexpected token." ):) )
// Line 1417 (ADDR  "U6nexpected token." )
	lea  rax, .LS000044[rip]
	push rax
// Line 1417 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L001495
	mov  rax, 0
	call error_at_token
	jmp  .L001496
.L001495:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L001496:
	push rax
	pop  rax
.L001480:
.L001474:
.L001414:
	jmp  .L001365
.L001366:
	mov  rsp, rbp
	pop  rbp
	ret

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
// <void>[print_token][(][FILE][*][stream][,][Token][*][token][)][{]<if>[(][!][token][)][{][fprintf][(][stream][,][(][(]<void>[*][)][0][)][)][;]
// <return>[;]
// [}]<switch>[(][token][->][kind][)][{]<case>[TK_IDENT][:]<case>[TK_NUM][:]<case>[TK_ADD][:]<case>[TK_SUB][:]<case>[TK_MUL][:]<case>[TK_DIV][:]<case>[TK_EQ][:]<case>[TK_NEQ][:]<case>[TK_GT][:]<case>[TK_GE][:]<case>[TK_LT][:]<case>[TK_LE][:]<case>[TK_ASSIGN][:]<case>[TK_ASSIGN_ADD][:]<case>[TK_ASSIGN_SUB][:]<case>[TK_ASSIGN_MUL][:]<case>[TK_ASSIGN_DIV][:]<case>[TK_INC][:]<case>[TK_DEC][:]<case>[TK_LAND][:]<case>[TK_LOR][:]<case>[TK_AND][:]<case>[TK_OR][:]<case>[TK_NOT][:]<case>[TK_XOR][:]<case>[TK_SHR][:]<case>[TK_SHL][:]<case>[TK_SEMI][:]<case>[TK_OP_PAREN][:]<case>[TK_CL_PAREN][:]<case>[TK_OP_BRACE][:]<case>[TK_CL_BRACE][:]<case>[TK_OP_BRACKET][:]<case>[TK_CL_BRACKET][:]<case>[TK_COMMA][:]<case>[TK_COLON][:]<case>[TK_DOT][:]<case>[TK_ARROW][:]<case>[TK_ELLIPSIS][:][fprintf][(][stream][,]"[%.*s]"[,][token][->][len][,][token][->][str][)][;]
// <break>[;]
// <case>[TK_IF][:]<case>[TK_ELSE][:]<case>[TK_WHILE][:]<case>[TK_FOR][:]<case>[TK_SWITCH][:]<case>[TK_CASE][:]<case>[TK_DEFAULT][:]<case>[TK_BREAK][:]<case>[TK_CONTINUE][:]<case>[TK_RETURN][:]<case>[TK_SIZEOF][:]<case>[TK_INT][:]<case>[TK_CHAR][:]<case>[TK_BOOL][:]<case>[TK_VOID][:]<case>[TK_STRUCT][:]<case>[TK_ENUM][:]<case>[TK_UNION][:]<case>[TK_TYPEDEF][:]<case>[TK_EXTERN][:]<case>[TK_MACRO][:][fprintf][(][stream][,]"<%.*s>"[,][token][->][len][,][token][->][str][)][;]
// <break>[;]
// <case>[TK_EOF][:][fprintf][(][stream][,]"<EOF>"[)][;]
// <break>[;]
// <case>[TK_STR][:][fprintf][(][stream][,]"\"%.*s\""[,][token][->][len][,][token][->][str][)][;]
// <break>[;]
// <default>[:][error_at_token][(][token][,]"print_tokens(): Unknown TokenKind."[)][;]
// <break>[;]
// [}][}]<void>[print_tokens][(][Token][*][token][)][{][fprintf][(][output][,]"// "[)][;]
// <while>[(][token][)][{][print_token][(][output][,][token][)][;]
// <if>[(][token][->][kind][==][TK_SEMI][)][fprintf][(][output][,]"\n// "[)][;]
// [token][=][token][->][next][;]
// [}][fprintf][(][output][,]"\n"[)][;]
// [}]<void>[print_node][(][Node][*][node][)][{]<if>[(][node][==][(][(]<void>[*][)][0][)][)][{][fprintf][(][output][,]"NULL "[)][;]
// <return>[;]
// [}]<if>[(][is_binary_op][(][node][->][kind][)][)][{]<switch>[(][node][->][kind][)][{]<case>[ND_ADD][:]<case>[ND_SUB][:]<case>[ND_MUL][:]<case>[ND_DIV][:]<case>[ND_EQ][:]<case>[ND_NEQ][:]<case>[ND_GE][:]<case>[ND_GT][:]<case>[ND_LAND][:]<case>[ND_LOR][:]<case>[ND_AND][:]<case>[ND_OR][:]<case>[ND_XOR][:]<case>[ND_SHR][:]<case>[ND_SHL][:][fprintf][(][output][,]"(%.*s "[,][node][->][token][->][len][,][node][->][token][->][str][)][;]
// <break>[;]
// <default>[:][error][(]"Unknown binary node."[)][;]
// [}][print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]" "[)][;]
// [print_node][(][node][->][rhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<switch>[(][node][->][kind][)][{]<case>[ND_NOT][:][fprintf][(][output][,]"(! "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// <case>[ND_ADDR][:][fprintf][(][output][,]"(ADDR "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// <case>[ND_DEREF][:][fprintf][(][output][,]"(DEREF "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// <case>[ND_CAST][:][fprintf][(][output][,]"(CAST "[)][;]
// [print_type][(][output][,][node][->][type][)][;]
// [fprintf][(][output][,]" "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// <case>[ND_MEMBER][:][fprintf][(][output][,]"(MEMBER "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]" %.*s %d)"[,][node][->][token][->][len][,][node][->][token][->][str][,][node][->][offset][)][;]
// <return>[;]
// <case>[ND_BREAK][:][fprintf][(][output][,]"BREAK "[)][;]
// <return>[;]
// <case>[ND_CONTINUE][:][fprintf][(][output][,]"CONTINUE "[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_CALL][)][{][Token][*][name][=][node][->][lhs][->][token][;]
// [fprintf][(][output][,]"(CALL %.*s ("[,][name][->][len][,][name][->][str][)][;]
// [Vector][*][vec][=][node][->][nodes][;]
// <int>[len][=][vec_len][(][vec][)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][{][print_node][(][vec][->][data][[][i][]][)][;]
// [fprintf][(][output][,]":"[)][;]
// [}][fprintf][(][output][,]") )"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_NUM][)][{][fprintf][(][output][,]" %d "[,][node][->][int_val][)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_STR][)][{][fprintf][(][output][,]" \"%.*s\" "[,][node][->][token][->][len][,][node][->][token][->][str][)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_INIT][)][{][Vector][*][vec][=][node][->][nodes][;]
// <bool>[first][=][1][;]
// [fprintf][(][output][,]"{"[)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][vec_len][(][vec][)][;]
// [i][++][)][{]<if>[(][!][first][)][fprintf][(][output][,]","[)][;]
// [first][=][0][;]
// [print_node][(][vec][->][data][[][i][]][)][;]
// [}][fprintf][(][output][,]"}"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_ASSIGN][)][{][fprintf][(][output][,]"(= "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]" "[)][;]
// [print_node][(][node][->][rhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_IF][)][{][fprintf][(][output][,]"(IF "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]" "[)][;]
// [print_node][(][node][->][rhs][)][;]
// [fprintf][(][output][,]" "[)][;]
// [print_node][(][node][->][xhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_SWITCH][)][{][fprintf][(][output][,]"(SWITCH cond: "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]" body: "[)][;]
// [print_node][(][node][->][rhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_CASE][)][{][fprintf][(][output][,]"(CASE cond:"[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]" body:"[)][;]
// [print_node][(][node][->][rhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_DEFAULT][)][{][fprintf][(][output][,]"(DEFAULT body:"[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_WHILE][)][{][fprintf][(][output][,]"(WHILE cond:"[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"body: "[)][;]
// [print_node][(][node][->][rhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_FOR][)][{][fprintf][(][output][,]"(FOR init: "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"cond: "[)][;]
// [print_node][(][node][->][rhs][)][;]
// [fprintf][(][output][,]" post: "[)][;]
// [print_node][(][node][->][xhs][)][;]
// [fprintf][(][output][,]" body "[)][;]
// [print_node][(][node][->][nodes][->][data][[][0][]][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_BLOCK][)][{][fprintf][(][output][,]"(BLOCK"[)][;]
// <if>[(][node][->][nodes][)][{][Vector][*][vec][=][node][->][nodes][;]
// <int>[len][=][vec_len][(][vec][)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][{][print_node][(][vec][->][data][[][i][]][)][;]
// [fprintf][(][output][,]":"[)][;]
// [}][}][fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_LVAR][)][{][fprintf][(][output][,]"(LVAR %d)"[,][node][->][lvar][->][offset][)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_GVAR][)][{][fprintf][(][output][,]"(GVAR %.*s)"[,][node][->][token][->][len][,][node][->][token][->][str][)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_RETURN][)][{][fprintf][(][output][,]"(RETURN "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_FDECL][)][{][fprintf][(][output][,]"FDECL %.*s "[,][node][->][token][->][len][,][node][->][token][->][str][)][;]
// [print_type][(][output][,][node][->][type][)][;]
// [fprintf][(][output][,]"\n//    "[)][;]
// <if>[(][node][->][nodes][)][{][Vector][*][params][=][node][->][nodes][;]
// <int>[len][=][vec_len][(][params][)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][{][print_node][(][params][->][data][[][i][]][)][;]
// [fprintf][(][output][,]" "[)][;]
// [}][}][fprintf][(][output][,]"\n//    "[)][;]
// [print_node][(][node][->][lhs][)][;]
// [fprintf][(][output][,]")"[)][;]
// <return>[;]
// [}][error][(]"print_node(): Unknown node."[)][;]
// [}]<void>[print_nodes][(][)][{]<int>[len][=][vec_len][(][ext_declarations][)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][{][Node][*][node][=][ext_declarations][->][data][[][i][]][;]
// [fprintf][(][output][,]"// "[)][;]
// [print_node][(][node][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [}][}]<void>[print_struct_member][(][FILE][*][stream][,][MemberInfo][*][member][)][;]
// <void>[print_type][(][FILE][*][stream][,][Type][*][type][)][{]<if>[(][type][->][ty][==][INT][)][{][fprintf][(][stream][,]"int "[)][;]
// [}]<else><if>[(][type][->][ty][==][CHAR][)][{][fprintf][(][stream][,]"char "[)][;]
// [}]<else><if>[(][type][->][ty][==][BOOL][)][{][fprintf][(][stream][,]"bool "[)][;]
// [}]<else><if>[(][type][->][ty][==][VOID][)][{][fprintf][(][stream][,]"void "[)][;]
// [}]<else><if>[(][type][->][ty][==][PTR][)][{][fprintf][(][stream][,]"* "[)][;]
// [print_type][(][stream][,][type][->][ptr_to][)][;]
// [}]<else><if>[(][type][->][ty][==][ARRAY][)][{][fprintf][(][stream][,]"[%d] "[,][type][->][array_size][)][;]
// [print_type][(][stream][,][type][->][ptr_to][)][;]
// [}]<else><if>[(][type][->][ty][==][FUNC][)][{][fprintf][(][stream][,]"func "[)][;]
// [MemberInfo][*][param][=][type][->][params][;]
// [fprintf][(][stream][,]"( "[)][;]
// <bool>[first][=][1][;]
// <while>[(][param][)][{]<if>[(][!][first][)][fprintf][(][stream][,]", "[)][;]
// [first][=][0][;]
// <if>[(][param][->][type][)][print_type][(][stream][,][param][->][type][)][;]
// <else>[fprintf][(][stream][,]"NULL_TYPE"[)][;]
// <if>[(][param][->][ident][)][fprintf][(][stream][,]" %.*s "[,][param][->][ident][->][len][,][param][->][ident][->][str][)][;]
// <else>[fprintf][(][stream][,]"- "[)][;]
// [param][=][param][->][next][;]
// [}][fprintf][(][stream][,]") "[)][;]
// [print_type][(][stream][,][type][->][ptr_to][)][;]
// [}]<else><if>[(][type][->][ty][==][STRUCT][)][{][fprintf][(][stream][,]"struct "[)][;]
// <if>[(][type][->][tag_name][)][{][fprintf][(][stream][,]"<%.*s> "[,][type][->][tag_name][->][len][,][type][->][tag_name][->][str][)][;]
// [}]<else>[{][fprintf][(][stream][,]"<> { "[)][;]
// [print_struct_member][(][stream][,][type][->][member][)][;]
// [fprintf][(][stream][,]"}"[)][;]
// [}][}]<else><if>[(][type][->][ty][==][ENUM][)][{][fprintf][(][stream][,]"enum "[)][;]
// <if>[(][type][->][tag_name][)][{][fprintf][(][stream][,]"<%.*s> "[,][type][->][tag_name][->][len][,][type][->][tag_name][->][str][)][;]
// [}][}]<else><if>[(][type][->][ty][==][ENUM_EL][)][{][fprintf][(][stream][,]"enum_el "[)][;]
// <if>[(][type][->][tag_name][)][{][fprintf][(][stream][,]"<%.*s:%d> "[,][type][->][tag_name][->][len][,][type][->][tag_name][->][str][,][type][->][offset][)][;]
// [}][}]<else>[error][(]"print_type(): Unknown Type."[)][;]
// [}]<void>[print_struct_member][(][FILE][*][stream][,][MemberInfo][*][member][)][{]<bool>[first][=][1][;]
// <while>[(][member][)][{]<if>[(][!][first][)][fprintf][(][stream][,]", "[)][;]
// [first][=][0][;]
// [print_type][(][stream][,][member][->][type][)][;]
// <if>[(][member][->][ident][)][fprintf][(][stream][,]"<%.*s:%d>"[,][member][->][ident][->][len][,][member][->][ident][->][str][,][member][->][offset][)][;]
// <else>[fprintf][(][stream][,]"<>"[)][;]
// [member][=][member][->][next][;]
// [}][}]<void>[print_enum_member][(][MemberInfo][*][member][)][{]<bool>[first][=][1][;]
// <while>[(][member][)][{]<if>[(][!][first][)][fprintf][(][output][,]", "[)][;]
// [first][=][0][;]
// [print_type][(][output][,][member][->][type][)][;]
// [member][=][member][->][next][;]
// [}][}]<void>[print_locals][(][)][{][LVar][*][var][=][locals][;]
// <while>[(][var][)][{][fprintf][(][output][,]"//    %.*s  offset:%d  "[,][var][->][token][->][len][,][var][->][token][->][str][,][var][->][offset][)][;]
// [print_type][(][output][,][var][->][type][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [var][=][var][->][next][;]
// [}][fprintf][(][output][,]"\n"[)][;]
// [}]<void>[print_globals][(][)][{][Global][*][global][=][globals][;]
// [fprintf][(][output][,]"// Globals\n"[)][;]
// <while>[(][global][)][{][fprintf][(][output][,]"// %.*s "[,][global][->][token][->][len][,][global][->][token][->][str][)][;]
// [print_type][(][output][,][global][->][type][)][;]
// [print_node][(][global][->][body][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [global][=][global][->][next][;]
// [}][}]<void>[print_funcs][(][)][{][Global][*][func][=][functions][;]
// [fprintf][(][output][,]"// Functions\n"[)][;]
// <while>[(][func][)][{][fprintf][(][output][,]"// %.*s "[,][func][->][token][->][len][,][func][->][token][->][str][)][;]
// [print_type][(][output][,][func][->][type][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [func][=][func][->][next][;]
// [}][}]<void>[print_strings][(][)][{][fprintf][(][output][,]"// Stringss\n"[)][;]
// <int>[i][=][0][;]
// <while>[(][i][<][vec_len][(][strings][)][)][{][fprintf][(][output][,]"// \"%.*s\"\n"[,][strings][->][data][[][i][]][->][token][->][len][,][strings][->][data][[][i][]][->][token][->][str][)][;]
// [i][++][;]
// [}][}]<void>[print_structs][(][)][{][TagName][*][tag][=][tagnames][;]
// [fprintf][(][output][,]"\n// Tagnames\n"[)][;]
// <while>[(][tag][)][{]<if>[(][tag][->][ident][)][fprintf][(][output][,]"// %.*s "[,][tag][->][ident][->][len][,][tag][->][ident][->][str][)][;]
// <else>[fprintf][(][output][,]"// anonymus "[)][;]
// <if>[(][is_struct][(][tag][->][type][)][)][{][fprintf][(][output][,]"struct { "[)][;]
// [print_struct_member][(][output][,][tag][->][type][->][member][)][;]
// [fprintf][(][output][,]"}\n"[)][;]
// [}]<else><if>[(][is_enum][(][tag][->][type][)][)][{][fprintf][(][output][,]"enum { "[)][;]
// [print_enum_member][(][tag][->][type][->][member][)][;]
// [fprintf][(][output][,]"}\n"[)][;]
// [}]<else><if>[(][is_enum_el][(][tag][->][type][)][)][{][fprintf][(][output][,]"enum_el { %d }\n"[,][tag][->][type][->][offset][)][;]
// [}][tag][=][tag][->][next][;]
// [}][}]<void>[print_typedefs][(][)][{][fprintf][(][output][,]"\n// Typedef\n"[)][;]
// [Typedef][*][tdef][=][tdef_names][;]
// <while>[(][tdef][)][{][fprintf][(][output][,]"// %.*s "[,][tdef][->][ident][->][len][,][tdef][->][ident][->][str][)][;]
// [print_type][(][output][,][tdef][->][type][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [tdef][=][tdef][->][next][;]
// [}][}]<EOF>
// FDECL print_token func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Token>  token ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (LVAR 16)) (BLOCK(CALL fprintf ((LVAR 8):(CAST * void   0 ):) ):(RETURN NULL ):) NULL ):(SWITCH cond: (MEMBER (DEREF (LVAR 16)) kind 0) body: (BLOCK(CASE cond: 0  body:(BLOCK)):(CASE cond: 1  body:(BLOCK)):(CASE cond: 3  body:(BLOCK)):(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 14  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK)):(CASE cond: 20  body:(BLOCK)):(CASE cond: 21  body:(BLOCK)):(CASE cond: 22  body:(BLOCK)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 25  body:(BLOCK)):(CASE cond: 24  body:(BLOCK)):(CASE cond: 26  body:(BLOCK)):(CASE cond: 27  body:(BLOCK)):(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 38  body:(BLOCK)):(CASE cond: 39  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%.*s]" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 40  body:(BLOCK)):(CASE cond: 41  body:(BLOCK)):(CASE cond: 42  body:(BLOCK)):(CASE cond: 43  body:(BLOCK)):(CASE cond: 44  body:(BLOCK)):(CASE cond: 45  body:(BLOCK)):(CASE cond: 46  body:(BLOCK)):(CASE cond: 47  body:(BLOCK)):(CASE cond: 48  body:(BLOCK)):(CASE cond: 49  body:(BLOCK)):(CASE cond: 50  body:(BLOCK)):(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK)):(CASE cond: 57  body:(BLOCK)):(CASE cond: 59  body:(BLOCK)):(CASE cond: 58  body:(BLOCK)):(CASE cond: 61  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s>" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 60  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<EOF>" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "\"%.*s\"" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 16):(ADDR  "print_tokens(): Unknown TokenKind." ):) )):BREAK :)):))
//    switch  offset:20  int 
//    token  offset:16  * struct <Token> 
//    stream  offset:8  * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}

// FDECL print_tokens func ( * struct <Token>  token ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(CALL print_token ((GVAR output):(LVAR 8):) ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (CALL fprintf ((GVAR output):(ADDR  "\n// " ):) ) NULL ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8)):)):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):))
//    token  offset:8  * struct <Token> 

// FDECL print_node func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (== (LVAR 8) (CAST * void   0 )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "NULL " ):) ):(RETURN NULL ):) NULL ):(IF (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (BLOCK(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error ((ADDR  "Unknown binary node." ):) )):)):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 14  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(! " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(ADDR " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEREF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CAST " ):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(MEMBER " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " %.*s %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(MEMBER (DEREF (LVAR 8)) offset 48):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "BREAK " ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "CONTINUE " ):) ):(RETURN NULL ):)):)):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  25 ) (BLOCK(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)):(CALL fprintf ((GVAR output):(ADDR  "(CALL %.*s (" ):(MEMBER (DEREF (LVAR 24)) len 32):(MEMBER (DEREF (LVAR 24)) str 24):) ):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 36) (CALL vec_len ((LVAR 32):) )):(FOR init: (= (LVAR 40)  0 )cond: (< (LVAR 36) (LVAR 40)) post: (++ (= (LVAR 40) (++ (LVAR 40)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):(CALL fprintf ((GVAR output):(ADDR  ") )" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  1 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  " %d " ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  " \"%.*s\" " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  3 ) (BLOCK(= (LVAR 48) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 49)  1 ):(CALL fprintf ((GVAR output):(ADDR  "{" ):) ):(FOR init: (= (LVAR 53)  0 )cond: (< (CALL vec_len ((LVAR 48):) ) (LVAR 53)) post: (++ (= (LVAR 53) (++ (LVAR 53)  1 ))  1 ) body (BLOCK(IF (! (LVAR 49)) (CALL fprintf ((GVAR output):(ADDR  "," ):) ) NULL ):(= (LVAR 49)  0 ):(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))):) ):)):(CALL fprintf ((GVAR output):(ADDR  "}" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  20 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(= " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(IF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  31 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(SWITCH cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  32 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CASE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  33 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEFAULT body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  29 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(WHILE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  30 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(FOR init: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " post: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  " body " ):) ):(CALL print_node ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(BLOCK" ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 61) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 65) (CALL vec_len ((LVAR 61):) )):(FOR init: (= (LVAR 69)  0 )cond: (< (LVAR 65) (LVAR 69)) post: (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(LVAR %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lvar 40)) offset 24):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(GVAR %.*s)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  34 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(RETURN " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  38 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "FDECL %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 77) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 81) (CALL vec_len ((LVAR 77):) )):(FOR init: (= (LVAR 85)  0 )cond: (< (LVAR 81) (LVAR 85)) post: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(CALL error ((ADDR  "print_node(): Unknown node." ):) ):))
//    i  offset:85  int 
//    len  offset:81  int 
//    params  offset:77  * struct <Vector> 
//    i  offset:69  int 
//    len  offset:65  int 
//    vec  offset:61  * struct <Vector> 
//    i  offset:53  int 
//    first  offset:49  bool 
//    vec  offset:48  * struct <Vector> 
//    i  offset:40  int 
//    len  offset:36  int 
//    vec  offset:32  * struct <Vector> 
//    name  offset:24  * struct <Token> 
//    switch  offset:16  int 
//    switch  offset:12  int 
//    node  offset:8  * struct <Node> 

// FDECL print_nodes func ( ) void 
//    
//    (BLOCK(= (LVAR 4) (CALL vec_len ((GVAR ext_declarations):) )):(FOR init: (= (LVAR 8)  0 )cond: (< (LVAR 4) (LVAR 8)) post: (++ (= (LVAR 8) (++ (LVAR 8)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 8)))):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):)):))
//    node  offset:16  * struct <Node> 
//    i  offset:8  int 
//    len  offset:4  int 

// FDECL print_type func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Type>  type ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  1 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "int " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  2 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "char " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  3 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "bool " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  0 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "void " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) ))))))))))):))
//    first  offset:25  bool 
//    param  offset:24  * struct <MemberInfo> 
//    type  offset:16  * struct <Type> 
//    stream  offset:8  * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}

// FDECL print_struct_member func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <MemberInfo>  member ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 17)  1 ):(WHILE cond:(LVAR 16)body: (BLOCK(IF (! (LVAR 17)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 17)  0 ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(IF (MEMBER (DEREF (LVAR 16)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d>" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) str 24):(MEMBER (DEREF (LVAR 16)) offset 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "<>" ):) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):)):))
//    first  offset:17  bool 
//    member  offset:16  * struct <MemberInfo> 
//    stream  offset:8  * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}

// FDECL print_enum_member func ( * struct <MemberInfo>  member ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 9)  1 ):(WHILE cond:(LVAR 8)body: (BLOCK(IF (! (LVAR 9)) (CALL fprintf ((GVAR output):(ADDR  ", " ):) ) NULL ):(= (LVAR 9)  0 ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
//    first  offset:9  bool 
//    member  offset:8  * struct <MemberInfo> 

// FDECL print_locals func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR locals)):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "//    %.*s  offset:%d  " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) offset 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):))
//    var  offset:8  * struct <LVar> 

// FDECL print_globals func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR globals)):(CALL fprintf ((GVAR output):(ADDR  "// Globals\n" ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) body 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
//    global  offset:8  * struct <Global> 

// FDECL print_funcs func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR functions)):(CALL fprintf ((GVAR output):(ADDR  "// Functions\n" ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
//    func  offset:8  * struct <Global> 

// FDECL print_strings func ( ) void 
//    
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// Stringss\n" ):) ):(= (LVAR 4)  0 ):(WHILE cond:(< (CALL vec_len ((GVAR strings):) ) (LVAR 4))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) str 24):) ):(++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ):)):))
//    i  offset:4  int 

// FDECL print_structs func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR tagnames)):(CALL fprintf ((GVAR output):(ADDR  "\n// Tagnames\n" ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(IF (MEMBER (DEREF (LVAR 8)) ident 8) (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) str 24):) ) (CALL fprintf ((GVAR output):(ADDR  "// anonymus " ):) )):(IF (CALL is_struct ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "struct { " ):) ):(CALL print_struct_member ((GVAR output):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum { " ):) ):(CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):) NULL ))):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
//    tag  offset:8  * struct <TagName> 

// FDECL print_typedefs func ( ) void 
//    
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\n// Typedef\n" ):) ):(= (LVAR 8) (GVAR tdef_names)):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
//    tdef  offset:8  * struct <Typedef> 

// Globals
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
// print_typedefs func ( ) void 
// print_structs func ( ) void 
// print_strings func ( ) void 
// print_funcs func ( ) void 
// print_globals func ( ) void 
// print_locals func ( ) void 
// print_enum_member func ( * struct <MemberInfo>  member ) void 
// print_struct_member func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <MemberInfo>  member ) void 
// print_type func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Type>  type ) void 
// print_struct_member func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <MemberInfo>  member ) void 
// print_nodes func ( ) void 
// print_node func ( * struct <Node>  node ) void 
// print_tokens func ( * struct <Token>  token ) void 
// print_token func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Token>  token ) void 
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
// "[%.*s]"
// "<%.*s>"
// "<EOF>"
// "\"%.*s\""
// "print_tokens(): Unknown TokenKind."
// "// "
// "\n// "
// "\n"
// "NULL "
// "(%.*s "
// "Unknown binary node."
// " "
// ")"
// "(! "
// ")"
// "(ADDR "
// ")"
// "(DEREF "
// ")"
// "(CAST "
// " "
// ")"
// "(MEMBER "
// " %.*s %d)"
// "BREAK "
// "CONTINUE "
// "(CALL %.*s ("
// ":"
// ") )"
// " %d "
// " \"%.*s\" "
// "{"
// ","
// "}"
// "(= "
// " "
// ")"
// "(IF "
// " "
// " "
// ")"
// "(SWITCH cond: "
// " body: "
// ")"
// "(CASE cond:"
// " body:"
// ")"
// "(DEFAULT body:"
// ")"
// "(WHILE cond:"
// "body: "
// ")"
// "(FOR init: "
// "cond: "
// " post: "
// " body "
// ")"
// "(BLOCK"
// ":"
// ")"
// "(LVAR %d)"
// "(GVAR %.*s)"
// "(RETURN "
// ")"
// "FDECL %.*s "
// "\n//    "
// " "
// "\n//    "
// ")"
// "print_node(): Unknown node."
// "// "
// "\n"
// "int "
// "char "
// "bool "
// "void "
// "* "
// "[%d] "
// "func "
// "( "
// ", "
// "NULL_TYPE"
// " %.*s "
// "- "
// ") "
// "struct "
// "<%.*s> "
// "<> { "
// "}"
// "enum "
// "<%.*s> "
// "enum_el "
// "<%.*s:%d> "
// "print_type(): Unknown Type."
// ", "
// "<%.*s:%d>"
// "<>"
// ", "
// "//    %.*s  offset:%d  "
// "\n"
// "\n"
// "// Globals\n"
// "// %.*s "
// "\n"
// "// Functions\n"
// "// %.*s "
// "\n"
// "// Stringss\n"
// "// \"%.*s\"\n"
// "\n// Tagnames\n"
// "// %.*s "
// "// anonymus "
// "struct { "
// "}\n"
// "enum { "
// "}\n"
// "enum_el { %d }\n"
// "\n// Typedef\n"
// "// %.*s "
// "\n"

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
.LS000000:
	.string "[%.*s]"
.LS000001:
	.string "<%.*s>"
.LS000002:
	.string "<EOF>"
.LS000003:
	.string "\"%.*s\""
.LS000004:
	.string "print_tokens(): Unknown TokenKind."
.LS000005:
	.string "// "
.LS000006:
	.string "\n// "
.LS000007:
	.string "\n"
.LS000008:
	.string "NULL "
.LS000009:
	.string "(%.*s "
.LS000010:
	.string "Unknown binary node."
.LS000011:
	.string " "
.LS000012:
	.string ")"
.LS000013:
	.string "(! "
.LS000014:
	.string ")"
.LS000015:
	.string "(ADDR "
.LS000016:
	.string ")"
.LS000017:
	.string "(DEREF "
.LS000018:
	.string ")"
.LS000019:
	.string "(CAST "
.LS000020:
	.string " "
.LS000021:
	.string ")"
.LS000022:
	.string "(MEMBER "
.LS000023:
	.string " %.*s %d)"
.LS000024:
	.string "BREAK "
.LS000025:
	.string "CONTINUE "
.LS000026:
	.string "(CALL %.*s ("
.LS000027:
	.string ":"
.LS000028:
	.string ") )"
.LS000029:
	.string " %d "
.LS000030:
	.string " \"%.*s\" "
.LS000031:
	.string "{"
.LS000032:
	.string ","
.LS000033:
	.string "}"
.LS000034:
	.string "(= "
.LS000035:
	.string " "
.LS000036:
	.string ")"
.LS000037:
	.string "(IF "
.LS000038:
	.string " "
.LS000039:
	.string " "
.LS000040:
	.string ")"
.LS000041:
	.string "(SWITCH cond: "
.LS000042:
	.string " body: "
.LS000043:
	.string ")"
.LS000044:
	.string "(CASE cond:"
.LS000045:
	.string " body:"
.LS000046:
	.string ")"
.LS000047:
	.string "(DEFAULT body:"
.LS000048:
	.string ")"
.LS000049:
	.string "(WHILE cond:"
.LS000050:
	.string "body: "
.LS000051:
	.string ")"
.LS000052:
	.string "(FOR init: "
.LS000053:
	.string "cond: "
.LS000054:
	.string " post: "
.LS000055:
	.string " body "
.LS000056:
	.string ")"
.LS000057:
	.string "(BLOCK"
.LS000058:
	.string ":"
.LS000059:
	.string ")"
.LS000060:
	.string "(LVAR %d)"
.LS000061:
	.string "(GVAR %.*s)"
.LS000062:
	.string "(RETURN "
.LS000063:
	.string ")"
.LS000064:
	.string "FDECL %.*s "
.LS000065:
	.string "\n//    "
.LS000066:
	.string " "
.LS000067:
	.string "\n//    "
.LS000068:
	.string ")"
.LS000069:
	.string "print_node(): Unknown node."
.LS000070:
	.string "// "
.LS000071:
	.string "\n"
.LS000072:
	.string "int "
.LS000073:
	.string "char "
.LS000074:
	.string "bool "
.LS000075:
	.string "void "
.LS000076:
	.string "* "
.LS000077:
	.string "[%d] "
.LS000078:
	.string "func "
.LS000079:
	.string "( "
.LS000080:
	.string ", "
.LS000081:
	.string "NULL_TYPE"
.LS000082:
	.string " %.*s "
.LS000083:
	.string "- "
.LS000084:
	.string ") "
.LS000085:
	.string "struct "
.LS000086:
	.string "<%.*s> "
.LS000087:
	.string "<> { "
.LS000088:
	.string "}"
.LS000089:
	.string "enum "
.LS000090:
	.string "<%.*s> "
.LS000091:
	.string "enum_el "
.LS000092:
	.string "<%.*s:%d> "
.LS000093:
	.string "print_type(): Unknown Type."
.LS000094:
	.string ", "
.LS000095:
	.string "<%.*s:%d>"
.LS000096:
	.string "<>"
.LS000097:
	.string ", "
.LS000098:
	.string "//    %.*s  offset:%d  "
.LS000099:
	.string "\n"
.LS000100:
	.string "\n"
.LS000101:
	.string "// Globals\n"
.LS000102:
	.string "// %.*s "
.LS000103:
	.string "\n"
.LS000104:
	.string "// Functions\n"
.LS000105:
	.string "// %.*s "
.LS000106:
	.string "\n"
.LS000107:
	.string "// Stringss\n"
.LS000108:
	.string "// \"%.*s\"\n"
.LS000109:
	.string "\n// Tagnames\n"
.LS000110:
	.string "// %.*s "
.LS000111:
	.string "// anonymus "
.LS000112:
	.string "struct { "
.LS000113:
	.string "}\n"
.LS000114:
	.string "enum { "
.LS000115:
	.string "}\n"
.LS000116:
	.string "enum_el { %d }\n"
.LS000117:
	.string "\n// Typedef\n"
.LS000118:
	.string "// %.*s "
.LS000119:
	.string "\n"

	.text
	.global print_token
// Line 4 FDECL print_token func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Token>  token ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (! (LVAR 16)) (BLOCK(CALL fprintf ((LVAR 8):(CAST * void   0 ):) ):(RETURN NULL ):) NULL ):(SWITCH cond: (MEMBER (DEREF (LVAR 16)) kind 0) body: (BLOCK(CASE cond: 0  body:(BLOCK)):(CASE cond: 1  body:(BLOCK)):(CASE cond: 3  body:(BLOCK)):(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 14  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK)):(CASE cond: 20  body:(BLOCK)):(CASE cond: 21  body:(BLOCK)):(CASE cond: 22  body:(BLOCK)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 25  body:(BLOCK)):(CASE cond: 24  body:(BLOCK)):(CASE cond: 26  body:(BLOCK)):(CASE cond: 27  body:(BLOCK)):(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 38  body:(BLOCK)):(CASE cond: 39  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%.*s]" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 40  body:(BLOCK)):(CASE cond: 41  body:(BLOCK)):(CASE cond: 42  body:(BLOCK)):(CASE cond: 43  body:(BLOCK)):(CASE cond: 44  body:(BLOCK)):(CASE cond: 45  body:(BLOCK)):(CASE cond: 46  body:(BLOCK)):(CASE cond: 47  body:(BLOCK)):(CASE cond: 48  body:(BLOCK)):(CASE cond: 49  body:(BLOCK)):(CASE cond: 50  body:(BLOCK)):(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK)):(CASE cond: 57  body:(BLOCK)):(CASE cond: 59  body:(BLOCK)):(CASE cond: 58  body:(BLOCK)):(CASE cond: 61  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s>" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 60  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<EOF>" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "\"%.*s\"" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 16):(ADDR  "print_tokens(): Unknown TokenKind." ):) )):BREAK :)):))
print_token:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 9 (IF (! (LVAR 16)) (BLOCK(CALL fprintf ((LVAR 8):(CAST * void   0 ):) ):(RETURN NULL ):) NULL )
// Line 5 (! (LVAR 16))
// Line 5 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000002
	mov  rax, 1
	jmp  .L000003
.L000002:
	mov  rax, 0
.L000003:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000000
// Line 9 (BLOCK(CALL fprintf ((LVAR 8):(CAST * void   0 ):) ):(RETURN NULL ):)
// Line 6 (CALL fprintf ((LVAR 8):(CAST * void   0 ):) )
// Line 504 (CAST * void   0 )
// Line 504  0 
	push 0
// Line 6 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000004
	mov  rax, 0
	call fprintf
	jmp  .L000005
.L000004:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000005:
	push rax
	pop  rax
// Line 7 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000001
.L000000:
.L000001:
// Line 9 (SWITCH cond: (MEMBER (DEREF (LVAR 16)) kind 0) body: (BLOCK(CASE cond: 0  body:(BLOCK)):(CASE cond: 1  body:(BLOCK)):(CASE cond: 3  body:(BLOCK)):(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 14  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK)):(CASE cond: 20  body:(BLOCK)):(CASE cond: 21  body:(BLOCK)):(CASE cond: 22  body:(BLOCK)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 25  body:(BLOCK)):(CASE cond: 24  body:(BLOCK)):(CASE cond: 26  body:(BLOCK)):(CASE cond: 27  body:(BLOCK)):(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 38  body:(BLOCK)):(CASE cond: 39  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%.*s]" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 40  body:(BLOCK)):(CASE cond: 41  body:(BLOCK)):(CASE cond: 42  body:(BLOCK)):(CASE cond: 43  body:(BLOCK)):(CASE cond: 44  body:(BLOCK)):(CASE cond: 45  body:(BLOCK)):(CASE cond: 46  body:(BLOCK)):(CASE cond: 47  body:(BLOCK)):(CASE cond: 48  body:(BLOCK)):(CASE cond: 49  body:(BLOCK)):(CASE cond: 50  body:(BLOCK)):(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK)):(CASE cond: 57  body:(BLOCK)):(CASE cond: 59  body:(BLOCK)):(CASE cond: 58  body:(BLOCK)):(CASE cond: 61  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s>" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 60  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<EOF>" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "\"%.*s\"" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 16):(ADDR  "print_tokens(): Unknown TokenKind." ):) )):BREAK :))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 9 (MEMBER (DEREF (LVAR 16)) kind 0)
// Line 9 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 93 (BLOCK(CASE cond: 0  body:(BLOCK)):(CASE cond: 1  body:(BLOCK)):(CASE cond: 3  body:(BLOCK)):(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 14  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK)):(CASE cond: 20  body:(BLOCK)):(CASE cond: 21  body:(BLOCK)):(CASE cond: 22  body:(BLOCK)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 25  body:(BLOCK)):(CASE cond: 24  body:(BLOCK)):(CASE cond: 26  body:(BLOCK)):(CASE cond: 27  body:(BLOCK)):(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 38  body:(BLOCK)):(CASE cond: 39  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%.*s]" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 40  body:(BLOCK)):(CASE cond: 41  body:(BLOCK)):(CASE cond: 42  body:(BLOCK)):(CASE cond: 43  body:(BLOCK)):(CASE cond: 44  body:(BLOCK)):(CASE cond: 45  body:(BLOCK)):(CASE cond: 46  body:(BLOCK)):(CASE cond: 47  body:(BLOCK)):(CASE cond: 48  body:(BLOCK)):(CASE cond: 49  body:(BLOCK)):(CASE cond: 50  body:(BLOCK)):(CASE cond: 51  body:(BLOCK)):(CASE cond: 52  body:(BLOCK)):(CASE cond: 53  body:(BLOCK)):(CASE cond: 54  body:(BLOCK)):(CASE cond: 55  body:(BLOCK)):(CASE cond: 56  body:(BLOCK)):(CASE cond: 57  body:(BLOCK)):(CASE cond: 59  body:(BLOCK)):(CASE cond: 58  body:(BLOCK)):(CASE cond: 61  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s>" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(CASE cond: 60  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<EOF>" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "\"%.*s\"" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((LVAR 16):(ADDR  "print_tokens(): Unknown TokenKind." ):) )):BREAK :)
// Line 10 (CASE cond: 0  body:(BLOCK))
// Line 10  0 
	push 0
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000007
// Line 11 (CASE cond: 1  body:(BLOCK))
// Line 11  1 
	push 1
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000008
// Line 13 (CASE cond: 3  body:(BLOCK))
// Line 13  3 
	push 3
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000009
// Line 14 (CASE cond: 4  body:(BLOCK))
// Line 14  4 
	push 4
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000010
// Line 15 (CASE cond: 5  body:(BLOCK))
// Line 15  5 
	push 5
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000011
// Line 16 (CASE cond: 6  body:(BLOCK))
// Line 16  6 
	push 6
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000012
// Line 18 (CASE cond: 7  body:(BLOCK))
// Line 18  7 
	push 7
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000013
// Line 19 (CASE cond: 8  body:(BLOCK))
// Line 19  8 
	push 8
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000014
// Line 20 (CASE cond: 9  body:(BLOCK))
// Line 20  9 
	push 9
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000015
// Line 21 (CASE cond: 10  body:(BLOCK))
// Line 21  10 
	push 10
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000016
// Line 22 (CASE cond: 11  body:(BLOCK))
// Line 22  11 
	push 11
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000017
// Line 23 (CASE cond: 12  body:(BLOCK))
// Line 23  12 
	push 12
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000018
// Line 25 (CASE cond: 13  body:(BLOCK))
// Line 25  13 
	push 13
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000019
// Line 26 (CASE cond: 14  body:(BLOCK))
// Line 26  14 
	push 14
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000020
// Line 27 (CASE cond: 15  body:(BLOCK))
// Line 27  15 
	push 15
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000021
// Line 28 (CASE cond: 16  body:(BLOCK))
// Line 28  16 
	push 16
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000022
// Line 29 (CASE cond: 17  body:(BLOCK))
// Line 29  17 
	push 17
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000023
// Line 31 (CASE cond: 18  body:(BLOCK))
// Line 31  18 
	push 18
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000024
// Line 32 (CASE cond: 19  body:(BLOCK))
// Line 32  19 
	push 19
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000025
// Line 34 (CASE cond: 20  body:(BLOCK))
// Line 34  20 
	push 20
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000026
// Line 35 (CASE cond: 21  body:(BLOCK))
// Line 35  21 
	push 21
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000027
// Line 36 (CASE cond: 22  body:(BLOCK))
// Line 36  22 
	push 22
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000028
// Line 37 (CASE cond: 23  body:(BLOCK))
// Line 37  23 
	push 23
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000029
// Line 38 (CASE cond: 25  body:(BLOCK))
// Line 38  25 
	push 25
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000030
// Line 39 (CASE cond: 24  body:(BLOCK))
// Line 39  24 
	push 24
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000031
// Line 40 (CASE cond: 26  body:(BLOCK))
// Line 40  26 
	push 26
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000032
// Line 41 (CASE cond: 27  body:(BLOCK))
// Line 41  27 
	push 27
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000033
// Line 43 (CASE cond: 28  body:(BLOCK))
// Line 43  28 
	push 28
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000034
// Line 44 (CASE cond: 29  body:(BLOCK))
// Line 44  29 
	push 29
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000035
// Line 45 (CASE cond: 30  body:(BLOCK))
// Line 45  30 
	push 30
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000036
// Line 46 (CASE cond: 31  body:(BLOCK))
// Line 46  31 
	push 31
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000037
// Line 47 (CASE cond: 32  body:(BLOCK))
// Line 47  32 
	push 32
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000038
// Line 48 (CASE cond: 33  body:(BLOCK))
// Line 48  33 
	push 33
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000039
// Line 49 (CASE cond: 34  body:(BLOCK))
// Line 49  34 
	push 34
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000040
// Line 50 (CASE cond: 35  body:(BLOCK))
// Line 50  35 
	push 35
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000041
// Line 51 (CASE cond: 36  body:(BLOCK))
// Line 51  36 
	push 36
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000042
// Line 52 (CASE cond: 37  body:(BLOCK))
// Line 52  37 
	push 37
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000043
// Line 53 (CASE cond: 38  body:(BLOCK))
// Line 53  38 
	push 38
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000044
// Line 54 (CASE cond: 39  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%.*s]" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :))
// Line 54  39 
	push 39
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000045
// Line 58 (CASE cond: 40  body:(BLOCK))
// Line 58  40 
	push 40
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000046
// Line 59 (CASE cond: 41  body:(BLOCK))
// Line 59  41 
	push 41
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000047
// Line 60 (CASE cond: 42  body:(BLOCK))
// Line 60  42 
	push 42
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000048
// Line 61 (CASE cond: 43  body:(BLOCK))
// Line 61  43 
	push 43
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000049
// Line 62 (CASE cond: 44  body:(BLOCK))
// Line 62  44 
	push 44
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000050
// Line 63 (CASE cond: 45  body:(BLOCK))
// Line 63  45 
	push 45
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000051
// Line 64 (CASE cond: 46  body:(BLOCK))
// Line 64  46 
	push 46
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000052
// Line 65 (CASE cond: 47  body:(BLOCK))
// Line 65  47 
	push 47
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000053
// Line 66 (CASE cond: 48  body:(BLOCK))
// Line 66  48 
	push 48
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000054
// Line 67 (CASE cond: 49  body:(BLOCK))
// Line 67  49 
	push 49
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000055
// Line 68 (CASE cond: 50  body:(BLOCK))
// Line 68  50 
	push 50
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000056
// Line 70 (CASE cond: 51  body:(BLOCK))
// Line 70  51 
	push 51
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000057
// Line 71 (CASE cond: 52  body:(BLOCK))
// Line 71  52 
	push 52
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000058
// Line 72 (CASE cond: 53  body:(BLOCK))
// Line 72  53 
	push 53
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000059
// Line 73 (CASE cond: 54  body:(BLOCK))
// Line 73  54 
	push 54
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000060
// Line 74 (CASE cond: 55  body:(BLOCK))
// Line 74  55 
	push 55
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000061
// Line 75 (CASE cond: 56  body:(BLOCK))
// Line 75  56 
	push 56
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000062
// Line 76 (CASE cond: 57  body:(BLOCK))
// Line 76  57 
	push 57
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000063
// Line 78 (CASE cond: 59  body:(BLOCK))
// Line 78  59 
	push 59
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000064
// Line 79 (CASE cond: 58  body:(BLOCK))
// Line 79  58 
	push 58
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000065
// Line 80 (CASE cond: 61  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s>" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :))
// Line 80  61 
	push 61
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000066
// Line 83 (CASE cond: 60  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<EOF>" ):) ):BREAK :))
// Line 83  60 
	push 60
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000067
// Line 86 (CASE cond: 2  body:(BLOCK(CALL fprintf ((LVAR 8):(ADDR  "\"%.*s\"" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :))
// Line 86  2 
	push 2
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000068
// Line 89 (DEFAULT body:(CALL error_at_token ((LVAR 16):(ADDR  "print_tokens(): Unknown TokenKind." ):) ))
	jmp  .L000069
// Line 91 BREAK 
	jmp  .L000006
	jmp  .L000006
.L000007:
// Line 11 (BLOCK)
.L000008:
// Line 13 (BLOCK)
.L000009:
// Line 14 (BLOCK)
.L000010:
// Line 15 (BLOCK)
.L000011:
// Line 16 (BLOCK)
.L000012:
// Line 18 (BLOCK)
.L000013:
// Line 19 (BLOCK)
.L000014:
// Line 20 (BLOCK)
.L000015:
// Line 21 (BLOCK)
.L000016:
// Line 22 (BLOCK)
.L000017:
// Line 23 (BLOCK)
.L000018:
// Line 25 (BLOCK)
.L000019:
// Line 26 (BLOCK)
.L000020:
// Line 27 (BLOCK)
.L000021:
// Line 28 (BLOCK)
.L000022:
// Line 29 (BLOCK)
.L000023:
// Line 31 (BLOCK)
.L000024:
// Line 32 (BLOCK)
.L000025:
// Line 34 (BLOCK)
.L000026:
// Line 35 (BLOCK)
.L000027:
// Line 36 (BLOCK)
.L000028:
// Line 37 (BLOCK)
.L000029:
// Line 38 (BLOCK)
.L000030:
// Line 39 (BLOCK)
.L000031:
// Line 40 (BLOCK)
.L000032:
// Line 41 (BLOCK)
.L000033:
// Line 43 (BLOCK)
.L000034:
// Line 44 (BLOCK)
.L000035:
// Line 45 (BLOCK)
.L000036:
// Line 46 (BLOCK)
.L000037:
// Line 47 (BLOCK)
.L000038:
// Line 48 (BLOCK)
.L000039:
// Line 49 (BLOCK)
.L000040:
// Line 50 (BLOCK)
.L000041:
// Line 51 (BLOCK)
.L000042:
// Line 52 (BLOCK)
.L000043:
// Line 53 (BLOCK)
.L000044:
// Line 54 (BLOCK)
.L000045:
// Line 55 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%.*s]" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)
// Line 55 (CALL fprintf ((LVAR 8):(ADDR  "[%.*s]" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) )
// Line 55 (MEMBER (DEREF (LVAR 16)) str 24)
// Line 55 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 55 (MEMBER (DEREF (LVAR 16)) len 32)
// Line 55 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 55 (ADDR  "[%.*s]" )
	lea  rax, .LS000000[rip]
	push rax
// Line 55 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000070
	mov  rax, 0
	call fprintf
	jmp  .L000071
.L000070:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000071:
	push rax
	pop  rax
// Line 56 BREAK 
	jmp  .L000006
.L000046:
// Line 59 (BLOCK)
.L000047:
// Line 60 (BLOCK)
.L000048:
// Line 61 (BLOCK)
.L000049:
// Line 62 (BLOCK)
.L000050:
// Line 63 (BLOCK)
.L000051:
// Line 64 (BLOCK)
.L000052:
// Line 65 (BLOCK)
.L000053:
// Line 66 (BLOCK)
.L000054:
// Line 67 (BLOCK)
.L000055:
// Line 68 (BLOCK)
.L000056:
// Line 70 (BLOCK)
.L000057:
// Line 71 (BLOCK)
.L000058:
// Line 72 (BLOCK)
.L000059:
// Line 73 (BLOCK)
.L000060:
// Line 74 (BLOCK)
.L000061:
// Line 75 (BLOCK)
.L000062:
// Line 76 (BLOCK)
.L000063:
// Line 78 (BLOCK)
.L000064:
// Line 79 (BLOCK)
.L000065:
// Line 80 (BLOCK)
.L000066:
// Line 81 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s>" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)
// Line 81 (CALL fprintf ((LVAR 8):(ADDR  "<%.*s>" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) )
// Line 81 (MEMBER (DEREF (LVAR 16)) str 24)
// Line 81 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 81 (MEMBER (DEREF (LVAR 16)) len 32)
// Line 81 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 81 (ADDR  "<%.*s>" )
	lea  rax, .LS000001[rip]
	push rax
// Line 81 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000072
	mov  rax, 0
	call fprintf
	jmp  .L000073
.L000072:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000073:
	push rax
	pop  rax
// Line 82 BREAK 
	jmp  .L000006
.L000067:
// Line 84 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<EOF>" ):) ):BREAK :)
// Line 84 (CALL fprintf ((LVAR 8):(ADDR  "<EOF>" ):) )
// Line 84 (ADDR  "<EOF>" )
	lea  rax, .LS000002[rip]
	push rax
// Line 84 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000074
	mov  rax, 0
	call fprintf
	jmp  .L000075
.L000074:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000075:
	push rax
	pop  rax
// Line 85 BREAK 
	jmp  .L000006
.L000068:
// Line 87 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "\"%.*s\"" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) ):BREAK :)
// Line 87 (CALL fprintf ((LVAR 8):(ADDR  "\"%.*s\"" ):(MEMBER (DEREF (LVAR 16)) len 32):(MEMBER (DEREF (LVAR 16)) str 24):) )
// Line 87 (MEMBER (DEREF (LVAR 16)) str 24)
// Line 87 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 87 (MEMBER (DEREF (LVAR 16)) len 32)
// Line 87 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 87 (ADDR  "\"%.*s\"" )
	lea  rax, .LS000003[rip]
	push rax
// Line 87 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000076
	mov  rax, 0
	call fprintf
	jmp  .L000077
.L000076:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000077:
	push rax
	pop  rax
// Line 88 BREAK 
	jmp  .L000006
.L000069:
// Line 90 (CALL error_at_token ((LVAR 16):(ADDR  "print_tokens(): Unknown TokenKind." ):) )
// Line 90 (ADDR  "print_tokens(): Unknown TokenKind." )
	lea  rax, .LS000004[rip]
	push rax
// Line 90 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000078
	mov  rax, 0
	call error_at_token
	jmp  .L000079
.L000078:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000079:
	push rax
	pop  rax
.L000006:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_tokens
// Line 96 FDECL print_tokens func ( * struct <Token>  token ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(CALL print_token ((GVAR output):(LVAR 8):) ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (CALL fprintf ((GVAR output):(ADDR  "\n// " ):) ) NULL ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8)):)):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):))
print_tokens:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 97 (CALL fprintf ((GVAR output):(ADDR  "// " ):) )
// Line 97 (ADDR  "// " )
	lea  rax, .LS000005[rip]
	push rax
// Line 97 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000080
	mov  rax, 0
	call fprintf
	jmp  .L000081
.L000080:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000081:
	push rax
	pop  rax
// Line 104 (WHILE cond:(LVAR 8)body: (BLOCK(CALL print_token ((GVAR output):(LVAR 8):) ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (CALL fprintf ((GVAR output):(ADDR  "\n// " ):) ) NULL ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8)):))
.L000082:
// Line 98 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000083
// Line 104 (BLOCK(CALL print_token ((GVAR output):(LVAR 8):) ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (CALL fprintf ((GVAR output):(ADDR  "\n// " ):) ) NULL ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8)):)
// Line 99 (CALL print_token ((GVAR output):(LVAR 8):) )
// Line 99 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 99 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000084
	mov  rax, 0
	call print_token
	jmp  .L000085
.L000084:
	sub  rsp, 8
	mov  rax, 0
	call print_token
	add  rsp, 8
.L000085:
	push rax
	pop  rax
// Line 102 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (CALL fprintf ((GVAR output):(ADDR  "\n// " ):) ) NULL )
// Line 100 (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 )
// Line 100 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 100 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 100  28 
	push 28
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000086
// Line 101 (CALL fprintf ((GVAR output):(ADDR  "\n// " ):) )
// Line 101 (ADDR  "\n// " )
	lea  rax, .LS000006[rip]
	push rax
// Line 101 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000088
	mov  rax, 0
	call fprintf
	jmp  .L000089
.L000088:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000089:
	push rax
	pop  rax
	jmp  .L000087
.L000086:
.L000087:
// Line 102 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 8))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 102 (MEMBER (DEREF (LVAR 8)) next 8)
// Line 102 (LVAR 8)
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
	jmp  .L000082
.L000083:
// Line 104 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 104 (ADDR  "\n" )
	lea  rax, .LS000007[rip]
	push rax
// Line 104 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000090
	mov  rax, 0
	call fprintf
	jmp  .L000091
.L000090:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000091:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_node
// Line 108 FDECL print_node func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (== (LVAR 8) (CAST * void   0 )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "NULL " ):) ):(RETURN NULL ):) NULL ):(IF (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (BLOCK(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error ((ADDR  "Unknown binary node." ):) )):)):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 14  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(! " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(ADDR " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEREF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CAST " ):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(MEMBER " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " %.*s %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(MEMBER (DEREF (LVAR 8)) offset 48):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "BREAK " ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "CONTINUE " ):) ):(RETURN NULL ):)):)):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  25 ) (BLOCK(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)):(CALL fprintf ((GVAR output):(ADDR  "(CALL %.*s (" ):(MEMBER (DEREF (LVAR 24)) len 32):(MEMBER (DEREF (LVAR 24)) str 24):) ):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 36) (CALL vec_len ((LVAR 32):) )):(FOR init: (= (LVAR 40)  0 )cond: (< (LVAR 36) (LVAR 40)) post: (++ (= (LVAR 40) (++ (LVAR 40)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):(CALL fprintf ((GVAR output):(ADDR  ") )" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  1 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  " %d " ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  " \"%.*s\" " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  3 ) (BLOCK(= (LVAR 48) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 49)  1 ):(CALL fprintf ((GVAR output):(ADDR  "{" ):) ):(FOR init: (= (LVAR 53)  0 )cond: (< (CALL vec_len ((LVAR 48):) ) (LVAR 53)) post: (++ (= (LVAR 53) (++ (LVAR 53)  1 ))  1 ) body (BLOCK(IF (! (LVAR 49)) (CALL fprintf ((GVAR output):(ADDR  "," ):) ) NULL ):(= (LVAR 49)  0 ):(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))):) ):)):(CALL fprintf ((GVAR output):(ADDR  "}" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  20 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(= " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(IF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  31 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(SWITCH cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  32 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CASE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  33 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEFAULT body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  29 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(WHILE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  30 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(FOR init: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " post: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  " body " ):) ):(CALL print_node ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(BLOCK" ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 61) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 65) (CALL vec_len ((LVAR 61):) )):(FOR init: (= (LVAR 69)  0 )cond: (< (LVAR 65) (LVAR 69)) post: (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(LVAR %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lvar 40)) offset 24):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(GVAR %.*s)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  34 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(RETURN " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  38 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "FDECL %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 77) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 81) (CALL vec_len ((LVAR 77):) )):(FOR init: (= (LVAR 85)  0 )cond: (< (LVAR 81) (LVAR 85)) post: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL ):(CALL error ((ADDR  "print_node(): Unknown node." ):) ):))
print_node:
	push rbp
	mov  rbp, rsp
	sub  rsp, 96
	mov  [rbp - 8], rdi
// Line 113 (IF (== (LVAR 8) (CAST * void   0 )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "NULL " ):) ):(RETURN NULL ):) NULL )
// Line 109 (== (LVAR 8) (CAST * void   0 ))
// Line 109 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 504 (CAST * void   0 )
// Line 504  0 
	push 0
	pop  rdi
	pop  rax
	cmp  rax, rdi
	sete al
	movzb rax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000092
// Line 113 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "NULL " ):) ):(RETURN NULL ):)
// Line 110 (CALL fprintf ((GVAR output):(ADDR  "NULL " ):) )
// Line 110 (ADDR  "NULL " )
	lea  rax, .LS000008[rip]
	push rax
// Line 110 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000094
	mov  rax, 0
	call fprintf
	jmp  .L000095
.L000094:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000095:
	push rax
	pop  rax
// Line 111 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000093
.L000092:
.L000093:
// Line 141 (IF (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (BLOCK(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error ((ADDR  "Unknown binary node." ):) )):)):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 113 (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) )
// Line 113 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 113 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000098
	mov  rax, 0
	call is_binary_op
	jmp  .L000099
.L000098:
	sub  rsp, 8
	mov  rax, 0
	call is_binary_op
	add  rsp, 8
.L000099:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000096
// Line 141 (BLOCK(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error ((ADDR  "Unknown binary node." ):) )):)):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 114 (SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error ((ADDR  "Unknown binary node." ):) )):))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 114 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 114 (LVAR 8)
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
// Line 135 (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :)):(DEFAULT body:(CALL error ((ADDR  "Unknown binary node." ):) )):)
// Line 115 (CASE cond: 4  body:(BLOCK))
// Line 115  4 
	push 4
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000101
// Line 116 (CASE cond: 5  body:(BLOCK))
// Line 116  5 
	push 5
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000102
// Line 117 (CASE cond: 6  body:(BLOCK))
// Line 117  6 
	push 6
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000103
// Line 118 (CASE cond: 7  body:(BLOCK))
// Line 118  7 
	push 7
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000104
// Line 119 (CASE cond: 8  body:(BLOCK))
// Line 119  8 
	push 8
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000105
// Line 120 (CASE cond: 9  body:(BLOCK))
// Line 120  9 
	push 9
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000106
// Line 121 (CASE cond: 10  body:(BLOCK))
// Line 121  10 
	push 10
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000107
// Line 122 (CASE cond: 11  body:(BLOCK))
// Line 122  11 
	push 11
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000108
// Line 123 (CASE cond: 12  body:(BLOCK))
// Line 123  12 
	push 12
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000109
// Line 124 (CASE cond: 13  body:(BLOCK))
// Line 124  13 
	push 13
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000110
// Line 125 (CASE cond: 15  body:(BLOCK))
// Line 125  15 
	push 15
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000111
// Line 126 (CASE cond: 16  body:(BLOCK))
// Line 126  16 
	push 16
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000112
// Line 127 (CASE cond: 17  body:(BLOCK))
// Line 127  17 
	push 17
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000113
// Line 128 (CASE cond: 18  body:(BLOCK))
// Line 128  18 
	push 18
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000114
// Line 129 (CASE cond: 19  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :))
// Line 129  19 
	push 19
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000115
// Line 132 (DEFAULT body:(CALL error ((ADDR  "Unknown binary node." ):) ))
	jmp  .L000116
	jmp  .L000100
.L000101:
// Line 116 (BLOCK)
.L000102:
// Line 117 (BLOCK)
.L000103:
// Line 118 (BLOCK)
.L000104:
// Line 119 (BLOCK)
.L000105:
// Line 120 (BLOCK)
.L000106:
// Line 121 (BLOCK)
.L000107:
// Line 122 (BLOCK)
.L000108:
// Line 123 (BLOCK)
.L000109:
// Line 124 (BLOCK)
.L000110:
// Line 125 (BLOCK)
.L000111:
// Line 126 (BLOCK)
.L000112:
// Line 127 (BLOCK)
.L000113:
// Line 128 (BLOCK)
.L000114:
// Line 129 (BLOCK)
.L000115:
// Line 130 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):BREAK :)
// Line 130 (CALL fprintf ((GVAR output):(ADDR  "(%.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) )
// Line 130 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 130 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 130 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 130 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32)
// Line 130 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 130 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 130 (ADDR  "(%.*s " )
	lea  rax, .LS000009[rip]
	push rax
// Line 130 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000117
	mov  rax, 0
	call fprintf
	jmp  .L000118
.L000117:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000118:
	push rax
	pop  rax
// Line 131 BREAK 
	jmp  .L000100
.L000116:
// Line 133 (CALL error ((ADDR  "Unknown binary node." ):) )
// Line 133 (ADDR  "Unknown binary node." )
	lea  rax, .LS000010[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000119
	mov  rax, 0
	call error
	jmp  .L000120
.L000119:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000120:
	push rax
	pop  rax
.L000100:
// Line 135 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 135 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 135 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000121
	mov  rax, 0
	call print_node
	jmp  .L000122
.L000121:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000122:
	push rax
	pop  rax
// Line 136 (CALL fprintf ((GVAR output):(ADDR  " " ):) )
// Line 136 (ADDR  " " )
	lea  rax, .LS000011[rip]
	push rax
// Line 136 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000123
	mov  rax, 0
	call fprintf
	jmp  .L000124
.L000123:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000124:
	push rax
	pop  rax
// Line 137 (CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 137 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 137 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000125
	mov  rax, 0
	call print_node
	jmp  .L000126
.L000125:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000126:
	push rax
	pop  rax
// Line 138 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 138 (ADDR  ")" )
	lea  rax, .LS000012[rip]
	push rax
// Line 138 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000127
	mov  rax, 0
	call fprintf
	jmp  .L000128
.L000127:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000128:
	push rax
	pop  rax
// Line 139 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000097
.L000096:
.L000097:
// Line 141 (SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 14  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(! " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(ADDR " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEREF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CAST " ):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(MEMBER " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " %.*s %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(MEMBER (DEREF (LVAR 8)) offset 48):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "BREAK " ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "CONTINUE " ):) ):(RETURN NULL ):)):))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 141 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 141 (LVAR 8)
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
// Line 177 (BLOCK(CASE cond: 14  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(! " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(ADDR " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEREF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CAST " ):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(MEMBER " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " %.*s %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(MEMBER (DEREF (LVAR 8)) offset 48):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "BREAK " ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "CONTINUE " ):) ):(RETURN NULL ):)):)
// Line 142 (CASE cond: 14  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(! " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):))
// Line 142  14 
	push 14
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000130
// Line 147 (CASE cond: 21  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(ADDR " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):))
// Line 147  21 
	push 21
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000131
// Line 152 (CASE cond: 22  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEREF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):))
// Line 152  22 
	push 22
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000132
// Line 157 (CASE cond: 27  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CAST " ):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):))
// Line 157  27 
	push 27
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000133
// Line 164 (CASE cond: 26  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "(MEMBER " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " %.*s %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(MEMBER (DEREF (LVAR 8)) offset 48):) ):(RETURN NULL ):))
// Line 164  26 
	push 26
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000134
// Line 170 (CASE cond: 35  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "BREAK " ):) ):(RETURN NULL ):))
// Line 170  35 
	push 35
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000135
// Line 173 (CASE cond: 36  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "CONTINUE " ):) ):(RETURN NULL ):))
// Line 173  36 
	push 36
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000136
	jmp  .L000129
.L000130:
// Line 143 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(! " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 143 (CALL fprintf ((GVAR output):(ADDR  "(! " ):) )
// Line 143 (ADDR  "(! " )
	lea  rax, .LS000013[rip]
	push rax
// Line 143 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000137
	mov  rax, 0
	call fprintf
	jmp  .L000138
.L000137:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000138:
	push rax
	pop  rax
// Line 144 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 144 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 144 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000139
	mov  rax, 0
	call print_node
	jmp  .L000140
.L000139:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000140:
	push rax
	pop  rax
// Line 145 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 145 (ADDR  ")" )
	lea  rax, .LS000014[rip]
	push rax
// Line 145 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000141
	mov  rax, 0
	call fprintf
	jmp  .L000142
.L000141:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000142:
	push rax
	pop  rax
// Line 146 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000131:
// Line 148 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(ADDR " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 148 (CALL fprintf ((GVAR output):(ADDR  "(ADDR " ):) )
// Line 148 (ADDR  "(ADDR " )
	lea  rax, .LS000015[rip]
	push rax
// Line 148 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000143
	mov  rax, 0
	call fprintf
	jmp  .L000144
.L000143:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000144:
	push rax
	pop  rax
// Line 149 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 149 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 149 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000145
	mov  rax, 0
	call print_node
	jmp  .L000146
.L000145:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000146:
	push rax
	pop  rax
// Line 150 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 150 (ADDR  ")" )
	lea  rax, .LS000016[rip]
	push rax
// Line 150 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000147
	mov  rax, 0
	call fprintf
	jmp  .L000148
.L000147:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000148:
	push rax
	pop  rax
// Line 151 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000132:
// Line 153 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEREF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 153 (CALL fprintf ((GVAR output):(ADDR  "(DEREF " ):) )
// Line 153 (ADDR  "(DEREF " )
	lea  rax, .LS000017[rip]
	push rax
// Line 153 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000149
	mov  rax, 0
	call fprintf
	jmp  .L000150
.L000149:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000150:
	push rax
	pop  rax
// Line 154 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 154 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 154 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000151
	mov  rax, 0
	call print_node
	jmp  .L000152
.L000151:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000152:
	push rax
	pop  rax
// Line 155 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 155 (ADDR  ")" )
	lea  rax, .LS000018[rip]
	push rax
// Line 155 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000153
	mov  rax, 0
	call fprintf
	jmp  .L000154
.L000153:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000154:
	push rax
	pop  rax
// Line 156 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000133:
// Line 158 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CAST " ):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 158 (CALL fprintf ((GVAR output):(ADDR  "(CAST " ):) )
// Line 158 (ADDR  "(CAST " )
	lea  rax, .LS000019[rip]
	push rax
// Line 158 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000155
	mov  rax, 0
	call fprintf
	jmp  .L000156
.L000155:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000156:
	push rax
	pop  rax
// Line 159 (CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) )
// Line 159 (MEMBER (DEREF (LVAR 8)) type 80)
// Line 159 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	mov  rax, [rax]
	push rax
// Line 159 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000157
	mov  rax, 0
	call print_type
	jmp  .L000158
.L000157:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000158:
	push rax
	pop  rax
// Line 160 (CALL fprintf ((GVAR output):(ADDR  " " ):) )
// Line 160 (ADDR  " " )
	lea  rax, .LS000020[rip]
	push rax
// Line 160 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000159
	mov  rax, 0
	call fprintf
	jmp  .L000160
.L000159:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000160:
	push rax
	pop  rax
// Line 161 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 161 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 161 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000161
	mov  rax, 0
	call print_node
	jmp  .L000162
.L000161:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000162:
	push rax
	pop  rax
// Line 162 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 162 (ADDR  ")" )
	lea  rax, .LS000021[rip]
	push rax
// Line 162 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000163
	mov  rax, 0
	call fprintf
	jmp  .L000164
.L000163:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000164:
	push rax
	pop  rax
// Line 163 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000134:
// Line 165 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(MEMBER " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " %.*s %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(MEMBER (DEREF (LVAR 8)) offset 48):) ):(RETURN NULL ):)
// Line 165 (CALL fprintf ((GVAR output):(ADDR  "(MEMBER " ):) )
// Line 165 (ADDR  "(MEMBER " )
	lea  rax, .LS000022[rip]
	push rax
// Line 165 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000165
	mov  rax, 0
	call fprintf
	jmp  .L000166
.L000165:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000166:
	push rax
	pop  rax
// Line 166 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 166 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 166 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000167
	mov  rax, 0
	call print_node
	jmp  .L000168
.L000167:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000168:
	push rax
	pop  rax
// Line 167 (CALL fprintf ((GVAR output):(ADDR  " %.*s %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(MEMBER (DEREF (LVAR 8)) offset 48):) )
// Line 168 (MEMBER (DEREF (LVAR 8)) offset 48)
// Line 168 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  eax, [rax]
	push rax
// Line 167 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 167 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 167 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 167 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32)
// Line 167 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 167 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 167 (ADDR  " %.*s %d)" )
	lea  rax, .LS000023[rip]
	push rax
// Line 167 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	pop  r8
	mov  rax, rsp
	and  rax, 15
	jnz  .L000169
	mov  rax, 0
	call fprintf
	jmp  .L000170
.L000169:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000170:
	push rax
	pop  rax
// Line 169 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000135:
// Line 171 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "BREAK " ):) ):(RETURN NULL ):)
// Line 171 (CALL fprintf ((GVAR output):(ADDR  "BREAK " ):) )
// Line 171 (ADDR  "BREAK " )
	lea  rax, .LS000024[rip]
	push rax
// Line 171 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000171
	mov  rax, 0
	call fprintf
	jmp  .L000172
.L000171:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000172:
	push rax
	pop  rax
// Line 172 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000136:
// Line 174 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "CONTINUE " ):) ):(RETURN NULL ):)
// Line 174 (CALL fprintf ((GVAR output):(ADDR  "CONTINUE " ):) )
// Line 174 (ADDR  "CONTINUE " )
	lea  rax, .LS000025[rip]
	push rax
// Line 174 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000173
	mov  rax, 0
	call fprintf
	jmp  .L000174
.L000173:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000174:
	push rax
	pop  rax
// Line 175 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000129:
// Line 189 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  25 ) (BLOCK(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)):(CALL fprintf ((GVAR output):(ADDR  "(CALL %.*s (" ):(MEMBER (DEREF (LVAR 24)) len 32):(MEMBER (DEREF (LVAR 24)) str 24):) ):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 36) (CALL vec_len ((LVAR 32):) )):(FOR init: (= (LVAR 40)  0 )cond: (< (LVAR 36) (LVAR 40)) post: (++ (= (LVAR 40) (++ (LVAR 40)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):(CALL fprintf ((GVAR output):(ADDR  ") )" ):) ):(RETURN NULL ):) NULL )
// Line 177 (== (MEMBER (DEREF (LVAR 8)) kind 0)  25 )
// Line 177 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 177 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 177  25 
	push 25
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000175
// Line 189 (BLOCK(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)):(CALL fprintf ((GVAR output):(ADDR  "(CALL %.*s (" ):(MEMBER (DEREF (LVAR 24)) len 32):(MEMBER (DEREF (LVAR 24)) str 24):) ):(= (LVAR 32) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 36) (CALL vec_len ((LVAR 32):) )):(FOR init: (= (LVAR 40)  0 )cond: (< (LVAR 36) (LVAR 40)) post: (++ (= (LVAR 40) (++ (LVAR 40)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):(CALL fprintf ((GVAR output):(ADDR  ") )" ):) ):(RETURN NULL ):)
// Line 178 (= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 178 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)
// Line 178 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 178 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 179 (CALL fprintf ((GVAR output):(ADDR  "(CALL %.*s (" ):(MEMBER (DEREF (LVAR 24)) len 32):(MEMBER (DEREF (LVAR 24)) str 24):) )
// Line 179 (MEMBER (DEREF (LVAR 24)) str 24)
// Line 179 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 179 (MEMBER (DEREF (LVAR 24)) len 32)
// Line 179 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 179 (ADDR  "(CALL %.*s (" )
	lea  rax, .LS000026[rip]
	push rax
// Line 179 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000177
	mov  rax, 0
	call fprintf
	jmp  .L000178
.L000177:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000178:
	push rax
	pop  rax
// Line 180 (= (LVAR 32) (MEMBER (DEREF (LVAR 8)) nodes 64))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 180 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 180 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 181 (= (LVAR 36) (CALL vec_len ((LVAR 32):) ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 181 (CALL vec_len ((LVAR 32):) )
// Line 181 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000179
	mov  rax, 0
	call vec_len
	jmp  .L000180
.L000179:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000180:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 182 (FOR init: (= (LVAR 40)  0 )cond: (< (LVAR 36) (LVAR 40)) post: (++ (= (LVAR 40) (++ (LVAR 40)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):))
// Line 182 (= (LVAR 40)  0 )
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 182  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000183:
// Line 182 (< (LVAR 36) (LVAR 40))
// Line 182 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  eax, [rax]
	push rax
// Line 182 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
	je   .L000182
// Line 186 (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)
// Line 183 (CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))):) )
// Line 183 (DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40)))
// Line 183 (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 40))
// Line 183 (MEMBER (DEREF (LVAR 32)) data 0)
// Line 183 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 183 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000184
	mov  rax, 0
	call print_node
	jmp  .L000185
.L000184:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000185:
	push rax
	pop  rax
// Line 184 (CALL fprintf ((GVAR output):(ADDR  ":" ):) )
// Line 184 (ADDR  ":" )
	lea  rax, .LS000027[rip]
	push rax
// Line 184 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000186
	mov  rax, 0
	call fprintf
	jmp  .L000187
.L000186:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000187:
	push rax
	pop  rax
.L000181:
// Line 182 (++ (= (LVAR 40) (++ (LVAR 40)  1 ))  1 )
// Line 182 (= (LVAR 40) (++ (LVAR 40)  1 ))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 182 (++ (LVAR 40)  1 )
// Line 182 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	push rax
// Line 182  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 182  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000183
.L000182:
// Line 186 (CALL fprintf ((GVAR output):(ADDR  ") )" ):) )
// Line 186 (ADDR  ") )" )
	lea  rax, .LS000028[rip]
	push rax
// Line 186 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000188
	mov  rax, 0
	call fprintf
	jmp  .L000189
.L000188:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000189:
	push rax
	pop  rax
// Line 187 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000176
.L000175:
.L000176:
// Line 193 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  1 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  " %d " ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) NULL )
// Line 189 (== (MEMBER (DEREF (LVAR 8)) kind 0)  1 )
// Line 189 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 189 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 189  1 
	push 1
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000190
// Line 193 (BLOCK(CALL fprintf ((GVAR output):(ADDR  " %d " ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):)
// Line 190 (CALL fprintf ((GVAR output):(ADDR  " %d " ):(MEMBER (DEREF (LVAR 8)) int_val 32):) )
// Line 190 (MEMBER (DEREF (LVAR 8)) int_val 32)
// Line 190 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 190 (ADDR  " %d " )
	lea  rax, .LS000029[rip]
	push rax
// Line 190 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000192
	mov  rax, 0
	call fprintf
	jmp  .L000193
.L000192:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000193:
	push rax
	pop  rax
// Line 191 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000191
.L000190:
.L000191:
// Line 197 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  " \"%.*s\" " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) NULL )
// Line 193 (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 )
// Line 193 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 193 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 193  2 
	push 2
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000194
// Line 197 (BLOCK(CALL fprintf ((GVAR output):(ADDR  " \"%.*s\" " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):)
// Line 194 (CALL fprintf ((GVAR output):(ADDR  " \"%.*s\" " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) )
// Line 194 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 194 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 194 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 194 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32)
// Line 194 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 194 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 194 (ADDR  " \"%.*s\" " )
	lea  rax, .LS000030[rip]
	push rax
// Line 194 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000196
	mov  rax, 0
	call fprintf
	jmp  .L000197
.L000196:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000197:
	push rax
	pop  rax
// Line 195 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000195
.L000194:
.L000195:
// Line 211 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  3 ) (BLOCK(= (LVAR 48) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 49)  1 ):(CALL fprintf ((GVAR output):(ADDR  "{" ):) ):(FOR init: (= (LVAR 53)  0 )cond: (< (CALL vec_len ((LVAR 48):) ) (LVAR 53)) post: (++ (= (LVAR 53) (++ (LVAR 53)  1 ))  1 ) body (BLOCK(IF (! (LVAR 49)) (CALL fprintf ((GVAR output):(ADDR  "," ):) ) NULL ):(= (LVAR 49)  0 ):(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))):) ):)):(CALL fprintf ((GVAR output):(ADDR  "}" ):) ):(RETURN NULL ):) NULL )
// Line 197 (== (MEMBER (DEREF (LVAR 8)) kind 0)  3 )
// Line 197 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 197 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 197  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000198
// Line 211 (BLOCK(= (LVAR 48) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 49)  1 ):(CALL fprintf ((GVAR output):(ADDR  "{" ):) ):(FOR init: (= (LVAR 53)  0 )cond: (< (CALL vec_len ((LVAR 48):) ) (LVAR 53)) post: (++ (= (LVAR 53) (++ (LVAR 53)  1 ))  1 ) body (BLOCK(IF (! (LVAR 49)) (CALL fprintf ((GVAR output):(ADDR  "," ):) ) NULL ):(= (LVAR 49)  0 ):(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))):) ):)):(CALL fprintf ((GVAR output):(ADDR  "}" ):) ):(RETURN NULL ):)
// Line 198 (= (LVAR 48) (MEMBER (DEREF (LVAR 8)) nodes 64))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 198 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 198 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 199 (= (LVAR 49)  1 )
	mov  rax, rbp
	sub  rax, 49
	push rax
// Line 504  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 200 (CALL fprintf ((GVAR output):(ADDR  "{" ):) )
// Line 200 (ADDR  "{" )
	lea  rax, .LS000031[rip]
	push rax
// Line 200 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000200
	mov  rax, 0
	call fprintf
	jmp  .L000201
.L000200:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000201:
	push rax
	pop  rax
// Line 201 (FOR init: (= (LVAR 53)  0 )cond: (< (CALL vec_len ((LVAR 48):) ) (LVAR 53)) post: (++ (= (LVAR 53) (++ (LVAR 53)  1 ))  1 ) body (BLOCK(IF (! (LVAR 49)) (CALL fprintf ((GVAR output):(ADDR  "," ):) ) NULL ):(= (LVAR 49)  0 ):(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))):) ):))
// Line 201 (= (LVAR 53)  0 )
	mov  rax, rbp
	sub  rax, 53
	push rax
// Line 201  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000204:
// Line 201 (< (CALL vec_len ((LVAR 48):) ) (LVAR 53))
// Line 201 (CALL vec_len ((LVAR 48):) )
// Line 201 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000205
	mov  rax, 0
	call vec_len
	jmp  .L000206
.L000205:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000206:
	push rax
// Line 201 (LVAR 53)
	mov  rax, rbp
	sub  rax, 53
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
	je   .L000203
// Line 208 (BLOCK(IF (! (LVAR 49)) (CALL fprintf ((GVAR output):(ADDR  "," ):) ) NULL ):(= (LVAR 49)  0 ):(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))):) ):)
// Line 204 (IF (! (LVAR 49)) (CALL fprintf ((GVAR output):(ADDR  "," ):) ) NULL )
// Line 202 (! (LVAR 49))
// Line 202 (LVAR 49)
	mov  rax, rbp
	sub  rax, 49
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
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
// Line 203 (CALL fprintf ((GVAR output):(ADDR  "," ):) )
// Line 203 (ADDR  "," )
	lea  rax, .LS000032[rip]
	push rax
// Line 203 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000211
	mov  rax, 0
	call fprintf
	jmp  .L000212
.L000211:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000212:
	push rax
	pop  rax
	jmp  .L000208
.L000207:
.L000208:
// Line 204 (= (LVAR 49)  0 )
	mov  rax, rbp
	sub  rax, 49
	push rax
// Line 504  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 205 (CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))):) )
// Line 205 (DEREF (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53)))
// Line 205 (] (MEMBER (DEREF (LVAR 48)) data 0) (LVAR 53))
// Line 205 (MEMBER (DEREF (LVAR 48)) data 0)
// Line 205 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 205 (LVAR 53)
	mov  rax, rbp
	sub  rax, 53
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000213
	mov  rax, 0
	call print_node
	jmp  .L000214
.L000213:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000214:
	push rax
	pop  rax
.L000202:
// Line 201 (++ (= (LVAR 53) (++ (LVAR 53)  1 ))  1 )
// Line 201 (= (LVAR 53) (++ (LVAR 53)  1 ))
	mov  rax, rbp
	sub  rax, 53
	push rax
// Line 201 (++ (LVAR 53)  1 )
// Line 201 (LVAR 53)
	mov  rax, rbp
	sub  rax, 53
	mov  eax, [rax]
	push rax
// Line 201  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 201  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000204
.L000203:
// Line 208 (CALL fprintf ((GVAR output):(ADDR  "}" ):) )
// Line 208 (ADDR  "}" )
	lea  rax, .LS000033[rip]
	push rax
// Line 208 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000215
	mov  rax, 0
	call fprintf
	jmp  .L000216
.L000215:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000216:
	push rax
	pop  rax
// Line 209 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000199
.L000198:
.L000199:
// Line 219 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  20 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(= " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 211 (== (MEMBER (DEREF (LVAR 8)) kind 0)  20 )
// Line 211 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 211 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 211  20 
	push 20
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000217
// Line 219 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(= " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 212 (CALL fprintf ((GVAR output):(ADDR  "(= " ):) )
// Line 212 (ADDR  "(= " )
	lea  rax, .LS000034[rip]
	push rax
// Line 212 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000219
	mov  rax, 0
	call fprintf
	jmp  .L000220
.L000219:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000220:
	push rax
	pop  rax
// Line 213 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 213 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 213 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000221
	mov  rax, 0
	call print_node
	jmp  .L000222
.L000221:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000222:
	push rax
	pop  rax
// Line 214 (CALL fprintf ((GVAR output):(ADDR  " " ):) )
// Line 214 (ADDR  " " )
	lea  rax, .LS000035[rip]
	push rax
// Line 214 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000223
	mov  rax, 0
	call fprintf
	jmp  .L000224
.L000223:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000224:
	push rax
	pop  rax
// Line 215 (CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 215 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 215 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000225
	mov  rax, 0
	call print_node
	jmp  .L000226
.L000225:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000226:
	push rax
	pop  rax
// Line 216 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 216 (ADDR  ")" )
	lea  rax, .LS000036[rip]
	push rax
// Line 216 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000227
	mov  rax, 0
	call fprintf
	jmp  .L000228
.L000227:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000228:
	push rax
	pop  rax
// Line 217 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000218
.L000217:
.L000218:
// Line 229 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(IF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 219 (== (MEMBER (DEREF (LVAR 8)) kind 0)  28 )
// Line 219 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 219 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 219  28 
	push 28
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000229
// Line 229 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(IF " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 220 (CALL fprintf ((GVAR output):(ADDR  "(IF " ):) )
// Line 220 (ADDR  "(IF " )
	lea  rax, .LS000037[rip]
	push rax
// Line 220 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000231
	mov  rax, 0
	call fprintf
	jmp  .L000232
.L000231:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000232:
	push rax
	pop  rax
// Line 221 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 221 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 221 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000233
	mov  rax, 0
	call print_node
	jmp  .L000234
.L000233:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000234:
	push rax
	pop  rax
// Line 222 (CALL fprintf ((GVAR output):(ADDR  " " ):) )
// Line 222 (ADDR  " " )
	lea  rax, .LS000038[rip]
	push rax
// Line 222 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000235
	mov  rax, 0
	call fprintf
	jmp  .L000236
.L000235:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000236:
	push rax
	pop  rax
// Line 223 (CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 223 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 223 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000237
	mov  rax, 0
	call print_node
	jmp  .L000238
.L000237:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000238:
	push rax
	pop  rax
// Line 224 (CALL fprintf ((GVAR output):(ADDR  " " ):) )
// Line 224 (ADDR  " " )
	lea  rax, .LS000039[rip]
	push rax
// Line 224 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000239
	mov  rax, 0
	call fprintf
	jmp  .L000240
.L000239:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000240:
	push rax
	pop  rax
// Line 225 (CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) )
// Line 225 (MEMBER (DEREF (LVAR 8)) xhs 24)
// Line 225 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000241
	mov  rax, 0
	call print_node
	jmp  .L000242
.L000241:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000242:
	push rax
	pop  rax
// Line 226 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 226 (ADDR  ")" )
	lea  rax, .LS000040[rip]
	push rax
// Line 226 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000243
	mov  rax, 0
	call fprintf
	jmp  .L000244
.L000243:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000244:
	push rax
	pop  rax
// Line 227 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000230
.L000229:
.L000230:
// Line 238 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  31 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(SWITCH cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 229 (== (MEMBER (DEREF (LVAR 8)) kind 0)  31 )
// Line 229 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 229 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 229  31 
	push 31
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000245
// Line 238 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(SWITCH cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 230 (CALL fprintf ((GVAR output):(ADDR  "(SWITCH cond: " ):) )
// Line 230 (ADDR  "(SWITCH cond: " )
	lea  rax, .LS000041[rip]
	push rax
// Line 230 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000247
	mov  rax, 0
	call fprintf
	jmp  .L000248
.L000247:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000248:
	push rax
	pop  rax
// Line 231 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 231 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 231 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000249
	mov  rax, 0
	call print_node
	jmp  .L000250
.L000249:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000250:
	push rax
	pop  rax
// Line 232 (CALL fprintf ((GVAR output):(ADDR  " body: " ):) )
// Line 232 (ADDR  " body: " )
	lea  rax, .LS000042[rip]
	push rax
// Line 232 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000251
	mov  rax, 0
	call fprintf
	jmp  .L000252
.L000251:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000252:
	push rax
	pop  rax
// Line 233 (CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 233 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 233 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000253
	mov  rax, 0
	call print_node
	jmp  .L000254
.L000253:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000254:
	push rax
	pop  rax
// Line 234 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 234 (ADDR  ")" )
	lea  rax, .LS000043[rip]
	push rax
// Line 234 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000255
	mov  rax, 0
	call fprintf
	jmp  .L000256
.L000255:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000256:
	push rax
	pop  rax
// Line 235 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000246
.L000245:
.L000246:
// Line 247 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  32 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CASE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 238 (== (MEMBER (DEREF (LVAR 8)) kind 0)  32 )
// Line 238 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 238 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 238  32 
	push 32
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000257
// Line 247 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(CASE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  " body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 239 (CALL fprintf ((GVAR output):(ADDR  "(CASE cond:" ):) )
// Line 239 (ADDR  "(CASE cond:" )
	lea  rax, .LS000044[rip]
	push rax
// Line 239 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000259
	mov  rax, 0
	call fprintf
	jmp  .L000260
.L000259:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000260:
	push rax
	pop  rax
// Line 240 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 240 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 240 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000261
	mov  rax, 0
	call print_node
	jmp  .L000262
.L000261:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000262:
	push rax
	pop  rax
// Line 241 (CALL fprintf ((GVAR output):(ADDR  " body:" ):) )
// Line 241 (ADDR  " body:" )
	lea  rax, .LS000045[rip]
	push rax
// Line 241 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000263
	mov  rax, 0
	call fprintf
	jmp  .L000264
.L000263:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000264:
	push rax
	pop  rax
// Line 242 (CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 242 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 242 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000265
	mov  rax, 0
	call print_node
	jmp  .L000266
.L000265:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000266:
	push rax
	pop  rax
// Line 243 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 243 (ADDR  ")" )
	lea  rax, .LS000046[rip]
	push rax
// Line 243 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000267
	mov  rax, 0
	call fprintf
	jmp  .L000268
.L000267:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000268:
	push rax
	pop  rax
// Line 244 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000258
.L000257:
.L000258:
// Line 254 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  33 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEFAULT body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 247 (== (MEMBER (DEREF (LVAR 8)) kind 0)  33 )
// Line 247 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 247 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 247  33 
	push 33
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000269
// Line 254 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(DEFAULT body:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 248 (CALL fprintf ((GVAR output):(ADDR  "(DEFAULT body:" ):) )
// Line 248 (ADDR  "(DEFAULT body:" )
	lea  rax, .LS000047[rip]
	push rax
// Line 248 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000271
	mov  rax, 0
	call fprintf
	jmp  .L000272
.L000271:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000272:
	push rax
	pop  rax
// Line 249 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 249 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 249 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000273
	mov  rax, 0
	call print_node
	jmp  .L000274
.L000273:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000274:
	push rax
	pop  rax
// Line 250 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 250 (ADDR  ")" )
	lea  rax, .LS000048[rip]
	push rax
// Line 250 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000275
	mov  rax, 0
	call fprintf
	jmp  .L000276
.L000275:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000276:
	push rax
	pop  rax
// Line 251 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000270
.L000269:
.L000270:
// Line 262 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  29 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(WHILE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 254 (== (MEMBER (DEREF (LVAR 8)) kind 0)  29 )
// Line 254 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 254 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 254  29 
	push 29
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000277
// Line 262 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(WHILE cond:" ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "body: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 255 (CALL fprintf ((GVAR output):(ADDR  "(WHILE cond:" ):) )
// Line 255 (ADDR  "(WHILE cond:" )
	lea  rax, .LS000049[rip]
	push rax
// Line 255 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000279
	mov  rax, 0
	call fprintf
	jmp  .L000280
.L000279:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000280:
	push rax
	pop  rax
// Line 256 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 256 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 256 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000281
	mov  rax, 0
	call print_node
	jmp  .L000282
.L000281:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000282:
	push rax
	pop  rax
// Line 257 (CALL fprintf ((GVAR output):(ADDR  "body: " ):) )
// Line 257 (ADDR  "body: " )
	lea  rax, .LS000050[rip]
	push rax
// Line 257 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000283
	mov  rax, 0
	call fprintf
	jmp  .L000284
.L000283:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000284:
	push rax
	pop  rax
// Line 258 (CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 258 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 258 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000285
	mov  rax, 0
	call print_node
	jmp  .L000286
.L000285:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000286:
	push rax
	pop  rax
// Line 259 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 259 (ADDR  ")" )
	lea  rax, .LS000051[rip]
	push rax
// Line 259 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000287
	mov  rax, 0
	call fprintf
	jmp  .L000288
.L000287:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000288:
	push rax
	pop  rax
// Line 260 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000278
.L000277:
.L000278:
// Line 274 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  30 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(FOR init: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " post: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  " body " ):) ):(CALL print_node ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 262 (== (MEMBER (DEREF (LVAR 8)) kind 0)  30 )
// Line 262 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 262 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 262  30 
	push 30
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000289
// Line 274 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(FOR init: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "cond: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  " post: " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL fprintf ((GVAR output):(ADDR  " body " ):) ):(CALL print_node ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 263 (CALL fprintf ((GVAR output):(ADDR  "(FOR init: " ):) )
// Line 263 (ADDR  "(FOR init: " )
	lea  rax, .LS000052[rip]
	push rax
// Line 263 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000291
	mov  rax, 0
	call fprintf
	jmp  .L000292
.L000291:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000292:
	push rax
	pop  rax
// Line 264 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 264 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 264 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000293
	mov  rax, 0
	call print_node
	jmp  .L000294
.L000293:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000294:
	push rax
	pop  rax
// Line 265 (CALL fprintf ((GVAR output):(ADDR  "cond: " ):) )
// Line 265 (ADDR  "cond: " )
	lea  rax, .LS000053[rip]
	push rax
// Line 265 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000295
	mov  rax, 0
	call fprintf
	jmp  .L000296
.L000295:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000296:
	push rax
	pop  rax
// Line 266 (CALL print_node ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 266 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 266 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000297
	mov  rax, 0
	call print_node
	jmp  .L000298
.L000297:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000298:
	push rax
	pop  rax
// Line 267 (CALL fprintf ((GVAR output):(ADDR  " post: " ):) )
// Line 267 (ADDR  " post: " )
	lea  rax, .LS000054[rip]
	push rax
// Line 267 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000299
	mov  rax, 0
	call fprintf
	jmp  .L000300
.L000299:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000300:
	push rax
	pop  rax
// Line 268 (CALL print_node ((MEMBER (DEREF (LVAR 8)) xhs 24):) )
// Line 268 (MEMBER (DEREF (LVAR 8)) xhs 24)
// Line 268 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000301
	mov  rax, 0
	call print_node
	jmp  .L000302
.L000301:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000302:
	push rax
	pop  rax
// Line 269 (CALL fprintf ((GVAR output):(ADDR  " body " ):) )
// Line 269 (ADDR  " body " )
	lea  rax, .LS000055[rip]
	push rax
// Line 269 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000303
	mov  rax, 0
	call fprintf
	jmp  .L000304
.L000303:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000304:
	push rax
	pop  rax
// Line 270 (CALL print_node ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) )
// Line 270 (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 ))
// Line 270 (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )
// Line 270 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)
// Line 270 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 270 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 270  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000305
	mov  rax, 0
	call print_node
	jmp  .L000306
.L000305:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000306:
	push rax
	pop  rax
// Line 271 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 271 (ADDR  ")" )
	lea  rax, .LS000056[rip]
	push rax
// Line 271 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000307
	mov  rax, 0
	call fprintf
	jmp  .L000308
.L000307:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000308:
	push rax
	pop  rax
// Line 272 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000290
.L000289:
.L000290:
// Line 287 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(BLOCK" ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 61) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 65) (CALL vec_len ((LVAR 61):) )):(FOR init: (= (LVAR 69)  0 )cond: (< (LVAR 65) (LVAR 69)) post: (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 274 (== (MEMBER (DEREF (LVAR 8)) kind 0)  37 )
// Line 274 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 274 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 274  37 
	push 37
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000309
// Line 287 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(BLOCK" ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 61) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 65) (CALL vec_len ((LVAR 61):) )):(FOR init: (= (LVAR 69)  0 )cond: (< (LVAR 65) (LVAR 69)) post: (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 275 (CALL fprintf ((GVAR output):(ADDR  "(BLOCK" ):) )
// Line 275 (ADDR  "(BLOCK" )
	lea  rax, .LS000057[rip]
	push rax
// Line 275 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000311
	mov  rax, 0
	call fprintf
	jmp  .L000312
.L000311:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000312:
	push rax
	pop  rax
// Line 284 (IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 61) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 65) (CALL vec_len ((LVAR 61):) )):(FOR init: (= (LVAR 69)  0 )cond: (< (LVAR 65) (LVAR 69)) post: (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):) NULL )
// Line 276 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 276 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000313
// Line 284 (BLOCK(= (LVAR 61) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 65) (CALL vec_len ((LVAR 61):) )):(FOR init: (= (LVAR 69)  0 )cond: (< (LVAR 65) (LVAR 69)) post: (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)):)
// Line 277 (= (LVAR 61) (MEMBER (DEREF (LVAR 8)) nodes 64))
	mov  rax, rbp
	sub  rax, 61
	push rax
// Line 277 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 277 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 278 (= (LVAR 65) (CALL vec_len ((LVAR 61):) ))
	mov  rax, rbp
	sub  rax, 65
	push rax
// Line 278 (CALL vec_len ((LVAR 61):) )
// Line 278 (LVAR 61)
	mov  rax, rbp
	sub  rax, 61
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000315
	mov  rax, 0
	call vec_len
	jmp  .L000316
.L000315:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000316:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 279 (FOR init: (= (LVAR 69)  0 )cond: (< (LVAR 65) (LVAR 69)) post: (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):))
// Line 279 (= (LVAR 69)  0 )
	mov  rax, rbp
	sub  rax, 69
	push rax
// Line 279  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000319:
// Line 279 (< (LVAR 65) (LVAR 69))
// Line 279 (LVAR 65)
	mov  rax, rbp
	sub  rax, 65
	mov  eax, [rax]
	push rax
// Line 279 (LVAR 69)
	mov  rax, rbp
	sub  rax, 69
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
	je   .L000318
// Line 283 (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) ):(CALL fprintf ((GVAR output):(ADDR  ":" ):) ):)
// Line 280 (CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))):) )
// Line 280 (DEREF (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69)))
// Line 280 (] (MEMBER (DEREF (LVAR 61)) data 0) (LVAR 69))
// Line 280 (MEMBER (DEREF (LVAR 61)) data 0)
// Line 280 (LVAR 61)
	mov  rax, rbp
	sub  rax, 61
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 280 (LVAR 69)
	mov  rax, rbp
	sub  rax, 69
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000320
	mov  rax, 0
	call print_node
	jmp  .L000321
.L000320:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000321:
	push rax
	pop  rax
// Line 281 (CALL fprintf ((GVAR output):(ADDR  ":" ):) )
// Line 281 (ADDR  ":" )
	lea  rax, .LS000058[rip]
	push rax
// Line 281 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000322
	mov  rax, 0
	call fprintf
	jmp  .L000323
.L000322:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000323:
	push rax
	pop  rax
.L000317:
// Line 279 (++ (= (LVAR 69) (++ (LVAR 69)  1 ))  1 )
// Line 279 (= (LVAR 69) (++ (LVAR 69)  1 ))
	mov  rax, rbp
	sub  rax, 69
	push rax
// Line 279 (++ (LVAR 69)  1 )
// Line 279 (LVAR 69)
	mov  rax, rbp
	sub  rax, 69
	mov  eax, [rax]
	push rax
// Line 279  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 279  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000319
.L000318:
	jmp  .L000314
.L000313:
.L000314:
// Line 284 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 284 (ADDR  ")" )
	lea  rax, .LS000059[rip]
	push rax
// Line 284 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000324
	mov  rax, 0
	call fprintf
	jmp  .L000325
.L000324:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000325:
	push rax
	pop  rax
// Line 285 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000310
.L000309:
.L000310:
// Line 291 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(LVAR %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lvar 40)) offset 24):) ):(RETURN NULL ):) NULL )
// Line 287 (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 )
// Line 287 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 287 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 287  23 
	push 23
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000326
// Line 291 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(LVAR %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lvar 40)) offset 24):) ):(RETURN NULL ):)
// Line 288 (CALL fprintf ((GVAR output):(ADDR  "(LVAR %d)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lvar 40)) offset 24):) )
// Line 288 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lvar 40)) offset 24)
// Line 288 (MEMBER (DEREF (LVAR 8)) lvar 40)
// Line 288 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
// Line 288 (ADDR  "(LVAR %d)" )
	lea  rax, .LS000060[rip]
	push rax
// Line 288 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000328
	mov  rax, 0
	call fprintf
	jmp  .L000329
.L000328:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000329:
	push rax
	pop  rax
// Line 289 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000327
.L000326:
.L000327:
// Line 295 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(GVAR %.*s)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) NULL )
// Line 291 (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 )
// Line 291 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 291 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 291  24 
	push 24
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000330
// Line 295 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(GVAR %.*s)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):)
// Line 292 (CALL fprintf ((GVAR output):(ADDR  "(GVAR %.*s)" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) )
// Line 292 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 292 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 292 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 292 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32)
// Line 292 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 292 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 292 (ADDR  "(GVAR %.*s)" )
	lea  rax, .LS000061[rip]
	push rax
// Line 292 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000332
	mov  rax, 0
	call fprintf
	jmp  .L000333
.L000332:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000333:
	push rax
	pop  rax
// Line 293 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000331
.L000330:
.L000331:
// Line 301 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  34 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(RETURN " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 295 (== (MEMBER (DEREF (LVAR 8)) kind 0)  34 )
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
// Line 295  34 
	push 34
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000334
// Line 301 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "(RETURN " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 296 (CALL fprintf ((GVAR output):(ADDR  "(RETURN " ):) )
// Line 296 (ADDR  "(RETURN " )
	lea  rax, .LS000062[rip]
	push rax
// Line 296 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000336
	mov  rax, 0
	call fprintf
	jmp  .L000337
.L000336:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000337:
	push rax
	pop  rax
// Line 297 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 297 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 297 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000338
	mov  rax, 0
	call print_node
	jmp  .L000339
.L000338:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000339:
	push rax
	pop  rax
// Line 298 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 298 (ADDR  ")" )
	lea  rax, .LS000063[rip]
	push rax
// Line 298 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000340
	mov  rax, 0
	call fprintf
	jmp  .L000341
.L000340:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000341:
	push rax
	pop  rax
// Line 299 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000335
.L000334:
.L000335:
// Line 318 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  38 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "FDECL %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 77) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 81) (CALL vec_len ((LVAR 77):) )):(FOR init: (= (LVAR 85)  0 )cond: (< (LVAR 81) (LVAR 85)) post: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):) NULL )
// Line 301 (== (MEMBER (DEREF (LVAR 8)) kind 0)  38 )
// Line 301 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 301 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 301  38 
	push 38
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000342
// Line 318 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "FDECL %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 77) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 81) (CALL vec_len ((LVAR 77):) )):(FOR init: (= (LVAR 85)  0 )cond: (< (LVAR 81) (LVAR 85)) post: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):)):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  ")" ):) ):(RETURN NULL ):)
// Line 302 (CALL fprintf ((GVAR output):(ADDR  "FDECL %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) )
// Line 302 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 302 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 302 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 302 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32)
// Line 302 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 302 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 302 (ADDR  "FDECL %.*s " )
	lea  rax, .LS000064[rip]
	push rax
// Line 302 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000344
	mov  rax, 0
	call fprintf
	jmp  .L000345
.L000344:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000345:
	push rax
	pop  rax
// Line 303 (CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 80):) )
// Line 303 (MEMBER (DEREF (LVAR 8)) type 80)
// Line 303 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 80
	mov  rax, [rax]
	push rax
// Line 303 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000346
	mov  rax, 0
	call print_type
	jmp  .L000347
.L000346:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000347:
	push rax
	pop  rax
// Line 304 (CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) )
// Line 304 (ADDR  "\n//    " )
	lea  rax, .LS000065[rip]
	push rax
// Line 304 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000348
	mov  rax, 0
	call fprintf
	jmp  .L000349
.L000348:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000349:
	push rax
	pop  rax
// Line 313 (IF (MEMBER (DEREF (LVAR 8)) nodes 64) (BLOCK(= (LVAR 77) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 81) (CALL vec_len ((LVAR 77):) )):(FOR init: (= (LVAR 85)  0 )cond: (< (LVAR 81) (LVAR 85)) post: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):)):) NULL )
// Line 305 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 305 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000350
// Line 313 (BLOCK(= (LVAR 77) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 81) (CALL vec_len ((LVAR 77):) )):(FOR init: (= (LVAR 85)  0 )cond: (< (LVAR 81) (LVAR 85)) post: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):)):)
// Line 306 (= (LVAR 77) (MEMBER (DEREF (LVAR 8)) nodes 64))
	mov  rax, rbp
	sub  rax, 77
	push rax
// Line 306 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 306 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 307 (= (LVAR 81) (CALL vec_len ((LVAR 77):) ))
	mov  rax, rbp
	sub  rax, 81
	push rax
// Line 307 (CALL vec_len ((LVAR 77):) )
// Line 307 (LVAR 77)
	mov  rax, rbp
	sub  rax, 77
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000352
	mov  rax, 0
	call vec_len
	jmp  .L000353
.L000352:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000353:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 308 (FOR init: (= (LVAR 85)  0 )cond: (< (LVAR 81) (LVAR 85)) post: (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 ) body (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):))
// Line 308 (= (LVAR 85)  0 )
	mov  rax, rbp
	sub  rax, 85
	push rax
// Line 308  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000356:
// Line 308 (< (LVAR 81) (LVAR 85))
// Line 308 (LVAR 81)
	mov  rax, rbp
	sub  rax, 81
	mov  eax, [rax]
	push rax
// Line 308 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
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
	je   .L000355
// Line 312 (BLOCK(CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) ):(CALL fprintf ((GVAR output):(ADDR  " " ):) ):)
// Line 309 (CALL print_node ((DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))):) )
// Line 309 (DEREF (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85)))
// Line 309 (] (MEMBER (DEREF (LVAR 77)) data 0) (LVAR 85))
// Line 309 (MEMBER (DEREF (LVAR 77)) data 0)
// Line 309 (LVAR 77)
	mov  rax, rbp
	sub  rax, 77
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 309 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000357
	mov  rax, 0
	call print_node
	jmp  .L000358
.L000357:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000358:
	push rax
	pop  rax
// Line 310 (CALL fprintf ((GVAR output):(ADDR  " " ):) )
// Line 310 (ADDR  " " )
	lea  rax, .LS000066[rip]
	push rax
// Line 310 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000359
	mov  rax, 0
	call fprintf
	jmp  .L000360
.L000359:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000360:
	push rax
	pop  rax
.L000354:
// Line 308 (++ (= (LVAR 85) (++ (LVAR 85)  1 ))  1 )
// Line 308 (= (LVAR 85) (++ (LVAR 85)  1 ))
	mov  rax, rbp
	sub  rax, 85
	push rax
// Line 308 (++ (LVAR 85)  1 )
// Line 308 (LVAR 85)
	mov  rax, rbp
	sub  rax, 85
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
	jmp  .L000356
.L000355:
	jmp  .L000351
.L000350:
.L000351:
// Line 313 (CALL fprintf ((GVAR output):(ADDR  "\n//    " ):) )
// Line 313 (ADDR  "\n//    " )
	lea  rax, .LS000067[rip]
	push rax
// Line 313 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000361
	mov  rax, 0
	call fprintf
	jmp  .L000362
.L000361:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000362:
	push rax
	pop  rax
// Line 314 (CALL print_node ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 314 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 314 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000363
	mov  rax, 0
	call print_node
	jmp  .L000364
.L000363:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000364:
	push rax
	pop  rax
// Line 315 (CALL fprintf ((GVAR output):(ADDR  ")" ):) )
// Line 315 (ADDR  ")" )
	lea  rax, .LS000068[rip]
	push rax
// Line 315 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000365
	mov  rax, 0
	call fprintf
	jmp  .L000366
.L000365:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000366:
	push rax
	pop  rax
// Line 316 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000343
.L000342:
.L000343:
// Line 318 (CALL error ((ADDR  "print_node(): Unknown node." ):) )
// Line 318 (ADDR  "print_node(): Unknown node." )
	lea  rax, .LS000069[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000367
	mov  rax, 0
	call error
	jmp  .L000368
.L000367:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000368:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_nodes
// Line 322 FDECL print_nodes func ( ) void 
//    
//    (BLOCK(= (LVAR 4) (CALL vec_len ((GVAR ext_declarations):) )):(FOR init: (= (LVAR 8)  0 )cond: (< (LVAR 4) (LVAR 8)) post: (++ (= (LVAR 8) (++ (LVAR 8)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 8)))):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):)):))
print_nodes:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 323 (= (LVAR 4) (CALL vec_len ((GVAR ext_declarations):) ))
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 323 (CALL vec_len ((GVAR ext_declarations):) )
// Line 323 (GVAR ext_declarations)
	lea  rax, ext_declarations[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000369
	mov  rax, 0
	call vec_len
	jmp  .L000370
.L000369:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000370:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 324 (FOR init: (= (LVAR 8)  0 )cond: (< (LVAR 4) (LVAR 8)) post: (++ (= (LVAR 8) (++ (LVAR 8)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 8)))):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):))
// Line 324 (= (LVAR 8)  0 )
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 324  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000373:
// Line 324 (< (LVAR 4) (LVAR 8))
// Line 324 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 324 (LVAR 8)
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
	je   .L000372
// Line 330 (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 8)))):(CALL fprintf ((GVAR output):(ADDR  "// " ):) ):(CALL print_node ((LVAR 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):)
// Line 325 (= (LVAR 16) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 8))))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 325 (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 8)))
// Line 325 (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 8))
// Line 325 (MEMBER (DEREF (GVAR ext_declarations)) data 0)
// Line 325 (GVAR ext_declarations)
	lea  rax, ext_declarations[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 325 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 326 (CALL fprintf ((GVAR output):(ADDR  "// " ):) )
// Line 326 (ADDR  "// " )
	lea  rax, .LS000070[rip]
	push rax
// Line 326 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000374
	mov  rax, 0
	call fprintf
	jmp  .L000375
.L000374:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000375:
	push rax
	pop  rax
// Line 327 (CALL print_node ((LVAR 16):) )
// Line 327 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000376
	mov  rax, 0
	call print_node
	jmp  .L000377
.L000376:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000377:
	push rax
	pop  rax
// Line 328 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 328 (ADDR  "\n" )
	lea  rax, .LS000071[rip]
	push rax
// Line 328 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000378
	mov  rax, 0
	call fprintf
	jmp  .L000379
.L000378:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000379:
	push rax
	pop  rax
.L000371:
// Line 324 (++ (= (LVAR 8) (++ (LVAR 8)  1 ))  1 )
// Line 324 (= (LVAR 8) (++ (LVAR 8)  1 ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 324 (++ (LVAR 8)  1 )
// Line 324 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	push rax
// Line 324  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 324  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000373
.L000372:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_type
// Line 335 FDECL print_type func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Type>  type ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  1 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "int " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  2 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "char " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  3 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "bool " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  0 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "void " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) ))))))))))):))
print_type:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  1 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "int " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  2 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "char " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  3 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "bool " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  0 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "void " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) )))))))))))
// Line 336 (== (MEMBER (DEREF (LVAR 16)) ty 0)  1 )
// Line 336 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 336 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 336  1 
	push 1
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000380
// Line 338 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "int " ):) ):)
// Line 337 (CALL fprintf ((LVAR 8):(ADDR  "int " ):) )
// Line 337 (ADDR  "int " )
	lea  rax, .LS000072[rip]
	push rax
// Line 337 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000382
	mov  rax, 0
	call fprintf
	jmp  .L000383
.L000382:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000383:
	push rax
	pop  rax
	jmp  .L000381
.L000380:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  2 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "char " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  3 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "bool " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  0 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "void " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) ))))))))))
// Line 338 (== (MEMBER (DEREF (LVAR 16)) ty 0)  2 )
// Line 338 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 338 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 338  2 
	push 2
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000384
// Line 340 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "char " ):) ):)
// Line 339 (CALL fprintf ((LVAR 8):(ADDR  "char " ):) )
// Line 339 (ADDR  "char " )
	lea  rax, .LS000073[rip]
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
	jnz  .L000386
	mov  rax, 0
	call fprintf
	jmp  .L000387
.L000386:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000387:
	push rax
	pop  rax
	jmp  .L000385
.L000384:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  3 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "bool " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  0 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "void " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) )))))))))
// Line 340 (== (MEMBER (DEREF (LVAR 16)) ty 0)  3 )
// Line 340 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 340 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 340  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000388
// Line 342 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "bool " ):) ):)
// Line 341 (CALL fprintf ((LVAR 8):(ADDR  "bool " ):) )
// Line 341 (ADDR  "bool " )
	lea  rax, .LS000074[rip]
	push rax
// Line 341 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000390
	mov  rax, 0
	call fprintf
	jmp  .L000391
.L000390:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000391:
	push rax
	pop  rax
	jmp  .L000389
.L000388:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  0 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "void " ):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) ))))))))
// Line 342 (== (MEMBER (DEREF (LVAR 16)) ty 0)  0 )
// Line 342 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 342 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 342  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000392
// Line 344 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "void " ):) ):)
// Line 343 (CALL fprintf ((LVAR 8):(ADDR  "void " ):) )
// Line 343 (ADDR  "void " )
	lea  rax, .LS000075[rip]
	push rax
// Line 343 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000394
	mov  rax, 0
	call fprintf
	jmp  .L000395
.L000394:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000395:
	push rax
	pop  rax
	jmp  .L000393
.L000392:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) )))))))
// Line 344 (== (MEMBER (DEREF (LVAR 16)) ty 0)  4 )
// Line 344 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 344 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 344  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000396
// Line 347 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "* " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):)
// Line 345 (CALL fprintf ((LVAR 8):(ADDR  "* " ):) )
// Line 345 (ADDR  "* " )
	lea  rax, .LS000076[rip]
	push rax
// Line 345 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000398
	mov  rax, 0
	call fprintf
	jmp  .L000399
.L000398:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000399:
	push rax
	pop  rax
// Line 346 (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) )
// Line 346 (MEMBER (DEREF (LVAR 16)) ptr_to 8)
// Line 346 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 346 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000400
	mov  rax, 0
	call print_type
	jmp  .L000401
.L000400:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000401:
	push rax
	pop  rax
	jmp  .L000397
.L000396:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) ))))))
// Line 347 (== (MEMBER (DEREF (LVAR 16)) ty 0)  5 )
// Line 347 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 347 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 347  5 
	push 5
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000402
// Line 350 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):)
// Line 348 (CALL fprintf ((LVAR 8):(ADDR  "[%d] " ):(MEMBER (DEREF (LVAR 16)) array_size 16):) )
// Line 348 (MEMBER (DEREF (LVAR 16)) array_size 16)
// Line 348 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  eax, [rax]
	push rax
// Line 348 (ADDR  "[%d] " )
	lea  rax, .LS000077[rip]
	push rax
// Line 348 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000404
	mov  rax, 0
	call fprintf
	jmp  .L000405
.L000404:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000405:
	push rax
	pop  rax
// Line 349 (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) )
// Line 349 (MEMBER (DEREF (LVAR 16)) ptr_to 8)
// Line 349 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 349 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000406
	mov  rax, 0
	call print_type
	jmp  .L000407
.L000406:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000407:
	push rax
	pop  rax
	jmp  .L000403
.L000402:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) )))))
// Line 350 (== (MEMBER (DEREF (LVAR 16)) ty 0)  6 )
// Line 350 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 350 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 350  6 
	push 6
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000408
// Line 371 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "func " ):) ):(= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24)):(CALL fprintf ((LVAR 8):(ADDR  "( " ):) ):(= (LVAR 25)  1 ):(WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)):(CALL fprintf ((LVAR 8):(ADDR  ") " ):) ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) ):)
// Line 351 (CALL fprintf ((LVAR 8):(ADDR  "func " ):) )
// Line 351 (ADDR  "func " )
	lea  rax, .LS000078[rip]
	push rax
// Line 351 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000410
	mov  rax, 0
	call fprintf
	jmp  .L000411
.L000410:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000411:
	push rax
	pop  rax
// Line 352 (= (LVAR 24) (MEMBER (DEREF (LVAR 16)) params 24))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 352 (MEMBER (DEREF (LVAR 16)) params 24)
// Line 352 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 353 (CALL fprintf ((LVAR 8):(ADDR  "( " ):) )
// Line 353 (ADDR  "( " )
	lea  rax, .LS000079[rip]
	push rax
// Line 353 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000412
	mov  rax, 0
	call fprintf
	jmp  .L000413
.L000412:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000413:
	push rax
	pop  rax
// Line 354 (= (LVAR 25)  1 )
	mov  rax, rbp
	sub  rax, 25
	push rax
// Line 504  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 369 (WHILE cond:(LVAR 24)body: (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):))
.L000414:
// Line 355 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000415
// Line 369 (BLOCK(IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 25)  0 ):(IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )):(IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )):(= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0)):)
// Line 358 (IF (! (LVAR 25)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL )
// Line 356 (! (LVAR 25))
// Line 356 (LVAR 25)
	mov  rax, rbp
	sub  rax, 25
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000418
	mov  rax, 1
	jmp  .L000419
.L000418:
	mov  rax, 0
.L000419:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000416
// Line 357 (CALL fprintf ((LVAR 8):(ADDR  ", " ):) )
// Line 357 (ADDR  ", " )
	lea  rax, .LS000080[rip]
	push rax
// Line 357 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000420
	mov  rax, 0
	call fprintf
	jmp  .L000421
.L000420:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000421:
	push rax
	pop  rax
	jmp  .L000417
.L000416:
.L000417:
// Line 358 (= (LVAR 25)  0 )
	mov  rax, rbp
	sub  rax, 25
	push rax
// Line 504  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 363 (IF (MEMBER (DEREF (LVAR 24)) type 16) (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) ) (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) ))
// Line 359 (MEMBER (DEREF (LVAR 24)) type 16)
// Line 359 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000422
// Line 360 (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 24)) type 16):) )
// Line 360 (MEMBER (DEREF (LVAR 24)) type 16)
// Line 360 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 360 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000424
	mov  rax, 0
	call print_type
	jmp  .L000425
.L000424:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000425:
	push rax
	pop  rax
	jmp  .L000423
.L000422:
// Line 362 (CALL fprintf ((LVAR 8):(ADDR  "NULL_TYPE" ):) )
// Line 362 (ADDR  "NULL_TYPE" )
	lea  rax, .LS000081[rip]
	push rax
// Line 362 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000426
	mov  rax, 0
	call fprintf
	jmp  .L000427
.L000426:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000427:
	push rax
	pop  rax
.L000423:
// Line 367 (IF (MEMBER (DEREF (LVAR 24)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "- " ):) ))
// Line 363 (MEMBER (DEREF (LVAR 24)) ident 8)
// Line 363 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000428
// Line 364 (CALL fprintf ((LVAR 8):(ADDR  " %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24):) )
// Line 364 (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) str 24)
// Line 364 (MEMBER (DEREF (LVAR 24)) ident 8)
// Line 364 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
// Line 364 (MEMBER (DEREF (MEMBER (DEREF (LVAR 24)) ident 8)) len 32)
// Line 364 (MEMBER (DEREF (LVAR 24)) ident 8)
// Line 364 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
// Line 364 (ADDR  " %.*s " )
	lea  rax, .LS000082[rip]
	push rax
// Line 364 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000430
	mov  rax, 0
	call fprintf
	jmp  .L000431
.L000430:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000431:
	push rax
	pop  rax
	jmp  .L000429
.L000428:
// Line 366 (CALL fprintf ((LVAR 8):(ADDR  "- " ):) )
// Line 366 (ADDR  "- " )
	lea  rax, .LS000083[rip]
	push rax
// Line 366 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000432
	mov  rax, 0
	call fprintf
	jmp  .L000433
.L000432:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000433:
	push rax
	pop  rax
.L000429:
// Line 367 (= (LVAR 24) (MEMBER (DEREF (LVAR 24)) next 0))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 367 (MEMBER (DEREF (LVAR 24)) next 0)
// Line 367 (LVAR 24)
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
	jmp  .L000414
.L000415:
// Line 369 (CALL fprintf ((LVAR 8):(ADDR  ") " ):) )
// Line 369 (ADDR  ") " )
	lea  rax, .LS000084[rip]
	push rax
// Line 369 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000434
	mov  rax, 0
	call fprintf
	jmp  .L000435
.L000434:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000435:
	push rax
	pop  rax
// Line 370 (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) ptr_to 8):) )
// Line 370 (MEMBER (DEREF (LVAR 16)) ptr_to 8)
// Line 370 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 370 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000436
	mov  rax, 0
	call print_type
	jmp  .L000437
.L000436:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000437:
	push rax
	pop  rax
	jmp  .L000409
.L000408:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) ))))
// Line 371 (== (MEMBER (DEREF (LVAR 16)) ty 0)  7 )
// Line 371 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 371 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 371  7 
	push 7
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000438
// Line 382 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "struct " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)):)
// Line 372 (CALL fprintf ((LVAR 8):(ADDR  "struct " ):) )
// Line 372 (ADDR  "struct " )
	lea  rax, .LS000085[rip]
	push rax
// Line 372 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000440
	mov  rax, 0
	call fprintf
	jmp  .L000441
.L000440:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000441:
	push rax
	pop  rax
// Line 382 (IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):))
// Line 373 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 373 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000442
// Line 376 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):)
// Line 374 (CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) )
// Line 375 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24)
// Line 375 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 375 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 374 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32)
// Line 374 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 374 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 374 (ADDR  "<%.*s> " )
	lea  rax, .LS000086[rip]
	push rax
// Line 374 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000444
	mov  rax, 0
	call fprintf
	jmp  .L000445
.L000444:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000445:
	push rax
	pop  rax
	jmp  .L000443
.L000442:
// Line 382 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) ):(CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) ):(CALL fprintf ((LVAR 8):(ADDR  "}" ):) ):)
// Line 377 (CALL fprintf ((LVAR 8):(ADDR  "<> { " ):) )
// Line 377 (ADDR  "<> { " )
	lea  rax, .LS000087[rip]
	push rax
// Line 377 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000446
	mov  rax, 0
	call fprintf
	jmp  .L000447
.L000446:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000447:
	push rax
	pop  rax
// Line 378 (CALL print_struct_member ((LVAR 8):(MEMBER (DEREF (LVAR 16)) member 32):) )
// Line 378 (MEMBER (DEREF (LVAR 16)) member 32)
// Line 378 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  rax, [rax]
	push rax
// Line 378 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000448
	mov  rax, 0
	call print_struct_member
	jmp  .L000449
.L000448:
	sub  rsp, 8
	mov  rax, 0
	call print_struct_member
	add  rsp, 8
.L000449:
	push rax
	pop  rax
// Line 379 (CALL fprintf ((LVAR 8):(ADDR  "}" ):) )
// Line 379 (ADDR  "}" )
	lea  rax, .LS000088[rip]
	push rax
// Line 379 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000450
	mov  rax, 0
	call fprintf
	jmp  .L000451
.L000450:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000451:
	push rax
	pop  rax
.L000443:
	jmp  .L000439
.L000438:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):) (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) )))
// Line 382 (== (MEMBER (DEREF (LVAR 16)) ty 0)  8 )
// Line 382 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 382 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 382  8 
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000452
// Line 388 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL ):)
// Line 383 (CALL fprintf ((LVAR 8):(ADDR  "enum " ):) )
// Line 383 (ADDR  "enum " )
	lea  rax, .LS000089[rip]
	push rax
// Line 383 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000454
	mov  rax, 0
	call fprintf
	jmp  .L000455
.L000454:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000455:
	push rax
	pop  rax
// Line 388 (IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):) NULL )
// Line 384 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 384 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000456
// Line 388 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) ):)
// Line 385 (CALL fprintf ((LVAR 8):(ADDR  "<%.*s> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):) )
// Line 386 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24)
// Line 386 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 386 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 385 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32)
// Line 385 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 385 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 385 (ADDR  "<%.*s> " )
	lea  rax, .LS000090[rip]
	push rax
// Line 385 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000458
	mov  rax, 0
	call fprintf
	jmp  .L000459
.L000458:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000459:
	push rax
	pop  rax
	jmp  .L000457
.L000456:
.L000457:
	jmp  .L000453
.L000452:
// Line 396 (IF (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 ) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):) (CALL error ((ADDR  "print_type(): Unknown Type." ):) ))
// Line 388 (== (MEMBER (DEREF (LVAR 16)) ty 0)  9 )
// Line 388 (MEMBER (DEREF (LVAR 16)) ty 0)
// Line 388 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 388  9 
	push 9
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000460
// Line 394 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) ):(IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL ):)
// Line 389 (CALL fprintf ((LVAR 8):(ADDR  "enum_el " ):) )
// Line 389 (ADDR  "enum_el " )
	lea  rax, .LS000091[rip]
	push rax
// Line 389 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000462
	mov  rax, 0
	call fprintf
	jmp  .L000463
.L000462:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000463:
	push rax
	pop  rax
// Line 394 (IF (MEMBER (DEREF (LVAR 16)) tag_name 48) (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):) NULL )
// Line 390 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 390 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000464
// Line 394 (BLOCK(CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) ):)
// Line 391 (CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d> " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24):(MEMBER (DEREF (LVAR 16)) offset 40):) )
// Line 392 (MEMBER (DEREF (LVAR 16)) offset 40)
// Line 392 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	mov  eax, [rax]
	push rax
// Line 392 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) str 24)
// Line 392 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 392 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 391 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) tag_name 48)) len 32)
// Line 391 (MEMBER (DEREF (LVAR 16)) tag_name 48)
// Line 391 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 391 (ADDR  "<%.*s:%d> " )
	lea  rax, .LS000092[rip]
	push rax
// Line 391 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	pop  r8
	mov  rax, rsp
	and  rax, 15
	jnz  .L000466
	mov  rax, 0
	call fprintf
	jmp  .L000467
.L000466:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000467:
	push rax
	pop  rax
	jmp  .L000465
.L000464:
.L000465:
	jmp  .L000461
.L000460:
// Line 395 (CALL error ((ADDR  "print_type(): Unknown Type." ):) )
// Line 395 (ADDR  "print_type(): Unknown Type." )
	lea  rax, .LS000093[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000468
	mov  rax, 0
	call error
	jmp  .L000469
.L000468:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000469:
	push rax
	pop  rax
.L000461:
.L000453:
.L000439:
.L000409:
.L000403:
.L000397:
.L000393:
.L000389:
.L000385:
.L000381:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_struct_member
// Line 398 FDECL print_struct_member func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <MemberInfo>  member ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(= (LVAR 17)  1 ):(WHILE cond:(LVAR 16)body: (BLOCK(IF (! (LVAR 17)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 17)  0 ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(IF (MEMBER (DEREF (LVAR 16)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d>" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) str 24):(MEMBER (DEREF (LVAR 16)) offset 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "<>" ):) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):)):))
print_struct_member:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 399 (= (LVAR 17)  1 )
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 504  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 412 (WHILE cond:(LVAR 16)body: (BLOCK(IF (! (LVAR 17)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 17)  0 ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(IF (MEMBER (DEREF (LVAR 16)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d>" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) str 24):(MEMBER (DEREF (LVAR 16)) offset 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "<>" ):) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):))
.L000470:
// Line 400 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000471
// Line 412 (BLOCK(IF (! (LVAR 17)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL ):(= (LVAR 17)  0 ):(CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) type 16):) ):(IF (MEMBER (DEREF (LVAR 16)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d>" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) str 24):(MEMBER (DEREF (LVAR 16)) offset 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "<>" ):) )):(= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0)):)
// Line 403 (IF (! (LVAR 17)) (CALL fprintf ((LVAR 8):(ADDR  ", " ):) ) NULL )
// Line 401 (! (LVAR 17))
// Line 401 (LVAR 17)
	mov  rax, rbp
	sub  rax, 17
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000474
	mov  rax, 1
	jmp  .L000475
.L000474:
	mov  rax, 0
.L000475:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000472
// Line 402 (CALL fprintf ((LVAR 8):(ADDR  ", " ):) )
// Line 402 (ADDR  ", " )
	lea  rax, .LS000094[rip]
	push rax
// Line 402 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000476
	mov  rax, 0
	call fprintf
	jmp  .L000477
.L000476:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000477:
	push rax
	pop  rax
	jmp  .L000473
.L000472:
.L000473:
// Line 403 (= (LVAR 17)  0 )
	mov  rax, rbp
	sub  rax, 17
	push rax
// Line 504  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 404 (CALL print_type ((LVAR 8):(MEMBER (DEREF (LVAR 16)) type 16):) )
// Line 404 (MEMBER (DEREF (LVAR 16)) type 16)
// Line 404 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 404 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000478
	mov  rax, 0
	call print_type
	jmp  .L000479
.L000478:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000479:
	push rax
	pop  rax
// Line 410 (IF (MEMBER (DEREF (LVAR 16)) ident 8) (CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d>" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) str 24):(MEMBER (DEREF (LVAR 16)) offset 24):) ) (CALL fprintf ((LVAR 8):(ADDR  "<>" ):) ))
// Line 405 (MEMBER (DEREF (LVAR 16)) ident 8)
// Line 405 (LVAR 16)
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
	je   .L000480
// Line 406 (CALL fprintf ((LVAR 8):(ADDR  "<%.*s:%d>" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) str 24):(MEMBER (DEREF (LVAR 16)) offset 24):) )
// Line 407 (MEMBER (DEREF (LVAR 16)) offset 24)
// Line 407 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
// Line 406 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) str 24)
// Line 406 (MEMBER (DEREF (LVAR 16)) ident 8)
// Line 406 (LVAR 16)
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
// Line 406 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) ident 8)) len 32)
// Line 406 (MEMBER (DEREF (LVAR 16)) ident 8)
// Line 406 (LVAR 16)
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
// Line 406 (ADDR  "<%.*s:%d>" )
	lea  rax, .LS000095[rip]
	push rax
// Line 406 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	pop  r8
	mov  rax, rsp
	and  rax, 15
	jnz  .L000482
	mov  rax, 0
	call fprintf
	jmp  .L000483
.L000482:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000483:
	push rax
	pop  rax
	jmp  .L000481
.L000480:
// Line 409 (CALL fprintf ((LVAR 8):(ADDR  "<>" ):) )
// Line 409 (ADDR  "<>" )
	lea  rax, .LS000096[rip]
	push rax
// Line 409 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000484
	mov  rax, 0
	call fprintf
	jmp  .L000485
.L000484:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000485:
	push rax
	pop  rax
.L000481:
// Line 410 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 0))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 410 (MEMBER (DEREF (LVAR 16)) next 0)
// Line 410 (LVAR 16)
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
	jmp  .L000470
.L000471:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_enum_member
// Line 414 FDECL print_enum_member func ( * struct <MemberInfo>  member ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 9)  1 ):(WHILE cond:(LVAR 8)body: (BLOCK(IF (! (LVAR 9)) (CALL fprintf ((GVAR output):(ADDR  ", " ):) ) NULL ):(= (LVAR 9)  0 ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
print_enum_member:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 415 (= (LVAR 9)  1 )
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 504  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 423 (WHILE cond:(LVAR 8)body: (BLOCK(IF (! (LVAR 9)) (CALL fprintf ((GVAR output):(ADDR  ", " ):) ) NULL ):(= (LVAR 9)  0 ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):))
.L000486:
// Line 416 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000487
// Line 423 (BLOCK(IF (! (LVAR 9)) (CALL fprintf ((GVAR output):(ADDR  ", " ):) ) NULL ):(= (LVAR 9)  0 ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)
// Line 419 (IF (! (LVAR 9)) (CALL fprintf ((GVAR output):(ADDR  ", " ):) ) NULL )
// Line 417 (! (LVAR 9))
// Line 417 (LVAR 9)
	mov  rax, rbp
	sub  rax, 9
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000490
	mov  rax, 1
	jmp  .L000491
.L000490:
	mov  rax, 0
.L000491:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000488
// Line 418 (CALL fprintf ((GVAR output):(ADDR  ", " ):) )
// Line 418 (ADDR  ", " )
	lea  rax, .LS000097[rip]
	push rax
// Line 418 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000492
	mov  rax, 0
	call fprintf
	jmp  .L000493
.L000492:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000493:
	push rax
	pop  rax
	jmp  .L000489
.L000488:
.L000489:
// Line 419 (= (LVAR 9)  0 )
	mov  rax, rbp
	sub  rax, 9
	push rax
// Line 504  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 420 (CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) )
// Line 420 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 420 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 420 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000494
	mov  rax, 0
	call print_type
	jmp  .L000495
.L000494:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000495:
	push rax
	pop  rax
// Line 421 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 421 (MEMBER (DEREF (LVAR 8)) next 0)
// Line 421 (LVAR 8)
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
	jmp  .L000486
.L000487:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_locals
// Line 426 FDECL print_locals func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR locals)):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "//    %.*s  offset:%d  " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) offset 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):))
print_locals:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 427 (= (LVAR 8) (GVAR locals))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 427 (GVAR locals)
	lea  rax, locals[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 435 (WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "//    %.*s  offset:%d  " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) offset 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):))
.L000496:
// Line 428 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000497
// Line 435 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "//    %.*s  offset:%d  " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) offset 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)
// Line 429 (CALL fprintf ((GVAR output):(ADDR  "//    %.*s  offset:%d  " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):(MEMBER (DEREF (LVAR 8)) offset 24):) )
// Line 430 (MEMBER (DEREF (LVAR 8)) offset 24)
// Line 430 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
// Line 430 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24)
// Line 430 (MEMBER (DEREF (LVAR 8)) token 8)
// Line 430 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 429 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32)
// Line 429 (MEMBER (DEREF (LVAR 8)) token 8)
// Line 429 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 429 (ADDR  "//    %.*s  offset:%d  " )
	lea  rax, .LS000098[rip]
	push rax
// Line 429 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	pop  r8
	mov  rax, rsp
	and  rax, 15
	jnz  .L000498
	mov  rax, 0
	call fprintf
	jmp  .L000499
.L000498:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000499:
	push rax
	pop  rax
// Line 431 (CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) )
// Line 431 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 431 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 431 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000500
	mov  rax, 0
	call print_type
	jmp  .L000501
.L000500:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000501:
	push rax
	pop  rax
// Line 432 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 432 (ADDR  "\n" )
	lea  rax, .LS000099[rip]
	push rax
// Line 432 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000502
	mov  rax, 0
	call fprintf
	jmp  .L000503
.L000502:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000503:
	push rax
	pop  rax
// Line 433 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 433 (MEMBER (DEREF (LVAR 8)) next 0)
// Line 433 (LVAR 8)
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
	jmp  .L000496
.L000497:
// Line 435 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 435 (ADDR  "\n" )
	lea  rax, .LS000100[rip]
	push rax
// Line 435 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000504
	mov  rax, 0
	call fprintf
	jmp  .L000505
.L000504:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000505:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_globals
// Line 438 FDECL print_globals func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR globals)):(CALL fprintf ((GVAR output):(ADDR  "// Globals\n" ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) body 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
print_globals:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 439 (= (LVAR 8) (GVAR globals))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 439 (GVAR globals)
	lea  rax, globals[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 440 (CALL fprintf ((GVAR output):(ADDR  "// Globals\n" ):) )
// Line 440 (ADDR  "// Globals\n" )
	lea  rax, .LS000101[rip]
	push rax
// Line 440 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000506
	mov  rax, 0
	call fprintf
	jmp  .L000507
.L000506:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000507:
	push rax
	pop  rax
// Line 448 (WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) body 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):))
.L000508:
// Line 441 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000509
// Line 448 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL print_node ((MEMBER (DEREF (LVAR 8)) body 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)
// Line 442 (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) )
// Line 442 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24)
// Line 442 (MEMBER (DEREF (LVAR 8)) token 8)
// Line 442 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 442 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32)
// Line 442 (MEMBER (DEREF (LVAR 8)) token 8)
// Line 442 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 442 (ADDR  "// %.*s " )
	lea  rax, .LS000102[rip]
	push rax
// Line 442 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000510
	mov  rax, 0
	call fprintf
	jmp  .L000511
.L000510:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000511:
	push rax
	pop  rax
// Line 443 (CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) )
// Line 443 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 443 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 443 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000512
	mov  rax, 0
	call print_type
	jmp  .L000513
.L000512:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000513:
	push rax
	pop  rax
// Line 444 (CALL print_node ((MEMBER (DEREF (LVAR 8)) body 24):) )
// Line 444 (MEMBER (DEREF (LVAR 8)) body 24)
// Line 444 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000514
	mov  rax, 0
	call print_node
	jmp  .L000515
.L000514:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000515:
	push rax
	pop  rax
// Line 445 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 445 (ADDR  "\n" )
	lea  rax, .LS000103[rip]
	push rax
// Line 445 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000516
	mov  rax, 0
	call fprintf
	jmp  .L000517
.L000516:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000517:
	push rax
	pop  rax
// Line 446 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 446 (MEMBER (DEREF (LVAR 8)) next 0)
// Line 446 (LVAR 8)
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
	jmp  .L000508
.L000509:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_funcs
// Line 450 FDECL print_funcs func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR functions)):(CALL fprintf ((GVAR output):(ADDR  "// Functions\n" ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
print_funcs:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 451 (= (LVAR 8) (GVAR functions))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 451 (GVAR functions)
	lea  rax, functions[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 452 (CALL fprintf ((GVAR output):(ADDR  "// Functions\n" ):) )
// Line 452 (ADDR  "// Functions\n" )
	lea  rax, .LS000104[rip]
	push rax
// Line 452 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000518
	mov  rax, 0
	call fprintf
	jmp  .L000519
.L000518:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000519:
	push rax
	pop  rax
// Line 459 (WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):))
.L000520:
// Line 453 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000521
// Line 459 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)
// Line 454 (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24):) )
// Line 454 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) str 24)
// Line 454 (MEMBER (DEREF (LVAR 8)) token 8)
// Line 454 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 454 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 8)) len 32)
// Line 454 (MEMBER (DEREF (LVAR 8)) token 8)
// Line 454 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 454 (ADDR  "// %.*s " )
	lea  rax, .LS000105[rip]
	push rax
// Line 454 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000522
	mov  rax, 0
	call fprintf
	jmp  .L000523
.L000522:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000523:
	push rax
	pop  rax
// Line 455 (CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 16):) )
// Line 455 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 455 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 455 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000524
	mov  rax, 0
	call print_type
	jmp  .L000525
.L000524:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000525:
	push rax
	pop  rax
// Line 456 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 456 (ADDR  "\n" )
	lea  rax, .LS000106[rip]
	push rax
// Line 456 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000526
	mov  rax, 0
	call fprintf
	jmp  .L000527
.L000526:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000527:
	push rax
	pop  rax
// Line 457 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 457 (MEMBER (DEREF (LVAR 8)) next 0)
// Line 457 (LVAR 8)
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
	jmp  .L000520
.L000521:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_strings
// Line 461 FDECL print_strings func ( ) void 
//    
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// Stringss\n" ):) ):(= (LVAR 4)  0 ):(WHILE cond:(< (CALL vec_len ((GVAR strings):) ) (LVAR 4))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) str 24):) ):(++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ):)):))
print_strings:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 462 (CALL fprintf ((GVAR output):(ADDR  "// Stringss\n" ):) )
// Line 462 (ADDR  "// Stringss\n" )
	lea  rax, .LS000107[rip]
	push rax
// Line 462 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000528
	mov  rax, 0
	call fprintf
	jmp  .L000529
.L000528:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000529:
	push rax
	pop  rax
// Line 463 (= (LVAR 4)  0 )
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 463  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 469 (WHILE cond:(< (CALL vec_len ((GVAR strings):) ) (LVAR 4))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) str 24):) ):(++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ):))
.L000530:
// Line 464 (< (CALL vec_len ((GVAR strings):) ) (LVAR 4))
// Line 464 (CALL vec_len ((GVAR strings):) )
// Line 464 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000532
	mov  rax, 0
	call vec_len
	jmp  .L000533
.L000532:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000533:
	push rax
// Line 464 (LVAR 4)
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
	je   .L000531
// Line 469 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) str 24):) ):(++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ):)
// Line 465 (CALL fprintf ((GVAR output):(ADDR  "// \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) str 24):) )
// Line 466 (MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) str 24)
// Line 466 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)
// Line 466 (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))
// Line 466 (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4))
// Line 466 (MEMBER (DEREF (GVAR strings)) data 0)
// Line 466 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 466 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 465 (MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)) len 32)
// Line 465 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))) token 72)
// Line 465 (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4)))
// Line 465 (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 4))
// Line 465 (MEMBER (DEREF (GVAR strings)) data 0)
// Line 465 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 465 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 465 (ADDR  "// \"%.*s\"\n" )
	lea  rax, .LS000108[rip]
	push rax
// Line 465 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000534
	mov  rax, 0
	call fprintf
	jmp  .L000535
.L000534:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000535:
	push rax
	pop  rax
// Line 467 (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 )
// Line 467 (= (LVAR 4) (++ (LVAR 4)  1 ))
	mov  rax, rbp
	sub  rax, 4
	push rax
// Line 467 (++ (LVAR 4)  1 )
// Line 467 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 467  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 467  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000530
.L000531:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_structs
// Line 471 FDECL print_structs func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (GVAR tagnames)):(CALL fprintf ((GVAR output):(ADDR  "\n// Tagnames\n" ):) ):(WHILE cond:(LVAR 8)body: (BLOCK(IF (MEMBER (DEREF (LVAR 8)) ident 8) (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) str 24):) ) (CALL fprintf ((GVAR output):(ADDR  "// anonymus " ):) )):(IF (CALL is_struct ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "struct { " ):) ):(CALL print_struct_member ((GVAR output):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum { " ):) ):(CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):) NULL ))):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
print_structs:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 472 (= (LVAR 8) (GVAR tagnames))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 472 (GVAR tagnames)
	lea  rax, tagnames[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 473 (CALL fprintf ((GVAR output):(ADDR  "\n// Tagnames\n" ):) )
// Line 473 (ADDR  "\n// Tagnames\n" )
	lea  rax, .LS000109[rip]
	push rax
// Line 473 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000536
	mov  rax, 0
	call fprintf
	jmp  .L000537
.L000536:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000537:
	push rax
	pop  rax
// Line 492 (WHILE cond:(LVAR 8)body: (BLOCK(IF (MEMBER (DEREF (LVAR 8)) ident 8) (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) str 24):) ) (CALL fprintf ((GVAR output):(ADDR  "// anonymus " ):) )):(IF (CALL is_struct ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "struct { " ):) ):(CALL print_struct_member ((GVAR output):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum { " ):) ):(CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):) NULL ))):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):))
.L000538:
// Line 474 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000539
// Line 492 (BLOCK(IF (MEMBER (DEREF (LVAR 8)) ident 8) (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) str 24):) ) (CALL fprintf ((GVAR output):(ADDR  "// anonymus " ):) )):(IF (CALL is_struct ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "struct { " ):) ):(CALL print_struct_member ((GVAR output):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum { " ):) ):(CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):) NULL ))):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)
// Line 479 (IF (MEMBER (DEREF (LVAR 8)) ident 8) (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) str 24):) ) (CALL fprintf ((GVAR output):(ADDR  "// anonymus " ):) ))
// Line 475 (MEMBER (DEREF (LVAR 8)) ident 8)
// Line 475 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000540
// Line 476 (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) str 24):) )
// Line 476 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) str 24)
// Line 476 (MEMBER (DEREF (LVAR 8)) ident 8)
// Line 476 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 476 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 8)) len 32)
// Line 476 (MEMBER (DEREF (LVAR 8)) ident 8)
// Line 476 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 476 (ADDR  "// %.*s " )
	lea  rax, .LS000110[rip]
	push rax
// Line 476 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000542
	mov  rax, 0
	call fprintf
	jmp  .L000543
.L000542:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000543:
	push rax
	pop  rax
	jmp  .L000541
.L000540:
// Line 478 (CALL fprintf ((GVAR output):(ADDR  "// anonymus " ):) )
// Line 478 (ADDR  "// anonymus " )
	lea  rax, .LS000111[rip]
	push rax
// Line 478 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000544
	mov  rax, 0
	call fprintf
	jmp  .L000545
.L000544:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000545:
	push rax
	pop  rax
.L000541:
// Line 490 (IF (CALL is_struct ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "struct { " ):) ):(CALL print_struct_member ((GVAR output):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum { " ):) ):(CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):) NULL )))
// Line 479 (CALL is_struct ((MEMBER (DEREF (LVAR 8)) type 16):) )
// Line 479 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 479 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000548
	mov  rax, 0
	call is_struct
	jmp  .L000549
.L000548:
	sub  rsp, 8
	mov  rax, 0
	call is_struct
	add  rsp, 8
.L000549:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000546
// Line 483 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "struct { " ):) ):(CALL print_struct_member ((GVAR output):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):)
// Line 480 (CALL fprintf ((GVAR output):(ADDR  "struct { " ):) )
// Line 480 (ADDR  "struct { " )
	lea  rax, .LS000112[rip]
	push rax
// Line 480 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000550
	mov  rax, 0
	call fprintf
	jmp  .L000551
.L000550:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000551:
	push rax
	pop  rax
// Line 481 (CALL print_struct_member ((GVAR output):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) )
// Line 481 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32)
// Line 481 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 481 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 481 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000552
	mov  rax, 0
	call print_struct_member
	jmp  .L000553
.L000552:
	sub  rsp, 8
	mov  rax, 0
	call print_struct_member
	add  rsp, 8
.L000553:
	push rax
	pop  rax
// Line 482 (CALL fprintf ((GVAR output):(ADDR  "}\n" ):) )
// Line 482 (ADDR  "}\n" )
	lea  rax, .LS000113[rip]
	push rax
// Line 482 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000554
	mov  rax, 0
	call fprintf
	jmp  .L000555
.L000554:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000555:
	push rax
	pop  rax
	jmp  .L000547
.L000546:
// Line 490 (IF (CALL is_enum ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum { " ):) ):(CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):) (IF (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):) NULL ))
// Line 483 (CALL is_enum ((MEMBER (DEREF (LVAR 8)) type 16):) )
// Line 483 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 483 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000558
	mov  rax, 0
	call is_enum
	jmp  .L000559
.L000558:
	sub  rsp, 8
	mov  rax, 0
	call is_enum
	add  rsp, 8
.L000559:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000556
// Line 487 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum { " ):) ):(CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) ):(CALL fprintf ((GVAR output):(ADDR  "}\n" ):) ):)
// Line 484 (CALL fprintf ((GVAR output):(ADDR  "enum { " ):) )
// Line 484 (ADDR  "enum { " )
	lea  rax, .LS000114[rip]
	push rax
// Line 484 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000560
	mov  rax, 0
	call fprintf
	jmp  .L000561
.L000560:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000561:
	push rax
	pop  rax
// Line 485 (CALL print_enum_member ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32):) )
// Line 485 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) member 32)
// Line 485 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 485 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
	mov  rax, rsp
	and  rax, 15
	jnz  .L000562
	mov  rax, 0
	call print_enum_member
	jmp  .L000563
.L000562:
	sub  rsp, 8
	mov  rax, 0
	call print_enum_member
	add  rsp, 8
.L000563:
	push rax
	pop  rax
// Line 486 (CALL fprintf ((GVAR output):(ADDR  "}\n" ):) )
// Line 486 (ADDR  "}\n" )
	lea  rax, .LS000115[rip]
	push rax
// Line 486 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000564
	mov  rax, 0
	call fprintf
	jmp  .L000565
.L000564:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000565:
	push rax
	pop  rax
	jmp  .L000557
.L000556:
// Line 490 (IF (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):) NULL )
// Line 487 (CALL is_enum_el ((MEMBER (DEREF (LVAR 8)) type 16):) )
// Line 487 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 487 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000568
	mov  rax, 0
	call is_enum_el
	jmp  .L000569
.L000568:
	sub  rsp, 8
	mov  rax, 0
	call is_enum_el
	add  rsp, 8
.L000569:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000566
// Line 490 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) ):)
// Line 488 (CALL fprintf ((GVAR output):(ADDR  "enum_el { %d }\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40):) )
// Line 488 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) type 16)) offset 40)
// Line 488 (MEMBER (DEREF (LVAR 8)) type 16)
// Line 488 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 488 (ADDR  "enum_el { %d }\n" )
	lea  rax, .LS000116[rip]
	push rax
// Line 488 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000570
	mov  rax, 0
	call fprintf
	jmp  .L000571
.L000570:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000571:
	push rax
	pop  rax
	jmp  .L000567
.L000566:
.L000567:
.L000557:
.L000547:
// Line 490 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 490 (MEMBER (DEREF (LVAR 8)) next 0)
// Line 490 (LVAR 8)
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
	jmp  .L000538
.L000539:
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_typedefs
// Line 494 FDECL print_typedefs func ( ) void 
//    
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\n// Typedef\n" ):) ):(= (LVAR 8) (GVAR tdef_names)):(WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)):))
print_typedefs:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 495 (CALL fprintf ((GVAR output):(ADDR  "\n// Typedef\n" ):) )
// Line 495 (ADDR  "\n// Typedef\n" )
	lea  rax, .LS000117[rip]
	push rax
// Line 495 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000572
	mov  rax, 0
	call fprintf
	jmp  .L000573
.L000572:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000573:
	push rax
	pop  rax
// Line 496 (= (LVAR 8) (GVAR tdef_names))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 496 (GVAR tdef_names)
	lea  rax, tdef_names[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 503 (WHILE cond:(LVAR 8)body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):))
.L000574:
// Line 497 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000575
// Line 503 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) str 24):) ):(CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)):)
// Line 498 (CALL fprintf ((GVAR output):(ADDR  "// %.*s " ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) str 24):) )
// Line 498 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) str 24)
// Line 498 (MEMBER (DEREF (LVAR 8)) ident 16)
// Line 498 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 498 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) ident 16)) len 32)
// Line 498 (MEMBER (DEREF (LVAR 8)) ident 16)
// Line 498 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 498 (ADDR  "// %.*s " )
	lea  rax, .LS000118[rip]
	push rax
// Line 498 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000576
	mov  rax, 0
	call fprintf
	jmp  .L000577
.L000576:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000577:
	push rax
	pop  rax
// Line 499 (CALL print_type ((GVAR output):(MEMBER (DEREF (LVAR 8)) type 8):) )
// Line 499 (MEMBER (DEREF (LVAR 8)) type 8)
// Line 499 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 499 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000578
	mov  rax, 0
	call print_type
	jmp  .L000579
.L000578:
	sub  rsp, 8
	mov  rax, 0
	call print_type
	add  rsp, 8
.L000579:
	push rax
	pop  rax
// Line 500 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 500 (ADDR  "\n" )
	lea  rax, .LS000119[rip]
	push rax
// Line 500 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000580
	mov  rax, 0
	call fprintf
	jmp  .L000581
.L000580:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000581:
	push rax
	pop  rax
// Line 501 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 501 (MEMBER (DEREF (LVAR 8)) next 0)
// Line 501 (LVAR 8)
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
	jmp  .L000574
.L000575:
	mov  rsp, rbp
	pop  rbp
	ret

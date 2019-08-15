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
// <int>[label_count][=][0][;]
// <typedef><struct>[Loop][Loop][;]
// <struct>[Loop][{][Loop][*][next][;]
// <char>[*][continue_dest][;]
// <char>[*][break_dest][;]
// [Node][*][node][;]
// [}][;]
// [Loop][*][labels][=][(][(]<void>[*][)][0][)][;]
// <bool>[is_binary_op][(][NodeKind][kind][)][{]<switch>[(][kind][)][{]<case>[ND_ADD][:]<case>[ND_SUB][:]<case>[ND_MUL][:]<case>[ND_DIV][:]<case>[ND_EQ][:]<case>[ND_NEQ][:]<case>[ND_GE][:]<case>[ND_GT][:]<case>[ND_LAND][:]<case>[ND_LOR][:]<case>[ND_AND][:]<case>[ND_OR][:]<case>[ND_XOR][:]<case>[ND_SHR][:]<case>[ND_SHL][:]<return>[1][;]
// [}]<return>[0][;]
// [}]<bool>[is_expr][(][NodeKind][kind][)][{]<switch>[(][kind][)][{]<case>[ND_IF][:]<case>[ND_WHILE][:]<case>[ND_BLOCK][:]<case>[ND_FOR][:]<case>[ND_SWITCH][:]<case>[ND_CASE][:]<case>[ND_DEFAULT][:]<case>[ND_BREAK][:]<case>[ND_CONTINUE][:]<case>[ND_RETURN][:]<case>[ND_FDECL][:]<return>[0][;]
// [}]<return>[1][;]
// [}]<char>[*][new_label][(][)][{]<char>[*][label][=][(]<char>[*][)][malloc][(][10][)][;]
// <if>[(][!][label][)][error][(]"Could not allocate memmory."[)][;]
// [sprintf][(][label][,]".L%06d"[,][label_count][++][)][;]
// <return>[label][;]
// [}]<void>[emit_label][(]<char>[*][label][)][{][fprintf][(][output][,]"%s:\n"[,][label][)][;]
// [}]<void>[emit_jmp][(]<char>[*][label][)][{][fprintf][(][output][,]"\tjmp  %s\n"[,][label][)][;]
// [}]<void>[push_loop][(][)][{]<char>[*][continue_label][=][new_label][(][)][;]
// <char>[*][break_label][=][new_label][(][)][;]
// [Loop][*][label][=][(][Loop][*][)][calloc][(][1][,]<sizeof>[(][Loop][)][)][;]
// [label][->][break_dest][=][break_label][;]
// [label][->][continue_dest][=][continue_label][;]
// [label][->][next][=][labels][;]
// [labels][=][label][;]
// [}]<void>[push_loop_switch][(][Node][*][node][)][{]<char>[*][break_label][=][new_label][(][)][;]
// [Loop][*][label][=][(][Loop][*][)][calloc][(][1][,]<sizeof>[(][Loop][)][)][;]
// [label][->][break_dest][=][break_label][;]
// [label][->][continue_dest][=][(][(]<void>[*][)][0][)][;]
// [label][->][node][=][node][;]
// [label][->][next][=][labels][;]
// [labels][=][label][;]
// [}]<void>[pop_loop][(][)][{][labels][=][labels][->][next][;]
// [}]<char>[*][get_continue][(][Token][*][token][)][{]<if>[(][!][labels][)][error_at_token][(][token][,]"a continue statement may only be used within a loop."[)][;]
// <return>[labels][->][continue_dest][;]
// [}]<char>[*][get_break][(][Token][*][token][)][{]<if>[(][!][labels][)][error_at_token][(][token][,]"a break statement may only be used within a loop or switch."[)][;]
// <return>[labels][->][break_dest][;]
// [}][Node][*][get_inner_switch][(][)][{][Loop][*][cursor][=][labels][;]
// <while>[(][cursor][&&][!][cursor][->][node][)][cursor][=][cursor][->][next][;]
// <if>[(][!][cursor][)][error][(]"get_inner_switch(): Internal error."[)][;]
// <return>[cursor][->][node][;]
// [}]<int>[reg_size][(][Type][*][type][)][{]<int>[data_size][=][sizeof_type][(][type][)][;]
// <if>[(][data_size][==][8][)]<return>[0][;]
// <else><if>[(][data_size][==][4][)]<return>[1][;]
// <else><if>[(][data_size][==][1][)]<return>[3][;]
// <else>[error][(]"Internal error in reg_size(): Illegal data size (%d bytes)."[,][data_size][)][;]
// [}]<void>[emit_deref_rax][(][Node][*][node][)][{]<switch>[(][reg_size][(][type][(][node][)][)][)][{]<case>[0][:][fprintf][(][output][,]"\tmov  rax, [rax]\n"[)][;]
// <break>[;]
// <case>[1][:][fprintf][(][output][,]"\tmov  eax, [rax]\n"[)][;]
// <break>[;]
// <case>[3][:][fprintf][(][output][,]"\tmovsx eax, BYTE PTR [rax]\n"[)][;]
// <break>[;]
// <default>[:][error_at_node][(][node][,]"Size of the variable is unknown."[)][;]
// [}][}]<void>[emit_lvar_addr][(][LVar][*][lvar][)][{][fprintf][(][output][,]"\tmov  rax, rbp\n"[)][;]
// [fprintf][(][output][,]"\tsub  rax, %d\n"[,][lvar][->][offset][)][;]
// [}]<void>[gen_lval_to_rax][(][Node][*][node][)][{]<if>[(][node][->][kind][==][ND_LVAR][)][{][emit_lvar_addr][(][node][->][lvar][)][;]
// <return>[;]
// [}]<else><if>[(][node][->][kind][==][ND_GVAR][)][{][fprintf][(][output][,]"\tlea  rax, %.*s[rip]\n"[,][node][->][token][->][len][,][node][->][token][->][str][)][;]
// <return>[;]
// [}]<else><if>[(][node][->][kind][==][ND_DEREF][)][{][gen][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpop rax\n"[)][;]
// [}]<else><if>[(][node][->][kind][==][ND_STR][)][{][fprintf][(][output][,]"\tlea  rax, .LS%06d[rip]\n"[,][node][->][int_val][)][;]
// <return>[;]
// [}]<else><if>[(][node][->][kind][==][ND_MEMBER][)][{][gen_lval_to_rax][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tadd  rax, %d\n"[,][node][->][offset][)][;]
// [}]<else>[{][error_at_node][(][node][,]"Expected l-value."[)][;]
// [}][}]<void>[gen_if][(][Node][*][node][)][{]<char>[*][else_str][=][new_label][(][)][;]
// <char>[*][end_str][=][new_label][(][)][;]
// [gen][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  rax, 0\n"[)][;]
// [fprintf][(][output][,]"\tje   %s\n"[,][else_str][)][;]
// [gen_stmt][(][node][->][rhs][)][;]
// [emit_jmp][(][end_str][)][;]
// [emit_label][(][else_str][)][;]
// [gen_stmt][(][node][->][xhs][)][;]
// [emit_label][(][end_str][)][;]
// [}]<void>[gen_while][(][Node][*][node][)][{][push_loop][(][)][;]
// <char>[*][cond_str][=][get_continue][(][node][->][token][)][;]
// <char>[*][end_str][=][get_break][(][node][->][token][)][;]
// [emit_label][(][cond_str][)][;]
// [gen][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  rax, 0\n"[)][;]
// [fprintf][(][output][,]"\tje   %s\n"[,][end_str][)][;]
// [gen_stmt][(][node][->][rhs][)][;]
// [emit_jmp][(][cond_str][)][;]
// [emit_label][(][end_str][)][;]
// [pop_loop][(][)][;]
// [}]<void>[gen_for][(][Node][*][node][)][{][push_loop][(][)][;]
// <char>[*][loop_label][=][new_label][(][)][;]
// <char>[*][post_label][=][get_continue][(][node][->][token][)][;]
// <char>[*][end_label][=][get_break][(][node][->][token][)][;]
// [gen][(][node][->][lhs][)][;]
// [emit_label][(][loop_label][)][;]
// [gen][(][node][->][rhs][)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  rax, 0\n"[)][;]
// [fprintf][(][output][,]"\tje   %s\n"[,][end_label][)][;]
// [gen_stmt][(][node][->][nodes][->][data][[][0][]][)][;]
// [emit_label][(][post_label][)][;]
// [gen][(][node][->][xhs][)][;]
// <if>[(][node][->][xhs][)][fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [emit_jmp][(][loop_label][)][;]
// [emit_label][(][end_label][)][;]
// [pop_loop][(][)][;]
// [}]<void>[gen_block][(][Node][*][node][)][{]<if>[(][!][node][)]<return>[;]
// [Vector][*][vec][=][node][->][nodes][;]
// <int>[len][=][vec_len][(][vec][)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][gen_stmt][(][vec][->][data][[][i][]][)][;]
// [}]<void>[gen_call][(][Node][*][node][)][{]<int>[len][=][vec_len][(][node][->][nodes][)][;]
// [Node][*][*][args][=][node][->][nodes][->][data][;]
// <for>[(]<int>[i][=][len][-][1][;]
// [i][>=][0][;]
// [i][--][)][{][gen][(][args][[][i][]][)][;]
// [}]<for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][{][fprintf][(][output][,]"\tpop  %s\n"[,][registers][[][0][]][[][i][]][)][;]
// [}][Token][*][name][=][node][->][lhs][->][token][;]
// <char>[*][label1][=][new_label][(][)][;]
// <char>[*][label2][=][new_label][(][)][;]
// [fprintf][(][output][,]"\tmov  rax, rsp\n"[)][;]
// [fprintf][(][output][,]"\tand  rax, 15\n"[)][;]
// [fprintf][(][output][,]"\tjnz  %s\n"[,][label1][)][;]
// [fprintf][(][output][,]"\tmov  rax, 0\n"[)][;]
// [fprintf][(][output][,]"\tcall %.*s\n"[,][name][->][len][,][name][->][str][)][;]
// [emit_jmp][(][label2][)][;]
// [emit_label][(][label1][)][;]
// [fprintf][(][output][,]"\tsub  rsp, 8\n"[)][;]
// [fprintf][(][output][,]"\tmov  rax, 0\n"[)][;]
// [fprintf][(][output][,]"\tcall %.*s\n"[,][name][->][len][,][name][->][str][)][;]
// [fprintf][(][output][,]"\tadd  rsp, 8\n"[)][;]
// [emit_label][(][label2][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// [}]<void>[gen_fdecl][(][Node][*][node][)][{]<if>[(][!][node][->][lhs][)]<return>[;]
// [fprintf][(][output][,]"%.*s:\n"[,][node][->][token][->][len][,][node][->][token][->][str][)][;]
// [fprintf][(][output][,]"\tpush rbp\n"[)][;]
// [fprintf][(][output][,]"\tmov  rbp, rsp\n"[)][;]
// <int>[offset][=][(][node][->][offset][&][(][-][16][)][)][+][16][;]
// [fprintf][(][output][,]"\tsub  rsp, %d\n"[,][offset][)][;]
// <int>[len][=][vec_len][(][node][->][nodes][)][;]
// [Node][*][*][params][=][node][->][nodes][->][data][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][{][fprintf][(][output][,]"\tmov  [rbp - %d], %s\n"[,][params][[][i][]][->][lvar][->][offset][,][registers][[][reg_size][(][type][(][params][[][i][]][)][)][]][[][i][]][)][;]
// [}][gen_block][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tmov  rsp, rbp\n"[)][;]
// [fprintf][(][output][,]"\tpop  rbp\n"[)][;]
// [fprintf][(][output][,]"\tret\n"[)][;]
// [}]<void>[gen_stmt][(][Node][*][node][)][{]<if>[(][node][)][{][gen][(][node][)][;]
// <if>[(][is_expr][(][node][->][kind][)][)][fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [}][}]<char>[reg_l][[][4][]][[][4][]][=][{]"rax"[,]"eax"[,]"ax"[,]"al"[}][;]
// <char>[reg_r][[][4][]][[][4][]][=][{]"rdi"[,]"edi"[,]"di"[,]"dil"[}][;]
// <void>[gen_land][(][Node][*][node][)][{][Type][*][l_ty][=][type][(][node][->][lhs][)][;]
// [Type][*][r_ty][=][type][(][node][->][rhs][)][;]
// <int>[reg_mode][;]
// <char>[*][false_label][=][new_label][(][)][;]
// <char>[*][exit_label][=][new_label][(][)][;]
// [gen][(][node][->][lhs][)][;]
// <if>[(][is_aryth][(][l_ty][)][)][{][reg_mode][=][1][;]
// [}]<else><if>[(][is_ptr][(][l_ty][)][)][{][reg_mode][=][0][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  %s, 0\n"[,][reg_l][[][reg_mode][]][)][;]
// [fprintf][(][output][,]"\tje   %s\n"[,][false_label][)][;]
// [gen][(][node][->][rhs][)][;]
// <if>[(][is_aryth][(][r_ty][)][)][{][reg_mode][=][1][;]
// [}]<else><if>[(][is_ptr][(][r_ty][)][)][{][reg_mode][=][0][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  %s, 0\n"[,][reg_l][[][reg_mode][]][)][;]
// [fprintf][(][output][,]"\tje   %s\n"[,][false_label][)][;]
// [fprintf][(][output][,]"\tmov  rax, 1\n"[)][;]
// [emit_jmp][(][exit_label][)][;]
// [emit_label][(][false_label][)][;]
// [fprintf][(][output][,]"\tmov  rax, 0\n"[)][;]
// [emit_label][(][exit_label][)][;]
// [}]<void>[gen_lor][(][Node][*][node][)][{][Type][*][l_ty][=][type][(][node][->][lhs][)][;]
// [Type][*][r_ty][=][type][(][node][->][rhs][)][;]
// <int>[reg_mode][;]
// <char>[*][true_label][=][new_label][(][)][;]
// <char>[*][exit_label][=][new_label][(][)][;]
// [gen][(][node][->][lhs][)][;]
// <if>[(][is_aryth][(][l_ty][)][)][{][reg_mode][=][1][;]
// [}]<else><if>[(][is_ptr][(][l_ty][)][)][{][reg_mode][=][0][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  %s, 0\n"[,][reg_l][[][reg_mode][]][)][;]
// [fprintf][(][output][,]"\tjne  %s\n"[,][true_label][)][;]
// [gen][(][node][->][rhs][)][;]
// <if>[(][is_aryth][(][r_ty][)][)][{][reg_mode][=][1][;]
// [}]<else><if>[(][is_ptr][(][r_ty][)][)][{][reg_mode][=][0][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  %s, 0\n"[,][reg_l][[][reg_mode][]][)][;]
// [fprintf][(][output][,]"\tjne  %s\n"[,][true_label][)][;]
// [fprintf][(][output][,]"\tmov  rax, 0\n"[)][;]
// [emit_jmp][(][exit_label][)][;]
// [emit_label][(][true_label][)][;]
// [fprintf][(][output][,]"\tmov  rax, 1\n"[)][;]
// [emit_label][(][exit_label][)][;]
// [}]<void>[gen_lnot][(][Node][*][node][)][{][Type][*][l_ty][=][type][(][node][->][lhs][)][;]
// <int>[reg_mode][;]
// <char>[*][false_label][=][new_label][(][)][;]
// <char>[*][exit_label][=][new_label][(][)][;]
// [gen][(][node][->][lhs][)][;]
// <if>[(][is_aryth][(][l_ty][)][)][{][reg_mode][=][1][;]
// [}]<else><if>[(][is_ptr][(][l_ty][)][)][{][reg_mode][=][0][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tcmp  %s, 0\n"[,][reg_l][[][reg_mode][]][)][;]
// [fprintf][(][output][,]"\tjne  %s\n"[,][false_label][)][;]
// [fprintf][(][output][,]"\tmov  rax, 1\n"[)][;]
// [emit_jmp][(][exit_label][)][;]
// [emit_label][(][false_label][)][;]
// [fprintf][(][output][,]"\tmov  rax, 0\n"[)][;]
// [emit_label][(][exit_label][)][;]
// [}]<void>[gen][(][Node][*][node][)][{]<if>[(][!][node][)]<return>[;]
// [fprintf][(][output][,]"// Line %d "[,][get_line][(][node][->][token][->][str][,][source_text][)][)][;]
// [print_node][(][node][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [Node][*][parent][;]
// <char>[*][label][;]
// <int>[i][;]
// [Type][*][l_ty][;]
// [Type][*][r_ty][;]
// <if>[(][is_binary_op][(][node][->][kind][)][)][{][l_ty][=][type][(][node][->][lhs][)][;]
// [r_ty][=][type][(][node][->][rhs][)][;]
// <int>[reg_mode][;]
// <if>[(][node][->][kind][==][ND_LAND][)][{][gen_land][(][node][)][;]
// [fprintf][(][output][,]"\tpush  rax\n"[)][;]
// <return>[;]
// [}]<if>[(][node][->][kind][==][ND_LOR][)][{][gen_lor][(][node][)][;]
// [fprintf][(][output][,]"\tpush  rax\n"[)][;]
// <return>[;]
// [}][gen][(][node][->][lhs][)][;]
// [gen][(][node][->][rhs][)][;]
// [fprintf][(][output][,]"\tpop  rdi\n"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// <char>[*][cmp_op][;]
// <switch>[(][node][->][kind][)][{]<case>[ND_ADD][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\tadd  rax, rdi\n"[)][;]
// [}]<else><if>[(][is_ptr][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\timul rdi, %d\n"[,][sizeof_type][(][l_ty][->][ptr_to][)][)][;]
// [fprintf][(][output][,]"\tadd  rax, rdi\n"[)][;]
// [}]<else><if>[(][is_aryth][(][l_ty][)][&&][is_ptr][(][r_ty][)][)][{][fprintf][(][output][,]"\timul rax, %d\n"[,][sizeof_type][(][r_ty][->][ptr_to][)][)][;]
// [fprintf][(][output][,]"\tadd  rax, rdi\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// <break>[;]
// <case>[ND_SUB][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\tsub  rax, rdi\n"[)][;]
// [}]<else><if>[(][is_ptr][(][l_ty][)][&&][is_ptr][(][r_ty][)][)][{][fprintf][(][output][,]"\tsub  rax, rdi\n"[)][;]
// [fprintf][(][output][,]"\tcqo\n"[)][;]
// [fprintf][(][output][,]"\tmov  rdi, %d\n"[,][sizeof_type][(][l_ty][->][ptr_to][)][)][;]
// [fprintf][(][output][,]"\tidiv rdi\n"[)][;]
// [}]<else><if>[(][is_ptr][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\timul rdi, %d\n"[,][sizeof_type][(][l_ty][->][ptr_to][)][)][;]
// [fprintf][(][output][,]"\tsub  rax, rdi\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// <break>[;]
// <case>[ND_MUL][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\timul rax, rdi\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Not an arythmetic type)"[)][;]
// <break>[;]
// <case>[ND_DIV][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\tcqo\n"[)][;]
// [fprintf][(][output][,]"\tidiv rax, rdi\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Not an arythmetic type)"[)][;]
// <break>[;]
// <case>[ND_AND][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\tand  rax, rdi\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Not an arythmetic type)"[)][;]
// <break>[;]
// <case>[ND_OR][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\tor   rax, rdi\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Not an arythmetic type)"[)][;]
// <break>[;]
// <case>[ND_XOR][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\txor  rax, rdi\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Not an arythmetic type)"[)][;]
// <break>[;]
// <case>[ND_SHR][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\tmov  cl , dil\n"[)][;]
// [fprintf][(][output][,]"\tshr  rax, cl\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Not an arythmetic type)"[)][;]
// <break>[;]
// <case>[ND_SHL][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][fprintf][(][output][,]"\tmov  cl , dil\n"[)][;]
// [fprintf][(][output][,]"\tshl  rax, cl\n"[)][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Not an arythmetic type)"[)][;]
// <break>[;]
// <case>[ND_EQ][:]<case>[ND_NEQ][:]<case>[ND_GE][:]<case>[ND_GT][:]<if>[(][is_aryth][(][l_ty][)][&&][is_aryth][(][r_ty][)][)][{][reg_mode][=][1][;]
// [}]<else><if>[(][is_ptr][(][l_ty][)][&&][is_ptr][(][r_ty][)][)][{][reg_mode][=][0][;]
// [}]<else>[error_at_node][(][node][,]"Illegal operation. (Type mismatch)"[)][;]
// <switch>[(][node][->][kind][)][{]<case>[ND_EQ][:][cmp_op][=]"e"[;]
// <break>[;]
// <case>[ND_NEQ][:][cmp_op][=]"ne"[;]
// <break>[;]
// <case>[ND_GE][:][cmp_op][=]"ge"[;]
// <break>[;]
// <case>[ND_GT][:][cmp_op][=]"g"[;]
// <break>[;]
// [}][fprintf][(][output][,]"\tcmp  %s, %s\n"[,][reg_l][[][reg_mode][]][,][reg_r][[][reg_mode][]][)][;]
// [fprintf][(][output][,]"\tset%s al\n"[,][cmp_op][)][;]
// [fprintf][(][output][,]"\tmovzb %s, al\n"[,][reg_l][[][reg_mode][]][)][;]
// <break>[;]
// <default>[:][error_at_token][(][node][->][token][,]"gen(): Unimplemented binary op."[)][;]
// [}][fprintf][(][output][,]"\tpush rax\n"[)][;]
// <return>[;]
// [}]<switch>[(][node][->][kind][)][{]<case>[ND_IF][:][gen_if][(][node][)][;]
// <return>[;]
// <case>[ND_WHILE][:][gen_while][(][node][)][;]
// <return>[;]
// <case>[ND_FOR][:][gen_for][(][node][)][;]
// <return>[;]
// <case>[ND_SWITCH][:][push_loop_switch][(][node][)][;]
// [emit_lvar_addr][(][node][->][lvar][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// [gen][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpop  rdi\n"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tmov  [rax], edi\n"[)][;]
// [gen_stmt][(][node][->][rhs][)][;]
// [emit_jmp][(][get_break][(][(][(]<void>[*][)][0][)][)][)][;]
// <for>[(][i][=][0][;]
// [i][<][vec_len][(][node][->][nodes][)][;]
// [i][++][)][{][parent][=][node][->][nodes][->][data][[][i][]][;]
// [emit_label][(][parent][->][label][)][;]
// [gen_stmt][(][parent][)][;]
// [}][emit_label][(][get_break][(][(][(]<void>[*][)][0][)][)][)][;]
// [pop_loop][(][)][;]
// <return>[;]
// <case>[ND_BLOCK][:][gen_block][(][node][)][;]
// <return>[;]
// <case>[ND_RETURN][:]<if>[(][node][->][lhs][)][{][gen][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [}][fprintf][(][output][,]"\tmov  rsp, rbp\n"[)][;]
// [fprintf][(][output][,]"\tpop  rbp\n"[)][;]
// [fprintf][(][output][,]"\tret\n"[)][;]
// <return>[;]
// <case>[ND_CASE][:][parent][=][get_inner_switch][(][)][;]
// [gen][(][node][->][lhs][)][;]
// [emit_lvar_addr][(][parent][->][lvar][)][;]
// [fprintf][(][output][,]"\tmov  eax, [rax]\n"[)][;]
// [fprintf][(][output][,]"\tpop  rdi\n"[)][;]
// [fprintf][(][output][,]"\tcmp  eax, edi\n"[)][;]
// [label][=][new_label][(][)][;]
// [fprintf][(][output][,]"\tje   %s\n"[,][label][)][;]
// [node][->][rhs][->][label][=][label][;]
// [vec_push][(][parent][->][nodes][,][node][->][rhs][)][;]
// <return>[;]
// <case>[ND_DEFAULT][:][label][=][new_label][(][)][;]
// [emit_jmp][(][label][)][;]
// [node][->][lhs][->][label][=][label][;]
// [vec_push][(][parent][->][nodes][,][node][->][lhs][)][;]
// <return>[;]
// <case>[ND_BREAK][:][emit_jmp][(][get_break][(][node][->][token][)][)][;]
// <return>[;]
// <case>[ND_CONTINUE][:][emit_jmp][(][get_continue][(][node][->][token][)][)][;]
// <return>[;]
// <case>[ND_NUM][:][fprintf][(][output][,]"\tpush %d\n"[,][node][->][int_val][)][;]
// <return>[;]
// <case>[ND_LVAR][:]<case>[ND_GVAR][:][gen_lval_to_rax][(][node][)][;]
// [emit_deref_rax][(][node][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// <return>[;]
// <case>[ND_MEMBER][:][gen_lval_to_rax][(][node][)][;]
// [emit_deref_rax][(][node][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// <return>[;]
// <case>[ND_CAST][:][gen][(][node][->][lhs][)][;]
// <return>[;]
// <case>[ND_ASSIGN][:][l_ty][=][type][(][node][->][lhs][)][;]
// [r_ty][=][type][(][node][->][rhs][)][;]
// <if>[(][is_array_of_char][(][l_ty][)][&&][is_array_of_char][(][r_ty][)][)][{]<if>[(][node][->][lhs][->][kind][!=][ND_LVAR][||][node][->][rhs][->][kind][!=][ND_STR][)][error_at_node][(][node][,]"Invalid assignment."[)][;]
// <int>[offset][=][node][->][lhs][->][lvar][->][offset][;]
// <char>[*][p][=][node][->][rhs][->][label][;]
// <while>[(][*][p][)][{][fprintf][(][output][,]"\tmov  BYTE PTR [rbp - %d], %d\n"[,][offset][--][,][*][p][++][)][;]
// [}][fprintf][(][output][,]"\tmov  BYTE PTR [rbp - %d], 0\n"[,][offset][)][;]
// [fprintf][(][output][,]"\tpush rdi\n"[)][;]
// <return>[;]
// [}]<else><if>[(][!][is_assignable_type][(][l_ty][,][r_ty][)][)][{][error_types][(][l_ty][,][r_ty][)][;]
// [error_at_node][(][node][->][lhs][,]"Type mismatch in assignment operation."[)][;]
// [}][gen_lval_to_rax][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// [gen][(][node][->][rhs][)][;]
// [fprintf][(][output][,]"\tpop  rdi\n"[)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [fprintf][(][output][,]"\tmov  [rax], %s\n"[,][reg_r][[][reg_size][(][type][(][node][->][lhs][)][)][]][)][;]
// [fprintf][(][output][,]"\tpush rdi\n"[)][;]
// <return>[;]
// <case>[ND_CALL][:][gen_call][(][node][)][;]
// <return>[;]
// <case>[ND_FDECL][:][gen_fdecl][(][node][)][;]
// <return>[;]
// <case>[ND_ADDR][:][gen_lval_to_rax][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// <return>[;]
// <case>[ND_STR][:][gen_lval_to_rax][(][node][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// <return>[;]
// <case>[ND_DEREF][:]<if>[(][!][is_ptr][(][type][(][node][->][lhs][)][)][)][error_at_node][(][node][->][lhs][,]"Illegal operation. (dereference of non-pointer type)"[)][;]
// [gen][(][node][->][lhs][)][;]
// [fprintf][(][output][,]"\tpop  rax\n"[)][;]
// [emit_deref_rax][(][node][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// <return>[;]
// <case>[ND_NOT][:][gen_lnot][(][node][)][;]
// [fprintf][(][output][,]"\tpush rax\n"[)][;]
// <return>[;]
// [}][error_at_token][(][node][->][token][,]"gen(): Unimplemented NodeKind."[)][;]
// [}]<EOF>
// FDECL is_binary_op func ( enum  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(RETURN  1 ):)):)):(RETURN  0 ):))
//    switch  offset:8  int 
//    kind  offset:4  enum 

// FDECL is_expr func ( enum  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 38  body:(BLOCK(RETURN  0 ):)):)):(RETURN  1 ):))
//    switch  offset:8  int 
//    kind  offset:4  enum 

// FDECL new_label func ( ) * char 
//    
//    (BLOCK(= (LVAR 8) (CAST * char  (CALL malloc ( 10 :) ))):(IF (! (LVAR 8)) (CALL error ((ADDR  "Could not allocate memmory." ):) ) NULL ):(CALL sprintf ((LVAR 8):(ADDR  ".L%06d" ):(++ (= (GVAR label_count) (++ (GVAR label_count)  1 ))  1 ):) ):(RETURN (LVAR 8)):))
//    label  offset:8  * char 

// FDECL emit_label func ( * char  label ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "%s:\n" ):(LVAR 8):) ):))
//    label  offset:8  * char 

// FDECL emit_jmp func ( * char  label ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tjmp  %s\n" ):(LVAR 8):) ):))
//    label  offset:8  * char 

// FDECL push_loop func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (CALL new_label () )):(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) ))):(= (MEMBER (DEREF (LVAR 24)) break_dest 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) continue_dest 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR labels)):(= (GVAR labels) (LVAR 24)):))
//    label  offset:24  * struct <Loop> 
//    break_label  offset:16  * char 
//    continue_label  offset:8  * char 

// FDECL push_loop_switch func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) ))):(= (MEMBER (DEREF (LVAR 24)) break_dest 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) continue_dest 8) (CAST * void   0 )):(= (MEMBER (DEREF (LVAR 24)) node 24) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR labels)):(= (GVAR labels) (LVAR 24)):))
//    label  offset:24  * struct <Loop> 
//    break_label  offset:16  * char 
//    node  offset:8  * struct <Node> 

// FDECL pop_loop func ( ) void 
//    
//    (BLOCK(= (GVAR labels) (MEMBER (DEREF (GVAR labels)) next 0)):))

// FDECL get_continue func ( * struct <Token>  token ) * char 
//    (LVAR 8) 
//    (BLOCK(IF (! (GVAR labels)) (CALL error_at_token ((LVAR 8):(ADDR  "a continue statement may only be used within a loop." ):) ) NULL ):(RETURN (MEMBER (DEREF (GVAR labels)) continue_dest 8)):))
//    token  offset:8  * struct <Token> 

// FDECL get_break func ( * struct <Token>  token ) * char 
//    (LVAR 8) 
//    (BLOCK(IF (! (GVAR labels)) (CALL error_at_token ((LVAR 8):(ADDR  "a break statement may only be used within a loop or switch." ):) ) NULL ):(RETURN (MEMBER (DEREF (GVAR labels)) break_dest 16)):))
//    token  offset:8  * struct <Token> 

// FDECL get_inner_switch func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR labels)):(WHILE cond:(&& (LVAR 8) (! (MEMBER (DEREF (LVAR 8)) node 24)))body: (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))):(IF (! (LVAR 8)) (CALL error ((ADDR  "get_inner_switch(): Internal error." ):) ) NULL ):(RETURN (MEMBER (DEREF (LVAR 8)) node 24)):))
//    cursor  offset:8  * struct <Loop> 

// FDECL reg_size func ( * struct <Type>  type ) int 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 12) (CALL sizeof_type ((LVAR 8):) )):(IF (== (LVAR 12)  8 ) (RETURN  0 ) (IF (== (LVAR 12)  4 ) (RETURN  1 ) (IF (== (LVAR 12)  1 ) (RETURN  3 ) (CALL error ((ADDR  "Internal error in reg_size(): Illegal data size (%d bytes)." ):(LVAR 12):) )))):))
//    data_size  offset:12  int 
//    type  offset:8  * struct <Type> 

// FDECL emit_deref_rax func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(SWITCH cond: (CALL reg_size ((CALL type ((LVAR 8):) ):) ) body: (BLOCK(CASE cond: 0  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, [rax]\n" ):) ):BREAK :)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):BREAK :)):(CASE cond: 3  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmovsx eax, BYTE PTR [rax]\n" ):) ):BREAK :)):(DEFAULT body:(CALL error_at_node ((LVAR 8):(ADDR  "Size of the variable is unknown." ):) )):)):))
//    switch  offset:12  int 
//    node  offset:8  * struct <Node> 

// FDECL emit_lvar_addr func ( * struct <LVar>  lvar ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 24):) ):))
//    lvar  offset:8  * struct <LVar> 

// FDECL gen_lval_to_rax func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 ) (BLOCK(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, %.*s[rip]\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  22 ) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop rax\n" ):) ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 ) (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):) (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):)))))):))
//    node  offset:8  * struct <Node> 

// FDECL gen_if func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 16):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((LVAR 24):) ):(CALL emit_label ((LVAR 16):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL emit_label ((LVAR 24):) ):))
//    end_str  offset:24  * char 
//    else_str  offset:16  * char 
//    node  offset:8  * struct <Node> 

// FDECL gen_while func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(CALL push_loop () ):(= (LVAR 16) (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) )):(= (LVAR 24) (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) )):(CALL emit_label ((LVAR 16):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((LVAR 16):) ):(CALL emit_label ((LVAR 24):) ):(CALL pop_loop () ):))
//    end_str  offset:24  * char 
//    cond_str  offset:16  * char 
//    node  offset:8  * struct <Node> 

// FDECL gen_for func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(CALL push_loop () ):(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) )):(= (LVAR 32) (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_label ((LVAR 16):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 32):) ):(CALL gen_stmt ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) ):(CALL emit_label ((LVAR 24):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(IF (MEMBER (DEREF (LVAR 8)) xhs 24) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL ):(CALL emit_jmp ((LVAR 16):) ):(CALL emit_label ((LVAR 32):) ):(CALL pop_loop () ):))
//    end_label  offset:32  * char 
//    post_label  offset:24  * char 
//    loop_label  offset:16  * char 
//    node  offset:8  * struct <Node> 

// FDECL gen_block func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN NULL ) NULL ):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 20) (CALL vec_len ((LVAR 16):) )):(FOR init: (= (LVAR 24)  0 )cond: (< (LVAR 20) (LVAR 24)) post: (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ) body (CALL gen_stmt ((DEREF (] (MEMBER (DEREF (LVAR 16)) data 0) (LVAR 24))):) )):))
//    i  offset:24  int 
//    len  offset:20  int 
//    vec  offset:16  * struct <Vector> 
//    node  offset:8  * struct <Node> 

// FDECL gen_call func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 12) (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) )):(= (LVAR 20) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)):(FOR init: (= (LVAR 24) (- (LVAR 12)  1 ))cond: (>= (LVAR 24)  0 ) post: (-- (= (LVAR 24) (-- (LVAR 24)  1 ))  1 ) body (BLOCK(CALL gen ((DEREF (] (LVAR 20) (LVAR 24))):) ):)):(FOR init: (= (LVAR 28)  0 )cond: (< (LVAR 12) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpop  %s\n" ):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers))  0 ))) (LVAR 28)))):) ):)):(= (LVAR 36) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)):(= (LVAR 44) (CALL new_label () )):(= (LVAR 52) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, rsp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, 15\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjnz  %s\n" ):(LVAR 44):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcall %.*s\n" ):(MEMBER (DEREF (LVAR 36)) len 32):(MEMBER (DEREF (LVAR 36)) str 24):) ):(CALL emit_jmp ((LVAR 52):) ):(CALL emit_label ((LVAR 44):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rsp, 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcall %.*s\n" ):(MEMBER (DEREF (LVAR 36)) len 32):(MEMBER (DEREF (LVAR 36)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rsp, 8\n" ):) ):(CALL emit_label ((LVAR 52):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):))
//    label2  offset:52  * char 
//    label1  offset:44  * char 
//    name  offset:36  * struct <Token> 
//    i  offset:28  int 
//    i  offset:24  int 
//    args  offset:20  * * struct <Node> 
//    len  offset:12  int 
//    node  offset:8  * struct <Node> 

// FDECL gen_fdecl func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (! (MEMBER (DEREF (LVAR 8)) lhs 8)) (RETURN NULL ) NULL ):(CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rbp, rsp\n" ):) ):(= (LVAR 12) (+ (& (MEMBER (DEREF (LVAR 8)) offset 48) (-  0   16 ))  16 )):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rsp, %d\n" ):(LVAR 12):) ):(= (LVAR 16) (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) )):(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)):(FOR init: (= (LVAR 28)  0 )cond: (< (LVAR 16) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rbp - %d], %s\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (LVAR 24) (LVAR 28)))) lvar 40)) offset 24):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )))) (LVAR 28)))):) ):)):(CALL gen_block ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):))
//    i  offset:28  int 
//    params  offset:24  * * struct <Node> 
//    len  offset:16  int 
//    offset  offset:12  int 
//    node  offset:8  * struct <Node> 

// FDECL gen_stmt func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (LVAR 8) (BLOCK(CALL gen ((LVAR 8):) ):(IF (CALL is_expr ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL ):) NULL ):))
//    node  offset:8  * struct <Node> 

// FDECL gen_land func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 24) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(= (LVAR 36) (CALL new_label () )):(= (LVAR 44) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 36):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(IF (CALL is_aryth ((LVAR 24):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) ):(CALL emit_jmp ((LVAR 44):) ):(CALL emit_label ((LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL emit_label ((LVAR 44):) ):))
//    exit_label  offset:44  * char 
//    false_label  offset:36  * char 
//    reg_mode  offset:28  int 
//    r_ty  offset:24  * struct <Type> 
//    l_ty  offset:16  * struct <Type> 
//    node  offset:8  * struct <Node> 

// FDECL gen_lor func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 24) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(= (LVAR 36) (CALL new_label () )):(= (LVAR 44) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 36):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(IF (CALL is_aryth ((LVAR 24):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL emit_jmp ((LVAR 44):) ):(CALL emit_label ((LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) ):(CALL emit_label ((LVAR 44):) ):))
//    exit_label  offset:44  * char 
//    true_label  offset:36  * char 
//    reg_mode  offset:28  int 
//    r_ty  offset:24  * struct <Type> 
//    l_ty  offset:16  * struct <Type> 
//    node  offset:8  * struct <Node> 

// FDECL gen_lnot func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 28) (CALL new_label () )):(= (LVAR 36) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 20)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 20)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 20)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 28):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) ):(CALL emit_jmp ((LVAR 36):) ):(CALL emit_label ((LVAR 28):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL emit_label ((LVAR 36):) ):))
//    exit_label  offset:36  * char 
//    false_label  offset:28  * char 
//    reg_mode  offset:20  int 
//    l_ty  offset:16  * struct <Type> 
//    node  offset:8  * struct <Node> 

// FDECL gen func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN NULL ) NULL ):(CALL fprintf ((GVAR output):(ADDR  "// Line %d " ):(CALL get_line ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(GVAR source_text):) ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(IF (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  12 ) (BLOCK(CALL gen_land ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  13 ) (BLOCK(CALL gen_lor ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 5  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 6  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 7  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 15  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 16  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 17  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 18  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 19  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) )):)):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):) NULL ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 28  body:(BLOCK(CALL gen_if ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 29  body:(BLOCK(CALL gen_while ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 30  body:(BLOCK(CALL gen_for ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 31  body:(BLOCK(CALL push_loop_switch ((LVAR 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], edi\n" ):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((CALL get_break ((CAST * void   0 ):) ):) ):(FOR init: (= (LVAR 28)  0 )cond: (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):)):(CALL emit_label ((CALL get_break ((CAST * void   0 ):) ):) ):(CALL pop_loop () ):(RETURN NULL ):)):(CASE cond: 37  body:(BLOCK(CALL gen_block ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 34  body:(BLOCK(IF (MEMBER (DEREF (LVAR 8)) lhs 8) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):(RETURN NULL ):)):(CASE cond: 32  body:(BLOCK(= (LVAR 16) (CALL get_inner_switch () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 16)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  eax, edi\n" ):) ):(= (LVAR 24) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) rhs 16):) ):(RETURN NULL ):)):(CASE cond: 33  body:(BLOCK(= (LVAR 24) (CALL new_label () )):(CALL emit_jmp ((LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL emit_jmp ((CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL emit_jmp ((CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpush %d\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 24  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 20  body:(BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) )) (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):) (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL )):(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):)):(CASE cond: 25  body:(BLOCK(CALL gen_call ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 38  body:(BLOCK(CALL gen_fdecl ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 2  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(IF (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )) (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) ) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 14  body:(BLOCK(CALL gen_lnot ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):)):(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented NodeKind." ):) ):))
//    switch  offset:80  int 
//    p  offset:76  * char 
//    offset  offset:68  int 
//    switch  offset:64  int 
//    switch  offset:60  int 
//    cmp_op  offset:56  * char 
//    reg_mode  offset:48  int 
//    r_ty  offset:44  * struct <Type> 
//    l_ty  offset:36  * struct <Type> 
//    i  offset:28  int 
//    label  offset:24  * char 
//    parent  offset:16  * struct <Node> 
//    node  offset:8  * struct <Node> 

// Globals
// reg_r [4] [4] char { "rdi" , "edi" , "di" , "dil" }
// reg_l [4] [4] char { "rax" , "eax" , "ax" , "al" }
// labels * struct <Loop> (CAST * void   0 )
// label_count int  0 
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
// gen func ( * struct <Node>  node ) void 
// gen_lnot func ( * struct <Node>  node ) void 
// gen_lor func ( * struct <Node>  node ) void 
// gen_land func ( * struct <Node>  node ) void 
// gen_stmt func ( * struct <Node>  node ) void 
// gen_fdecl func ( * struct <Node>  node ) void 
// gen_call func ( * struct <Node>  node ) void 
// gen_block func ( * struct <Node>  node ) void 
// gen_for func ( * struct <Node>  node ) void 
// gen_while func ( * struct <Node>  node ) void 
// gen_if func ( * struct <Node>  node ) void 
// gen_lval_to_rax func ( * struct <Node>  node ) void 
// emit_lvar_addr func ( * struct <LVar>  lvar ) void 
// emit_deref_rax func ( * struct <Node>  node ) void 
// reg_size func ( * struct <Type>  type ) int 
// get_inner_switch func ( ) * struct <Node> 
// get_break func ( * struct <Token>  token ) * char 
// get_continue func ( * struct <Token>  token ) * char 
// pop_loop func ( ) void 
// push_loop_switch func ( * struct <Node>  node ) void 
// push_loop func ( ) void 
// emit_jmp func ( * char  label ) void 
// emit_label func ( * char  label ) void 
// new_label func ( ) * char 
// is_expr func ( enum  kind ) bool 
// is_binary_op func ( enum  kind ) bool 
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
// "Could not allocate memmory."
// ".L%06d"
// "%s:\n"
// "\tjmp  %s\n"
// "a continue statement may only be used within a loop."
// "a break statement may only be used within a loop or switch."
// "get_inner_switch(): Internal error."
// "Internal error in reg_size(): Illegal data size (%d bytes)."
// "\tmov  rax, [rax]\n"
// "\tmov  eax, [rax]\n"
// "\tmovsx eax, BYTE PTR [rax]\n"
// "Size of the variable is unknown."
// "\tmov  rax, rbp\n"
// "\tsub  rax, %d\n"
// "\tlea  rax, %.*s[rip]\n"
// "\tpop rax\n"
// "\tlea  rax, .LS%06d[rip]\n"
// "\tadd  rax, %d\n"
// "Expected l-value."
// "\tpop  rax\n"
// "\tcmp  rax, 0\n"
// "\tje   %s\n"
// "\tpop  rax\n"
// "\tcmp  rax, 0\n"
// "\tje   %s\n"
// "\tpop  rax\n"
// "\tcmp  rax, 0\n"
// "\tje   %s\n"
// "\tpop  rax\n"
// "\tpop  %s\n"
// "\tmov  rax, rsp\n"
// "\tand  rax, 15\n"
// "\tjnz  %s\n"
// "\tmov  rax, 0\n"
// "\tcall %.*s\n"
// "\tsub  rsp, 8\n"
// "\tmov  rax, 0\n"
// "\tcall %.*s\n"
// "\tadd  rsp, 8\n"
// "\tpush rax\n"
// "%.*s:\n"
// "\tpush rbp\n"
// "\tmov  rbp, rsp\n"
// "\tsub  rsp, %d\n"
// "\tmov  [rbp - %d], %s\n"
// "\tmov  rsp, rbp\n"
// "\tpop  rbp\n"
// "\tret\n"
// "\tpop  rax\n"
// "rax"
// "eax"
// "ax"
// "al"
// "rdi"
// "edi"
// "di"
// "dil"
// "Illegal operation. (Type mismatch)"
// "\tpop  rax\n"
// "\tcmp  %s, 0\n"
// "\tje   %s\n"
// "Illegal operation. (Type mismatch)"
// "\tpop  rax\n"
// "\tcmp  %s, 0\n"
// "\tje   %s\n"
// "\tmov  rax, 1\n"
// "\tmov  rax, 0\n"
// "Illegal operation. (Type mismatch)"
// "\tpop  rax\n"
// "\tcmp  %s, 0\n"
// "\tjne  %s\n"
// "Illegal operation. (Type mismatch)"
// "\tpop  rax\n"
// "\tcmp  %s, 0\n"
// "\tjne  %s\n"
// "\tmov  rax, 0\n"
// "\tmov  rax, 1\n"
// "Illegal operation. (Type mismatch)"
// "\tpop  rax\n"
// "\tcmp  %s, 0\n"
// "\tjne  %s\n"
// "\tmov  rax, 1\n"
// "\tmov  rax, 0\n"
// "// Line %d "
// "\n"
// "\tpush  rax\n"
// "\tpush  rax\n"
// "\tpop  rdi\n"
// "\tpop  rax\n"
// "\tadd  rax, rdi\n"
// "\timul rdi, %d\n"
// "\tadd  rax, rdi\n"
// "\timul rax, %d\n"
// "\tadd  rax, rdi\n"
// "Illegal operation. (Type mismatch)"
// "\tsub  rax, rdi\n"
// "\tsub  rax, rdi\n"
// "\tcqo\n"
// "\tmov  rdi, %d\n"
// "\tidiv rdi\n"
// "\timul rdi, %d\n"
// "\tsub  rax, rdi\n"
// "Illegal operation. (Type mismatch)"
// "\timul rax, rdi\n"
// "Illegal operation. (Not an arythmetic type)"
// "\tcqo\n"
// "\tidiv rax, rdi\n"
// "Illegal operation. (Not an arythmetic type)"
// "\tand  rax, rdi\n"
// "Illegal operation. (Not an arythmetic type)"
// "\tor   rax, rdi\n"
// "Illegal operation. (Not an arythmetic type)"
// "\txor  rax, rdi\n"
// "Illegal operation. (Not an arythmetic type)"
// "\tmov  cl , dil\n"
// "\tshr  rax, cl\n"
// "Illegal operation. (Not an arythmetic type)"
// "\tmov  cl , dil\n"
// "\tshl  rax, cl\n"
// "Illegal operation. (Not an arythmetic type)"
// "Illegal operation. (Type mismatch)"
// "e"
// "ne"
// "ge"
// "g"
// "\tcmp  %s, %s\n"
// "\tset%s al\n"
// "\tmovzb %s, al\n"
// "gen(): Unimplemented binary op."
// "\tpush rax\n"
// "\tpush rax\n"
// "\tpop  rdi\n"
// "\tpop  rax\n"
// "\tmov  [rax], edi\n"
// "\tpop  rax\n"
// "\tmov  rsp, rbp\n"
// "\tpop  rbp\n"
// "\tret\n"
// "\tmov  eax, [rax]\n"
// "\tpop  rdi\n"
// "\tcmp  eax, edi\n"
// "\tje   %s\n"
// "\tpush %d\n"
// "\tpush rax\n"
// "\tpush rax\n"
// "Invalid assignment."
// "\tmov  BYTE PTR [rbp - %d], %d\n"
// "\tmov  BYTE PTR [rbp - %d], 0\n"
// "\tpush rdi\n"
// "Type mismatch in assignment operation."
// "\tpush rax\n"
// "\tpop  rdi\n"
// "\tpop  rax\n"
// "\tmov  [rax], %s\n"
// "\tpush rdi\n"
// "\tpush rax\n"
// "\tpush rax\n"
// "Illegal operation. (dereference of non-pointer type)"
// "\tpop  rax\n"
// "\tpush rax\n"
// "\tpush rax\n"
// "gen(): Unimplemented NodeKind."

// Tagnames
// Loop struct { * struct <Loop> <next:0>, * char <continue_dest:8>, * char <break_dest:16>, * struct <Node> <node:24>}
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
// Loop struct <Loop> 
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
	.global reg_r
reg_r:
	.string "rdi"
	.string "edi"
	.string "di"
	.zero 1
	.string "dil"
	.global reg_l
reg_l:
	.string "rax"
	.string "eax"
	.string "ax"
	.zero 1
	.string "al"
	.zero 1
	.global labels
labels:
	.align 8
	.quad 0
	.global label_count
label_count:
	.long 0
.LS000000:
	.string "Could not allocate memmory."
.LS000001:
	.string ".L%06d"
.LS000002:
	.string "%s:\n"
.LS000003:
	.string "\tjmp  %s\n"
.LS000004:
	.string "a continue statement may only be used within a loop."
.LS000005:
	.string "a break statement may only be used within a loop or switch."
.LS000006:
	.string "get_inner_switch(): Internal error."
.LS000007:
	.string "Internal error in reg_size(): Illegal data size (%d bytes)."
.LS000008:
	.string "\tmov  rax, [rax]\n"
.LS000009:
	.string "\tmov  eax, [rax]\n"
.LS000010:
	.string "\tmovsx eax, BYTE PTR [rax]\n"
.LS000011:
	.string "Size of the variable is unknown."
.LS000012:
	.string "\tmov  rax, rbp\n"
.LS000013:
	.string "\tsub  rax, %d\n"
.LS000014:
	.string "\tlea  rax, %.*s[rip]\n"
.LS000015:
	.string "\tpop rax\n"
.LS000016:
	.string "\tlea  rax, .LS%06d[rip]\n"
.LS000017:
	.string "\tadd  rax, %d\n"
.LS000018:
	.string "Expected l-value."
.LS000019:
	.string "\tpop  rax\n"
.LS000020:
	.string "\tcmp  rax, 0\n"
.LS000021:
	.string "\tje   %s\n"
.LS000022:
	.string "\tpop  rax\n"
.LS000023:
	.string "\tcmp  rax, 0\n"
.LS000024:
	.string "\tje   %s\n"
.LS000025:
	.string "\tpop  rax\n"
.LS000026:
	.string "\tcmp  rax, 0\n"
.LS000027:
	.string "\tje   %s\n"
.LS000028:
	.string "\tpop  rax\n"
.LS000029:
	.string "\tpop  %s\n"
.LS000030:
	.string "\tmov  rax, rsp\n"
.LS000031:
	.string "\tand  rax, 15\n"
.LS000032:
	.string "\tjnz  %s\n"
.LS000033:
	.string "\tmov  rax, 0\n"
.LS000034:
	.string "\tcall %.*s\n"
.LS000035:
	.string "\tsub  rsp, 8\n"
.LS000036:
	.string "\tmov  rax, 0\n"
.LS000037:
	.string "\tcall %.*s\n"
.LS000038:
	.string "\tadd  rsp, 8\n"
.LS000039:
	.string "\tpush rax\n"
.LS000040:
	.string "%.*s:\n"
.LS000041:
	.string "\tpush rbp\n"
.LS000042:
	.string "\tmov  rbp, rsp\n"
.LS000043:
	.string "\tsub  rsp, %d\n"
.LS000044:
	.string "\tmov  [rbp - %d], %s\n"
.LS000045:
	.string "\tmov  rsp, rbp\n"
.LS000046:
	.string "\tpop  rbp\n"
.LS000047:
	.string "\tret\n"
.LS000048:
	.string "\tpop  rax\n"
.LS000049:
	.string "rax"
.LS000050:
	.string "eax"
.LS000051:
	.string "ax"
.LS000052:
	.string "al"
.LS000053:
	.string "rdi"
.LS000054:
	.string "edi"
.LS000055:
	.string "di"
.LS000056:
	.string "dil"
.LS000057:
	.string "Illegal operation. (Type mismatch)"
.LS000058:
	.string "\tpop  rax\n"
.LS000059:
	.string "\tcmp  %s, 0\n"
.LS000060:
	.string "\tje   %s\n"
.LS000061:
	.string "Illegal operation. (Type mismatch)"
.LS000062:
	.string "\tpop  rax\n"
.LS000063:
	.string "\tcmp  %s, 0\n"
.LS000064:
	.string "\tje   %s\n"
.LS000065:
	.string "\tmov  rax, 1\n"
.LS000066:
	.string "\tmov  rax, 0\n"
.LS000067:
	.string "Illegal operation. (Type mismatch)"
.LS000068:
	.string "\tpop  rax\n"
.LS000069:
	.string "\tcmp  %s, 0\n"
.LS000070:
	.string "\tjne  %s\n"
.LS000071:
	.string "Illegal operation. (Type mismatch)"
.LS000072:
	.string "\tpop  rax\n"
.LS000073:
	.string "\tcmp  %s, 0\n"
.LS000074:
	.string "\tjne  %s\n"
.LS000075:
	.string "\tmov  rax, 0\n"
.LS000076:
	.string "\tmov  rax, 1\n"
.LS000077:
	.string "Illegal operation. (Type mismatch)"
.LS000078:
	.string "\tpop  rax\n"
.LS000079:
	.string "\tcmp  %s, 0\n"
.LS000080:
	.string "\tjne  %s\n"
.LS000081:
	.string "\tmov  rax, 1\n"
.LS000082:
	.string "\tmov  rax, 0\n"
.LS000083:
	.string "// Line %d "
.LS000084:
	.string "\n"
.LS000085:
	.string "\tpush  rax\n"
.LS000086:
	.string "\tpush  rax\n"
.LS000087:
	.string "\tpop  rdi\n"
.LS000088:
	.string "\tpop  rax\n"
.LS000089:
	.string "\tadd  rax, rdi\n"
.LS000090:
	.string "\timul rdi, %d\n"
.LS000091:
	.string "\tadd  rax, rdi\n"
.LS000092:
	.string "\timul rax, %d\n"
.LS000093:
	.string "\tadd  rax, rdi\n"
.LS000094:
	.string "Illegal operation. (Type mismatch)"
.LS000095:
	.string "\tsub  rax, rdi\n"
.LS000096:
	.string "\tsub  rax, rdi\n"
.LS000097:
	.string "\tcqo\n"
.LS000098:
	.string "\tmov  rdi, %d\n"
.LS000099:
	.string "\tidiv rdi\n"
.LS000100:
	.string "\timul rdi, %d\n"
.LS000101:
	.string "\tsub  rax, rdi\n"
.LS000102:
	.string "Illegal operation. (Type mismatch)"
.LS000103:
	.string "\timul rax, rdi\n"
.LS000104:
	.string "Illegal operation. (Not an arythmetic type)"
.LS000105:
	.string "\tcqo\n"
.LS000106:
	.string "\tidiv rax, rdi\n"
.LS000107:
	.string "Illegal operation. (Not an arythmetic type)"
.LS000108:
	.string "\tand  rax, rdi\n"
.LS000109:
	.string "Illegal operation. (Not an arythmetic type)"
.LS000110:
	.string "\tor   rax, rdi\n"
.LS000111:
	.string "Illegal operation. (Not an arythmetic type)"
.LS000112:
	.string "\txor  rax, rdi\n"
.LS000113:
	.string "Illegal operation. (Not an arythmetic type)"
.LS000114:
	.string "\tmov  cl , dil\n"
.LS000115:
	.string "\tshr  rax, cl\n"
.LS000116:
	.string "Illegal operation. (Not an arythmetic type)"
.LS000117:
	.string "\tmov  cl , dil\n"
.LS000118:
	.string "\tshl  rax, cl\n"
.LS000119:
	.string "Illegal operation. (Not an arythmetic type)"
.LS000120:
	.string "Illegal operation. (Type mismatch)"
.LS000121:
	.string "e"
.LS000122:
	.string "ne"
.LS000123:
	.string "ge"
.LS000124:
	.string "g"
.LS000125:
	.string "\tcmp  %s, %s\n"
.LS000126:
	.string "\tset%s al\n"
.LS000127:
	.string "\tmovzb %s, al\n"
.LS000128:
	.string "gen(): Unimplemented binary op."
.LS000129:
	.string "\tpush rax\n"
.LS000130:
	.string "\tpush rax\n"
.LS000131:
	.string "\tpop  rdi\n"
.LS000132:
	.string "\tpop  rax\n"
.LS000133:
	.string "\tmov  [rax], edi\n"
.LS000134:
	.string "\tpop  rax\n"
.LS000135:
	.string "\tmov  rsp, rbp\n"
.LS000136:
	.string "\tpop  rbp\n"
.LS000137:
	.string "\tret\n"
.LS000138:
	.string "\tmov  eax, [rax]\n"
.LS000139:
	.string "\tpop  rdi\n"
.LS000140:
	.string "\tcmp  eax, edi\n"
.LS000141:
	.string "\tje   %s\n"
.LS000142:
	.string "\tpush %d\n"
.LS000143:
	.string "\tpush rax\n"
.LS000144:
	.string "\tpush rax\n"
.LS000145:
	.string "Invalid assignment."
.LS000146:
	.string "\tmov  BYTE PTR [rbp - %d], %d\n"
.LS000147:
	.string "\tmov  BYTE PTR [rbp - %d], 0\n"
.LS000148:
	.string "\tpush rdi\n"
.LS000149:
	.string "Type mismatch in assignment operation."
.LS000150:
	.string "\tpush rax\n"
.LS000151:
	.string "\tpop  rdi\n"
.LS000152:
	.string "\tpop  rax\n"
.LS000153:
	.string "\tmov  [rax], %s\n"
.LS000154:
	.string "\tpush rdi\n"
.LS000155:
	.string "\tpush rax\n"
.LS000156:
	.string "\tpush rax\n"
.LS000157:
	.string "Illegal operation. (dereference of non-pointer type)"
.LS000158:
	.string "\tpop  rax\n"
.LS000159:
	.string "\tpush rax\n"
.LS000160:
	.string "\tpush rax\n"
.LS000161:
	.string "gen(): Unimplemented NodeKind."

	.text
	.global is_binary_op
// Line 23 FDECL is_binary_op func ( enum  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(RETURN  1 ):)):)):(RETURN  0 ):))
is_binary_op:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 24 (SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(RETURN  1 ):)):))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 24 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 42 (BLOCK(CASE cond: 4  body:(BLOCK)):(CASE cond: 5  body:(BLOCK)):(CASE cond: 6  body:(BLOCK)):(CASE cond: 7  body:(BLOCK)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK)):(CASE cond: 12  body:(BLOCK)):(CASE cond: 13  body:(BLOCK)):(CASE cond: 15  body:(BLOCK)):(CASE cond: 16  body:(BLOCK)):(CASE cond: 17  body:(BLOCK)):(CASE cond: 18  body:(BLOCK)):(CASE cond: 19  body:(BLOCK(RETURN  1 ):)):)
// Line 25 (CASE cond: 4  body:(BLOCK))
// Line 25  4 
	push 4
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000001
// Line 26 (CASE cond: 5  body:(BLOCK))
// Line 26  5 
	push 5
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000002
// Line 27 (CASE cond: 6  body:(BLOCK))
// Line 27  6 
	push 6
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000003
// Line 28 (CASE cond: 7  body:(BLOCK))
// Line 28  7 
	push 7
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000004
// Line 29 (CASE cond: 8  body:(BLOCK))
// Line 29  8 
	push 8
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000005
// Line 30 (CASE cond: 9  body:(BLOCK))
// Line 30  9 
	push 9
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000006
// Line 31 (CASE cond: 10  body:(BLOCK))
// Line 31  10 
	push 10
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000007
// Line 32 (CASE cond: 11  body:(BLOCK))
// Line 32  11 
	push 11
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000008
// Line 33 (CASE cond: 12  body:(BLOCK))
// Line 33  12 
	push 12
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000009
// Line 34 (CASE cond: 13  body:(BLOCK))
// Line 34  13 
	push 13
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000010
// Line 35 (CASE cond: 15  body:(BLOCK))
// Line 35  15 
	push 15
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000011
// Line 36 (CASE cond: 16  body:(BLOCK))
// Line 36  16 
	push 16
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000012
// Line 37 (CASE cond: 17  body:(BLOCK))
// Line 37  17 
	push 17
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000013
// Line 38 (CASE cond: 18  body:(BLOCK))
// Line 38  18 
	push 18
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000014
// Line 39 (CASE cond: 19  body:(BLOCK(RETURN  1 ):))
// Line 39  19 
	push 19
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000015
	jmp  .L000000
.L000001:
// Line 26 (BLOCK)
.L000002:
// Line 27 (BLOCK)
.L000003:
// Line 28 (BLOCK)
.L000004:
// Line 29 (BLOCK)
.L000005:
// Line 30 (BLOCK)
.L000006:
// Line 31 (BLOCK)
.L000007:
// Line 32 (BLOCK)
.L000008:
// Line 33 (BLOCK)
.L000009:
// Line 34 (BLOCK)
.L000010:
// Line 35 (BLOCK)
.L000011:
// Line 36 (BLOCK)
.L000012:
// Line 37 (BLOCK)
.L000013:
// Line 38 (BLOCK)
.L000014:
// Line 39 (BLOCK)
.L000015:
// Line 40 (BLOCK(RETURN  1 ):)
// Line 40 (RETURN  1 )
// Line 713  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000000:
// Line 42 (RETURN  0 )
// Line 713  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global is_expr
// Line 45 FDECL is_expr func ( enum  kind ) bool 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 38  body:(BLOCK(RETURN  0 ):)):)):(RETURN  1 ):))
is_expr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 4], edi
// Line 46 (SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 38  body:(BLOCK(RETURN  0 ):)):))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 46 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 60 (BLOCK(CASE cond: 28  body:(BLOCK)):(CASE cond: 29  body:(BLOCK)):(CASE cond: 37  body:(BLOCK)):(CASE cond: 30  body:(BLOCK)):(CASE cond: 31  body:(BLOCK)):(CASE cond: 32  body:(BLOCK)):(CASE cond: 33  body:(BLOCK)):(CASE cond: 35  body:(BLOCK)):(CASE cond: 36  body:(BLOCK)):(CASE cond: 34  body:(BLOCK)):(CASE cond: 38  body:(BLOCK(RETURN  0 ):)):)
// Line 47 (CASE cond: 28  body:(BLOCK))
// Line 47  28 
	push 28
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000017
// Line 48 (CASE cond: 29  body:(BLOCK))
// Line 48  29 
	push 29
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000018
// Line 49 (CASE cond: 37  body:(BLOCK))
// Line 49  37 
	push 37
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000019
// Line 50 (CASE cond: 30  body:(BLOCK))
// Line 50  30 
	push 30
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000020
// Line 51 (CASE cond: 31  body:(BLOCK))
// Line 51  31 
	push 31
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000021
// Line 52 (CASE cond: 32  body:(BLOCK))
// Line 52  32 
	push 32
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000022
// Line 53 (CASE cond: 33  body:(BLOCK))
// Line 53  33 
	push 33
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000023
// Line 54 (CASE cond: 35  body:(BLOCK))
// Line 54  35 
	push 35
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000024
// Line 55 (CASE cond: 36  body:(BLOCK))
// Line 55  36 
	push 36
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000025
// Line 56 (CASE cond: 34  body:(BLOCK))
// Line 56  34 
	push 34
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000026
// Line 57 (CASE cond: 38  body:(BLOCK(RETURN  0 ):))
// Line 57  38 
	push 38
	mov  rax, rbp
	sub  rax, 8
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000027
	jmp  .L000016
.L000017:
// Line 48 (BLOCK)
.L000018:
// Line 49 (BLOCK)
.L000019:
// Line 50 (BLOCK)
.L000020:
// Line 51 (BLOCK)
.L000021:
// Line 52 (BLOCK)
.L000022:
// Line 53 (BLOCK)
.L000023:
// Line 54 (BLOCK)
.L000024:
// Line 55 (BLOCK)
.L000025:
// Line 56 (BLOCK)
.L000026:
// Line 57 (BLOCK)
.L000027:
// Line 58 (BLOCK(RETURN  0 ):)
// Line 58 (RETURN  0 )
// Line 713  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000016:
// Line 60 (RETURN  1 )
// Line 713  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global new_label
// Line 64 FDECL new_label func ( ) * char 
//    
//    (BLOCK(= (LVAR 8) (CAST * char  (CALL malloc ( 10 :) ))):(IF (! (LVAR 8)) (CALL error ((ADDR  "Could not allocate memmory." ):) ) NULL ):(CALL sprintf ((LVAR 8):(ADDR  ".L%06d" ):(++ (= (GVAR label_count) (++ (GVAR label_count)  1 ))  1 ):) ):(RETURN (LVAR 8)):))
new_label:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 65 (= (LVAR 8) (CAST * char  (CALL malloc ( 10 :) )))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 65 (CAST * char  (CALL malloc ( 10 :) ))
// Line 65 (CALL malloc ( 10 :) )
// Line 65  10 
	push 10
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000028
	mov  rax, 0
	call malloc
	jmp  .L000029
.L000028:
	sub  rsp, 8
	mov  rax, 0
	call malloc
	add  rsp, 8
.L000029:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 68 (IF (! (LVAR 8)) (CALL error ((ADDR  "Could not allocate memmory." ):) ) NULL )
// Line 66 (! (LVAR 8))
// Line 66 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000032
	mov  rax, 1
	jmp  .L000033
.L000032:
	mov  rax, 0
.L000033:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000030
// Line 67 (CALL error ((ADDR  "Could not allocate memmory." ):) )
// Line 67 (ADDR  "Could not allocate memmory." )
	lea  rax, .LS000000[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000034
	mov  rax, 0
	call error
	jmp  .L000035
.L000034:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000035:
	push rax
	pop  rax
	jmp  .L000031
.L000030:
.L000031:
// Line 68 (CALL sprintf ((LVAR 8):(ADDR  ".L%06d" ):(++ (= (GVAR label_count) (++ (GVAR label_count)  1 ))  1 ):) )
// Line 68 (++ (= (GVAR label_count) (++ (GVAR label_count)  1 ))  1 )
// Line 68 (= (GVAR label_count) (++ (GVAR label_count)  1 ))
	lea  rax, label_count[rip]
	push rax
// Line 68 (++ (GVAR label_count)  1 )
// Line 68 (GVAR label_count)
	lea  rax, label_count[rip]
	mov  eax, [rax]
	push rax
// Line 68  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 68  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 68 (ADDR  ".L%06d" )
	lea  rax, .LS000001[rip]
	push rax
// Line 68 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000036
	mov  rax, 0
	call sprintf
	jmp  .L000037
.L000036:
	sub  rsp, 8
	mov  rax, 0
	call sprintf
	add  rsp, 8
.L000037:
	push rax
	pop  rax
// Line 69 (RETURN (LVAR 8))
// Line 69 (LVAR 8)
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
	.global emit_label
// Line 73 FDECL emit_label func ( * char  label ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "%s:\n" ):(LVAR 8):) ):))
emit_label:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 73 (CALL fprintf ((GVAR output):(ADDR  "%s:\n" ):(LVAR 8):) )
// Line 73 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 73 (ADDR  "%s:\n" )
	lea  rax, .LS000002[rip]
	push rax
// Line 73 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000038
	mov  rax, 0
	call fprintf
	jmp  .L000039
.L000038:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000039:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global emit_jmp
// Line 74 FDECL emit_jmp func ( * char  label ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tjmp  %s\n" ):(LVAR 8):) ):))
emit_jmp:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 74 (CALL fprintf ((GVAR output):(ADDR  "\tjmp  %s\n" ):(LVAR 8):) )
// Line 74 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 74 (ADDR  "\tjmp  %s\n" )
	lea  rax, .LS000003[rip]
	push rax
// Line 74 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000040
	mov  rax, 0
	call fprintf
	jmp  .L000041
.L000040:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000041:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global push_loop
// Line 76 FDECL push_loop func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (CALL new_label () )):(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) ))):(= (MEMBER (DEREF (LVAR 24)) break_dest 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) continue_dest 8) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR labels)):(= (GVAR labels) (LVAR 24)):))
push_loop:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
// Line 77 (= (LVAR 8) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 77 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000042
	mov  rax, 0
	call new_label
	jmp  .L000043
.L000042:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000043:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 78 (= (LVAR 16) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 78 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000044
	mov  rax, 0
	call new_label
	jmp  .L000045
.L000044:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000045:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 79 (= (LVAR 24) (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) )))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 79 (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) ))
// Line 79 (CALL calloc ( 1 : 32 :) )
// Line 79  32 
	push 32
// Line 79  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000046
	mov  rax, 0
	call calloc
	jmp  .L000047
.L000046:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000047:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 80 (= (MEMBER (DEREF (LVAR 24)) break_dest 16) (LVAR 16))
// Line 80 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 80 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 81 (= (MEMBER (DEREF (LVAR 24)) continue_dest 8) (LVAR 8))
// Line 81 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 81 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 82 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR labels))
// Line 82 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 82 (GVAR labels)
	lea  rax, labels[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 83 (= (GVAR labels) (LVAR 24))
	lea  rax, labels[rip]
	push rax
// Line 83 (LVAR 24)
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
	.global push_loop_switch
// Line 86 FDECL push_loop_switch func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) ))):(= (MEMBER (DEREF (LVAR 24)) break_dest 16) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) continue_dest 8) (CAST * void   0 )):(= (MEMBER (DEREF (LVAR 24)) node 24) (LVAR 8)):(= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR labels)):(= (GVAR labels) (LVAR 24)):))
push_loop_switch:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 87 (= (LVAR 16) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 87 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000048
	mov  rax, 0
	call new_label
	jmp  .L000049
.L000048:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000049:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 88 (= (LVAR 24) (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) )))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 88 (CAST * struct <Loop>  (CALL calloc ( 1 : 32 :) ))
// Line 88 (CALL calloc ( 1 : 32 :) )
// Line 88  32 
	push 32
// Line 88  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000050
	mov  rax, 0
	call calloc
	jmp  .L000051
.L000050:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000051:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 89 (= (MEMBER (DEREF (LVAR 24)) break_dest 16) (LVAR 16))
// Line 89 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 89 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 90 (= (MEMBER (DEREF (LVAR 24)) continue_dest 8) (CAST * void   0 ))
// Line 90 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 713 (CAST * void   0 )
// Line 713  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 91 (= (MEMBER (DEREF (LVAR 24)) node 24) (LVAR 8))
// Line 91 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
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
// Line 92 (= (MEMBER (DEREF (LVAR 24)) next 0) (GVAR labels))
// Line 92 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 92 (GVAR labels)
	lea  rax, labels[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 93 (= (GVAR labels) (LVAR 24))
	lea  rax, labels[rip]
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
	mov  rsp, rbp
	pop  rbp
	ret
	.global pop_loop
// Line 96 FDECL pop_loop func ( ) void 
//    
//    (BLOCK(= (GVAR labels) (MEMBER (DEREF (GVAR labels)) next 0)):))
pop_loop:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 96 (= (GVAR labels) (MEMBER (DEREF (GVAR labels)) next 0))
	lea  rax, labels[rip]
	push rax
// Line 96 (MEMBER (DEREF (GVAR labels)) next 0)
// Line 96 (GVAR labels)
	lea  rax, labels[rip]
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
	mov  rsp, rbp
	pop  rbp
	ret
	.global get_continue
// Line 98 FDECL get_continue func ( * struct <Token>  token ) * char 
//    (LVAR 8) 
//    (BLOCK(IF (! (GVAR labels)) (CALL error_at_token ((LVAR 8):(ADDR  "a continue statement may only be used within a loop." ):) ) NULL ):(RETURN (MEMBER (DEREF (GVAR labels)) continue_dest 8)):))
get_continue:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 102 (IF (! (GVAR labels)) (CALL error_at_token ((LVAR 8):(ADDR  "a continue statement may only be used within a loop." ):) ) NULL )
// Line 99 (! (GVAR labels))
// Line 99 (GVAR labels)
	lea  rax, labels[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000054
	mov  rax, 1
	jmp  .L000055
.L000054:
	mov  rax, 0
.L000055:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000052
// Line 100 (CALL error_at_token ((LVAR 8):(ADDR  "a continue statement may only be used within a loop." ):) )
// Line 101 (ADDR  "a continue statement may only be used within a loop." )
	lea  rax, .LS000004[rip]
	push rax
// Line 100 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000056
	mov  rax, 0
	call error_at_token
	jmp  .L000057
.L000056:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000057:
	push rax
	pop  rax
	jmp  .L000053
.L000052:
.L000053:
// Line 102 (RETURN (MEMBER (DEREF (GVAR labels)) continue_dest 8))
// Line 102 (MEMBER (DEREF (GVAR labels)) continue_dest 8)
// Line 102 (GVAR labels)
	lea  rax, labels[rip]
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
	mov  rsp, rbp
	pop  rbp
	ret
	.global get_break
// Line 105 FDECL get_break func ( * struct <Token>  token ) * char 
//    (LVAR 8) 
//    (BLOCK(IF (! (GVAR labels)) (CALL error_at_token ((LVAR 8):(ADDR  "a break statement may only be used within a loop or switch." ):) ) NULL ):(RETURN (MEMBER (DEREF (GVAR labels)) break_dest 16)):))
get_break:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 110 (IF (! (GVAR labels)) (CALL error_at_token ((LVAR 8):(ADDR  "a break statement may only be used within a loop or switch." ):) ) NULL )
// Line 106 (! (GVAR labels))
// Line 106 (GVAR labels)
	lea  rax, labels[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000060
	mov  rax, 1
	jmp  .L000061
.L000060:
	mov  rax, 0
.L000061:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000058
// Line 107 (CALL error_at_token ((LVAR 8):(ADDR  "a break statement may only be used within a loop or switch." ):) )
// Line 109 (ADDR  "a break statement may only be used within a loop or switch." )
	lea  rax, .LS000005[rip]
	push rax
// Line 108 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000062
	mov  rax, 0
	call error_at_token
	jmp  .L000063
.L000062:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000063:
	push rax
	pop  rax
	jmp  .L000059
.L000058:
.L000059:
// Line 110 (RETURN (MEMBER (DEREF (GVAR labels)) break_dest 16))
// Line 110 (MEMBER (DEREF (GVAR labels)) break_dest 16)
// Line 110 (GVAR labels)
	lea  rax, labels[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global get_inner_switch
// Line 113 FDECL get_inner_switch func ( ) * struct <Node> 
//    
//    (BLOCK(= (LVAR 8) (GVAR labels)):(WHILE cond:(&& (LVAR 8) (! (MEMBER (DEREF (LVAR 8)) node 24)))body: (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))):(IF (! (LVAR 8)) (CALL error ((ADDR  "get_inner_switch(): Internal error." ):) ) NULL ):(RETURN (MEMBER (DEREF (LVAR 8)) node 24)):))
get_inner_switch:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 114 (= (LVAR 8) (GVAR labels))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 114 (GVAR labels)
	lea  rax, labels[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 117 (WHILE cond:(&& (LVAR 8) (! (MEMBER (DEREF (LVAR 8)) node 24)))body: (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0)))
.L000064:
// Line 115 (&& (LVAR 8) (! (MEMBER (DEREF (LVAR 8)) node 24)))
// Line 115 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000066
// Line 115 (! (MEMBER (DEREF (LVAR 8)) node 24))
// Line 115 (MEMBER (DEREF (LVAR 8)) node 24)
// Line 115 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000068
	mov  rax, 1
	jmp  .L000069
.L000068:
	mov  rax, 0
.L000069:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000066
	mov  rax, 1
	jmp  .L000067
.L000066:
	mov  rax, 0
.L000067:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000065
// Line 116 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) next 0))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 116 (MEMBER (DEREF (LVAR 8)) next 0)
// Line 116 (LVAR 8)
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
	jmp  .L000064
.L000065:
// Line 119 (IF (! (LVAR 8)) (CALL error ((ADDR  "get_inner_switch(): Internal error." ):) ) NULL )
// Line 117 (! (LVAR 8))
// Line 117 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 118 (CALL error ((ADDR  "get_inner_switch(): Internal error." ):) )
// Line 118 (ADDR  "get_inner_switch(): Internal error." )
	lea  rax, .LS000006[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000074
	mov  rax, 0
	call error
	jmp  .L000075
.L000074:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000075:
	push rax
	pop  rax
	jmp  .L000071
.L000070:
.L000071:
// Line 119 (RETURN (MEMBER (DEREF (LVAR 8)) node 24))
// Line 119 (MEMBER (DEREF (LVAR 8)) node 24)
// Line 119 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global reg_size
// Line 123 FDECL reg_size func ( * struct <Type>  type ) int 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 12) (CALL sizeof_type ((LVAR 8):) )):(IF (== (LVAR 12)  8 ) (RETURN  0 ) (IF (== (LVAR 12)  4 ) (RETURN  1 ) (IF (== (LVAR 12)  1 ) (RETURN  3 ) (CALL error ((ADDR  "Internal error in reg_size(): Illegal data size (%d bytes)." ):(LVAR 12):) )))):))
reg_size:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 124 (= (LVAR 12) (CALL sizeof_type ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 124 (CALL sizeof_type ((LVAR 8):) )
// Line 124 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000076
	mov  rax, 0
	call sizeof_type
	jmp  .L000077
.L000076:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000077:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 134 (IF (== (LVAR 12)  8 ) (RETURN  0 ) (IF (== (LVAR 12)  4 ) (RETURN  1 ) (IF (== (LVAR 12)  1 ) (RETURN  3 ) (CALL error ((ADDR  "Internal error in reg_size(): Illegal data size (%d bytes)." ):(LVAR 12):) ))))
// Line 125 (== (LVAR 12)  8 )
// Line 125 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 125  8 
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000078
// Line 126 (RETURN  0 )
// Line 126  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000079
.L000078:
// Line 134 (IF (== (LVAR 12)  4 ) (RETURN  1 ) (IF (== (LVAR 12)  1 ) (RETURN  3 ) (CALL error ((ADDR  "Internal error in reg_size(): Illegal data size (%d bytes)." ):(LVAR 12):) )))
// Line 127 (== (LVAR 12)  4 )
// Line 127 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 127  4 
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000080
// Line 128 (RETURN  1 )
// Line 128  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000081
.L000080:
// Line 134 (IF (== (LVAR 12)  1 ) (RETURN  3 ) (CALL error ((ADDR  "Internal error in reg_size(): Illegal data size (%d bytes)." ):(LVAR 12):) ))
// Line 129 (== (LVAR 12)  1 )
// Line 129 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 129  1 
	push 1
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000082
// Line 130 (RETURN  3 )
// Line 130  3 
	push 3
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000083
.L000082:
// Line 132 (CALL error ((ADDR  "Internal error in reg_size(): Illegal data size (%d bytes)." ):(LVAR 12):) )
// Line 133 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 132 (ADDR  "Internal error in reg_size(): Illegal data size (%d bytes)." )
	lea  rax, .LS000007[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000084
	mov  rax, 0
	call error
	jmp  .L000085
.L000084:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000085:
	push rax
	pop  rax
.L000083:
.L000081:
.L000079:
	mov  rsp, rbp
	pop  rbp
	ret
	.global emit_deref_rax
// Line 138 FDECL emit_deref_rax func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(SWITCH cond: (CALL reg_size ((CALL type ((LVAR 8):) ):) ) body: (BLOCK(CASE cond: 0  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, [rax]\n" ):) ):BREAK :)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):BREAK :)):(CASE cond: 3  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmovsx eax, BYTE PTR [rax]\n" ):) ):BREAK :)):(DEFAULT body:(CALL error_at_node ((LVAR 8):(ADDR  "Size of the variable is unknown." ):) )):)):))
emit_deref_rax:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 139 (SWITCH cond: (CALL reg_size ((CALL type ((LVAR 8):) ):) ) body: (BLOCK(CASE cond: 0  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, [rax]\n" ):) ):BREAK :)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):BREAK :)):(CASE cond: 3  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmovsx eax, BYTE PTR [rax]\n" ):) ):BREAK :)):(DEFAULT body:(CALL error_at_node ((LVAR 8):(ADDR  "Size of the variable is unknown." ):) )):))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 139 (CALL reg_size ((CALL type ((LVAR 8):) ):) )
// Line 139 (CALL type ((LVAR 8):) )
// Line 139 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000087
	mov  rax, 0
	call type
	jmp  .L000088
.L000087:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000088:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000089
	mov  rax, 0
	call reg_size
	jmp  .L000090
.L000089:
	sub  rsp, 8
	mov  rax, 0
	call reg_size
	add  rsp, 8
.L000090:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 152 (BLOCK(CASE cond: 0  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, [rax]\n" ):) ):BREAK :)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):BREAK :)):(CASE cond: 3  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmovsx eax, BYTE PTR [rax]\n" ):) ):BREAK :)):(DEFAULT body:(CALL error_at_node ((LVAR 8):(ADDR  "Size of the variable is unknown." ):) )):)
// Line 140 (CASE cond: 0  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, [rax]\n" ):) ):BREAK :))
// Line 140  0 
	push 0
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000091
// Line 143 (CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):BREAK :))
// Line 143  1 
	push 1
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000092
// Line 146 (CASE cond: 3  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmovsx eax, BYTE PTR [rax]\n" ):) ):BREAK :))
// Line 146  3 
	push 3
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000093
// Line 149 (DEFAULT body:(CALL error_at_node ((LVAR 8):(ADDR  "Size of the variable is unknown." ):) ))
	jmp  .L000094
	jmp  .L000086
.L000091:
// Line 141 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, [rax]\n" ):) ):BREAK :)
// Line 141 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, [rax]\n" ):) )
// Line 141 (ADDR  "\tmov  rax, [rax]\n" )
	lea  rax, .LS000008[rip]
	push rax
// Line 141 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000095
	mov  rax, 0
	call fprintf
	jmp  .L000096
.L000095:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000096:
	push rax
	pop  rax
// Line 142 BREAK 
	jmp  .L000086
.L000092:
// Line 144 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):BREAK :)
// Line 144 (CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) )
// Line 144 (ADDR  "\tmov  eax, [rax]\n" )
	lea  rax, .LS000009[rip]
	push rax
// Line 144 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000097
	mov  rax, 0
	call fprintf
	jmp  .L000098
.L000097:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000098:
	push rax
	pop  rax
// Line 145 BREAK 
	jmp  .L000086
.L000093:
// Line 147 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmovsx eax, BYTE PTR [rax]\n" ):) ):BREAK :)
// Line 147 (CALL fprintf ((GVAR output):(ADDR  "\tmovsx eax, BYTE PTR [rax]\n" ):) )
// Line 147 (ADDR  "\tmovsx eax, BYTE PTR [rax]\n" )
	lea  rax, .LS000010[rip]
	push rax
// Line 147 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000099
	mov  rax, 0
	call fprintf
	jmp  .L000100
.L000099:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000100:
	push rax
	pop  rax
// Line 148 BREAK 
	jmp  .L000086
.L000094:
// Line 150 (CALL error_at_node ((LVAR 8):(ADDR  "Size of the variable is unknown." ):) )
// Line 150 (ADDR  "Size of the variable is unknown." )
	lea  rax, .LS000011[rip]
	push rax
// Line 150 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000101
	mov  rax, 0
	call error_at_node
	jmp  .L000102
.L000101:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000102:
	push rax
	pop  rax
.L000086:
	mov  rsp, rbp
	pop  rbp
	ret
	.global emit_lvar_addr
// Line 156 FDECL emit_lvar_addr func ( * struct <LVar>  lvar ) void 
//    (LVAR 8) 
//    (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 24):) ):))
emit_lvar_addr:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 157 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, rbp\n" ):) )
// Line 157 (ADDR  "\tmov  rax, rbp\n" )
	lea  rax, .LS000012[rip]
	push rax
// Line 157 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000103
	mov  rax, 0
	call fprintf
	jmp  .L000104
.L000103:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000104:
	push rax
	pop  rax
// Line 158 (CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 24):) )
// Line 158 (MEMBER (DEREF (LVAR 8)) offset 24)
// Line 158 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
// Line 158 (ADDR  "\tsub  rax, %d\n" )
	lea  rax, .LS000013[rip]
	push rax
// Line 158 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000105
	mov  rax, 0
	call fprintf
	jmp  .L000106
.L000105:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000106:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_lval_to_rax
// Line 163 FDECL gen_lval_to_rax func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 ) (BLOCK(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, %.*s[rip]\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  22 ) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop rax\n" ):) ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 ) (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):) (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):)))))):))
gen_lval_to_rax:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 183 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 ) (BLOCK(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, %.*s[rip]\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  22 ) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop rax\n" ):) ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 ) (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):) (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):))))))
// Line 164 (== (MEMBER (DEREF (LVAR 8)) kind 0)  23 )
// Line 164 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 164 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 164  23 
	push 23
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000107
// Line 167 (BLOCK(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(RETURN NULL ):)
// Line 165 (CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) )
// Line 165 (MEMBER (DEREF (LVAR 8)) lvar 40)
// Line 165 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000109
	mov  rax, 0
	call emit_lvar_addr
	jmp  .L000110
.L000109:
	sub  rsp, 8
	mov  rax, 0
	call emit_lvar_addr
	add  rsp, 8
.L000110:
	push rax
	pop  rax
// Line 166 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000108
.L000107:
// Line 183 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, %.*s[rip]\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  22 ) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop rax\n" ):) ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 ) (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):) (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):)))))
// Line 167 (== (MEMBER (DEREF (LVAR 8)) kind 0)  24 )
// Line 167 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 167 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 167  24 
	push 24
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000111
// Line 171 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, %.*s[rip]\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(RETURN NULL ):)
// Line 168 (CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, %.*s[rip]\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) )
// Line 169 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 169 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 169 (LVAR 8)
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
// Line 168 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32)
// Line 168 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 168 (LVAR 8)
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
// Line 168 (ADDR  "\tlea  rax, %.*s[rip]\n" )
	lea  rax, .LS000014[rip]
	push rax
// Line 168 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000113
	mov  rax, 0
	call fprintf
	jmp  .L000114
.L000113:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000114:
	push rax
	pop  rax
// Line 170 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000112
.L000111:
// Line 183 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  22 ) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop rax\n" ):) ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 ) (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):) (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):))))
// Line 171 (== (MEMBER (DEREF (LVAR 8)) kind 0)  22 )
// Line 171 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 171 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 171  22 
	push 22
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000115
// Line 174 (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop rax\n" ):) ):)
// Line 172 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 172 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 172 (LVAR 8)
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
	jnz  .L000117
	mov  rax, 0
	call gen
	jmp  .L000118
.L000117:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000118:
	push rax
	pop  rax
// Line 173 (CALL fprintf ((GVAR output):(ADDR  "\tpop rax\n" ):) )
// Line 173 (ADDR  "\tpop rax\n" )
	lea  rax, .LS000015[rip]
	push rax
// Line 173 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000119
	mov  rax, 0
	call fprintf
	jmp  .L000120
.L000119:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000120:
	push rax
	pop  rax
	jmp  .L000116
.L000115:
// Line 183 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):) (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 ) (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):) (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):)))
// Line 174 (== (MEMBER (DEREF (LVAR 8)) kind 0)  2 )
// Line 174 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 174 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 174  2 
	push 2
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000121
// Line 177 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):)
// Line 175 (CALL fprintf ((GVAR output):(ADDR  "\tlea  rax, .LS%06d[rip]\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) )
// Line 175 (MEMBER (DEREF (LVAR 8)) int_val 32)
// Line 175 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 175 (ADDR  "\tlea  rax, .LS%06d[rip]\n" )
	lea  rax, .LS000016[rip]
	push rax
// Line 175 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
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
// Line 176 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000122
.L000121:
// Line 183 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 ) (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):) (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):))
// Line 177 (== (MEMBER (DEREF (LVAR 8)) kind 0)  26 )
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
// Line 177  26 
	push 26
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000125
// Line 180 (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) ):)
// Line 178 (CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
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
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000127
	mov  rax, 0
	call gen_lval_to_rax
	jmp  .L000128
.L000127:
	sub  rsp, 8
	mov  rax, 0
	call gen_lval_to_rax
	add  rsp, 8
.L000128:
	push rax
	pop  rax
// Line 179 (CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, %d\n" ):(MEMBER (DEREF (LVAR 8)) offset 48):) )
// Line 179 (MEMBER (DEREF (LVAR 8)) offset 48)
// Line 179 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  eax, [rax]
	push rax
// Line 179 (ADDR  "\tadd  rax, %d\n" )
	lea  rax, .LS000017[rip]
	push rax
// Line 179 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000129
	mov  rax, 0
	call fprintf
	jmp  .L000130
.L000129:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000130:
	push rax
	pop  rax
	jmp  .L000126
.L000125:
// Line 183 (BLOCK(CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) ):)
// Line 181 (CALL error_at_node ((LVAR 8):(ADDR  "Expected l-value." ):) )
// Line 181 (ADDR  "Expected l-value." )
	lea  rax, .LS000018[rip]
	push rax
// Line 181 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000131
	mov  rax, 0
	call error_at_node
	jmp  .L000132
.L000131:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000132:
	push rax
	pop  rax
.L000126:
.L000122:
.L000116:
.L000112:
.L000108:
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_if
// Line 187 FDECL gen_if func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 16):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((LVAR 24):) ):(CALL emit_label ((LVAR 16):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(CALL emit_label ((LVAR 24):) ):))
gen_if:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 188 (= (LVAR 16) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 188 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000133
	mov  rax, 0
	call new_label
	jmp  .L000134
.L000133:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000134:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 189 (= (LVAR 24) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 189 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000135
	mov  rax, 0
	call new_label
	jmp  .L000136
.L000135:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000136:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 190 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 190 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 190 (LVAR 8)
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
	jnz  .L000137
	mov  rax, 0
	call gen
	jmp  .L000138
.L000137:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000138:
	push rax
	pop  rax
// Line 191 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 191 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000019[rip]
	push rax
// Line 191 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000139
	mov  rax, 0
	call fprintf
	jmp  .L000140
.L000139:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000140:
	push rax
	pop  rax
// Line 192 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) )
// Line 192 (ADDR  "\tcmp  rax, 0\n" )
	lea  rax, .LS000020[rip]
	push rax
// Line 192 (GVAR output)
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
// Line 193 (CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 16):) )
// Line 193 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 193 (ADDR  "\tje   %s\n" )
	lea  rax, .LS000021[rip]
	push rax
// Line 193 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
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
// Line 194 (CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 194 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 194 (LVAR 8)
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
	jnz  .L000145
	mov  rax, 0
	call gen_stmt
	jmp  .L000146
.L000145:
	sub  rsp, 8
	mov  rax, 0
	call gen_stmt
	add  rsp, 8
.L000146:
	push rax
	pop  rax
// Line 195 (CALL emit_jmp ((LVAR 24):) )
// Line 195 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000147
	mov  rax, 0
	call emit_jmp
	jmp  .L000148
.L000147:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000148:
	push rax
	pop  rax
// Line 196 (CALL emit_label ((LVAR 16):) )
// Line 196 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000149
	mov  rax, 0
	call emit_label
	jmp  .L000150
.L000149:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000150:
	push rax
	pop  rax
// Line 197 (CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) xhs 24):) )
// Line 197 (MEMBER (DEREF (LVAR 8)) xhs 24)
// Line 197 (LVAR 8)
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
	jnz  .L000151
	mov  rax, 0
	call gen_stmt
	jmp  .L000152
.L000151:
	sub  rsp, 8
	mov  rax, 0
	call gen_stmt
	add  rsp, 8
.L000152:
	push rax
	pop  rax
// Line 198 (CALL emit_label ((LVAR 24):) )
// Line 198 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000153
	mov  rax, 0
	call emit_label
	jmp  .L000154
.L000153:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000154:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_while
// Line 201 FDECL gen_while func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(CALL push_loop () ):(= (LVAR 16) (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) )):(= (LVAR 24) (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) )):(CALL emit_label ((LVAR 16):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((LVAR 16):) ):(CALL emit_label ((LVAR 24):) ):(CALL pop_loop () ):))
gen_while:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 202 (CALL push_loop () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000155
	mov  rax, 0
	call push_loop
	jmp  .L000156
.L000155:
	sub  rsp, 8
	mov  rax, 0
	call push_loop
	add  rsp, 8
.L000156:
	push rax
	pop  rax
// Line 203 (= (LVAR 16) (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 203 (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 203 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 203 (LVAR 8)
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
	jnz  .L000157
	mov  rax, 0
	call get_continue
	jmp  .L000158
.L000157:
	sub  rsp, 8
	mov  rax, 0
	call get_continue
	add  rsp, 8
.L000158:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 204 (= (LVAR 24) (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 204 (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 204 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 204 (LVAR 8)
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
	jnz  .L000159
	mov  rax, 0
	call get_break
	jmp  .L000160
.L000159:
	sub  rsp, 8
	mov  rax, 0
	call get_break
	add  rsp, 8
.L000160:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 205 (CALL emit_label ((LVAR 16):) )
// Line 205 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000161
	mov  rax, 0
	call emit_label
	jmp  .L000162
.L000161:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000162:
	push rax
	pop  rax
// Line 206 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 206 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 206 (LVAR 8)
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
	jnz  .L000163
	mov  rax, 0
	call gen
	jmp  .L000164
.L000163:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000164:
	push rax
	pop  rax
// Line 207 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 207 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000022[rip]
	push rax
// Line 207 (GVAR output)
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
// Line 208 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) )
// Line 208 (ADDR  "\tcmp  rax, 0\n" )
	lea  rax, .LS000023[rip]
	push rax
// Line 208 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000167
	mov  rax, 0
	call fprintf
	jmp  .L000168
.L000167:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000168:
	push rax
	pop  rax
// Line 209 (CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) )
// Line 209 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 209 (ADDR  "\tje   %s\n" )
	lea  rax, .LS000024[rip]
	push rax
// Line 209 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
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
// Line 210 (CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 210 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 210 (LVAR 8)
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
	jnz  .L000171
	mov  rax, 0
	call gen_stmt
	jmp  .L000172
.L000171:
	sub  rsp, 8
	mov  rax, 0
	call gen_stmt
	add  rsp, 8
.L000172:
	push rax
	pop  rax
// Line 211 (CALL emit_jmp ((LVAR 16):) )
// Line 211 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000173
	mov  rax, 0
	call emit_jmp
	jmp  .L000174
.L000173:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000174:
	push rax
	pop  rax
// Line 212 (CALL emit_label ((LVAR 24):) )
// Line 212 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000175
	mov  rax, 0
	call emit_label
	jmp  .L000176
.L000175:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000176:
	push rax
	pop  rax
// Line 213 (CALL pop_loop () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000177
	mov  rax, 0
	call pop_loop
	jmp  .L000178
.L000177:
	sub  rsp, 8
	mov  rax, 0
	call pop_loop
	add  rsp, 8
.L000178:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_for
// Line 216 FDECL gen_for func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(CALL push_loop () ):(= (LVAR 16) (CALL new_label () )):(= (LVAR 24) (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) )):(= (LVAR 32) (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_label ((LVAR 16):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 32):) ):(CALL gen_stmt ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) ):(CALL emit_label ((LVAR 24):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) xhs 24):) ):(IF (MEMBER (DEREF (LVAR 8)) xhs 24) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL ):(CALL emit_jmp ((LVAR 16):) ):(CALL emit_label ((LVAR 32):) ):(CALL pop_loop () ):))
gen_for:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
// Line 217 (CALL push_loop () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000179
	mov  rax, 0
	call push_loop
	jmp  .L000180
.L000179:
	sub  rsp, 8
	mov  rax, 0
	call push_loop
	add  rsp, 8
.L000180:
	push rax
	pop  rax
// Line 218 (= (LVAR 16) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 218 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000181
	mov  rax, 0
	call new_label
	jmp  .L000182
.L000181:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000182:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 219 (= (LVAR 24) (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 219 (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 219 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 219 (LVAR 8)
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
	jnz  .L000183
	mov  rax, 0
	call get_continue
	jmp  .L000184
.L000183:
	sub  rsp, 8
	mov  rax, 0
	call get_continue
	add  rsp, 8
.L000184:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 220 (= (LVAR 32) (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 220 (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 220 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 220 (LVAR 8)
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
	jnz  .L000185
	mov  rax, 0
	call get_break
	jmp  .L000186
.L000185:
	sub  rsp, 8
	mov  rax, 0
	call get_break
	add  rsp, 8
.L000186:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 221 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
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
	jnz  .L000187
	mov  rax, 0
	call gen
	jmp  .L000188
.L000187:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000188:
	push rax
	pop  rax
// Line 222 (CALL emit_label ((LVAR 16):) )
// Line 222 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000189
	mov  rax, 0
	call emit_label
	jmp  .L000190
.L000189:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000190:
	push rax
	pop  rax
// Line 223 (CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
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
	jnz  .L000191
	mov  rax, 0
	call gen
	jmp  .L000192
.L000191:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000192:
	push rax
	pop  rax
// Line 224 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 224 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000025[rip]
	push rax
// Line 224 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000193
	mov  rax, 0
	call fprintf
	jmp  .L000194
.L000193:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000194:
	push rax
	pop  rax
// Line 225 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  rax, 0\n" ):) )
// Line 225 (ADDR  "\tcmp  rax, 0\n" )
	lea  rax, .LS000026[rip]
	push rax
// Line 225 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000195
	mov  rax, 0
	call fprintf
	jmp  .L000196
.L000195:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000196:
	push rax
	pop  rax
// Line 226 (CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 32):) )
// Line 226 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 226 (ADDR  "\tje   %s\n" )
	lea  rax, .LS000027[rip]
	push rax
// Line 226 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000197
	mov  rax, 0
	call fprintf
	jmp  .L000198
.L000197:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000198:
	push rax
	pop  rax
// Line 227 (CALL gen_stmt ((DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )):) )
// Line 227 (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 ))
// Line 227 (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)  0 )
// Line 227 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)
// Line 227 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 227 (LVAR 8)
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
// Line 227  0 
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
	jnz  .L000199
	mov  rax, 0
	call gen_stmt
	jmp  .L000200
.L000199:
	sub  rsp, 8
	mov  rax, 0
	call gen_stmt
	add  rsp, 8
.L000200:
	push rax
	pop  rax
// Line 228 (CALL emit_label ((LVAR 24):) )
// Line 228 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000201
	mov  rax, 0
	call emit_label
	jmp  .L000202
.L000201:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000202:
	push rax
	pop  rax
// Line 229 (CALL gen ((MEMBER (DEREF (LVAR 8)) xhs 24):) )
// Line 229 (MEMBER (DEREF (LVAR 8)) xhs 24)
// Line 229 (LVAR 8)
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
	jnz  .L000203
	mov  rax, 0
	call gen
	jmp  .L000204
.L000203:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000204:
	push rax
	pop  rax
// Line 232 (IF (MEMBER (DEREF (LVAR 8)) xhs 24) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL )
// Line 230 (MEMBER (DEREF (LVAR 8)) xhs 24)
// Line 230 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000205
// Line 231 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 231 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000028[rip]
	push rax
// Line 231 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000207
	mov  rax, 0
	call fprintf
	jmp  .L000208
.L000207:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000208:
	push rax
	pop  rax
	jmp  .L000206
.L000205:
.L000206:
// Line 232 (CALL emit_jmp ((LVAR 16):) )
// Line 232 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000209
	mov  rax, 0
	call emit_jmp
	jmp  .L000210
.L000209:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000210:
	push rax
	pop  rax
// Line 233 (CALL emit_label ((LVAR 32):) )
// Line 233 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000211
	mov  rax, 0
	call emit_label
	jmp  .L000212
.L000211:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000212:
	push rax
	pop  rax
// Line 234 (CALL pop_loop () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000213
	mov  rax, 0
	call pop_loop
	jmp  .L000214
.L000213:
	sub  rsp, 8
	mov  rax, 0
	call pop_loop
	add  rsp, 8
.L000214:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_block
// Line 237 FDECL gen_block func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN NULL ) NULL ):(= (LVAR 16) (MEMBER (DEREF (LVAR 8)) nodes 64)):(= (LVAR 20) (CALL vec_len ((LVAR 16):) )):(FOR init: (= (LVAR 24)  0 )cond: (< (LVAR 20) (LVAR 24)) post: (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ) body (CALL gen_stmt ((DEREF (] (MEMBER (DEREF (LVAR 16)) data 0) (LVAR 24))):) )):))
gen_block:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 240 (IF (! (LVAR 8)) (RETURN NULL ) NULL )
// Line 238 (! (LVAR 8))
// Line 238 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000217
	mov  rax, 1
	jmp  .L000218
.L000217:
	mov  rax, 0
.L000218:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000215
// Line 239 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000216
.L000215:
.L000216:
// Line 240 (= (LVAR 16) (MEMBER (DEREF (LVAR 8)) nodes 64))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 240 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 240 (LVAR 8)
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
// Line 241 (= (LVAR 20) (CALL vec_len ((LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 241 (CALL vec_len ((LVAR 16):) )
// Line 241 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000219
	mov  rax, 0
	call vec_len
	jmp  .L000220
.L000219:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000220:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 242 (FOR init: (= (LVAR 24)  0 )cond: (< (LVAR 20) (LVAR 24)) post: (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ) body (CALL gen_stmt ((DEREF (] (MEMBER (DEREF (LVAR 16)) data 0) (LVAR 24))):) ))
// Line 242 (= (LVAR 24)  0 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 242  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000223:
// Line 242 (< (LVAR 20) (LVAR 24))
// Line 242 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 242 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
	je   .L000222
// Line 243 (CALL gen_stmt ((DEREF (] (MEMBER (DEREF (LVAR 16)) data 0) (LVAR 24))):) )
// Line 243 (DEREF (] (MEMBER (DEREF (LVAR 16)) data 0) (LVAR 24)))
// Line 243 (] (MEMBER (DEREF (LVAR 16)) data 0) (LVAR 24))
// Line 243 (MEMBER (DEREF (LVAR 16)) data 0)
// Line 243 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 243 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
	jnz  .L000224
	mov  rax, 0
	call gen_stmt
	jmp  .L000225
.L000224:
	sub  rsp, 8
	mov  rax, 0
	call gen_stmt
	add  rsp, 8
.L000225:
	push rax
	pop  rax
.L000221:
// Line 242 (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )
// Line 242 (= (LVAR 24) (++ (LVAR 24)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 242 (++ (LVAR 24)  1 )
// Line 242 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 242  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 242  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000223
.L000222:
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_call
// Line 246 FDECL gen_call func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 12) (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) )):(= (LVAR 20) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)):(FOR init: (= (LVAR 24) (- (LVAR 12)  1 ))cond: (>= (LVAR 24)  0 ) post: (-- (= (LVAR 24) (-- (LVAR 24)  1 ))  1 ) body (BLOCK(CALL gen ((DEREF (] (LVAR 20) (LVAR 24))):) ):)):(FOR init: (= (LVAR 28)  0 )cond: (< (LVAR 12) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpop  %s\n" ):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers))  0 ))) (LVAR 28)))):) ):)):(= (LVAR 36) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)):(= (LVAR 44) (CALL new_label () )):(= (LVAR 52) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, rsp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, 15\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjnz  %s\n" ):(LVAR 44):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcall %.*s\n" ):(MEMBER (DEREF (LVAR 36)) len 32):(MEMBER (DEREF (LVAR 36)) str 24):) ):(CALL emit_jmp ((LVAR 52):) ):(CALL emit_label ((LVAR 44):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rsp, 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcall %.*s\n" ):(MEMBER (DEREF (LVAR 36)) len 32):(MEMBER (DEREF (LVAR 36)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rsp, 8\n" ):) ):(CALL emit_label ((LVAR 52):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):))
gen_call:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp - 8], rdi
// Line 248 (= (LVAR 12) (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 248 (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) )
// Line 248 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 248 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000226
	mov  rax, 0
	call vec_len
	jmp  .L000227
.L000226:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000227:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 249 (= (LVAR 20) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 249 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)
// Line 249 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 249 (LVAR 8)
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
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 250 (FOR init: (= (LVAR 24) (- (LVAR 12)  1 ))cond: (>= (LVAR 24)  0 ) post: (-- (= (LVAR 24) (-- (LVAR 24)  1 ))  1 ) body (BLOCK(CALL gen ((DEREF (] (LVAR 20) (LVAR 24))):) ):))
// Line 250 (= (LVAR 24) (- (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 250 (- (LVAR 12)  1 )
// Line 250 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 250  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000230:
// Line 250 (>= (LVAR 24)  0 )
// Line 250 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 250  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000229
// Line 253 (BLOCK(CALL gen ((DEREF (] (LVAR 20) (LVAR 24))):) ):)
// Line 251 (CALL gen ((DEREF (] (LVAR 20) (LVAR 24))):) )
// Line 251 (DEREF (] (LVAR 20) (LVAR 24)))
// Line 251 (] (LVAR 20) (LVAR 24))
// Line 251 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
// Line 251 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
	jnz  .L000231
	mov  rax, 0
	call gen
	jmp  .L000232
.L000231:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000232:
	push rax
	pop  rax
.L000228:
// Line 250 (-- (= (LVAR 24) (-- (LVAR 24)  1 ))  1 )
// Line 250 (= (LVAR 24) (-- (LVAR 24)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 250 (-- (LVAR 24)  1 )
// Line 250 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 250  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 250  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	jmp  .L000230
.L000229:
// Line 253 (FOR init: (= (LVAR 28)  0 )cond: (< (LVAR 12) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpop  %s\n" ):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers))  0 ))) (LVAR 28)))):) ):))
// Line 253 (= (LVAR 28)  0 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 253  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000235:
// Line 253 (< (LVAR 12) (LVAR 28))
// Line 253 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 253 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
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
	je   .L000234
// Line 256 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpop  %s\n" ):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers))  0 ))) (LVAR 28)))):) ):)
// Line 254 (CALL fprintf ((GVAR output):(ADDR  "\tpop  %s\n" ):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers))  0 ))) (LVAR 28)))):) )
// Line 254 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers))  0 ))) (LVAR 28))))
// Line 254 (] (ADDR (DEREF (] (ADDR (GVAR registers))  0 ))) (LVAR 28))
// Line 254 (ADDR (DEREF (] (ADDR (GVAR registers))  0 )))
// Line 254 (] (ADDR (GVAR registers))  0 )
// Line 254 (ADDR (GVAR registers))
	lea  rax, registers[rip]
	push rax
// Line 254  0 
	push 0
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 254 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 254 (ADDR  "\tpop  %s\n" )
	lea  rax, .LS000029[rip]
	push rax
// Line 254 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000236
	mov  rax, 0
	call fprintf
	jmp  .L000237
.L000236:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000237:
	push rax
	pop  rax
.L000233:
// Line 253 (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 )
// Line 253 (= (LVAR 28) (++ (LVAR 28)  1 ))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 253 (++ (LVAR 28)  1 )
// Line 253 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
// Line 253  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 253  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000235
.L000234:
// Line 256 (= (LVAR 36) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 256 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) token 72)
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
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 258 (= (LVAR 44) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 258 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000238
	mov  rax, 0
	call new_label
	jmp  .L000239
.L000238:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000239:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 259 (= (LVAR 52) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 259 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000240
	mov  rax, 0
	call new_label
	jmp  .L000241
.L000240:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000241:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 260 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, rsp\n" ):) )
// Line 260 (ADDR  "\tmov  rax, rsp\n" )
	lea  rax, .LS000030[rip]
	push rax
// Line 260 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000242
	mov  rax, 0
	call fprintf
	jmp  .L000243
.L000242:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000243:
	push rax
	pop  rax
// Line 261 (CALL fprintf ((GVAR output):(ADDR  "\tand  rax, 15\n" ):) )
// Line 261 (ADDR  "\tand  rax, 15\n" )
	lea  rax, .LS000031[rip]
	push rax
// Line 261 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000244
	mov  rax, 0
	call fprintf
	jmp  .L000245
.L000244:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000245:
	push rax
	pop  rax
// Line 262 (CALL fprintf ((GVAR output):(ADDR  "\tjnz  %s\n" ):(LVAR 44):) )
// Line 262 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
// Line 262 (ADDR  "\tjnz  %s\n" )
	lea  rax, .LS000032[rip]
	push rax
// Line 262 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000246
	mov  rax, 0
	call fprintf
	jmp  .L000247
.L000246:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000247:
	push rax
	pop  rax
// Line 263 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) )
// Line 263 (ADDR  "\tmov  rax, 0\n" )
	lea  rax, .LS000033[rip]
	push rax
// Line 263 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000248
	mov  rax, 0
	call fprintf
	jmp  .L000249
.L000248:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000249:
	push rax
	pop  rax
// Line 264 (CALL fprintf ((GVAR output):(ADDR  "\tcall %.*s\n" ):(MEMBER (DEREF (LVAR 36)) len 32):(MEMBER (DEREF (LVAR 36)) str 24):) )
// Line 264 (MEMBER (DEREF (LVAR 36)) str 24)
// Line 264 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 264 (MEMBER (DEREF (LVAR 36)) len 32)
// Line 264 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 264 (ADDR  "\tcall %.*s\n" )
	lea  rax, .LS000034[rip]
	push rax
// Line 264 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000250
	mov  rax, 0
	call fprintf
	jmp  .L000251
.L000250:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000251:
	push rax
	pop  rax
// Line 265 (CALL emit_jmp ((LVAR 52):) )
// Line 265 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000252
	mov  rax, 0
	call emit_jmp
	jmp  .L000253
.L000252:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000253:
	push rax
	pop  rax
// Line 267 (CALL emit_label ((LVAR 44):) )
// Line 267 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000254
	mov  rax, 0
	call emit_label
	jmp  .L000255
.L000254:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000255:
	push rax
	pop  rax
// Line 268 (CALL fprintf ((GVAR output):(ADDR  "\tsub  rsp, 8\n" ):) )
// Line 268 (ADDR  "\tsub  rsp, 8\n" )
	lea  rax, .LS000035[rip]
	push rax
// Line 268 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000256
	mov  rax, 0
	call fprintf
	jmp  .L000257
.L000256:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000257:
	push rax
	pop  rax
// Line 269 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) )
// Line 269 (ADDR  "\tmov  rax, 0\n" )
	lea  rax, .LS000036[rip]
	push rax
// Line 269 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000258
	mov  rax, 0
	call fprintf
	jmp  .L000259
.L000258:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000259:
	push rax
	pop  rax
// Line 270 (CALL fprintf ((GVAR output):(ADDR  "\tcall %.*s\n" ):(MEMBER (DEREF (LVAR 36)) len 32):(MEMBER (DEREF (LVAR 36)) str 24):) )
// Line 270 (MEMBER (DEREF (LVAR 36)) str 24)
// Line 270 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 270 (MEMBER (DEREF (LVAR 36)) len 32)
// Line 270 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 270 (ADDR  "\tcall %.*s\n" )
	lea  rax, .LS000037[rip]
	push rax
// Line 270 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000260
	mov  rax, 0
	call fprintf
	jmp  .L000261
.L000260:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000261:
	push rax
	pop  rax
// Line 271 (CALL fprintf ((GVAR output):(ADDR  "\tadd  rsp, 8\n" ):) )
// Line 271 (ADDR  "\tadd  rsp, 8\n" )
	lea  rax, .LS000038[rip]
	push rax
// Line 271 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000262
	mov  rax, 0
	call fprintf
	jmp  .L000263
.L000262:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000263:
	push rax
	pop  rax
// Line 273 (CALL emit_label ((LVAR 52):) )
// Line 273 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000264
	mov  rax, 0
	call emit_label
	jmp  .L000265
.L000264:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000265:
	push rax
	pop  rax
// Line 274 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 274 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000039[rip]
	push rax
// Line 274 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000266
	mov  rax, 0
	call fprintf
	jmp  .L000267
.L000266:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000267:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_fdecl
// Line 277 FDECL gen_fdecl func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (! (MEMBER (DEREF (LVAR 8)) lhs 8)) (RETURN NULL ) NULL ):(CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rbp, rsp\n" ):) ):(= (LVAR 12) (+ (& (MEMBER (DEREF (LVAR 8)) offset 48) (-  0   16 ))  16 )):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rsp, %d\n" ):(LVAR 12):) ):(= (LVAR 16) (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) )):(= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)):(FOR init: (= (LVAR 28)  0 )cond: (< (LVAR 16) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rbp - %d], %s\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (LVAR 24) (LVAR 28)))) lvar 40)) offset 24):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )))) (LVAR 28)))):) ):)):(CALL gen_block ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):))
gen_fdecl:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 281 (IF (! (MEMBER (DEREF (LVAR 8)) lhs 8)) (RETURN NULL ) NULL )
// Line 278 (! (MEMBER (DEREF (LVAR 8)) lhs 8))
// Line 278 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 278 (LVAR 8)
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
	jne  .L000270
	mov  rax, 1
	jmp  .L000271
.L000270:
	mov  rax, 0
.L000271:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000268
// Line 279 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000269
.L000268:
.L000269:
// Line 281 (CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):) )
// Line 281 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 281 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 281 (LVAR 8)
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
// Line 281 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) len 32)
// Line 281 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 281 (LVAR 8)
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
// Line 281 (ADDR  "%.*s:\n" )
	lea  rax, .LS000040[rip]
	push rax
// Line 281 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000272
	mov  rax, 0
	call fprintf
	jmp  .L000273
.L000272:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000273:
	push rax
	pop  rax
// Line 283 (CALL fprintf ((GVAR output):(ADDR  "\tpush rbp\n" ):) )
// Line 283 (ADDR  "\tpush rbp\n" )
	lea  rax, .LS000041[rip]
	push rax
// Line 283 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000274
	mov  rax, 0
	call fprintf
	jmp  .L000275
.L000274:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000275:
	push rax
	pop  rax
// Line 284 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rbp, rsp\n" ):) )
// Line 284 (ADDR  "\tmov  rbp, rsp\n" )
	lea  rax, .LS000042[rip]
	push rax
// Line 284 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000276
	mov  rax, 0
	call fprintf
	jmp  .L000277
.L000276:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000277:
	push rax
	pop  rax
// Line 285 (= (LVAR 12) (+ (& (MEMBER (DEREF (LVAR 8)) offset 48) (-  0   16 ))  16 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 285 (+ (& (MEMBER (DEREF (LVAR 8)) offset 48) (-  0   16 ))  16 )
// Line 285 (& (MEMBER (DEREF (LVAR 8)) offset 48) (-  0   16 ))
// Line 285 (MEMBER (DEREF (LVAR 8)) offset 48)
// Line 285 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 48
	mov  eax, [rax]
	push rax
// Line 285 (-  0   16 )
// Line 285  0 
	push 0
// Line 285  16 
	push 16
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 285  16 
	push 16
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 286 (CALL fprintf ((GVAR output):(ADDR  "\tsub  rsp, %d\n" ):(LVAR 12):) )
// Line 286 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 286 (ADDR  "\tsub  rsp, %d\n" )
	lea  rax, .LS000043[rip]
	push rax
// Line 286 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000278
	mov  rax, 0
	call fprintf
	jmp  .L000279
.L000278:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000279:
	push rax
	pop  rax
// Line 288 (= (LVAR 16) (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 288 (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) )
// Line 288 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 288 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000280
	mov  rax, 0
	call vec_len
	jmp  .L000281
.L000280:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000281:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 289 (= (LVAR 24) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 289 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)
// Line 289 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 289 (LVAR 8)
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
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 290 (FOR init: (= (LVAR 28)  0 )cond: (< (LVAR 16) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rbp - %d], %s\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (LVAR 24) (LVAR 28)))) lvar 40)) offset 24):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )))) (LVAR 28)))):) ):))
// Line 290 (= (LVAR 28)  0 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 290  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000284:
// Line 290 (< (LVAR 16) (LVAR 28))
// Line 290 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  eax, [rax]
	push rax
// Line 290 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
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
	je   .L000283
// Line 295 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rbp - %d], %s\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (LVAR 24) (LVAR 28)))) lvar 40)) offset 24):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )))) (LVAR 28)))):) ):)
// Line 291 (CALL fprintf ((GVAR output):(ADDR  "\tmov  [rbp - %d], %s\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (LVAR 24) (LVAR 28)))) lvar 40)) offset 24):(ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )))) (LVAR 28)))):) )
// Line 292 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )))) (LVAR 28))))
// Line 292 (] (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )))) (LVAR 28))
// Line 292 (ADDR (DEREF (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) ))))
// Line 292 (] (ADDR (GVAR registers)) (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) ))
// Line 292 (ADDR (GVAR registers))
	lea  rax, registers[rip]
	push rax
// Line 292 (CALL reg_size ((CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) ):) )
// Line 292 (CALL type ((DEREF (] (LVAR 24) (LVAR 28))):) )
// Line 292 (DEREF (] (LVAR 24) (LVAR 28)))
// Line 292 (] (LVAR 24) (LVAR 28))
// Line 292 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 292 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
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
	jnz  .L000285
	mov  rax, 0
	call type
	jmp  .L000286
.L000285:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000286:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000287
	mov  rax, 0
	call reg_size
	jmp  .L000288
.L000287:
	sub  rsp, 8
	mov  rax, 0
	call reg_size
	add  rsp, 8
.L000288:
	push rax
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 292 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 291 (MEMBER (DEREF (MEMBER (DEREF (DEREF (] (LVAR 24) (LVAR 28)))) lvar 40)) offset 24)
// Line 291 (MEMBER (DEREF (DEREF (] (LVAR 24) (LVAR 28)))) lvar 40)
// Line 291 (DEREF (] (LVAR 24) (LVAR 28)))
// Line 291 (] (LVAR 24) (LVAR 28))
// Line 291 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 291 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
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
	add  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  eax, [rax]
	push rax
// Line 291 (ADDR  "\tmov  [rbp - %d], %s\n" )
	lea  rax, .LS000044[rip]
	push rax
// Line 291 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000289
	mov  rax, 0
	call fprintf
	jmp  .L000290
.L000289:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000290:
	push rax
	pop  rax
.L000282:
// Line 290 (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 )
// Line 290 (= (LVAR 28) (++ (LVAR 28)  1 ))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 290 (++ (LVAR 28)  1 )
// Line 290 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
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
	jmp  .L000284
.L000283:
// Line 295 (CALL gen_block ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 295 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 295 (LVAR 8)
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
	jnz  .L000291
	mov  rax, 0
	call gen_block
	jmp  .L000292
.L000291:
	sub  rsp, 8
	mov  rax, 0
	call gen_block
	add  rsp, 8
.L000292:
	push rax
	pop  rax
// Line 297 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) )
// Line 297 (ADDR  "\tmov  rsp, rbp\n" )
	lea  rax, .LS000045[rip]
	push rax
// Line 297 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000293
	mov  rax, 0
	call fprintf
	jmp  .L000294
.L000293:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000294:
	push rax
	pop  rax
// Line 298 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) )
// Line 298 (ADDR  "\tpop  rbp\n" )
	lea  rax, .LS000046[rip]
	push rax
// Line 298 (GVAR output)
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
// Line 299 (CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) )
// Line 299 (ADDR  "\tret\n" )
	lea  rax, .LS000047[rip]
	push rax
// Line 299 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000297
	mov  rax, 0
	call fprintf
	jmp  .L000298
.L000297:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000298:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_stmt
// Line 302 FDECL gen_stmt func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (LVAR 8) (BLOCK(CALL gen ((LVAR 8):) ):(IF (CALL is_expr ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL ):) NULL ):))
gen_stmt:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 308 (IF (LVAR 8) (BLOCK(CALL gen ((LVAR 8):) ):(IF (CALL is_expr ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL ):) NULL )
// Line 303 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000299
// Line 308 (BLOCK(CALL gen ((LVAR 8):) ):(IF (CALL is_expr ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL ):)
// Line 304 (CALL gen ((LVAR 8):) )
// Line 304 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000301
	mov  rax, 0
	call gen
	jmp  .L000302
.L000301:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000302:
	push rax
	pop  rax
// Line 307 (IF (CALL is_expr ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ) NULL )
// Line 305 (CALL is_expr ((MEMBER (DEREF (LVAR 8)) kind 0):) )
// Line 305 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 305 (LVAR 8)
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
	jnz  .L000305
	mov  rax, 0
	call is_expr
	jmp  .L000306
.L000305:
	sub  rsp, 8
	mov  rax, 0
	call is_expr
	add  rsp, 8
.L000306:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000303
// Line 306 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 306 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000048[rip]
	push rax
// Line 306 (GVAR output)
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
	jmp  .L000304
.L000303:
.L000304:
	jmp  .L000300
.L000299:
.L000300:
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_land
// Line 313 FDECL gen_land func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 24) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(= (LVAR 36) (CALL new_label () )):(= (LVAR 44) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 36):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(IF (CALL is_aryth ((LVAR 24):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) ):(CALL emit_jmp ((LVAR 44):) ):(CALL emit_label ((LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL emit_label ((LVAR 44):) ):))
gen_land:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
// Line 314 (= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 314 (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
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
	jnz  .L000309
	mov  rax, 0
	call type
	jmp  .L000310
.L000309:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000310:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 315 (= (LVAR 24) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 315 (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 315 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 315 (LVAR 8)
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
	jnz  .L000311
	mov  rax, 0
	call type
	jmp  .L000312
.L000311:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000312:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 317 (= (LVAR 36) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 317 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000313
	mov  rax, 0
	call new_label
	jmp  .L000314
.L000313:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000314:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 318 (= (LVAR 44) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 318 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000315
	mov  rax, 0
	call new_label
	jmp  .L000316
.L000315:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000316:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 319 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 319 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 319 (LVAR 8)
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
	jnz  .L000317
	mov  rax, 0
	call gen
	jmp  .L000318
.L000317:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000318:
	push rax
	pop  rax
// Line 328 (IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 321 (CALL is_aryth ((LVAR 16):) )
// Line 321 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000321
	mov  rax, 0
	call is_aryth
	jmp  .L000322
.L000321:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000322:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000319
// Line 323 (BLOCK(= (LVAR 28)  1 ):)
// Line 322 (= (LVAR 28)  1 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 322  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000320
.L000319:
// Line 328 (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 323 (CALL is_ptr ((LVAR 16):) )
// Line 323 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000325
	mov  rax, 0
	call is_ptr
	jmp  .L000326
.L000325:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000326:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000323
// Line 325 (BLOCK(= (LVAR 28)  0 ):)
// Line 324 (= (LVAR 28)  0 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 324  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000324
.L000323:
// Line 326 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 326 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000057[rip]
	push rax
// Line 326 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000327
	mov  rax, 0
	call error_at_node
	jmp  .L000328
.L000327:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000328:
	push rax
	pop  rax
.L000324:
.L000320:
// Line 328 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 328 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000058[rip]
	push rax
// Line 328 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000329
	mov  rax, 0
	call fprintf
	jmp  .L000330
.L000329:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000330:
	push rax
	pop  rax
// Line 329 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) )
// Line 329 (ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28))))
// Line 329 (] (ADDR (GVAR reg_l)) (LVAR 28))
// Line 329 (ADDR (GVAR reg_l))
	lea  rax, reg_l[rip]
	push rax
// Line 329 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 329 (ADDR  "\tcmp  %s, 0\n" )
	lea  rax, .LS000059[rip]
	push rax
// Line 329 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000331
	mov  rax, 0
	call fprintf
	jmp  .L000332
.L000331:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000332:
	push rax
	pop  rax
// Line 330 (CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 36):) )
// Line 330 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
// Line 330 (ADDR  "\tje   %s\n" )
	lea  rax, .LS000060[rip]
	push rax
// Line 330 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000333
	mov  rax, 0
	call fprintf
	jmp  .L000334
.L000333:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000334:
	push rax
	pop  rax
// Line 332 (CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 332 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 332 (LVAR 8)
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
	jnz  .L000335
	mov  rax, 0
	call gen
	jmp  .L000336
.L000335:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000336:
	push rax
	pop  rax
// Line 341 (IF (CALL is_aryth ((LVAR 24):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 334 (CALL is_aryth ((LVAR 24):) )
// Line 334 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000339
	mov  rax, 0
	call is_aryth
	jmp  .L000340
.L000339:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000340:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000337
// Line 336 (BLOCK(= (LVAR 28)  1 ):)
// Line 335 (= (LVAR 28)  1 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 335  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000338
.L000337:
// Line 341 (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 336 (CALL is_ptr ((LVAR 24):) )
// Line 336 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000343
	mov  rax, 0
	call is_ptr
	jmp  .L000344
.L000343:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000344:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000341
// Line 338 (BLOCK(= (LVAR 28)  0 ):)
// Line 337 (= (LVAR 28)  0 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 337  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000342
.L000341:
// Line 339 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 339 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000061[rip]
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
	jnz  .L000345
	mov  rax, 0
	call error_at_node
	jmp  .L000346
.L000345:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000346:
	push rax
	pop  rax
.L000342:
.L000338:
// Line 341 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 341 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000062[rip]
	push rax
// Line 341 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000347
	mov  rax, 0
	call fprintf
	jmp  .L000348
.L000347:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000348:
	push rax
	pop  rax
// Line 342 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) )
// Line 342 (ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28))))
// Line 342 (] (ADDR (GVAR reg_l)) (LVAR 28))
// Line 342 (ADDR (GVAR reg_l))
	lea  rax, reg_l[rip]
	push rax
// Line 342 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 342 (ADDR  "\tcmp  %s, 0\n" )
	lea  rax, .LS000063[rip]
	push rax
// Line 342 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000349
	mov  rax, 0
	call fprintf
	jmp  .L000350
.L000349:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000350:
	push rax
	pop  rax
// Line 343 (CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 36):) )
// Line 343 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
// Line 343 (ADDR  "\tje   %s\n" )
	lea  rax, .LS000064[rip]
	push rax
// Line 343 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000351
	mov  rax, 0
	call fprintf
	jmp  .L000352
.L000351:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000352:
	push rax
	pop  rax
// Line 345 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) )
// Line 345 (ADDR  "\tmov  rax, 1\n" )
	lea  rax, .LS000065[rip]
	push rax
// Line 345 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000353
	mov  rax, 0
	call fprintf
	jmp  .L000354
.L000353:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000354:
	push rax
	pop  rax
// Line 346 (CALL emit_jmp ((LVAR 44):) )
// Line 346 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000355
	mov  rax, 0
	call emit_jmp
	jmp  .L000356
.L000355:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000356:
	push rax
	pop  rax
// Line 348 (CALL emit_label ((LVAR 36):) )
// Line 348 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000357
	mov  rax, 0
	call emit_label
	jmp  .L000358
.L000357:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000358:
	push rax
	pop  rax
// Line 349 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) )
// Line 349 (ADDR  "\tmov  rax, 0\n" )
	lea  rax, .LS000066[rip]
	push rax
// Line 349 (GVAR output)
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
// Line 350 (CALL emit_label ((LVAR 44):) )
// Line 350 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000361
	mov  rax, 0
	call emit_label
	jmp  .L000362
.L000361:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000362:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_lor
// Line 353 FDECL gen_lor func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 24) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(= (LVAR 36) (CALL new_label () )):(= (LVAR 44) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 36):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(IF (CALL is_aryth ((LVAR 24):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL emit_jmp ((LVAR 44):) ):(CALL emit_label ((LVAR 36):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) ):(CALL emit_label ((LVAR 44):) ):))
gen_lor:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
// Line 354 (= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 354 (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 354 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 354 (LVAR 8)
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
	call type
	jmp  .L000364
.L000363:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000364:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 355 (= (LVAR 24) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 355 (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 355 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 355 (LVAR 8)
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
	jnz  .L000365
	mov  rax, 0
	call type
	jmp  .L000366
.L000365:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000366:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 357 (= (LVAR 36) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 357 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000367
	mov  rax, 0
	call new_label
	jmp  .L000368
.L000367:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000368:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 358 (= (LVAR 44) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 358 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000369
	mov  rax, 0
	call new_label
	jmp  .L000370
.L000369:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000370:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 359 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 359 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 359 (LVAR 8)
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
	jnz  .L000371
	mov  rax, 0
	call gen
	jmp  .L000372
.L000371:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000372:
	push rax
	pop  rax
// Line 368 (IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 361 (CALL is_aryth ((LVAR 16):) )
// Line 361 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000375
	mov  rax, 0
	call is_aryth
	jmp  .L000376
.L000375:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000376:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000373
// Line 363 (BLOCK(= (LVAR 28)  1 ):)
// Line 362 (= (LVAR 28)  1 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 362  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000374
.L000373:
// Line 368 (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 363 (CALL is_ptr ((LVAR 16):) )
// Line 363 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000379
	mov  rax, 0
	call is_ptr
	jmp  .L000380
.L000379:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000380:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000377
// Line 365 (BLOCK(= (LVAR 28)  0 ):)
// Line 364 (= (LVAR 28)  0 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 364  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000378
.L000377:
// Line 366 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 366 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000067[rip]
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
	jnz  .L000381
	mov  rax, 0
	call error_at_node
	jmp  .L000382
.L000381:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000382:
	push rax
	pop  rax
.L000378:
.L000374:
// Line 368 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 368 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000068[rip]
	push rax
// Line 368 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000383
	mov  rax, 0
	call fprintf
	jmp  .L000384
.L000383:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000384:
	push rax
	pop  rax
// Line 369 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) )
// Line 369 (ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28))))
// Line 369 (] (ADDR (GVAR reg_l)) (LVAR 28))
// Line 369 (ADDR (GVAR reg_l))
	lea  rax, reg_l[rip]
	push rax
// Line 369 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 369 (ADDR  "\tcmp  %s, 0\n" )
	lea  rax, .LS000069[rip]
	push rax
// Line 369 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000385
	mov  rax, 0
	call fprintf
	jmp  .L000386
.L000385:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000386:
	push rax
	pop  rax
// Line 370 (CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 36):) )
// Line 370 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
// Line 370 (ADDR  "\tjne  %s\n" )
	lea  rax, .LS000070[rip]
	push rax
// Line 370 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000387
	mov  rax, 0
	call fprintf
	jmp  .L000388
.L000387:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000388:
	push rax
	pop  rax
// Line 372 (CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 372 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 372 (LVAR 8)
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
	jnz  .L000389
	mov  rax, 0
	call gen
	jmp  .L000390
.L000389:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000390:
	push rax
	pop  rax
// Line 381 (IF (CALL is_aryth ((LVAR 24):) ) (BLOCK(= (LVAR 28)  1 ):) (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 374 (CALL is_aryth ((LVAR 24):) )
// Line 374 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000393
	mov  rax, 0
	call is_aryth
	jmp  .L000394
.L000393:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000394:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000391
// Line 376 (BLOCK(= (LVAR 28)  1 ):)
// Line 375 (= (LVAR 28)  1 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 375  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000392
.L000391:
// Line 381 (IF (CALL is_ptr ((LVAR 24):) ) (BLOCK(= (LVAR 28)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 376 (CALL is_ptr ((LVAR 24):) )
// Line 376 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000397
	mov  rax, 0
	call is_ptr
	jmp  .L000398
.L000397:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000398:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000395
// Line 378 (BLOCK(= (LVAR 28)  0 ):)
// Line 377 (= (LVAR 28)  0 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 377  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000396
.L000395:
// Line 379 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 379 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000071[rip]
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
	jnz  .L000399
	mov  rax, 0
	call error_at_node
	jmp  .L000400
.L000399:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000400:
	push rax
	pop  rax
.L000396:
.L000392:
// Line 381 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 381 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000072[rip]
	push rax
// Line 381 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000401
	mov  rax, 0
	call fprintf
	jmp  .L000402
.L000401:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000402:
	push rax
	pop  rax
// Line 382 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28)))):) )
// Line 382 (ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 28))))
// Line 382 (] (ADDR (GVAR reg_l)) (LVAR 28))
// Line 382 (ADDR (GVAR reg_l))
	lea  rax, reg_l[rip]
	push rax
// Line 382 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 382 (ADDR  "\tcmp  %s, 0\n" )
	lea  rax, .LS000073[rip]
	push rax
// Line 382 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000403
	mov  rax, 0
	call fprintf
	jmp  .L000404
.L000403:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000404:
	push rax
	pop  rax
// Line 383 (CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 36):) )
// Line 383 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
// Line 383 (ADDR  "\tjne  %s\n" )
	lea  rax, .LS000074[rip]
	push rax
// Line 383 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000405
	mov  rax, 0
	call fprintf
	jmp  .L000406
.L000405:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000406:
	push rax
	pop  rax
// Line 385 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) )
// Line 385 (ADDR  "\tmov  rax, 0\n" )
	lea  rax, .LS000075[rip]
	push rax
// Line 385 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000407
	mov  rax, 0
	call fprintf
	jmp  .L000408
.L000407:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000408:
	push rax
	pop  rax
// Line 386 (CALL emit_jmp ((LVAR 44):) )
// Line 386 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000409
	mov  rax, 0
	call emit_jmp
	jmp  .L000410
.L000409:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000410:
	push rax
	pop  rax
// Line 388 (CALL emit_label ((LVAR 36):) )
// Line 388 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000411
	mov  rax, 0
	call emit_label
	jmp  .L000412
.L000411:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000412:
	push rax
	pop  rax
// Line 389 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) )
// Line 389 (ADDR  "\tmov  rax, 1\n" )
	lea  rax, .LS000076[rip]
	push rax
// Line 389 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000413
	mov  rax, 0
	call fprintf
	jmp  .L000414
.L000413:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000414:
	push rax
	pop  rax
// Line 390 (CALL emit_label ((LVAR 44):) )
// Line 390 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000415
	mov  rax, 0
	call emit_label
	jmp  .L000416
.L000415:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000416:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen_lnot
// Line 393 FDECL gen_lnot func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 28) (CALL new_label () )):(= (LVAR 36) (CALL new_label () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 20)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 20)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 20)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 28):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) ):(CALL emit_jmp ((LVAR 36):) ):(CALL emit_label ((LVAR 28):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) ):(CALL emit_label ((LVAR 36):) ):))
gen_lnot:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 8], rdi
// Line 394 (= (LVAR 16) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 394 (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 394 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 394 (LVAR 8)
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
	jnz  .L000417
	mov  rax, 0
	call type
	jmp  .L000418
.L000417:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000418:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 396 (= (LVAR 28) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 396 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000419
	mov  rax, 0
	call new_label
	jmp  .L000420
.L000419:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000420:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 397 (= (LVAR 36) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 397 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000421
	mov  rax, 0
	call new_label
	jmp  .L000422
.L000421:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000422:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 398 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 398 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 398 (LVAR 8)
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
	jnz  .L000423
	mov  rax, 0
	call gen
	jmp  .L000424
.L000423:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000424:
	push rax
	pop  rax
// Line 407 (IF (CALL is_aryth ((LVAR 16):) ) (BLOCK(= (LVAR 20)  1 ):) (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 20)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 400 (CALL is_aryth ((LVAR 16):) )
// Line 400 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000427
	mov  rax, 0
	call is_aryth
	jmp  .L000428
.L000427:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000428:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000425
// Line 402 (BLOCK(= (LVAR 20)  1 ):)
// Line 401 (= (LVAR 20)  1 )
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 401  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000426
.L000425:
// Line 407 (IF (CALL is_ptr ((LVAR 16):) ) (BLOCK(= (LVAR 20)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 402 (CALL is_ptr ((LVAR 16):) )
// Line 402 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000431
	mov  rax, 0
	call is_ptr
	jmp  .L000432
.L000431:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000432:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000429
// Line 404 (BLOCK(= (LVAR 20)  0 ):)
// Line 403 (= (LVAR 20)  0 )
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 403  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000430
.L000429:
// Line 405 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 405 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000077[rip]
	push rax
// Line 405 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000433
	mov  rax, 0
	call error_at_node
	jmp  .L000434
.L000433:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000434:
	push rax
	pop  rax
.L000430:
.L000426:
// Line 407 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 407 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000078[rip]
	push rax
// Line 407 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000435
	mov  rax, 0
	call fprintf
	jmp  .L000436
.L000435:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000436:
	push rax
	pop  rax
// Line 408 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, 0\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 20)))):) )
// Line 408 (ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 20))))
// Line 408 (] (ADDR (GVAR reg_l)) (LVAR 20))
// Line 408 (ADDR (GVAR reg_l))
	lea  rax, reg_l[rip]
	push rax
// Line 408 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 408 (ADDR  "\tcmp  %s, 0\n" )
	lea  rax, .LS000079[rip]
	push rax
// Line 408 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000437
	mov  rax, 0
	call fprintf
	jmp  .L000438
.L000437:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000438:
	push rax
	pop  rax
// Line 409 (CALL fprintf ((GVAR output):(ADDR  "\tjne  %s\n" ):(LVAR 28):) )
// Line 409 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
// Line 409 (ADDR  "\tjne  %s\n" )
	lea  rax, .LS000080[rip]
	push rax
// Line 409 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000439
	mov  rax, 0
	call fprintf
	jmp  .L000440
.L000439:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000440:
	push rax
	pop  rax
// Line 411 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 1\n" ):) )
// Line 411 (ADDR  "\tmov  rax, 1\n" )
	lea  rax, .LS000081[rip]
	push rax
// Line 411 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000441
	mov  rax, 0
	call fprintf
	jmp  .L000442
.L000441:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000442:
	push rax
	pop  rax
// Line 412 (CALL emit_jmp ((LVAR 36):) )
// Line 412 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000443
	mov  rax, 0
	call emit_jmp
	jmp  .L000444
.L000443:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000444:
	push rax
	pop  rax
// Line 414 (CALL emit_label ((LVAR 28):) )
// Line 414 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000445
	mov  rax, 0
	call emit_label
	jmp  .L000446
.L000445:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000446:
	push rax
	pop  rax
// Line 415 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rax, 0\n" ):) )
// Line 415 (ADDR  "\tmov  rax, 0\n" )
	lea  rax, .LS000082[rip]
	push rax
// Line 415 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000447
	mov  rax, 0
	call fprintf
	jmp  .L000448
.L000447:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000448:
	push rax
	pop  rax
// Line 416 (CALL emit_label ((LVAR 36):) )
// Line 416 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000449
	mov  rax, 0
	call emit_label
	jmp  .L000450
.L000449:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000450:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global gen
// Line 419 FDECL gen func ( * struct <Node>  node ) void 
//    (LVAR 8) 
//    (BLOCK(IF (! (LVAR 8)) (RETURN NULL ) NULL ):(CALL fprintf ((GVAR output):(ADDR  "// Line %d " ):(CALL get_line ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(GVAR source_text):) ):) ):(CALL print_node ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(IF (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  12 ) (BLOCK(CALL gen_land ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  13 ) (BLOCK(CALL gen_lor ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 5  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 6  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 7  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 15  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 16  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 17  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 18  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 19  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) )):)):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):) NULL ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 28  body:(BLOCK(CALL gen_if ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 29  body:(BLOCK(CALL gen_while ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 30  body:(BLOCK(CALL gen_for ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 31  body:(BLOCK(CALL push_loop_switch ((LVAR 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], edi\n" ):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((CALL get_break ((CAST * void   0 ):) ):) ):(FOR init: (= (LVAR 28)  0 )cond: (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):)):(CALL emit_label ((CALL get_break ((CAST * void   0 ):) ):) ):(CALL pop_loop () ):(RETURN NULL ):)):(CASE cond: 37  body:(BLOCK(CALL gen_block ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 34  body:(BLOCK(IF (MEMBER (DEREF (LVAR 8)) lhs 8) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):(RETURN NULL ):)):(CASE cond: 32  body:(BLOCK(= (LVAR 16) (CALL get_inner_switch () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 16)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  eax, edi\n" ):) ):(= (LVAR 24) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) rhs 16):) ):(RETURN NULL ):)):(CASE cond: 33  body:(BLOCK(= (LVAR 24) (CALL new_label () )):(CALL emit_jmp ((LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL emit_jmp ((CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL emit_jmp ((CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpush %d\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 24  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 20  body:(BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) )) (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):) (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL )):(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):)):(CASE cond: 25  body:(BLOCK(CALL gen_call ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 38  body:(BLOCK(CALL gen_fdecl ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 2  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(IF (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )) (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) ) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 14  body:(BLOCK(CALL gen_lnot ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):)):(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented NodeKind." ):) ):))
gen:
	push rbp
	mov  rbp, rsp
	sub  rsp, 96
	mov  [rbp - 8], rdi
// Line 422 (IF (! (LVAR 8)) (RETURN NULL ) NULL )
// Line 420 (! (LVAR 8))
// Line 420 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000453
	mov  rax, 1
	jmp  .L000454
.L000453:
	mov  rax, 0
.L000454:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000451
// Line 421 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000452
.L000451:
.L000452:
// Line 422 (CALL fprintf ((GVAR output):(ADDR  "// Line %d " ):(CALL get_line ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(GVAR source_text):) ):) )
// Line 422 (CALL get_line ((MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24):(GVAR source_text):) )
// Line 422 (GVAR source_text)
	lea  rax, source_text[rip]
	mov  rax, [rax]
	push rax
// Line 422 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) token 72)) str 24)
// Line 422 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 422 (LVAR 8)
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
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000455
	mov  rax, 0
	call get_line
	jmp  .L000456
.L000455:
	sub  rsp, 8
	mov  rax, 0
	call get_line
	add  rsp, 8
.L000456:
	push rax
// Line 422 (ADDR  "// Line %d " )
	lea  rax, .LS000083[rip]
	push rax
// Line 422 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000457
	mov  rax, 0
	call fprintf
	jmp  .L000458
.L000457:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000458:
	push rax
	pop  rax
// Line 423 (CALL print_node ((LVAR 8):) )
// Line 423 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000459
	mov  rax, 0
	call print_node
	jmp  .L000460
.L000459:
	sub  rsp, 8
	mov  rax, 0
	call print_node
	add  rsp, 8
.L000460:
	push rax
	pop  rax
// Line 424 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 424 (ADDR  "\n" )
	lea  rax, .LS000084[rip]
	push rax
// Line 424 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000461
	mov  rax, 0
	call fprintf
	jmp  .L000462
.L000461:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000462:
	push rax
	pop  rax
// Line 567 (IF (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) ) (BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  12 ) (BLOCK(CALL gen_land ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  13 ) (BLOCK(CALL gen_lor ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 5  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 6  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 7  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 15  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 16  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 17  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 18  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 19  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) )):)):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):) NULL )
// Line 431 (CALL is_binary_op ((MEMBER (DEREF (LVAR 8)) kind 0):) )
// Line 431 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 431 (LVAR 8)
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
	jnz  .L000465
	mov  rax, 0
	call is_binary_op
	jmp  .L000466
.L000465:
	sub  rsp, 8
	mov  rax, 0
	call is_binary_op
	add  rsp, 8
.L000466:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000463
// Line 567 (BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  12 ) (BLOCK(CALL gen_land ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  13 ) (BLOCK(CALL gen_lor ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 5  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 6  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 7  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 15  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 16  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 17  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 18  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 19  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) )):)):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)
// Line 432 (= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 432 (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 432 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 432 (LVAR 8)
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
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 433 (= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 433 (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 433 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 433 (LVAR 8)
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
	jnz  .L000469
	mov  rax, 0
	call type
	jmp  .L000470
.L000469:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000470:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 440 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  12 ) (BLOCK(CALL gen_land ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL )
// Line 435 (== (MEMBER (DEREF (LVAR 8)) kind 0)  12 )
// Line 435 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 435 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 435  12 
	push 12
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000471
// Line 440 (BLOCK(CALL gen_land ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):)
// Line 436 (CALL gen_land ((LVAR 8):) )
// Line 436 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000473
	mov  rax, 0
	call gen_land
	jmp  .L000474
.L000473:
	sub  rsp, 8
	mov  rax, 0
	call gen_land
	add  rsp, 8
.L000474:
	push rax
	pop  rax
// Line 437 (CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) )
// Line 437 (ADDR  "\tpush  rax\n" )
	lea  rax, .LS000085[rip]
	push rax
// Line 437 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000475
	mov  rax, 0
	call fprintf
	jmp  .L000476
.L000475:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000476:
	push rax
	pop  rax
// Line 438 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000472
.L000471:
.L000472:
// Line 445 (IF (== (MEMBER (DEREF (LVAR 8)) kind 0)  13 ) (BLOCK(CALL gen_lor ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):) NULL )
// Line 440 (== (MEMBER (DEREF (LVAR 8)) kind 0)  13 )
// Line 440 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 440 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 440  13 
	push 13
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000477
// Line 445 (BLOCK(CALL gen_lor ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) ):(RETURN NULL ):)
// Line 441 (CALL gen_lor ((LVAR 8):) )
// Line 441 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000479
	mov  rax, 0
	call gen_lor
	jmp  .L000480
.L000479:
	sub  rsp, 8
	mov  rax, 0
	call gen_lor
	add  rsp, 8
.L000480:
	push rax
	pop  rax
// Line 442 (CALL fprintf ((GVAR output):(ADDR  "\tpush  rax\n" ):) )
// Line 442 (ADDR  "\tpush  rax\n" )
	lea  rax, .LS000086[rip]
	push rax
// Line 442 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000481
	mov  rax, 0
	call fprintf
	jmp  .L000482
.L000481:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000482:
	push rax
	pop  rax
// Line 443 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000478
.L000477:
.L000478:
// Line 445 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 445 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 445 (LVAR 8)
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
	jnz  .L000483
	mov  rax, 0
	call gen
	jmp  .L000484
.L000483:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000484:
	push rax
	pop  rax
// Line 446 (CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 446 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 446 (LVAR 8)
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
	jnz  .L000485
	mov  rax, 0
	call gen
	jmp  .L000486
.L000485:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000486:
	push rax
	pop  rax
// Line 448 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) )
// Line 448 (ADDR  "\tpop  rdi\n" )
	lea  rax, .LS000087[rip]
	push rax
// Line 448 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000487
	mov  rax, 0
	call fprintf
	jmp  .L000488
.L000487:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000488:
	push rax
	pop  rax
// Line 449 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 449 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000088[rip]
	push rax
// Line 449 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000489
	mov  rax, 0
	call fprintf
	jmp  .L000490
.L000489:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000490:
	push rax
	pop  rax
// Line 452 (SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 4  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 5  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 6  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 7  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 15  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 16  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 17  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 18  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 19  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) )):))
	mov  rax, rbp
	sub  rax, 64
	push rax
// Line 452 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 452 (LVAR 8)
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
// Line 564 (BLOCK(CASE cond: 4  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 5  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)):(CASE cond: 6  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 7  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 15  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 16  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 17  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 18  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 19  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)):(CASE cond: 8  body:(BLOCK)):(CASE cond: 9  body:(BLOCK)):(CASE cond: 10  body:(BLOCK)):(CASE cond: 11  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :)):(DEFAULT body:(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) )):)
// Line 453 (CASE cond: 4  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :))
// Line 453  4 
	push 4
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000492
// Line 465 (CASE cond: 5  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :))
// Line 465  5 
	push 5
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000493
// Line 479 (CASE cond: 6  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :))
// Line 479  6 
	push 6
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000494
// Line 486 (CASE cond: 7  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :))
// Line 486  7 
	push 7
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000495
// Line 494 (CASE cond: 15  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :))
// Line 494  15 
	push 15
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000496
// Line 501 (CASE cond: 16  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :))
// Line 501  16 
	push 16
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000497
// Line 508 (CASE cond: 17  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :))
// Line 508  17 
	push 17
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000498
// Line 515 (CASE cond: 18  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :))
// Line 515  18 
	push 18
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000499
// Line 523 (CASE cond: 19  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :))
// Line 523  19 
	push 19
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000500
// Line 532 (CASE cond: 8  body:(BLOCK))
// Line 532  8 
	push 8
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000501
// Line 533 (CASE cond: 9  body:(BLOCK))
// Line 533  9 
	push 9
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000502
// Line 534 (CASE cond: 10  body:(BLOCK))
// Line 534  10 
	push 10
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000503
// Line 535 (CASE cond: 11  body:(BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :))
// Line 535  11 
	push 11
	mov  rax, rbp
	sub  rax, 64
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000504
// Line 561 (DEFAULT body:(CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) ))
	jmp  .L000505
	jmp  .L000491
.L000492:
// Line 454 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)
// Line 464 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))))
// Line 454 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 454 (CALL is_aryth ((LVAR 36):) )
// Line 454 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000510
	mov  rax, 0
	call is_aryth
	jmp  .L000511
.L000510:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000511:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000508
// Line 454 (CALL is_aryth ((LVAR 44):) )
// Line 454 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000512
	mov  rax, 0
	call is_aryth
	jmp  .L000513
.L000512:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000513:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000508
	mov  rax, 1
	jmp  .L000509
.L000508:
	mov  rax, 0
.L000509:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000506
// Line 456 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):)
// Line 455 (CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) )
// Line 455 (ADDR  "\tadd  rax, rdi\n" )
	lea  rax, .LS000089[rip]
	push rax
// Line 455 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000514
	mov  rax, 0
	call fprintf
	jmp  .L000515
.L000514:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000515:
	push rax
	pop  rax
	jmp  .L000507
.L000506:
// Line 464 (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 456 (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 456 (CALL is_ptr ((LVAR 36):) )
// Line 456 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000520
	mov  rax, 0
	call is_ptr
	jmp  .L000521
.L000520:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000521:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000518
// Line 456 (CALL is_aryth ((LVAR 44):) )
// Line 456 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000522
	mov  rax, 0
	call is_aryth
	jmp  .L000523
.L000522:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000523:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000518
	mov  rax, 1
	jmp  .L000519
.L000518:
	mov  rax, 0
.L000519:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000516
// Line 459 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):)
// Line 457 (CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) )
// Line 457 (CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) )
// Line 457 (MEMBER (DEREF (LVAR 36)) ptr_to 8)
// Line 457 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000524
	mov  rax, 0
	call sizeof_type
	jmp  .L000525
.L000524:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000525:
	push rax
// Line 457 (ADDR  "\timul rdi, %d\n" )
	lea  rax, .LS000090[rip]
	push rax
// Line 457 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
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
// Line 458 (CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) )
// Line 458 (ADDR  "\tadd  rax, rdi\n" )
	lea  rax, .LS000091[rip]
	push rax
// Line 458 (GVAR output)
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
	jmp  .L000517
.L000516:
// Line 464 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 459 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) ))
// Line 459 (CALL is_aryth ((LVAR 36):) )
// Line 459 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000534
	mov  rax, 0
	call is_aryth
	jmp  .L000535
.L000534:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000535:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000532
// Line 459 (CALL is_ptr ((LVAR 44):) )
// Line 459 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000536
	mov  rax, 0
	call is_ptr
	jmp  .L000537
.L000536:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000537:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000532
	mov  rax, 1
	jmp  .L000533
.L000532:
	mov  rax, 0
.L000533:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000530
// Line 462 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) ):)
// Line 460 (CALL fprintf ((GVAR output):(ADDR  "\timul rax, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) ):) )
// Line 460 (CALL sizeof_type ((MEMBER (DEREF (LVAR 44)) ptr_to 8):) )
// Line 460 (MEMBER (DEREF (LVAR 44)) ptr_to 8)
// Line 460 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000538
	mov  rax, 0
	call sizeof_type
	jmp  .L000539
.L000538:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000539:
	push rax
// Line 460 (ADDR  "\timul rax, %d\n" )
	lea  rax, .LS000092[rip]
	push rax
// Line 460 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000540
	mov  rax, 0
	call fprintf
	jmp  .L000541
.L000540:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000541:
	push rax
	pop  rax
// Line 461 (CALL fprintf ((GVAR output):(ADDR  "\tadd  rax, rdi\n" ):) )
// Line 461 (ADDR  "\tadd  rax, rdi\n" )
	lea  rax, .LS000093[rip]
	push rax
// Line 461 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
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
	jmp  .L000531
.L000530:
// Line 463 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 463 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000094[rip]
	push rax
// Line 463 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000544
	mov  rax, 0
	call error_at_node
	jmp  .L000545
.L000544:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000545:
	push rax
	pop  rax
.L000531:
.L000517:
.L000507:
// Line 464 BREAK 
	jmp  .L000491
.L000493:
// Line 466 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))):BREAK :)
// Line 478 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))))
// Line 466 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 466 (CALL is_aryth ((LVAR 36):) )
// Line 466 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000550
	mov  rax, 0
	call is_aryth
	jmp  .L000551
.L000550:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000551:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000548
// Line 466 (CALL is_aryth ((LVAR 44):) )
// Line 466 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000552
	mov  rax, 0
	call is_aryth
	jmp  .L000553
.L000552:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000553:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000548
	mov  rax, 1
	jmp  .L000549
.L000548:
	mov  rax, 0
.L000549:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000546
// Line 468 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):)
// Line 467 (CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) )
// Line 467 (ADDR  "\tsub  rax, rdi\n" )
	lea  rax, .LS000095[rip]
	push rax
// Line 467 (GVAR output)
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
// Line 478 (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 468 (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) ))
// Line 468 (CALL is_ptr ((LVAR 36):) )
// Line 468 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000560
	mov  rax, 0
	call is_ptr
	jmp  .L000561
.L000560:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000561:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000558
// Line 468 (CALL is_ptr ((LVAR 44):) )
// Line 468 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000562
	mov  rax, 0
	call is_ptr
	jmp  .L000563
.L000562:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000563:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000558
	mov  rax, 1
	jmp  .L000559
.L000558:
	mov  rax, 0
.L000559:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000556
// Line 473 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) ):)
// Line 469 (CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) )
// Line 469 (ADDR  "\tsub  rax, rdi\n" )
	lea  rax, .LS000096[rip]
	push rax
// Line 469 (GVAR output)
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
// Line 470 (CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) )
// Line 470 (ADDR  "\tcqo\n" )
	lea  rax, .LS000097[rip]
	push rax
// Line 470 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000566
	mov  rax, 0
	call fprintf
	jmp  .L000567
.L000566:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000567:
	push rax
	pop  rax
// Line 471 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) )
// Line 471 (CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) )
// Line 471 (MEMBER (DEREF (LVAR 36)) ptr_to 8)
// Line 471 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000568
	mov  rax, 0
	call sizeof_type
	jmp  .L000569
.L000568:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000569:
	push rax
// Line 471 (ADDR  "\tmov  rdi, %d\n" )
	lea  rax, .LS000098[rip]
	push rax
// Line 471 (GVAR output)
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
// Line 472 (CALL fprintf ((GVAR output):(ADDR  "\tidiv rdi\n" ):) )
// Line 472 (ADDR  "\tidiv rdi\n" )
	lea  rax, .LS000099[rip]
	push rax
// Line 472 (GVAR output)
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
	jmp  .L000557
.L000556:
// Line 478 (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 473 (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 473 (CALL is_ptr ((LVAR 36):) )
// Line 473 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000578
	mov  rax, 0
	call is_ptr
	jmp  .L000579
.L000578:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000579:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000576
// Line 473 (CALL is_aryth ((LVAR 44):) )
// Line 473 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000580
	mov  rax, 0
	call is_aryth
	jmp  .L000581
.L000580:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000581:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000576
	mov  rax, 1
	jmp  .L000577
.L000576:
	mov  rax, 0
.L000577:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000574
// Line 476 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) ):)
// Line 474 (CALL fprintf ((GVAR output):(ADDR  "\timul rdi, %d\n" ):(CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) ):) )
// Line 474 (CALL sizeof_type ((MEMBER (DEREF (LVAR 36)) ptr_to 8):) )
// Line 474 (MEMBER (DEREF (LVAR 36)) ptr_to 8)
// Line 474 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000582
	mov  rax, 0
	call sizeof_type
	jmp  .L000583
.L000582:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000583:
	push rax
// Line 474 (ADDR  "\timul rdi, %d\n" )
	lea  rax, .LS000100[rip]
	push rax
// Line 474 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000584
	mov  rax, 0
	call fprintf
	jmp  .L000585
.L000584:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000585:
	push rax
	pop  rax
// Line 475 (CALL fprintf ((GVAR output):(ADDR  "\tsub  rax, rdi\n" ):) )
// Line 475 (ADDR  "\tsub  rax, rdi\n" )
	lea  rax, .LS000101[rip]
	push rax
// Line 475 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000586
	mov  rax, 0
	call fprintf
	jmp  .L000587
.L000586:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000587:
	push rax
	pop  rax
	jmp  .L000575
.L000574:
// Line 477 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 477 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000102[rip]
	push rax
// Line 477 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000588
	mov  rax, 0
	call error_at_node
	jmp  .L000589
.L000588:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000589:
	push rax
	pop  rax
.L000575:
.L000557:
.L000547:
// Line 478 BREAK 
	jmp  .L000491
.L000494:
// Line 480 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)
// Line 485 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) ))
// Line 480 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 480 (CALL is_aryth ((LVAR 36):) )
// Line 480 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000594
	mov  rax, 0
	call is_aryth
	jmp  .L000595
.L000594:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000595:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000592
// Line 480 (CALL is_aryth ((LVAR 44):) )
// Line 480 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000596
	mov  rax, 0
	call is_aryth
	jmp  .L000597
.L000596:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000597:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000592
	mov  rax, 1
	jmp  .L000593
.L000592:
	mov  rax, 0
.L000593:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000590
// Line 482 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) ):)
// Line 481 (CALL fprintf ((GVAR output):(ADDR  "\timul rax, rdi\n" ):) )
// Line 481 (ADDR  "\timul rax, rdi\n" )
	lea  rax, .LS000103[rip]
	push rax
// Line 481 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000598
	mov  rax, 0
	call fprintf
	jmp  .L000599
.L000598:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000599:
	push rax
	pop  rax
	jmp  .L000591
.L000590:
// Line 483 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )
// Line 484 (ADDR  "Illegal operation. (Not an arythmetic type)" )
	lea  rax, .LS000104[rip]
	push rax
// Line 483 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000600
	mov  rax, 0
	call error_at_node
	jmp  .L000601
.L000600:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000601:
	push rax
	pop  rax
.L000591:
// Line 485 BREAK 
	jmp  .L000491
.L000495:
// Line 487 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)
// Line 493 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) ))
// Line 487 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 487 (CALL is_aryth ((LVAR 36):) )
// Line 487 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000606
	mov  rax, 0
	call is_aryth
	jmp  .L000607
.L000606:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000607:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000604
// Line 487 (CALL is_aryth ((LVAR 44):) )
// Line 487 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000608
	mov  rax, 0
	call is_aryth
	jmp  .L000609
.L000608:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000609:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000604
	mov  rax, 1
	jmp  .L000605
.L000604:
	mov  rax, 0
.L000605:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000602
// Line 490 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) ):)
// Line 488 (CALL fprintf ((GVAR output):(ADDR  "\tcqo\n" ):) )
// Line 488 (ADDR  "\tcqo\n" )
	lea  rax, .LS000105[rip]
	push rax
// Line 488 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000610
	mov  rax, 0
	call fprintf
	jmp  .L000611
.L000610:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000611:
	push rax
	pop  rax
// Line 489 (CALL fprintf ((GVAR output):(ADDR  "\tidiv rax, rdi\n" ):) )
// Line 489 (ADDR  "\tidiv rax, rdi\n" )
	lea  rax, .LS000106[rip]
	push rax
// Line 489 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000612
	mov  rax, 0
	call fprintf
	jmp  .L000613
.L000612:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000613:
	push rax
	pop  rax
	jmp  .L000603
.L000602:
// Line 491 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )
// Line 492 (ADDR  "Illegal operation. (Not an arythmetic type)" )
	lea  rax, .LS000107[rip]
	push rax
// Line 491 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000614
	mov  rax, 0
	call error_at_node
	jmp  .L000615
.L000614:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000615:
	push rax
	pop  rax
.L000603:
// Line 493 BREAK 
	jmp  .L000491
.L000496:
// Line 495 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)
// Line 500 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) ))
// Line 495 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 495 (CALL is_aryth ((LVAR 36):) )
// Line 495 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000620
	mov  rax, 0
	call is_aryth
	jmp  .L000621
.L000620:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000621:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000618
// Line 495 (CALL is_aryth ((LVAR 44):) )
// Line 495 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000622
	mov  rax, 0
	call is_aryth
	jmp  .L000623
.L000622:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000623:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000618
	mov  rax, 1
	jmp  .L000619
.L000618:
	mov  rax, 0
.L000619:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000616
// Line 497 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) ):)
// Line 496 (CALL fprintf ((GVAR output):(ADDR  "\tand  rax, rdi\n" ):) )
// Line 496 (ADDR  "\tand  rax, rdi\n" )
	lea  rax, .LS000108[rip]
	push rax
// Line 496 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000624
	mov  rax, 0
	call fprintf
	jmp  .L000625
.L000624:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000625:
	push rax
	pop  rax
	jmp  .L000617
.L000616:
// Line 498 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )
// Line 499 (ADDR  "Illegal operation. (Not an arythmetic type)" )
	lea  rax, .LS000109[rip]
	push rax
// Line 498 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000626
	mov  rax, 0
	call error_at_node
	jmp  .L000627
.L000626:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000627:
	push rax
	pop  rax
.L000617:
// Line 500 BREAK 
	jmp  .L000491
.L000497:
// Line 502 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)
// Line 507 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) ))
// Line 502 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 502 (CALL is_aryth ((LVAR 36):) )
// Line 502 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000632
	mov  rax, 0
	call is_aryth
	jmp  .L000633
.L000632:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000633:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000630
// Line 502 (CALL is_aryth ((LVAR 44):) )
// Line 502 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000634
	mov  rax, 0
	call is_aryth
	jmp  .L000635
.L000634:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000635:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000630
	mov  rax, 1
	jmp  .L000631
.L000630:
	mov  rax, 0
.L000631:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000628
// Line 504 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) ):)
// Line 503 (CALL fprintf ((GVAR output):(ADDR  "\tor   rax, rdi\n" ):) )
// Line 503 (ADDR  "\tor   rax, rdi\n" )
	lea  rax, .LS000110[rip]
	push rax
// Line 503 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000636
	mov  rax, 0
	call fprintf
	jmp  .L000637
.L000636:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000637:
	push rax
	pop  rax
	jmp  .L000629
.L000628:
// Line 505 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )
// Line 506 (ADDR  "Illegal operation. (Not an arythmetic type)" )
	lea  rax, .LS000111[rip]
	push rax
// Line 505 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000638
	mov  rax, 0
	call error_at_node
	jmp  .L000639
.L000638:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000639:
	push rax
	pop  rax
.L000629:
// Line 507 BREAK 
	jmp  .L000491
.L000498:
// Line 509 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)
// Line 514 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) ))
// Line 509 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 509 (CALL is_aryth ((LVAR 36):) )
// Line 509 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000644
	mov  rax, 0
	call is_aryth
	jmp  .L000645
.L000644:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000645:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000642
// Line 509 (CALL is_aryth ((LVAR 44):) )
// Line 509 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000646
	mov  rax, 0
	call is_aryth
	jmp  .L000647
.L000646:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000647:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000642
	mov  rax, 1
	jmp  .L000643
.L000642:
	mov  rax, 0
.L000643:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000640
// Line 511 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) ):)
// Line 510 (CALL fprintf ((GVAR output):(ADDR  "\txor  rax, rdi\n" ):) )
// Line 510 (ADDR  "\txor  rax, rdi\n" )
	lea  rax, .LS000112[rip]
	push rax
// Line 510 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000648
	mov  rax, 0
	call fprintf
	jmp  .L000649
.L000648:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000649:
	push rax
	pop  rax
	jmp  .L000641
.L000640:
// Line 512 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )
// Line 513 (ADDR  "Illegal operation. (Not an arythmetic type)" )
	lea  rax, .LS000113[rip]
	push rax
// Line 512 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000650
	mov  rax, 0
	call error_at_node
	jmp  .L000651
.L000650:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000651:
	push rax
	pop  rax
.L000641:
// Line 514 BREAK 
	jmp  .L000491
.L000499:
// Line 516 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)
// Line 522 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) ))
// Line 516 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 516 (CALL is_aryth ((LVAR 36):) )
// Line 516 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000656
	mov  rax, 0
	call is_aryth
	jmp  .L000657
.L000656:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000657:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000654
// Line 516 (CALL is_aryth ((LVAR 44):) )
// Line 516 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000658
	mov  rax, 0
	call is_aryth
	jmp  .L000659
.L000658:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000659:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000654
	mov  rax, 1
	jmp  .L000655
.L000654:
	mov  rax, 0
.L000655:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000652
// Line 519 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) ):)
// Line 517 (CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) )
// Line 517 (ADDR  "\tmov  cl , dil\n" )
	lea  rax, .LS000114[rip]
	push rax
// Line 517 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000660
	mov  rax, 0
	call fprintf
	jmp  .L000661
.L000660:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000661:
	push rax
	pop  rax
// Line 518 (CALL fprintf ((GVAR output):(ADDR  "\tshr  rax, cl\n" ):) )
// Line 518 (ADDR  "\tshr  rax, cl\n" )
	lea  rax, .LS000115[rip]
	push rax
// Line 518 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000662
	mov  rax, 0
	call fprintf
	jmp  .L000663
.L000662:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000663:
	push rax
	pop  rax
	jmp  .L000653
.L000652:
// Line 520 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )
// Line 521 (ADDR  "Illegal operation. (Not an arythmetic type)" )
	lea  rax, .LS000116[rip]
	push rax
// Line 520 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000664
	mov  rax, 0
	call error_at_node
	jmp  .L000665
.L000664:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000665:
	push rax
	pop  rax
.L000653:
// Line 522 BREAK 
	jmp  .L000491
.L000500:
// Line 524 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )):BREAK :)
// Line 530 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) ))
// Line 524 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 524 (CALL is_aryth ((LVAR 36):) )
// Line 524 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000670
	mov  rax, 0
	call is_aryth
	jmp  .L000671
.L000670:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000671:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000668
// Line 524 (CALL is_aryth ((LVAR 44):) )
// Line 524 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000672
	mov  rax, 0
	call is_aryth
	jmp  .L000673
.L000672:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000673:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000668
	mov  rax, 1
	jmp  .L000669
.L000668:
	mov  rax, 0
.L000669:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000666
// Line 527 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) ):)
// Line 525 (CALL fprintf ((GVAR output):(ADDR  "\tmov  cl , dil\n" ):) )
// Line 525 (ADDR  "\tmov  cl , dil\n" )
	lea  rax, .LS000117[rip]
	push rax
// Line 525 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000674
	mov  rax, 0
	call fprintf
	jmp  .L000675
.L000674:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000675:
	push rax
	pop  rax
// Line 526 (CALL fprintf ((GVAR output):(ADDR  "\tshl  rax, cl\n" ):) )
// Line 526 (ADDR  "\tshl  rax, cl\n" )
	lea  rax, .LS000118[rip]
	push rax
// Line 526 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000676
	mov  rax, 0
	call fprintf
	jmp  .L000677
.L000676:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000677:
	push rax
	pop  rax
	jmp  .L000667
.L000666:
// Line 528 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Not an arythmetic type)" ):) )
// Line 529 (ADDR  "Illegal operation. (Not an arythmetic type)" )
	lea  rax, .LS000119[rip]
	push rax
// Line 528 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000678
	mov  rax, 0
	call error_at_node
	jmp  .L000679
.L000678:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000679:
	push rax
	pop  rax
.L000667:
// Line 530 BREAK 
	jmp  .L000491
.L000501:
// Line 533 (BLOCK)
.L000502:
// Line 534 (BLOCK)
.L000503:
// Line 535 (BLOCK)
.L000504:
// Line 536 (BLOCK(IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))):(SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) ):BREAK :)
// Line 542 (IF (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) )) (BLOCK(= (LVAR 48)  1 ):) (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )))
// Line 536 (&& (CALL is_aryth ((LVAR 36):) ) (CALL is_aryth ((LVAR 44):) ))
// Line 536 (CALL is_aryth ((LVAR 36):) )
// Line 536 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000684
	mov  rax, 0
	call is_aryth
	jmp  .L000685
.L000684:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000685:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000682
// Line 536 (CALL is_aryth ((LVAR 44):) )
// Line 536 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000686
	mov  rax, 0
	call is_aryth
	jmp  .L000687
.L000686:
	sub  rsp, 8
	mov  rax, 0
	call is_aryth
	add  rsp, 8
.L000687:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000682
	mov  rax, 1
	jmp  .L000683
.L000682:
	mov  rax, 0
.L000683:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000680
// Line 538 (BLOCK(= (LVAR 48)  1 ):)
// Line 537 (= (LVAR 48)  1 )
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 537  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000681
.L000680:
// Line 542 (IF (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) )) (BLOCK(= (LVAR 48)  0 ):) (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) ))
// Line 538 (&& (CALL is_ptr ((LVAR 36):) ) (CALL is_ptr ((LVAR 44):) ))
// Line 538 (CALL is_ptr ((LVAR 36):) )
// Line 538 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000692
	mov  rax, 0
	call is_ptr
	jmp  .L000693
.L000692:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000693:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000690
// Line 538 (CALL is_ptr ((LVAR 44):) )
// Line 538 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000694
	mov  rax, 0
	call is_ptr
	jmp  .L000695
.L000694:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000695:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000690
	mov  rax, 1
	jmp  .L000691
.L000690:
	mov  rax, 0
.L000691:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000688
// Line 540 (BLOCK(= (LVAR 48)  0 ):)
// Line 539 (= (LVAR 48)  0 )
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 539  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000689
.L000688:
// Line 541 (CALL error_at_node ((LVAR 8):(ADDR  "Illegal operation. (Type mismatch)" ):) )
// Line 541 (ADDR  "Illegal operation. (Type mismatch)" )
	lea  rax, .LS000120[rip]
	push rax
// Line 541 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000696
	mov  rax, 0
	call error_at_node
	jmp  .L000697
.L000696:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000697:
	push rax
	pop  rax
.L000689:
.L000681:
// Line 542 (SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):))
	mov  rax, rbp
	sub  rax, 60
	push rax
// Line 542 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 542 (LVAR 8)
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
// Line 556 (BLOCK(CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)):(CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)):(CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)):(CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)):)
// Line 543 (CASE cond: 8  body:(BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :))
// Line 543  8 
	push 8
	mov  rax, rbp
	sub  rax, 60
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000699
// Line 546 (CASE cond: 9  body:(BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :))
// Line 546  9 
	push 9
	mov  rax, rbp
	sub  rax, 60
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000700
// Line 549 (CASE cond: 10  body:(BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :))
// Line 549  10 
	push 10
	mov  rax, rbp
	sub  rax, 60
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000701
// Line 552 (CASE cond: 11  body:(BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :))
// Line 552  11 
	push 11
	mov  rax, rbp
	sub  rax, 60
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000702
	jmp  .L000698
.L000699:
// Line 544 (BLOCK(= (LVAR 56) (ADDR  "e" )):BREAK :)
// Line 544 (= (LVAR 56) (ADDR  "e" ))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 544 (ADDR  "e" )
	lea  rax, .LS000121[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 545 BREAK 
	jmp  .L000698
.L000700:
// Line 547 (BLOCK(= (LVAR 56) (ADDR  "ne" )):BREAK :)
// Line 547 (= (LVAR 56) (ADDR  "ne" ))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 547 (ADDR  "ne" )
	lea  rax, .LS000122[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 548 BREAK 
	jmp  .L000698
.L000701:
// Line 550 (BLOCK(= (LVAR 56) (ADDR  "ge" )):BREAK :)
// Line 550 (= (LVAR 56) (ADDR  "ge" ))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 550 (ADDR  "ge" )
	lea  rax, .LS000123[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 551 BREAK 
	jmp  .L000698
.L000702:
// Line 553 (BLOCK(= (LVAR 56) (ADDR  "g" )):BREAK :)
// Line 553 (= (LVAR 56) (ADDR  "g" ))
	mov  rax, rbp
	sub  rax, 56
	push rax
// Line 553 (ADDR  "g" )
	lea  rax, .LS000124[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 554 BREAK 
	jmp  .L000698
.L000698:
// Line 556 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  %s, %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48)))):) )
// Line 557 (ADDR (DEREF (] (ADDR (GVAR reg_r)) (LVAR 48))))
// Line 557 (] (ADDR (GVAR reg_r)) (LVAR 48))
// Line 557 (ADDR (GVAR reg_r))
	lea  rax, reg_r[rip]
	push rax
// Line 557 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 556 (ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48))))
// Line 556 (] (ADDR (GVAR reg_l)) (LVAR 48))
// Line 556 (ADDR (GVAR reg_l))
	lea  rax, reg_l[rip]
	push rax
// Line 556 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 556 (ADDR  "\tcmp  %s, %s\n" )
	lea  rax, .LS000125[rip]
	push rax
// Line 556 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000703
	mov  rax, 0
	call fprintf
	jmp  .L000704
.L000703:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000704:
	push rax
	pop  rax
// Line 558 (CALL fprintf ((GVAR output):(ADDR  "\tset%s al\n" ):(LVAR 56):) )
// Line 558 (LVAR 56)
	mov  rax, rbp
	sub  rax, 56
	mov  rax, [rax]
	push rax
// Line 558 (ADDR  "\tset%s al\n" )
	lea  rax, .LS000126[rip]
	push rax
// Line 558 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000705
	mov  rax, 0
	call fprintf
	jmp  .L000706
.L000705:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000706:
	push rax
	pop  rax
// Line 559 (CALL fprintf ((GVAR output):(ADDR  "\tmovzb %s, al\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48)))):) )
// Line 559 (ADDR (DEREF (] (ADDR (GVAR reg_l)) (LVAR 48))))
// Line 559 (] (ADDR (GVAR reg_l)) (LVAR 48))
// Line 559 (ADDR (GVAR reg_l))
	lea  rax, reg_l[rip]
	push rax
// Line 559 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 559 (ADDR  "\tmovzb %s, al\n" )
	lea  rax, .LS000127[rip]
	push rax
// Line 559 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000707
	mov  rax, 0
	call fprintf
	jmp  .L000708
.L000707:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000708:
	push rax
	pop  rax
// Line 560 BREAK 
	jmp  .L000491
.L000505:
// Line 562 (CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented binary op." ):) )
// Line 562 (ADDR  "gen(): Unimplemented binary op." )
	lea  rax, .LS000128[rip]
	push rax
// Line 562 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 562 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000709
	mov  rax, 0
	call error_at_token
	jmp  .L000710
.L000709:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000710:
	push rax
	pop  rax
.L000491:
// Line 564 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 564 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000129[rip]
	push rax
// Line 564 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000711
	mov  rax, 0
	call fprintf
	jmp  .L000712
.L000711:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000712:
	push rax
	pop  rax
// Line 565 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000464
.L000463:
.L000464:
// Line 567 (SWITCH cond: (MEMBER (DEREF (LVAR 8)) kind 0) body: (BLOCK(CASE cond: 28  body:(BLOCK(CALL gen_if ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 29  body:(BLOCK(CALL gen_while ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 30  body:(BLOCK(CALL gen_for ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 31  body:(BLOCK(CALL push_loop_switch ((LVAR 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], edi\n" ):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((CALL get_break ((CAST * void   0 ):) ):) ):(FOR init: (= (LVAR 28)  0 )cond: (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):)):(CALL emit_label ((CALL get_break ((CAST * void   0 ):) ):) ):(CALL pop_loop () ):(RETURN NULL ):)):(CASE cond: 37  body:(BLOCK(CALL gen_block ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 34  body:(BLOCK(IF (MEMBER (DEREF (LVAR 8)) lhs 8) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):(RETURN NULL ):)):(CASE cond: 32  body:(BLOCK(= (LVAR 16) (CALL get_inner_switch () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 16)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  eax, edi\n" ):) ):(= (LVAR 24) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) rhs 16):) ):(RETURN NULL ):)):(CASE cond: 33  body:(BLOCK(= (LVAR 24) (CALL new_label () )):(CALL emit_jmp ((LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL emit_jmp ((CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL emit_jmp ((CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpush %d\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 24  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 20  body:(BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) )) (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):) (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL )):(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):)):(CASE cond: 25  body:(BLOCK(CALL gen_call ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 38  body:(BLOCK(CALL gen_fdecl ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 2  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(IF (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )) (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) ) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 14  body:(BLOCK(CALL gen_lnot ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):))
	mov  rax, rbp
	sub  rax, 80
	push rax
// Line 567 (MEMBER (DEREF (LVAR 8)) kind 0)
// Line 567 (LVAR 8)
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
// Line 711 (BLOCK(CASE cond: 28  body:(BLOCK(CALL gen_if ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 29  body:(BLOCK(CALL gen_while ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 30  body:(BLOCK(CALL gen_for ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 31  body:(BLOCK(CALL push_loop_switch ((LVAR 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], edi\n" ):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((CALL get_break ((CAST * void   0 ):) ):) ):(FOR init: (= (LVAR 28)  0 )cond: (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):)):(CALL emit_label ((CALL get_break ((CAST * void   0 ):) ):) ):(CALL pop_loop () ):(RETURN NULL ):)):(CASE cond: 37  body:(BLOCK(CALL gen_block ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 34  body:(BLOCK(IF (MEMBER (DEREF (LVAR 8)) lhs 8) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):(RETURN NULL ):)):(CASE cond: 32  body:(BLOCK(= (LVAR 16) (CALL get_inner_switch () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 16)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  eax, edi\n" ):) ):(= (LVAR 24) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) rhs 16):) ):(RETURN NULL ):)):(CASE cond: 33  body:(BLOCK(= (LVAR 24) (CALL new_label () )):(CALL emit_jmp ((LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 35  body:(BLOCK(CALL emit_jmp ((CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 36  body:(BLOCK(CALL emit_jmp ((CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)):(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpush %d\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):)):(CASE cond: 23  body:(BLOCK)):(CASE cond: 24  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 26  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 27  body:(BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)):(CASE cond: 20  body:(BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) )) (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):) (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL )):(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):)):(CASE cond: 25  body:(BLOCK(CALL gen_call ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 38  body:(BLOCK(CALL gen_fdecl ((LVAR 8):) ):(RETURN NULL ):)):(CASE cond: 21  body:(BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 2  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 22  body:(BLOCK(IF (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )) (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) ) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):(CASE cond: 14  body:(BLOCK(CALL gen_lnot ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)):)
// Line 569 (CASE cond: 28  body:(BLOCK(CALL gen_if ((LVAR 8):) ):(RETURN NULL ):))
// Line 569  28 
	push 28
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000714
// Line 572 (CASE cond: 29  body:(BLOCK(CALL gen_while ((LVAR 8):) ):(RETURN NULL ):))
// Line 572  29 
	push 29
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000715
// Line 575 (CASE cond: 30  body:(BLOCK(CALL gen_for ((LVAR 8):) ):(RETURN NULL ):))
// Line 575  30 
	push 30
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000716
// Line 578 (CASE cond: 31  body:(BLOCK(CALL push_loop_switch ((LVAR 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], edi\n" ):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((CALL get_break ((CAST * void   0 ):) ):) ):(FOR init: (= (LVAR 28)  0 )cond: (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):)):(CALL emit_label ((CALL get_break ((CAST * void   0 ):) ):) ):(CALL pop_loop () ):(RETURN NULL ):))
// Line 578  31 
	push 31
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000717
// Line 597 (CASE cond: 37  body:(BLOCK(CALL gen_block ((LVAR 8):) ):(RETURN NULL ):))
// Line 597  37 
	push 37
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000718
// Line 600 (CASE cond: 34  body:(BLOCK(IF (MEMBER (DEREF (LVAR 8)) lhs 8) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):(RETURN NULL ):))
// Line 600  34 
	push 34
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000719
// Line 611 (CASE cond: 32  body:(BLOCK(= (LVAR 16) (CALL get_inner_switch () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 16)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  eax, edi\n" ):) ):(= (LVAR 24) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) rhs 16):) ):(RETURN NULL ):))
// Line 611  32 
	push 32
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000720
// Line 623 (CASE cond: 33  body:(BLOCK(= (LVAR 24) (CALL new_label () )):(CALL emit_jmp ((LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):))
// Line 623  33 
	push 33
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000721
// Line 630 (CASE cond: 35  body:(BLOCK(CALL emit_jmp ((CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):))
// Line 630  35 
	push 35
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000722
// Line 633 (CASE cond: 36  body:(BLOCK(CALL emit_jmp ((CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):))
// Line 633  36 
	push 36
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000723
// Line 637 (CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpush %d\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):))
// Line 637  1 
	push 1
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000724
// Line 640 (CASE cond: 23  body:(BLOCK))
// Line 640  23 
	push 23
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000725
// Line 641 (CASE cond: 24  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):))
// Line 641  24 
	push 24
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000726
// Line 646 (CASE cond: 26  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):))
// Line 646  26 
	push 26
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000727
// Line 651 (CASE cond: 27  body:(BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):))
// Line 651  27 
	push 27
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000728
// Line 654 (CASE cond: 20  body:(BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) )) (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):) (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL )):(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):))
// Line 654  20 
	push 20
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000729
// Line 682 (CASE cond: 25  body:(BLOCK(CALL gen_call ((LVAR 8):) ):(RETURN NULL ):))
// Line 682  25 
	push 25
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000730
// Line 685 (CASE cond: 38  body:(BLOCK(CALL gen_fdecl ((LVAR 8):) ):(RETURN NULL ):))
// Line 685  38 
	push 38
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000731
// Line 688 (CASE cond: 21  body:(BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):))
// Line 688  21 
	push 21
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000732
// Line 692 (CASE cond: 2  body:(BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):))
// Line 692  2 
	push 2
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000733
// Line 696 (CASE cond: 22  body:(BLOCK(IF (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )) (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) ) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):))
// Line 696  22 
	push 22
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000734
// Line 706 (CASE cond: 14  body:(BLOCK(CALL gen_lnot ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):))
// Line 706  14 
	push 14
	mov  rax, rbp
	sub  rax, 80
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000735
	jmp  .L000713
.L000714:
// Line 570 (BLOCK(CALL gen_if ((LVAR 8):) ):(RETURN NULL ):)
// Line 570 (CALL gen_if ((LVAR 8):) )
// Line 570 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000736
	mov  rax, 0
	call gen_if
	jmp  .L000737
.L000736:
	sub  rsp, 8
	mov  rax, 0
	call gen_if
	add  rsp, 8
.L000737:
	push rax
	pop  rax
// Line 571 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000715:
// Line 573 (BLOCK(CALL gen_while ((LVAR 8):) ):(RETURN NULL ):)
// Line 573 (CALL gen_while ((LVAR 8):) )
// Line 573 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000738
	mov  rax, 0
	call gen_while
	jmp  .L000739
.L000738:
	sub  rsp, 8
	mov  rax, 0
	call gen_while
	add  rsp, 8
.L000739:
	push rax
	pop  rax
// Line 574 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000716:
// Line 576 (BLOCK(CALL gen_for ((LVAR 8):) ):(RETURN NULL ):)
// Line 576 (CALL gen_for ((LVAR 8):) )
// Line 576 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000740
	mov  rax, 0
	call gen_for
	jmp  .L000741
.L000740:
	sub  rsp, 8
	mov  rax, 0
	call gen_for
	add  rsp, 8
.L000741:
	push rax
	pop  rax
// Line 577 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000717:
// Line 579 (BLOCK(CALL push_loop_switch ((LVAR 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], edi\n" ):) ):(CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL emit_jmp ((CALL get_break ((CAST * void   0 ):) ):) ):(FOR init: (= (LVAR 28)  0 )cond: (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):)):(CALL emit_label ((CALL get_break ((CAST * void   0 ):) ):) ):(CALL pop_loop () ):(RETURN NULL ):)
// Line 579 (CALL push_loop_switch ((LVAR 8):) )
// Line 579 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000742
	mov  rax, 0
	call push_loop_switch
	jmp  .L000743
.L000742:
	sub  rsp, 8
	mov  rax, 0
	call push_loop_switch
	add  rsp, 8
.L000743:
	push rax
	pop  rax
// Line 581 (CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 8)) lvar 40):) )
// Line 581 (MEMBER (DEREF (LVAR 8)) lvar 40)
// Line 581 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000744
	mov  rax, 0
	call emit_lvar_addr
	jmp  .L000745
.L000744:
	sub  rsp, 8
	mov  rax, 0
	call emit_lvar_addr
	add  rsp, 8
.L000745:
	push rax
	pop  rax
// Line 582 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 582 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000130[rip]
	push rax
// Line 582 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000746
	mov  rax, 0
	call fprintf
	jmp  .L000747
.L000746:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000747:
	push rax
	pop  rax
// Line 583 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 583 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 583 (LVAR 8)
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
	jnz  .L000748
	mov  rax, 0
	call gen
	jmp  .L000749
.L000748:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000749:
	push rax
	pop  rax
// Line 584 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) )
// Line 584 (ADDR  "\tpop  rdi\n" )
	lea  rax, .LS000131[rip]
	push rax
// Line 584 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000750
	mov  rax, 0
	call fprintf
	jmp  .L000751
.L000750:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000751:
	push rax
	pop  rax
// Line 585 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 585 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000132[rip]
	push rax
// Line 585 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000752
	mov  rax, 0
	call fprintf
	jmp  .L000753
.L000752:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000753:
	push rax
	pop  rax
// Line 586 (CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], edi\n" ):) )
// Line 586 (ADDR  "\tmov  [rax], edi\n" )
	lea  rax, .LS000133[rip]
	push rax
// Line 586 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000754
	mov  rax, 0
	call fprintf
	jmp  .L000755
.L000754:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000755:
	push rax
	pop  rax
// Line 587 (CALL gen_stmt ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 587 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 587 (LVAR 8)
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
	jnz  .L000756
	mov  rax, 0
	call gen_stmt
	jmp  .L000757
.L000756:
	sub  rsp, 8
	mov  rax, 0
	call gen_stmt
	add  rsp, 8
.L000757:
	push rax
	pop  rax
// Line 588 (CALL emit_jmp ((CALL get_break ((CAST * void   0 ):) ):) )
// Line 588 (CALL get_break ((CAST * void   0 ):) )
// Line 713 (CAST * void   0 )
// Line 713  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000758
	mov  rax, 0
	call get_break
	jmp  .L000759
.L000758:
	sub  rsp, 8
	mov  rax, 0
	call get_break
	add  rsp, 8
.L000759:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000760
	mov  rax, 0
	call emit_jmp
	jmp  .L000761
.L000760:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000761:
	push rax
	pop  rax
// Line 589 (FOR init: (= (LVAR 28)  0 )cond: (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28)) post: (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 ) body (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):))
// Line 589 (= (LVAR 28)  0 )
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 589  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000764:
// Line 589 (< (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) ) (LVAR 28))
// Line 589 (CALL vec_len ((MEMBER (DEREF (LVAR 8)) nodes 64):) )
// Line 589 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 589 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 64
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000765
	mov  rax, 0
	call vec_len
	jmp  .L000766
.L000765:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000766:
	push rax
// Line 589 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
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
	je   .L000763
// Line 594 (BLOCK(= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))):(CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) ):(CALL gen_stmt ((LVAR 16):) ):)
// Line 590 (= (LVAR 16) (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28))))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 590 (DEREF (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28)))
// Line 590 (] (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0) (LVAR 28))
// Line 590 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) nodes 64)) data 0)
// Line 590 (MEMBER (DEREF (LVAR 8)) nodes 64)
// Line 590 (LVAR 8)
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
// Line 590 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
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
// Line 591 (CALL emit_label ((MEMBER (DEREF (LVAR 16)) label 56):) )
// Line 591 (MEMBER (DEREF (LVAR 16)) label 56)
// Line 591 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 56
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000767
	mov  rax, 0
	call emit_label
	jmp  .L000768
.L000767:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000768:
	push rax
	pop  rax
// Line 592 (CALL gen_stmt ((LVAR 16):) )
// Line 592 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000769
	mov  rax, 0
	call gen_stmt
	jmp  .L000770
.L000769:
	sub  rsp, 8
	mov  rax, 0
	call gen_stmt
	add  rsp, 8
.L000770:
	push rax
	pop  rax
.L000762:
// Line 589 (++ (= (LVAR 28) (++ (LVAR 28)  1 ))  1 )
// Line 589 (= (LVAR 28) (++ (LVAR 28)  1 ))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 589 (++ (LVAR 28)  1 )
// Line 589 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  eax, [rax]
	push rax
// Line 589  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 589  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000764
.L000763:
// Line 594 (CALL emit_label ((CALL get_break ((CAST * void   0 ):) ):) )
// Line 594 (CALL get_break ((CAST * void   0 ):) )
// Line 713 (CAST * void   0 )
// Line 713  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000771
	mov  rax, 0
	call get_break
	jmp  .L000772
.L000771:
	sub  rsp, 8
	mov  rax, 0
	call get_break
	add  rsp, 8
.L000772:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000773
	mov  rax, 0
	call emit_label
	jmp  .L000774
.L000773:
	sub  rsp, 8
	mov  rax, 0
	call emit_label
	add  rsp, 8
.L000774:
	push rax
	pop  rax
// Line 595 (CALL pop_loop () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000775
	mov  rax, 0
	call pop_loop
	jmp  .L000776
.L000775:
	sub  rsp, 8
	mov  rax, 0
	call pop_loop
	add  rsp, 8
.L000776:
	push rax
	pop  rax
// Line 596 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000718:
// Line 598 (BLOCK(CALL gen_block ((LVAR 8):) ):(RETURN NULL ):)
// Line 598 (CALL gen_block ((LVAR 8):) )
// Line 598 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000777
	mov  rax, 0
	call gen_block
	jmp  .L000778
.L000777:
	sub  rsp, 8
	mov  rax, 0
	call gen_block
	add  rsp, 8
.L000778:
	push rax
	pop  rax
// Line 599 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000719:
// Line 602 (BLOCK(IF (MEMBER (DEREF (LVAR 8)) lhs 8) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) ):(RETURN NULL ):)
// Line 607 (IF (MEMBER (DEREF (LVAR 8)) lhs 8) (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):) NULL )
// Line 602 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 602 (LVAR 8)
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
	je   .L000779
// Line 607 (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):)
// Line 603 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 603 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 603 (LVAR 8)
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
	jnz  .L000781
	mov  rax, 0
	call gen
	jmp  .L000782
.L000781:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000782:
	push rax
	pop  rax
// Line 604 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 604 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000134[rip]
	push rax
// Line 604 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000783
	mov  rax, 0
	call fprintf
	jmp  .L000784
.L000783:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000784:
	push rax
	pop  rax
	jmp  .L000780
.L000779:
.L000780:
// Line 607 (CALL fprintf ((GVAR output):(ADDR  "\tmov  rsp, rbp\n" ):) )
// Line 607 (ADDR  "\tmov  rsp, rbp\n" )
	lea  rax, .LS000135[rip]
	push rax
// Line 607 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000785
	mov  rax, 0
	call fprintf
	jmp  .L000786
.L000785:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000786:
	push rax
	pop  rax
// Line 608 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rbp\n" ):) )
// Line 608 (ADDR  "\tpop  rbp\n" )
	lea  rax, .LS000136[rip]
	push rax
// Line 608 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000787
	mov  rax, 0
	call fprintf
	jmp  .L000788
.L000787:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000788:
	push rax
	pop  rax
// Line 609 (CALL fprintf ((GVAR output):(ADDR  "\tret\n" ):) )
// Line 609 (ADDR  "\tret\n" )
	lea  rax, .LS000137[rip]
	push rax
// Line 609 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000789
	mov  rax, 0
	call fprintf
	jmp  .L000790
.L000789:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000790:
	push rax
	pop  rax
// Line 610 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000720:
// Line 612 (BLOCK(= (LVAR 16) (CALL get_inner_switch () )):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 16)) lvar 40):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tcmp  eax, edi\n" ):) ):(= (LVAR 24) (CALL new_label () )):(CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) rhs 16):) ):(RETURN NULL ):)
// Line 612 (= (LVAR 16) (CALL get_inner_switch () ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 612 (CALL get_inner_switch () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000791
	mov  rax, 0
	call get_inner_switch
	jmp  .L000792
.L000791:
	sub  rsp, 8
	mov  rax, 0
	call get_inner_switch
	add  rsp, 8
.L000792:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 613 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 613 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 613 (LVAR 8)
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
	jnz  .L000793
	mov  rax, 0
	call gen
	jmp  .L000794
.L000793:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000794:
	push rax
	pop  rax
// Line 614 (CALL emit_lvar_addr ((MEMBER (DEREF (LVAR 16)) lvar 40):) )
// Line 614 (MEMBER (DEREF (LVAR 16)) lvar 40)
// Line 614 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 40
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000795
	mov  rax, 0
	call emit_lvar_addr
	jmp  .L000796
.L000795:
	sub  rsp, 8
	mov  rax, 0
	call emit_lvar_addr
	add  rsp, 8
.L000796:
	push rax
	pop  rax
// Line 615 (CALL fprintf ((GVAR output):(ADDR  "\tmov  eax, [rax]\n" ):) )
// Line 615 (ADDR  "\tmov  eax, [rax]\n" )
	lea  rax, .LS000138[rip]
	push rax
// Line 615 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000797
	mov  rax, 0
	call fprintf
	jmp  .L000798
.L000797:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000798:
	push rax
	pop  rax
// Line 616 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) )
// Line 616 (ADDR  "\tpop  rdi\n" )
	lea  rax, .LS000139[rip]
	push rax
// Line 616 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000799
	mov  rax, 0
	call fprintf
	jmp  .L000800
.L000799:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000800:
	push rax
	pop  rax
// Line 617 (CALL fprintf ((GVAR output):(ADDR  "\tcmp  eax, edi\n" ):) )
// Line 617 (ADDR  "\tcmp  eax, edi\n" )
	lea  rax, .LS000140[rip]
	push rax
// Line 617 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000801
	mov  rax, 0
	call fprintf
	jmp  .L000802
.L000801:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000802:
	push rax
	pop  rax
// Line 618 (= (LVAR 24) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 618 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000803
	mov  rax, 0
	call new_label
	jmp  .L000804
.L000803:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000804:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 619 (CALL fprintf ((GVAR output):(ADDR  "\tje   %s\n" ):(LVAR 24):) )
// Line 619 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
// Line 619 (ADDR  "\tje   %s\n" )
	lea  rax, .LS000141[rip]
	push rax
// Line 619 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000805
	mov  rax, 0
	call fprintf
	jmp  .L000806
.L000805:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000806:
	push rax
	pop  rax
// Line 620 (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56) (LVAR 24))
// Line 620 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 620 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 56
	push rax
// Line 620 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 621 (CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 621 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 621 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 621 (MEMBER (DEREF (LVAR 16)) nodes 64)
// Line 621 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
	jnz  .L000807
	mov  rax, 0
	call vec_push
	jmp  .L000808
.L000807:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L000808:
	push rax
	pop  rax
// Line 622 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000721:
// Line 624 (BLOCK(= (LVAR 24) (CALL new_label () )):(CALL emit_jmp ((LVAR 24):) ):(= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) label 56) (LVAR 24)):(CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)
// Line 624 (= (LVAR 24) (CALL new_label () ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 624 (CALL new_label () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000809
	mov  rax, 0
	call new_label
	jmp  .L000810
.L000809:
	sub  rsp, 8
	mov  rax, 0
	call new_label
	add  rsp, 8
.L000810:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 625 (CALL emit_jmp ((LVAR 24):) )
// Line 625 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000811
	mov  rax, 0
	call emit_jmp
	jmp  .L000812
.L000811:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000812:
	push rax
	pop  rax
// Line 626 (= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) label 56) (LVAR 24))
// Line 626 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 626 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 56
	push rax
// Line 626 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 627 (CALL vec_push ((MEMBER (DEREF (LVAR 16)) nodes 64):(MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 627 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 627 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  rax, [rax]
	push rax
// Line 627 (MEMBER (DEREF (LVAR 16)) nodes 64)
// Line 627 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
	jnz  .L000813
	mov  rax, 0
	call vec_push
	jmp  .L000814
.L000813:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L000814:
	push rax
	pop  rax
// Line 628 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000722:
// Line 631 (BLOCK(CALL emit_jmp ((CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)
// Line 631 (CALL emit_jmp ((CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) ):) )
// Line 631 (CALL get_break ((MEMBER (DEREF (LVAR 8)) token 72):) )
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
	jnz  .L000815
	mov  rax, 0
	call get_break
	jmp  .L000816
.L000815:
	sub  rsp, 8
	mov  rax, 0
	call get_break
	add  rsp, 8
.L000816:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000817
	mov  rax, 0
	call emit_jmp
	jmp  .L000818
.L000817:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000818:
	push rax
	pop  rax
// Line 632 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000723:
// Line 634 (BLOCK(CALL emit_jmp ((CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ):) ):(RETURN NULL ):)
// Line 634 (CALL emit_jmp ((CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) ):) )
// Line 634 (CALL get_continue ((MEMBER (DEREF (LVAR 8)) token 72):) )
// Line 634 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 634 (LVAR 8)
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
	jnz  .L000819
	mov  rax, 0
	call get_continue
	jmp  .L000820
.L000819:
	sub  rsp, 8
	mov  rax, 0
	call get_continue
	add  rsp, 8
.L000820:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000821
	mov  rax, 0
	call emit_jmp
	jmp  .L000822
.L000821:
	sub  rsp, 8
	mov  rax, 0
	call emit_jmp
	add  rsp, 8
.L000822:
	push rax
	pop  rax
// Line 635 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000724:
// Line 638 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tpush %d\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) ):(RETURN NULL ):)
// Line 638 (CALL fprintf ((GVAR output):(ADDR  "\tpush %d\n" ):(MEMBER (DEREF (LVAR 8)) int_val 32):) )
// Line 638 (MEMBER (DEREF (LVAR 8)) int_val 32)
// Line 638 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 638 (ADDR  "\tpush %d\n" )
	lea  rax, .LS000142[rip]
	push rax
// Line 638 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000823
	mov  rax, 0
	call fprintf
	jmp  .L000824
.L000823:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000824:
	push rax
	pop  rax
// Line 639 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000725:
// Line 641 (BLOCK)
.L000726:
// Line 642 (BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)
// Line 642 (CALL gen_lval_to_rax ((LVAR 8):) )
// Line 642 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000825
	mov  rax, 0
	call gen_lval_to_rax
	jmp  .L000826
.L000825:
	sub  rsp, 8
	mov  rax, 0
	call gen_lval_to_rax
	add  rsp, 8
.L000826:
	push rax
	pop  rax
// Line 643 (CALL emit_deref_rax ((LVAR 8):) )
// Line 643 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000827
	mov  rax, 0
	call emit_deref_rax
	jmp  .L000828
.L000827:
	sub  rsp, 8
	mov  rax, 0
	call emit_deref_rax
	add  rsp, 8
.L000828:
	push rax
	pop  rax
// Line 644 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 644 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000143[rip]
	push rax
// Line 644 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000829
	mov  rax, 0
	call fprintf
	jmp  .L000830
.L000829:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000830:
	push rax
	pop  rax
// Line 645 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000727:
// Line 647 (BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)
// Line 647 (CALL gen_lval_to_rax ((LVAR 8):) )
// Line 647 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000831
	mov  rax, 0
	call gen_lval_to_rax
	jmp  .L000832
.L000831:
	sub  rsp, 8
	mov  rax, 0
	call gen_lval_to_rax
	add  rsp, 8
.L000832:
	push rax
	pop  rax
// Line 648 (CALL emit_deref_rax ((LVAR 8):) )
// Line 648 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000833
	mov  rax, 0
	call emit_deref_rax
	jmp  .L000834
.L000833:
	sub  rsp, 8
	mov  rax, 0
	call emit_deref_rax
	add  rsp, 8
.L000834:
	push rax
	pop  rax
// Line 649 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 649 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000144[rip]
	push rax
// Line 649 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000835
	mov  rax, 0
	call fprintf
	jmp  .L000836
.L000835:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000836:
	push rax
	pop  rax
// Line 650 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000728:
// Line 652 (BLOCK(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(RETURN NULL ):)
// Line 652 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 652 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 652 (LVAR 8)
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
	jnz  .L000837
	mov  rax, 0
	call gen
	jmp  .L000838
.L000837:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000838:
	push rax
	pop  rax
// Line 653 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000729:
// Line 655 (BLOCK(= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )):(= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )):(IF (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) )) (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):) (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL )):(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )))):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):)
// Line 655 (= (LVAR 36) (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 655 (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 655 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 655 (LVAR 8)
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
	jnz  .L000839
	mov  rax, 0
	call type
	jmp  .L000840
.L000839:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000840:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 656 (= (LVAR 44) (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 656 (CALL type ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 656 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 656 (LVAR 8)
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
	jnz  .L000841
	mov  rax, 0
	call type
	jmp  .L000842
.L000841:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000842:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 674 (IF (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) )) (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):) (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL ))
// Line 657 (&& (CALL is_array_of_char ((LVAR 36):) ) (CALL is_array_of_char ((LVAR 44):) ))
// Line 657 (CALL is_array_of_char ((LVAR 36):) )
// Line 657 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000847
	mov  rax, 0
	call is_array_of_char
	jmp  .L000848
.L000847:
	sub  rsp, 8
	mov  rax, 0
	call is_array_of_char
	add  rsp, 8
.L000848:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000845
// Line 657 (CALL is_array_of_char ((LVAR 44):) )
// Line 657 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000849
	mov  rax, 0
	call is_array_of_char
	jmp  .L000850
.L000849:
	sub  rsp, 8
	mov  rax, 0
	call is_array_of_char
	add  rsp, 8
.L000850:
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000845
	mov  rax, 1
	jmp  .L000846
.L000845:
	mov  rax, 0
.L000846:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000843
// Line 670 (BLOCK(IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL ):(= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)):(= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)):(WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)):(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) ):(RETURN NULL ):)
// Line 661 (IF (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )) (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) ) NULL )
// Line 659 (|| (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 ) (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 ))
// Line 659 (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)  23 )
// Line 659 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) kind 0)
// Line 659 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 659 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
// Line 659  23 
	push 23
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000853
// Line 659 (!= (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)  2 )
// Line 659 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) kind 0)
// Line 659 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 659 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 659  2 
	push 2
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000853
	mov  rax, 0
	jmp  .L000854
.L000853:
	mov  rax, 1
.L000854:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000851
// Line 660 (CALL error_at_node ((LVAR 8):(ADDR  "Invalid assignment." ):) )
// Line 660 (ADDR  "Invalid assignment." )
	lea  rax, .LS000145[rip]
	push rax
// Line 660 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000855
	mov  rax, 0
	call error_at_node
	jmp  .L000856
.L000855:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000856:
	push rax
	pop  rax
	jmp  .L000852
.L000851:
.L000852:
// Line 661 (= (LVAR 68) (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24))
	mov  rax, rbp
	sub  rax, 68
	push rax
// Line 661 (MEMBER (DEREF (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)) offset 24)
// Line 661 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) lhs 8)) lvar 40)
// Line 661 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 661 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
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
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 662 (= (LVAR 76) (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56))
	mov  rax, rbp
	sub  rax, 76
	push rax
// Line 662 (MEMBER (DEREF (MEMBER (DEREF (LVAR 8)) rhs 16)) label 56)
// Line 662 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 662 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
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
// Line 667 (WHILE cond:(DEREF (LVAR 76))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):))
.L000857:
// Line 663 (DEREF (LVAR 76))
// Line 663 (LVAR 76)
	mov  rax, rbp
	sub  rax, 76
	mov  rax, [rax]
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000858
// Line 667 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) ):)
// Line 664 (CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" ):(-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 ):(DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )):) )
// Line 665 (DEREF (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 ))
// Line 665 (++ (= (LVAR 76) (++ (LVAR 76)  1 ))  1 )
// Line 665 (= (LVAR 76) (++ (LVAR 76)  1 ))
	mov  rax, rbp
	sub  rax, 76
	push rax
// Line 665 (++ (LVAR 76)  1 )
// Line 665 (LVAR 76)
	mov  rax, rbp
	sub  rax, 76
	mov  rax, [rax]
	push rax
// Line 665  1 
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
// Line 665  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 664 (-- (= (LVAR 68) (-- (LVAR 68)  1 ))  1 )
// Line 664 (= (LVAR 68) (-- (LVAR 68)  1 ))
	mov  rax, rbp
	sub  rax, 68
	push rax
// Line 664 (-- (LVAR 68)  1 )
// Line 664 (LVAR 68)
	mov  rax, rbp
	sub  rax, 68
	mov  eax, [rax]
	push rax
// Line 664  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 664  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 664 (ADDR  "\tmov  BYTE PTR [rbp - %d], %d\n" )
	lea  rax, .LS000146[rip]
	push rax
// Line 664 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000859
	mov  rax, 0
	call fprintf
	jmp  .L000860
.L000859:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000860:
	push rax
	pop  rax
	jmp  .L000857
.L000858:
// Line 667 (CALL fprintf ((GVAR output):(ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" ):(LVAR 68):) )
// Line 667 (LVAR 68)
	mov  rax, rbp
	sub  rax, 68
	mov  eax, [rax]
	push rax
// Line 667 (ADDR  "\tmov  BYTE PTR [rbp - %d], 0\n" )
	lea  rax, .LS000147[rip]
	push rax
// Line 667 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000861
	mov  rax, 0
	call fprintf
	jmp  .L000862
.L000861:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000862:
	push rax
	pop  rax
// Line 668 (CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) )
// Line 668 (ADDR  "\tpush rdi\n" )
	lea  rax, .LS000148[rip]
	push rax
// Line 668 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000863
	mov  rax, 0
	call fprintf
	jmp  .L000864
.L000863:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000864:
	push rax
	pop  rax
// Line 669 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000844
.L000843:
// Line 674 (IF (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )) (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):) NULL )
// Line 670 (! (CALL is_assignable_type ((LVAR 36):(LVAR 44):) ))
// Line 670 (CALL is_assignable_type ((LVAR 36):(LVAR 44):) )
// Line 670 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
// Line 670 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000869
	mov  rax, 0
	call is_assignable_type
	jmp  .L000870
.L000869:
	sub  rsp, 8
	mov  rax, 0
	call is_assignable_type
	add  rsp, 8
.L000870:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000867
	mov  rax, 1
	jmp  .L000868
.L000867:
	mov  rax, 0
.L000868:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000865
// Line 674 (BLOCK(CALL error_types ((LVAR 36):(LVAR 44):) ):(CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) ):)
// Line 671 (CALL error_types ((LVAR 36):(LVAR 44):) )
// Line 671 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  rax, [rax]
	push rax
// Line 671 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000871
	mov  rax, 0
	call error_types
	jmp  .L000872
.L000871:
	sub  rsp, 8
	mov  rax, 0
	call error_types
	add  rsp, 8
.L000872:
	push rax
	pop  rax
// Line 672 (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Type mismatch in assignment operation." ):) )
// Line 672 (ADDR  "Type mismatch in assignment operation." )
	lea  rax, .LS000149[rip]
	push rax
// Line 672 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 672 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
	jnz  .L000873
	mov  rax, 0
	call error_at_node
	jmp  .L000874
.L000873:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000874:
	push rax
	pop  rax
	jmp  .L000866
.L000865:
.L000866:
.L000844:
// Line 674 (CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 674 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 674 (LVAR 8)
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
	jnz  .L000875
	mov  rax, 0
	call gen_lval_to_rax
	jmp  .L000876
.L000875:
	sub  rsp, 8
	mov  rax, 0
	call gen_lval_to_rax
	add  rsp, 8
.L000876:
	push rax
	pop  rax
// Line 675 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 675 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000150[rip]
	push rax
// Line 675 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000877
	mov  rax, 0
	call fprintf
	jmp  .L000878
.L000877:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000878:
	push rax
	pop  rax
// Line 676 (CALL gen ((MEMBER (DEREF (LVAR 8)) rhs 16):) )
// Line 676 (MEMBER (DEREF (LVAR 8)) rhs 16)
// Line 676 (LVAR 8)
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
	jnz  .L000879
	mov  rax, 0
	call gen
	jmp  .L000880
.L000879:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000880:
	push rax
	pop  rax
// Line 677 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rdi\n" ):) )
// Line 677 (ADDR  "\tpop  rdi\n" )
	lea  rax, .LS000151[rip]
	push rax
// Line 677 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000881
	mov  rax, 0
	call fprintf
	jmp  .L000882
.L000881:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000882:
	push rax
	pop  rax
// Line 678 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 678 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000152[rip]
	push rax
// Line 678 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000883
	mov  rax, 0
	call fprintf
	jmp  .L000884
.L000883:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000884:
	push rax
	pop  rax
// Line 679 (CALL fprintf ((GVAR output):(ADDR  "\tmov  [rax], %s\n" ):(ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )))):) )
// Line 679 (ADDR (DEREF (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) ))))
// Line 679 (] (ADDR (GVAR reg_r)) (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) ))
// Line 679 (ADDR (GVAR reg_r))
	lea  rax, reg_r[rip]
	push rax
// Line 679 (CALL reg_size ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )
// Line 679 (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 679 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 679 (LVAR 8)
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
	jnz  .L000885
	mov  rax, 0
	call type
	jmp  .L000886
.L000885:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000886:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000887
	mov  rax, 0
	call reg_size
	jmp  .L000888
.L000887:
	sub  rsp, 8
	mov  rax, 0
	call reg_size
	add  rsp, 8
.L000888:
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 679 (ADDR  "\tmov  [rax], %s\n" )
	lea  rax, .LS000153[rip]
	push rax
// Line 679 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000889
	mov  rax, 0
	call fprintf
	jmp  .L000890
.L000889:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000890:
	push rax
	pop  rax
// Line 680 (CALL fprintf ((GVAR output):(ADDR  "\tpush rdi\n" ):) )
// Line 680 (ADDR  "\tpush rdi\n" )
	lea  rax, .LS000154[rip]
	push rax
// Line 680 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000891
	mov  rax, 0
	call fprintf
	jmp  .L000892
.L000891:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000892:
	push rax
	pop  rax
// Line 681 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000730:
// Line 683 (BLOCK(CALL gen_call ((LVAR 8):) ):(RETURN NULL ):)
// Line 683 (CALL gen_call ((LVAR 8):) )
// Line 683 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000893
	mov  rax, 0
	call gen_call
	jmp  .L000894
.L000893:
	sub  rsp, 8
	mov  rax, 0
	call gen_call
	add  rsp, 8
.L000894:
	push rax
	pop  rax
// Line 684 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000731:
// Line 686 (BLOCK(CALL gen_fdecl ((LVAR 8):) ):(RETURN NULL ):)
// Line 686 (CALL gen_fdecl ((LVAR 8):) )
// Line 686 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000895
	mov  rax, 0
	call gen_fdecl
	jmp  .L000896
.L000895:
	sub  rsp, 8
	mov  rax, 0
	call gen_fdecl
	add  rsp, 8
.L000896:
	push rax
	pop  rax
// Line 687 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000732:
// Line 689 (BLOCK(CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)
// Line 689 (CALL gen_lval_to_rax ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 689 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 689 (LVAR 8)
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
	jnz  .L000897
	mov  rax, 0
	call gen_lval_to_rax
	jmp  .L000898
.L000897:
	sub  rsp, 8
	mov  rax, 0
	call gen_lval_to_rax
	add  rsp, 8
.L000898:
	push rax
	pop  rax
// Line 690 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 690 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000155[rip]
	push rax
// Line 690 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000899
	mov  rax, 0
	call fprintf
	jmp  .L000900
.L000899:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000900:
	push rax
	pop  rax
// Line 691 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000733:
// Line 693 (BLOCK(CALL gen_lval_to_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)
// Line 693 (CALL gen_lval_to_rax ((LVAR 8):) )
// Line 693 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000901
	mov  rax, 0
	call gen_lval_to_rax
	jmp  .L000902
.L000901:
	sub  rsp, 8
	mov  rax, 0
	call gen_lval_to_rax
	add  rsp, 8
.L000902:
	push rax
	pop  rax
// Line 694 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 694 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000156[rip]
	push rax
// Line 694 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000903
	mov  rax, 0
	call fprintf
	jmp  .L000904
.L000903:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000904:
	push rax
	pop  rax
// Line 695 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000734:
// Line 697 (BLOCK(IF (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )) (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) ) NULL ):(CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) ):(CALL emit_deref_rax ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)
// Line 701 (IF (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )) (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) ) NULL )
// Line 697 (! (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) ))
// Line 697 (CALL is_ptr ((CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) ):) )
// Line 697 (CALL type ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 697 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 697 (LVAR 8)
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
	jnz  .L000909
	mov  rax, 0
	call type
	jmp  .L000910
.L000909:
	sub  rsp, 8
	mov  rax, 0
	call type
	add  rsp, 8
.L000910:
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000911
	mov  rax, 0
	call is_ptr
	jmp  .L000912
.L000911:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr
	add  rsp, 8
.L000912:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000907
	mov  rax, 1
	jmp  .L000908
.L000907:
	mov  rax, 0
.L000908:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000905
// Line 698 (CALL error_at_node ((MEMBER (DEREF (LVAR 8)) lhs 8):(ADDR  "Illegal operation. (dereference of non-pointer type)" ):) )
// Line 700 (ADDR  "Illegal operation. (dereference of non-pointer type)" )
	lea  rax, .LS000157[rip]
	push rax
// Line 699 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 699 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
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
	jnz  .L000913
	mov  rax, 0
	call error_at_node
	jmp  .L000914
.L000913:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000914:
	push rax
	pop  rax
	jmp  .L000906
.L000905:
.L000906:
// Line 701 (CALL gen ((MEMBER (DEREF (LVAR 8)) lhs 8):) )
// Line 701 (MEMBER (DEREF (LVAR 8)) lhs 8)
// Line 701 (LVAR 8)
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
	jnz  .L000915
	mov  rax, 0
	call gen
	jmp  .L000916
.L000915:
	sub  rsp, 8
	mov  rax, 0
	call gen
	add  rsp, 8
.L000916:
	push rax
	pop  rax
// Line 702 (CALL fprintf ((GVAR output):(ADDR  "\tpop  rax\n" ):) )
// Line 702 (ADDR  "\tpop  rax\n" )
	lea  rax, .LS000158[rip]
	push rax
// Line 702 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000917
	mov  rax, 0
	call fprintf
	jmp  .L000918
.L000917:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000918:
	push rax
	pop  rax
// Line 703 (CALL emit_deref_rax ((LVAR 8):) )
// Line 703 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000919
	mov  rax, 0
	call emit_deref_rax
	jmp  .L000920
.L000919:
	sub  rsp, 8
	mov  rax, 0
	call emit_deref_rax
	add  rsp, 8
.L000920:
	push rax
	pop  rax
// Line 704 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 704 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000159[rip]
	push rax
// Line 704 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000921
	mov  rax, 0
	call fprintf
	jmp  .L000922
.L000921:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000922:
	push rax
	pop  rax
// Line 705 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000735:
// Line 707 (BLOCK(CALL gen_lnot ((LVAR 8):) ):(CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) ):(RETURN NULL ):)
// Line 707 (CALL gen_lnot ((LVAR 8):) )
// Line 707 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000923
	mov  rax, 0
	call gen_lnot
	jmp  .L000924
.L000923:
	sub  rsp, 8
	mov  rax, 0
	call gen_lnot
	add  rsp, 8
.L000924:
	push rax
	pop  rax
// Line 708 (CALL fprintf ((GVAR output):(ADDR  "\tpush rax\n" ):) )
// Line 708 (ADDR  "\tpush rax\n" )
	lea  rax, .LS000160[rip]
	push rax
// Line 708 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000925
	mov  rax, 0
	call fprintf
	jmp  .L000926
.L000925:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000926:
	push rax
	pop  rax
// Line 709 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
.L000713:
// Line 711 (CALL error_at_token ((MEMBER (DEREF (LVAR 8)) token 72):(ADDR  "gen(): Unimplemented NodeKind." ):) )
// Line 711 (ADDR  "gen(): Unimplemented NodeKind." )
	lea  rax, .LS000161[rip]
	push rax
// Line 711 (MEMBER (DEREF (LVAR 8)) token 72)
// Line 711 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 72
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000927
	mov  rax, 0
	call error_at_token
	jmp  .L000928
.L000927:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000928:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret

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
// <char>[*][source_text][;]
// [FileInfo][*][file_informations][;]
// [Token][*][token][;]
// [Vector][*][ext_declarations][;]
// [Vector][*][strings][;]
// [LVar][*][locals][;]
// [LVar][*][scope][;]
// [TagName][*][tagnames][;]
// [Typedef][*][tdef_names][;]
// [Global][*][globals][;]
// [Global][*][functions][;]
// <char>[*][output_file_name][;]
// [FILE][*][output][;]
// <char>[registers][[][4][]][[][5][]][[][4][]][=][{][{]"rdi"[,]"rsi"[,]"rdx"[,]"rcx"[,]"r8"[}][,][{]"edi"[,]"esi"[,]"edx"[,]"ecx"[,]"r8d"[}][,][{]"di"[,]"si"[,]"dx"[,]"cx"[,]"r8w"[}][,][{]"dil"[,]"sil"[,]"dl"[,]"cl"[,]"r8b"[}][}][;]
// <char>[*][read_file][(]<char>[*][path][)][{][FILE][*][fp][=][fopen][(][path][,]"r"[)][;]
// <if>[(][!][fp][)][error][(]"cannot open %s: %s\n"[,][path][,][strerror][(][0][)][)][;]
// <if>[(][fseek][(][fp][,][0][,][2][)][==][-][1][)][error][(]"%s: fseek: %s\n"[,][path][,][strerror][(][0][)][)][;]
// [size_t][size][=][ftell][(][fp][)][;]
// <if>[(][fseek][(][fp][,][0][,][0][)][==][-][1][)][error][(]"%s: fseek: %s\n"[,][path][,][strerror][(][0][)][)][;]
// <char>[*][buf][=][calloc][(][1][,][size][+][2][)][;]
// [fread][(][buf][,][size][,][1][,][fp][)][;]
// <if>[(][size][==][0][||][buf][[][size][-][1][]][!=]['\n'][)][buf][[][size][++][]][=]['\n'][;]
// [buf][[][size][]][=]['\0'][;]
// [fclose][(][fp][)][;]
// [fprintf][(][stderr][,]"monocc: file read\n"[)][;]
// <return>[buf][;]
// [}]<void>[emit_basic_global][(][Type][*][type][,][Node][*][init][)][{]<if>[(][is_array_of_char][(][type][)][)][{]<if>[(][!][init][)][{]<if>[(][type][->][array_size][==][0][)][error_at_token][(][init][->][token][,]"Incomplete type is not allowed."[)][;]
// <else>[fprintf][(][output][,]"\t.zero %d\n"[,][sizeof_type][(][type][)][)][;]
// [}]<else><if>[(][init][->][kind][==][ND_STR][)][{][fprintf][(][output][,]"\t.string \"%.*s\"\n"[,][init][->][token][->][len][,][init][->][token][->][str][)][;]
// <int>[ary_size][=][type][->][array_size][;]
// <int>[str_size][=][init][->][token][->][len][+][1][;]
// <if>[(][ary_size][>][str_size][)][fprintf][(][output][,]"\t.zero %d\n"[,][ary_size][-][str_size][)][;]
// [}]<else>[error_at_node][(][init][,]"Unsupported initializer."[)][;]
// [}]<else><if>[(][is_array][(][type][)][)][{]<if>[(][!][init][)][{][fprintf][(][output][,]"\t.zero %d\n"[,][sizeof_type][(][type][)][)][;]
// <return>[;]
// [}]<if>[(][init][->][kind][!=][ND_INIT][)][error_at_node][(][init][,]"Unsupported initializer."[)][;]
// [Vector][*][vec][=][init][->][nodes][;]
// [type][=][type][->][ptr_to][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][vec_len][(][vec][)][;]
// [i][++][)][{][emit_basic_global][(][type][,][vec][->][data][[][i][]][)][;]
// [}][}]<else><if>[(][is_int][(][type][)][)][{]<int>[i][;]
// <if>[(][!][init][)][i][=][0][;]
// <else><if>[(][init][->][kind][==][ND_NUM][)][i][=][init][->][int_val][;]
// <else>[error_at_node][(][init][,]"Calculation in an initializer is not supported yet."[)][;]
// [fprintf][(][output][,]"\t.long %d\n"[,][i][)][;]
// [}]<else><if>[(][is_char][(][type][)][)][{]<int>[i][;]
// <if>[(][!][init][)][i][=][0][;]
// <else><if>[(][init][->][kind][==][ND_NUM][)][i][=][init][->][int_val][;]
// <else>[error_at_node][(][init][,]"Calculation in an initializer is not supported yet."[)][;]
// [fprintf][(][output][,]"\t.byte %d\n"[,][i][)][;]
// [}]<else><if>[(][is_ptr_to_char][(][type][)][)][{]<if>[(][init][&&][init][->][kind][==][ND_STR][)][fprintf][(][output][,]"\t.quad .LS%06d\n"[,][init][->][int_val][)][;]
// <else>[fprintf][(][output][,]"\t.quad 0\n"[)][;]
// [}]<else>[{]<int>[s][=][sizeof_type][(][type][)][;]
// <switch>[(][s][)][{]<case>[1][:][fprintf][(][output][,]"\t.byte 0\n"[)][;]
// <break>[;]
// <case>[2][:][fprintf][(][output][,]"\t.short 0\n"[)][;]
// <break>[;]
// <case>[4][:][fprintf][(][output][,]"\t.long 0\n"[)][;]
// <break>[;]
// <case>[8][:][fprintf][(][output][,]"\t.align 8\n"[)][;]
// [fprintf][(][output][,]"\t.quad 0\n"[)][;]
// <break>[;]
// <default>[:][fprintf][(][output][,]"\t.zero %d\n"[,][s][)][;]
// [}][}][}]<void>[compile][(]<char>[*][file][)][{][tokenize][(][file][,][source_text][,][1][)][;]
// [fprintf][(][stderr][,]"monocc: tokenize\n"[)][;]
// <for>[(][Token][*][t][=][token][;]
// [t][;]
// [t][=][t][->][next][)][{][Token][*][subst][=][find_macro][(][t][)][;]
// <if>[(][!][subst][)]<continue>[;]
// [Token][*][next_token][=][t][->][next][;]
// [t][->][kind][=][subst][->][kind][;]
// [t][->][next][=][subst][->][next][;]
// [t][->][str][=][subst][->][str][;]
// [t][->][len][=][subst][->][len][;]
// [t][->][int_val][=][subst][->][int_val][;]
// <while>[(][t][->][next][)][t][=][t][->][next][;]
// [t][->][next][=][next_token][;]
// [}][print_tokens][(][token][)][;]
// [fprintf][(][stderr][,]"monocc: pp\n"[)][;]
// [strings][=][vec_new][(][)][;]
// [parse_program][(][)][;]
// [fprintf][(][stderr][,]"monocc: parse\n"[)][;]
// [print_globals][(][)][;]
// [print_funcs][(][)][;]
// [print_strings][(][)][;]
// [print_structs][(][)][;]
// [print_typedefs][(][)][;]
// [fprintf][(][output][,]"\n"[)][;]
// [fprintf][(][output][,]"\t.intel_syntax noprefix\n"[)][;]
// [fprintf][(][output][,]"\t.data\n"[)][;]
// [Global][*][global][=][globals][;]
// [fprintf][(][stderr][,]"monocc: emit globals...\n"[)][;]
// <for>[(][;]
// [global][;]
// [global][=][global][->][next][)][{]<if>[(][global][->][is_extern][)][{]<continue>[;]
// [}][fprintf][(][output][,]"\t.global %.*s\n"[,][global][->][token][->][len][,][global][->][token][->][str][)][;]
// [fprintf][(][output][,]"%.*s:\n"[,][global][->][token][->][len][,][global][->][token][->][str][)][;]
// [emit_basic_global][(][global][->][type][,][global][->][body][)][;]
// [}][;]
// [fprintf][(][stderr][,]"monocc: emitted globals\n"[)][;]
// <int>[i][=][0][;]
// <while>[(][i][<][vec_len][(][strings][)][)][{][fprintf][(][output][,]".LS%06d:\n"[,][strings][->][data][[][i][]][->][int_val][)][;]
// [fprintf][(][output][,]"\t.string \"%.*s\"\n"[,][strings][->][data][[][i][]][->][token][->][len][,][strings][->][data][[][i][]][->][token][->][str][)][;]
// [i][++][;]
// [}][fprintf][(][output][,]"\n"[)][;]
// [fprintf][(][output][,]"\t.text\n"[)][;]
// <int>[len][=][vec_len][(][ext_declarations][)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][len][;]
// [i][++][)][{][Node][*][node][=][ext_declarations][->][data][[][i][]][;]
// [fprintf][(][output][,]"\t.global %.*s\n"[,][node][->][token][->][len][,][node][->][token][->][str][)][;]
// [gen_stmt][(][node][)][;]
// [}][fprintf][(][stderr][,]"monocc: compile complete\n"[)][;]
// [}]<int>[main][(]<int>[argc][,]<char>[*][*][argv][)][{]<char>[*][file][;]
// <for>[(]<int>[i][=][1][;]
// [i][<][argc][;]
// [i][++][)][{]<if>[(][strcmp][(][argv][[][i][]][,]"-test"[)][==][0][)][{][test_vec][(][)][;]
// <return>[0][;]
// [}]<else><if>[(][strcmp][(][argv][[][i][]][,]"-string"[)][==][0][)][{]<if>[(][i][+][1][<][argc][)][{][fprintf][(][stderr][,]"No input string.\n"[)][;]
// <return>[1][;]
// [}][file][=]"input"[;]
// [source_text][=][argv][[][i][+][1][]][;]
// <break>[;]
// [}]<else>[{][file][=][argv][[][i][]][;]
// [source_text][=][read_file][(][argv][[][i][]][)][;]
// [output_file_name][=][calloc][(][1][,][strlen][(][file][)][+][5][)][;]
// [strcpy][(][output_file_name][,][file][)][;]
// <char>[*][dot][=][output_file_name][+][strlen][(][output_file_name][)][-][2][;]
// <if>[(][strcmp][(][dot][,]".c"[)][!=][0][)][{][fprintf][(][stderr][,]"Invalid aource file name."[)][;]
// <return>[1][;]
// [}][*][(][dot][+][1][)][=]['s'][;]
// [fprintf][(][stderr][,]"output file: %s\n"[,][output_file_name][)][;]
// [output][=][fopen][(][output_file_name][,]"w"[)][;]
// <if>[(][!][output][)][{][fprintf][(][stderr][,]"Cannot open output file.\n"[)][;]
// [exit][(][1][)][;]
// [}][compile][(][file][)][;]
// <return>[0][;]
// [}][}][fprintf][(][stderr][,]"Invalid arguments.\n"[)][;]
// <return>[1][;]
// [}]<EOF>
// FDECL read_file func ( * char  path ) * char 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL fopen ((LVAR 8):(ADDR  "r" ):) )):(IF (! (LVAR 16)) (CALL error ((ADDR  "cannot open %s: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL ):(IF (== (CALL fseek ((LVAR 16): 0 : 2 :) ) (-  0   1 )) (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL ):(= (LVAR 20) (CALL ftell ((LVAR 16):) )):(IF (== (CALL fseek ((LVAR 16): 0 : 0 :) ) (-  0   1 )) (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL ):(= (LVAR 28) (CALL calloc ( 1 :(+ (LVAR 20)  2 ):) )):(CALL fread ((LVAR 28):(LVAR 20): 1 :(LVAR 16):) ):(IF (|| (== (LVAR 20)  0 ) (!= (DEREF (] (LVAR 28) (- (LVAR 20)  1 )))  10 )) (= (DEREF (] (LVAR 28) (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )))  10 ) NULL ):(= (DEREF (] (LVAR 28) (LVAR 20)))  0 ):(CALL fclose ((LVAR 16):) ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: file read\n" ):) ):(RETURN (LVAR 28)):))
//    buf  offset:28  * char 
//    size  offset:20  int 
//    fp  offset:16  * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}
//    path  offset:8  * char 

// FDECL emit_basic_global func ( * struct <Type>  type , * struct <Node>  init ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (CALL is_array_of_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )):) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) ):(= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16)):(= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )):(IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL ):) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ))):) (IF (CALL is_array ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ):(RETURN NULL ):) NULL ):(IF (!= (MEMBER (DEREF (LVAR 16)) kind 0)  3 ) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ) NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) nodes 64)):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) ptr_to 8)):(FOR init: (= (LVAR 36)  0 )cond: (< (CALL vec_len ((LVAR 32):) ) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) ):)):) (IF (CALL is_int ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 40)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.long %d\n" ):(LVAR 40):) ):) (IF (CALL is_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) ):) (IF (CALL is_ptr_to_char ((LVAR 8):) ) (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):) (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):)))))):))
//    switch  offset:52  int 
//    s  offset:48  int 
//    i  offset:44  int 
//    i  offset:40  int 
//    i  offset:36  int 
//    vec  offset:32  * struct <Vector> 
//    str_size  offset:24  int 
//    ary_size  offset:20  int 
//    init  offset:16  * struct <Node> 
//    type  offset:8  * struct <Type> 

// FDECL compile func ( * char  file ) void 
//    (LVAR 8) 
//    (BLOCK(CALL tokenize ((LVAR 8):(GVAR source_text): 1 :) ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: tokenize\n" ):) ):(FOR init: (= (LVAR 16) (GVAR token))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8)) body (BLOCK(= (LVAR 24) (CALL find_macro ((LVAR 16):) )):(IF (! (LVAR 24)) CONTINUE  NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) next 8)):(= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 24)) kind 0)):(= (MEMBER (DEREF (LVAR 16)) next 8) (MEMBER (DEREF (LVAR 24)) next 8)):(= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 24)) str 24)):(= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 24)) len 32)):(= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 24)) int_val 16)):(WHILE cond:(MEMBER (DEREF (LVAR 16)) next 8)body: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8))):(= (MEMBER (DEREF (LVAR 16)) next 8) (LVAR 32)):)):(CALL print_tokens ((GVAR token):) ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: pp\n" ):) ):(= (GVAR strings) (CALL vec_new () )):(CALL parse_program () ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: parse\n" ):) ):(CALL print_globals () ):(CALL print_funcs () ):(CALL print_strings () ):(CALL print_structs () ):(CALL print_typedefs () ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.intel_syntax noprefix\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.data\n" ):) ):(= (LVAR 40) (GVAR globals)):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: emit globals...\n" ):) ):(FOR init: NULL cond: (LVAR 40) post: (= (LVAR 40) (MEMBER (DEREF (LVAR 40)) next 0)) body (BLOCK(IF (MEMBER (DEREF (LVAR 40)) is_extern 32) (BLOCKCONTINUE :) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL emit_basic_global ((MEMBER (DEREF (LVAR 40)) type 16):(MEMBER (DEREF (LVAR 40)) body 24):) ):)):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: emitted globals\n" ):) ):(= (LVAR 44)  0 ):(WHILE cond:(< (CALL vec_len ((GVAR strings):) ) (LVAR 44))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  ".LS%06d:\n" ):(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) int_val 32):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) str 24):) ):(++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ):)):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.text\n" ):) ):(= (LVAR 48) (CALL vec_len ((GVAR ext_declarations):) )):(FOR init: (= (LVAR 52)  0 )cond: (< (LVAR 48) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(= (LVAR 60) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 52)))):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) str 24):) ):(CALL gen_stmt ((LVAR 60):) ):)):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: compile complete\n" ):) ):))
//    node  offset:60  * struct <Node> 
//    i  offset:52  int 
//    len  offset:48  int 
//    i  offset:44  int 
//    global  offset:40  * struct <Global> 
//    next_token  offset:32  * struct <Token> 
//    subst  offset:24  * struct <Token> 
//    t  offset:16  * struct <Token> 
//    file  offset:8  * char 

// FDECL main func ( int  argc , * * char  argv ) int 
//    (LVAR 4) (LVAR 12) 
//    (BLOCK(FOR init: (= (LVAR 24)  1 )cond: (< (LVAR 4) (LVAR 24)) post: (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ) body (BLOCK(IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-test" ):) )  0 ) (BLOCK(CALL test_vec () ):(RETURN  0 ):) (IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )  0 ) (BLOCK(IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL ):(= (LVAR 20) (ADDR  "input" )):(= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))):BREAK :) (BLOCK(= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24)))):(= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )):(= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )):(CALL strcpy ((GVAR output_file_name):(LVAR 20):) ):(= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )):(IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL ):(= (DEREF (+ (LVAR 32)  1 ))  115 ):(CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) ):(= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )):(IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL ):(CALL compile ((LVAR 20):) ):(RETURN  0 ):))):)):(CALL fprintf ((GVAR stderr):(ADDR  "Invalid arguments.\n" ):) ):(RETURN  1 ):))
//    dot  offset:32  * char 
//    i  offset:24  int 
//    file  offset:20  * char 
//    argv  offset:12  * * char 
//    argc  offset:4  int 

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
// registers [4] [5] [4] char {{ "rdi" , "rsi" , "rdx" , "rcx" , "r8" },{ "edi" , "esi" , "edx" , "ecx" , "r8d" },{ "di" , "si" , "dx" , "cx" , "r8w" },{ "dil" , "sil" , "dl" , "cl" , "r8b" }}
// source_text * char NULL 
// stdout * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// stderr * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// Functions
// main func ( int  argc , * * char  argv ) int 
// compile func ( * char  file ) void 
// emit_basic_global func ( * struct <Type>  type , * struct <Node>  init ) void 
// read_file func ( * char  path ) * char 
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
// "r"
// "cannot open %s: %s\n"
// "%s: fseek: %s\n"
// "%s: fseek: %s\n"
// "monocc: file read\n"
// "Incomplete type is not allowed."
// "\t.zero %d\n"
// "\t.string \"%.*s\"\n"
// "\t.zero %d\n"
// "Unsupported initializer."
// "\t.zero %d\n"
// "Unsupported initializer."
// "Calculation in an initializer is not supported yet."
// "\t.long %d\n"
// "Calculation in an initializer is not supported yet."
// "\t.byte %d\n"
// "\t.quad .LS%06d\n"
// "\t.quad 0\n"
// "\t.byte 0\n"
// "\t.short 0\n"
// "\t.long 0\n"
// "\t.align 8\n"
// "\t.quad 0\n"
// "\t.zero %d\n"
// "monocc: tokenize\n"
// "monocc: pp\n"
// "monocc: parse\n"
// "\n"
// "\t.intel_syntax noprefix\n"
// "\t.data\n"
// "monocc: emit globals...\n"
// "\t.global %.*s\n"
// "%.*s:\n"
// "monocc: emitted globals\n"
// ".LS%06d:\n"
// "\t.string \"%.*s\"\n"
// "\n"
// "\t.text\n"
// "\t.global %.*s\n"
// "monocc: compile complete\n"
// "-test"
// "-string"
// "No input string.\n"
// "input"
// ".c"
// "Invalid aource file name."
// "output file: %s\n"
// "w"
// "Cannot open output file.\n"
// "Invalid arguments.\n"

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
	.global output
output:
	.align 8
	.quad 0
	.global output_file_name
output_file_name:
	.quad 0
	.global functions
functions:
	.align 8
	.quad 0
	.global globals
globals:
	.align 8
	.quad 0
	.global tdef_names
tdef_names:
	.align 8
	.quad 0
	.global tagnames
tagnames:
	.align 8
	.quad 0
	.global scope
scope:
	.align 8
	.quad 0
	.global locals
locals:
	.align 8
	.quad 0
	.global strings
strings:
	.align 8
	.quad 0
	.global ext_declarations
ext_declarations:
	.align 8
	.quad 0
	.global token
token:
	.align 8
	.quad 0
	.global file_informations
file_informations:
	.align 8
	.quad 0
	.global registers
registers:
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
	.global source_text
source_text:
	.quad 0
.LS000000:
	.string "rdi"
.LS000001:
	.string "rsi"
.LS000002:
	.string "rdx"
.LS000003:
	.string "rcx"
.LS000004:
	.string "r8"
.LS000005:
	.string "edi"
.LS000006:
	.string "esi"
.LS000007:
	.string "edx"
.LS000008:
	.string "ecx"
.LS000009:
	.string "r8d"
.LS000010:
	.string "di"
.LS000011:
	.string "si"
.LS000012:
	.string "dx"
.LS000013:
	.string "cx"
.LS000014:
	.string "r8w"
.LS000015:
	.string "dil"
.LS000016:
	.string "sil"
.LS000017:
	.string "dl"
.LS000018:
	.string "cl"
.LS000019:
	.string "r8b"
.LS000020:
	.string "r"
.LS000021:
	.string "cannot open %s: %s\n"
.LS000022:
	.string "%s: fseek: %s\n"
.LS000023:
	.string "%s: fseek: %s\n"
.LS000024:
	.string "monocc: file read\n"
.LS000025:
	.string "Incomplete type is not allowed."
.LS000026:
	.string "\t.zero %d\n"
.LS000027:
	.string "\t.string \"%.*s\"\n"
.LS000028:
	.string "\t.zero %d\n"
.LS000029:
	.string "Unsupported initializer."
.LS000030:
	.string "\t.zero %d\n"
.LS000031:
	.string "Unsupported initializer."
.LS000032:
	.string "Calculation in an initializer is not supported yet."
.LS000033:
	.string "\t.long %d\n"
.LS000034:
	.string "Calculation in an initializer is not supported yet."
.LS000035:
	.string "\t.byte %d\n"
.LS000036:
	.string "\t.quad .LS%06d\n"
.LS000037:
	.string "\t.quad 0\n"
.LS000038:
	.string "\t.byte 0\n"
.LS000039:
	.string "\t.short 0\n"
.LS000040:
	.string "\t.long 0\n"
.LS000041:
	.string "\t.align 8\n"
.LS000042:
	.string "\t.quad 0\n"
.LS000043:
	.string "\t.zero %d\n"
.LS000044:
	.string "monocc: tokenize\n"
.LS000045:
	.string "monocc: pp\n"
.LS000046:
	.string "monocc: parse\n"
.LS000047:
	.string "\n"
.LS000048:
	.string "\t.intel_syntax noprefix\n"
.LS000049:
	.string "\t.data\n"
.LS000050:
	.string "monocc: emit globals...\n"
.LS000051:
	.string "\t.global %.*s\n"
.LS000052:
	.string "%.*s:\n"
.LS000053:
	.string "monocc: emitted globals\n"
.LS000054:
	.string ".LS%06d:\n"
.LS000055:
	.string "\t.string \"%.*s\"\n"
.LS000056:
	.string "\n"
.LS000057:
	.string "\t.text\n"
.LS000058:
	.string "\t.global %.*s\n"
.LS000059:
	.string "monocc: compile complete\n"
.LS000060:
	.string "-test"
.LS000061:
	.string "-string"
.LS000062:
	.string "No input string.\n"
.LS000063:
	.string "input"
.LS000064:
	.string ".c"
.LS000065:
	.string "Invalid aource file name."
.LS000066:
	.string "output file: %s\n"
.LS000067:
	.string "w"
.LS000068:
	.string "Cannot open output file.\n"
.LS000069:
	.string "Invalid arguments.\n"

	.text
	.global read_file
// Line 23 FDECL read_file func ( * char  path ) * char 
//    (LVAR 8) 
//    (BLOCK(= (LVAR 16) (CALL fopen ((LVAR 8):(ADDR  "r" ):) )):(IF (! (LVAR 16)) (CALL error ((ADDR  "cannot open %s: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL ):(IF (== (CALL fseek ((LVAR 16): 0 : 2 :) ) (-  0   1 )) (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL ):(= (LVAR 20) (CALL ftell ((LVAR 16):) )):(IF (== (CALL fseek ((LVAR 16): 0 : 0 :) ) (-  0   1 )) (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL ):(= (LVAR 28) (CALL calloc ( 1 :(+ (LVAR 20)  2 ):) )):(CALL fread ((LVAR 28):(LVAR 20): 1 :(LVAR 16):) ):(IF (|| (== (LVAR 20)  0 ) (!= (DEREF (] (LVAR 28) (- (LVAR 20)  1 )))  10 )) (= (DEREF (] (LVAR 28) (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )))  10 ) NULL ):(= (DEREF (] (LVAR 28) (LVAR 20)))  0 ):(CALL fclose ((LVAR 16):) ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: file read\n" ):) ):(RETURN (LVAR 28)):))
read_file:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
// Line 24 (= (LVAR 16) (CALL fopen ((LVAR 8):(ADDR  "r" ):) ))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 24 (CALL fopen ((LVAR 8):(ADDR  "r" ):) )
// Line 24 (ADDR  "r" )
	lea  rax, .LS000020[rip]
	push rax
// Line 24 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000000
	mov  rax, 0
	call fopen
	jmp  .L000001
.L000000:
	sub  rsp, 8
	mov  rax, 0
	call fopen
	add  rsp, 8
.L000001:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 28 (IF (! (LVAR 16)) (CALL error ((ADDR  "cannot open %s: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL )
// Line 25 (! (LVAR 16))
// Line 25 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000004
	mov  rax, 1
	jmp  .L000005
.L000004:
	mov  rax, 0
.L000005:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000002
// Line 26 (CALL error ((ADDR  "cannot open %s: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) )
// Line 26 (CALL strerror ( 0 :) )
// Line 26  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000006
	mov  rax, 0
	call strerror
	jmp  .L000007
.L000006:
	sub  rsp, 8
	mov  rax, 0
	call strerror
	add  rsp, 8
.L000007:
	push rax
// Line 26 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 26 (ADDR  "cannot open %s: %s\n" )
	lea  rax, .LS000021[rip]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000008
	mov  rax, 0
	call error
	jmp  .L000009
.L000008:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000009:
	push rax
	pop  rax
	jmp  .L000003
.L000002:
.L000003:
// Line 30 (IF (== (CALL fseek ((LVAR 16): 0 : 2 :) ) (-  0   1 )) (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL )
// Line 28 (== (CALL fseek ((LVAR 16): 0 : 2 :) ) (-  0   1 ))
// Line 28 (CALL fseek ((LVAR 16): 0 : 2 :) )
// Line 235  2 
	push 2
// Line 28  0 
	push 0
// Line 28 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000012
	mov  rax, 0
	call fseek
	jmp  .L000013
.L000012:
	sub  rsp, 8
	mov  rax, 0
	call fseek
	add  rsp, 8
.L000013:
	push rax
// Line 28 (-  0   1 )
// Line 28  0 
	push 0
// Line 28  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000010
// Line 29 (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) )
// Line 29 (CALL strerror ( 0 :) )
// Line 29  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000014
	mov  rax, 0
	call strerror
	jmp  .L000015
.L000014:
	sub  rsp, 8
	mov  rax, 0
	call strerror
	add  rsp, 8
.L000015:
	push rax
// Line 29 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 29 (ADDR  "%s: fseek: %s\n" )
	lea  rax, .LS000022[rip]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000016
	mov  rax, 0
	call error
	jmp  .L000017
.L000016:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000017:
	push rax
	pop  rax
	jmp  .L000011
.L000010:
.L000011:
// Line 30 (= (LVAR 20) (CALL ftell ((LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 30 (CALL ftell ((LVAR 16):) )
// Line 30 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000018
	mov  rax, 0
	call ftell
	jmp  .L000019
.L000018:
	sub  rsp, 8
	mov  rax, 0
	call ftell
	add  rsp, 8
.L000019:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 34 (IF (== (CALL fseek ((LVAR 16): 0 : 0 :) ) (-  0   1 )) (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) ) NULL )
// Line 31 (== (CALL fseek ((LVAR 16): 0 : 0 :) ) (-  0   1 ))
// Line 31 (CALL fseek ((LVAR 16): 0 : 0 :) )
// Line 235  0 
	push 0
// Line 31  0 
	push 0
// Line 31 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000022
	mov  rax, 0
	call fseek
	jmp  .L000023
.L000022:
	sub  rsp, 8
	mov  rax, 0
	call fseek
	add  rsp, 8
.L000023:
	push rax
// Line 31 (-  0   1 )
// Line 31  0 
	push 0
// Line 31  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000020
// Line 32 (CALL error ((ADDR  "%s: fseek: %s\n" ):(LVAR 8):(CALL strerror ( 0 :) ):) )
// Line 32 (CALL strerror ( 0 :) )
// Line 32  0 
	push 0
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000024
	mov  rax, 0
	call strerror
	jmp  .L000025
.L000024:
	sub  rsp, 8
	mov  rax, 0
	call strerror
	add  rsp, 8
.L000025:
	push rax
// Line 32 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
// Line 32 (ADDR  "%s: fseek: %s\n" )
	lea  rax, .LS000023[rip]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000026
	mov  rax, 0
	call error
	jmp  .L000027
.L000026:
	sub  rsp, 8
	mov  rax, 0
	call error
	add  rsp, 8
.L000027:
	push rax
	pop  rax
	jmp  .L000021
.L000020:
.L000021:
// Line 34 (= (LVAR 28) (CALL calloc ( 1 :(+ (LVAR 20)  2 ):) ))
	mov  rax, rbp
	sub  rax, 28
	push rax
// Line 34 (CALL calloc ( 1 :(+ (LVAR 20)  2 ):) )
// Line 34 (+ (LVAR 20)  2 )
// Line 34 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 34  2 
	push 2
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 34  1 
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000028
	mov  rax, 0
	call calloc
	jmp  .L000029
.L000028:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000029:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 35 (CALL fread ((LVAR 28):(LVAR 20): 1 :(LVAR 16):) )
// Line 35 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
// Line 35  1 
	push 1
// Line 35 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 35 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000030
	mov  rax, 0
	call fread
	jmp  .L000031
.L000030:
	sub  rsp, 8
	mov  rax, 0
	call fread
	add  rsp, 8
.L000031:
	push rax
	pop  rax
// Line 39 (IF (|| (== (LVAR 20)  0 ) (!= (DEREF (] (LVAR 28) (- (LVAR 20)  1 )))  10 )) (= (DEREF (] (LVAR 28) (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )))  10 ) NULL )
// Line 37 (|| (== (LVAR 20)  0 ) (!= (DEREF (] (LVAR 28) (- (LVAR 20)  1 )))  10 ))
// Line 37 (== (LVAR 20)  0 )
// Line 37 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 37  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000034
// Line 37 (!= (DEREF (] (LVAR 28) (- (LVAR 20)  1 )))  10 )
// Line 37 (DEREF (] (LVAR 28) (- (LVAR 20)  1 )))
// Line 37 (] (LVAR 28) (- (LVAR 20)  1 ))
// Line 37 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
// Line 37 (- (LVAR 20)  1 )
// Line 37 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 37  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 37  10 
	push 10
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000034
	mov  rax, 0
	jmp  .L000035
.L000034:
	mov  rax, 1
.L000035:
	push  rax
	pop  rax
	cmp  rax, 0
	je   .L000032
// Line 38 (= (DEREF (] (LVAR 28) (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )))  10 )
// Line 38 (] (LVAR 28) (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ))
// Line 38 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
// Line 38 (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )
// Line 38 (= (LVAR 20) (++ (LVAR 20)  1 ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 38 (++ (LVAR 20)  1 )
// Line 38 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 38  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 38  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 38  10 
	push 10
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
	jmp  .L000033
.L000032:
.L000033:
// Line 39 (= (DEREF (] (LVAR 28) (LVAR 20)))  0 )
// Line 39 (] (LVAR 28) (LVAR 20))
// Line 39 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
// Line 39 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 39  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 40 (CALL fclose ((LVAR 16):) )
// Line 40 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000036
	mov  rax, 0
	call fclose
	jmp  .L000037
.L000036:
	sub  rsp, 8
	mov  rax, 0
	call fclose
	add  rsp, 8
.L000037:
	push rax
	pop  rax
// Line 41 (CALL fprintf ((GVAR stderr):(ADDR  "monocc: file read\n" ):) )
// Line 41 (ADDR  "monocc: file read\n" )
	lea  rax, .LS000024[rip]
	push rax
// Line 41 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
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
// Line 43 (RETURN (LVAR 28))
// Line 43 (LVAR 28)
	mov  rax, rbp
	sub  rax, 28
	mov  rax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global emit_basic_global
// Line 46 FDECL emit_basic_global func ( * struct <Type>  type , * struct <Node>  init ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (CALL is_array_of_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )):) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) ):(= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16)):(= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )):(IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL ):) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ))):) (IF (CALL is_array ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ):(RETURN NULL ):) NULL ):(IF (!= (MEMBER (DEREF (LVAR 16)) kind 0)  3 ) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ) NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) nodes 64)):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) ptr_to 8)):(FOR init: (= (LVAR 36)  0 )cond: (< (CALL vec_len ((LVAR 32):) ) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) ):)):) (IF (CALL is_int ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 40)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.long %d\n" ):(LVAR 40):) ):) (IF (CALL is_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) ):) (IF (CALL is_ptr_to_char ((LVAR 8):) ) (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):) (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):)))))):))
emit_basic_global:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 123 (IF (CALL is_array_of_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )):) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) ):(= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16)):(= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )):(IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL ):) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ))):) (IF (CALL is_array ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ):(RETURN NULL ):) NULL ):(IF (!= (MEMBER (DEREF (LVAR 16)) kind 0)  3 ) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ) NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) nodes 64)):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) ptr_to 8)):(FOR init: (= (LVAR 36)  0 )cond: (< (CALL vec_len ((LVAR 32):) ) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) ):)):) (IF (CALL is_int ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 40)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.long %d\n" ):(LVAR 40):) ):) (IF (CALL is_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) ):) (IF (CALL is_ptr_to_char ((LVAR 8):) ) (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):) (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):))))))
// Line 47 (CALL is_array_of_char ((LVAR 8):) )
// Line 47 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000042
	mov  rax, 0
	call is_array_of_char
	jmp  .L000043
.L000042:
	sub  rsp, 8
	mov  rax, 0
	call is_array_of_char
	add  rsp, 8
.L000043:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000040
// Line 65 (BLOCK(IF (! (LVAR 16)) (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )):) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) ):(= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16)):(= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )):(IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL ):) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ))):)
// Line 65 (IF (! (LVAR 16)) (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )):) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) ):(= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16)):(= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )):(IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL ):) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) )))
// Line 48 (! (LVAR 16))
// Line 48 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000046
	mov  rax, 1
	jmp  .L000047
.L000046:
	mov  rax, 0
.L000047:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000044
// Line 55 (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )):)
// Line 55 (IF (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 ) (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ))
// Line 50 (== (MEMBER (DEREF (LVAR 8)) array_size 16)  0 )
// Line 50 (MEMBER (DEREF (LVAR 8)) array_size 16)
// Line 50 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	mov  eax, [rax]
	push rax
// Line 50  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000048
// Line 51 (CALL error_at_token ((MEMBER (DEREF (LVAR 16)) token 72):(ADDR  "Incomplete type is not allowed." ):) )
// Line 51 (ADDR  "Incomplete type is not allowed." )
	lea  rax, .LS000025[rip]
	push rax
// Line 51 (MEMBER (DEREF (LVAR 16)) token 72)
// Line 51 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
	jnz  .L000050
	mov  rax, 0
	call error_at_token
	jmp  .L000051
.L000050:
	sub  rsp, 8
	mov  rax, 0
	call error_at_token
	add  rsp, 8
.L000051:
	push rax
	pop  rax
	jmp  .L000049
.L000048:
// Line 54 (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )
// Line 54 (CALL sizeof_type ((LVAR 8):) )
// Line 54 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000052
	mov  rax, 0
	call sizeof_type
	jmp  .L000053
.L000052:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000053:
	push rax
// Line 54 (ADDR  "\t.zero %d\n" )
	lea  rax, .LS000026[rip]
	push rax
// Line 54 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000054
	mov  rax, 0
	call fprintf
	jmp  .L000055
.L000054:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000055:
	push rax
	pop  rax
.L000049:
	jmp  .L000045
.L000044:
// Line 65 (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 ) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) ):(= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16)):(= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )):(IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL ):) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ))
// Line 55 (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )
// Line 55 (MEMBER (DEREF (LVAR 16)) kind 0)
// Line 55 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 55  2 
	push 2
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000056
// Line 63 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) ):(= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16)):(= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )):(IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL ):)
// Line 57 (CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24):) )
// Line 58 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) str 24)
// Line 58 (MEMBER (DEREF (LVAR 16)) token 72)
// Line 58 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 57 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)
// Line 57 (MEMBER (DEREF (LVAR 16)) token 72)
// Line 57 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 57 (ADDR  "\t.string \"%.*s\"\n" )
	lea  rax, .LS000027[rip]
	push rax
// Line 57 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000058
	mov  rax, 0
	call fprintf
	jmp  .L000059
.L000058:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000059:
	push rax
	pop  rax
// Line 59 (= (LVAR 20) (MEMBER (DEREF (LVAR 8)) array_size 16))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 59 (MEMBER (DEREF (LVAR 8)) array_size 16)
// Line 59 (LVAR 8)
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
// Line 60 (= (LVAR 24) (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 60 (+ (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)  1 )
// Line 60 (MEMBER (DEREF (MEMBER (DEREF (LVAR 16)) token 72)) len 32)
// Line 60 (MEMBER (DEREF (LVAR 16)) token 72)
// Line 60 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 60  1 
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
// Line 63 (IF (> (LVAR 20) (LVAR 24)) (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) ) NULL )
// Line 61 (> (LVAR 20) (LVAR 24))
// Line 61 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 61 (LVAR 24)
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
	je   .L000060
// Line 62 (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(- (LVAR 20) (LVAR 24)):) )
// Line 62 (- (LVAR 20) (LVAR 24))
// Line 62 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  eax, [rax]
	push rax
// Line 62 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 62 (ADDR  "\t.zero %d\n" )
	lea  rax, .LS000028[rip]
	push rax
// Line 62 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000062
	mov  rax, 0
	call fprintf
	jmp  .L000063
.L000062:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000063:
	push rax
	pop  rax
	jmp  .L000061
.L000060:
.L000061:
	jmp  .L000057
.L000056:
// Line 64 (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) )
// Line 64 (ADDR  "Unsupported initializer." )
	lea  rax, .LS000029[rip]
	push rax
// Line 64 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000064
	mov  rax, 0
	call error_at_node
	jmp  .L000065
.L000064:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000065:
	push rax
	pop  rax
.L000057:
.L000045:
	jmp  .L000041
.L000040:
// Line 123 (IF (CALL is_array ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ):(RETURN NULL ):) NULL ):(IF (!= (MEMBER (DEREF (LVAR 16)) kind 0)  3 ) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ) NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) nodes 64)):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) ptr_to 8)):(FOR init: (= (LVAR 36)  0 )cond: (< (CALL vec_len ((LVAR 32):) ) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) ):)):) (IF (CALL is_int ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 40)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.long %d\n" ):(LVAR 40):) ):) (IF (CALL is_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) ):) (IF (CALL is_ptr_to_char ((LVAR 8):) ) (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):) (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):)))))
// Line 65 (CALL is_array ((LVAR 8):) )
// Line 65 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000068
	mov  rax, 0
	call is_array
	jmp  .L000069
.L000068:
	sub  rsp, 8
	mov  rax, 0
	call is_array
	add  rsp, 8
.L000069:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000066
// Line 77 (BLOCK(IF (! (LVAR 16)) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ):(RETURN NULL ):) NULL ):(IF (!= (MEMBER (DEREF (LVAR 16)) kind 0)  3 ) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ) NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) nodes 64)):(= (LVAR 8) (MEMBER (DEREF (LVAR 8)) ptr_to 8)):(FOR init: (= (LVAR 36)  0 )cond: (< (CALL vec_len ((LVAR 32):) ) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) ):)):)
// Line 70 (IF (! (LVAR 16)) (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ):(RETURN NULL ):) NULL )
// Line 66 (! (LVAR 16))
// Line 66 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 70 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) ):(RETURN NULL ):)
// Line 67 (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(CALL sizeof_type ((LVAR 8):) ):) )
// Line 67 (CALL sizeof_type ((LVAR 8):) )
// Line 67 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000074
	mov  rax, 0
	call sizeof_type
	jmp  .L000075
.L000074:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000075:
	push rax
// Line 67 (ADDR  "\t.zero %d\n" )
	lea  rax, .LS000030[rip]
	push rax
// Line 67 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
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
// Line 68 (RETURN NULL )
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000071
.L000070:
.L000071:
// Line 72 (IF (!= (MEMBER (DEREF (LVAR 16)) kind 0)  3 ) (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) ) NULL )
// Line 70 (!= (MEMBER (DEREF (LVAR 16)) kind 0)  3 )
// Line 70 (MEMBER (DEREF (LVAR 16)) kind 0)
// Line 70 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 70  3 
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000078
// Line 71 (CALL error_at_node ((LVAR 16):(ADDR  "Unsupported initializer." ):) )
// Line 71 (ADDR  "Unsupported initializer." )
	lea  rax, .LS000031[rip]
	push rax
// Line 71 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000080
	mov  rax, 0
	call error_at_node
	jmp  .L000081
.L000080:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000081:
	push rax
	pop  rax
	jmp  .L000079
.L000078:
.L000079:
// Line 72 (= (LVAR 32) (MEMBER (DEREF (LVAR 16)) nodes 64))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 72 (MEMBER (DEREF (LVAR 16)) nodes 64)
// Line 72 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 73 (= (LVAR 8) (MEMBER (DEREF (LVAR 8)) ptr_to 8))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 73 (MEMBER (DEREF (LVAR 8)) ptr_to 8)
// Line 73 (LVAR 8)
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
// Line 74 (FOR init: (= (LVAR 36)  0 )cond: (< (CALL vec_len ((LVAR 32):) ) (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (BLOCK(CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) ):))
// Line 74 (= (LVAR 36)  0 )
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 74  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000084:
// Line 74 (< (CALL vec_len ((LVAR 32):) ) (LVAR 36))
// Line 74 (CALL vec_len ((LVAR 32):) )
// Line 74 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000085
	mov  rax, 0
	call vec_len
	jmp  .L000086
.L000085:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000086:
	push rax
// Line 74 (LVAR 36)
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
	je   .L000083
// Line 77 (BLOCK(CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) ):)
// Line 75 (CALL emit_basic_global ((LVAR 8):(DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))):) )
// Line 75 (DEREF (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36)))
// Line 75 (] (MEMBER (DEREF (LVAR 32)) data 0) (LVAR 36))
// Line 75 (MEMBER (DEREF (LVAR 32)) data 0)
// Line 75 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 75 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
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
// Line 75 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000087
	mov  rax, 0
	call emit_basic_global
	jmp  .L000088
.L000087:
	sub  rsp, 8
	mov  rax, 0
	call emit_basic_global
	add  rsp, 8
.L000088:
	push rax
	pop  rax
.L000082:
// Line 74 (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 )
// Line 74 (= (LVAR 36) (++ (LVAR 36)  1 ))
	mov  rax, rbp
	sub  rax, 36
	push rax
// Line 74 (++ (LVAR 36)  1 )
// Line 74 (LVAR 36)
	mov  rax, rbp
	sub  rax, 36
	mov  eax, [rax]
	push rax
// Line 74  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 74  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000084
.L000083:
	jmp  .L000067
.L000066:
// Line 123 (IF (CALL is_int ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 40)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.long %d\n" ):(LVAR 40):) ):) (IF (CALL is_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) ):) (IF (CALL is_ptr_to_char ((LVAR 8):) ) (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):) (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):))))
// Line 77 (CALL is_int ((LVAR 8):) )
// Line 77 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000091
	mov  rax, 0
	call is_int
	jmp  .L000092
.L000091:
	sub  rsp, 8
	mov  rax, 0
	call is_int
	add  rsp, 8
.L000092:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000089
// Line 87 (BLOCK(IF (! (LVAR 16)) (= (LVAR 40)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.long %d\n" ):(LVAR 40):) ):)
// Line 86 (IF (! (LVAR 16)) (= (LVAR 40)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) )))
// Line 79 (! (LVAR 16))
// Line 79 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000095
	mov  rax, 1
	jmp  .L000096
.L000095:
	mov  rax, 0
.L000096:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000093
// Line 80 (= (LVAR 40)  0 )
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 80  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000094
.L000093:
// Line 86 (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))
// Line 81 (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 )
// Line 81 (MEMBER (DEREF (LVAR 16)) kind 0)
// Line 81 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 81  1 
	push 1
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000097
// Line 82 (= (LVAR 40) (MEMBER (DEREF (LVAR 16)) int_val 32))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 82 (MEMBER (DEREF (LVAR 16)) int_val 32)
// Line 82 (LVAR 16)
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
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000098
.L000097:
// Line 84 (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) )
// Line 85 (ADDR  "Calculation in an initializer is not supported yet." )
	lea  rax, .LS000032[rip]
	push rax
// Line 85 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000099
	mov  rax, 0
	call error_at_node
	jmp  .L000100
.L000099:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000100:
	push rax
	pop  rax
.L000098:
.L000094:
// Line 86 (CALL fprintf ((GVAR output):(ADDR  "\t.long %d\n" ):(LVAR 40):) )
// Line 86 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  eax, [rax]
	push rax
// Line 86 (ADDR  "\t.long %d\n" )
	lea  rax, .LS000033[rip]
	push rax
// Line 86 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000101
	mov  rax, 0
	call fprintf
	jmp  .L000102
.L000101:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000102:
	push rax
	pop  rax
	jmp  .L000090
.L000089:
// Line 123 (IF (CALL is_char ((LVAR 8):) ) (BLOCK(IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) ):) (IF (CALL is_ptr_to_char ((LVAR 8):) ) (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):) (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):)))
// Line 87 (CALL is_char ((LVAR 8):) )
// Line 87 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000105
	mov  rax, 0
	call is_char
	jmp  .L000106
.L000105:
	sub  rsp, 8
	mov  rax, 0
	call is_char
	add  rsp, 8
.L000106:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000103
// Line 97 (BLOCK(IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))):(CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) ):)
// Line 96 (IF (! (LVAR 16)) (= (LVAR 44)  0 ) (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) )))
// Line 89 (! (LVAR 16))
// Line 89 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000109
	mov  rax, 1
	jmp  .L000110
.L000109:
	mov  rax, 0
.L000110:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000107
// Line 90 (= (LVAR 44)  0 )
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 90  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000108
.L000107:
// Line 96 (IF (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 ) (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32)) (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) ))
// Line 91 (== (MEMBER (DEREF (LVAR 16)) kind 0)  1 )
// Line 91 (MEMBER (DEREF (LVAR 16)) kind 0)
// Line 91 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 91  1 
	push 1
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000111
// Line 92 (= (LVAR 44) (MEMBER (DEREF (LVAR 16)) int_val 32))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 92 (MEMBER (DEREF (LVAR 16)) int_val 32)
// Line 92 (LVAR 16)
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
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000112
.L000111:
// Line 94 (CALL error_at_node ((LVAR 16):(ADDR  "Calculation in an initializer is not supported yet." ):) )
// Line 95 (ADDR  "Calculation in an initializer is not supported yet." )
	lea  rax, .LS000034[rip]
	push rax
// Line 95 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000113
	mov  rax, 0
	call error_at_node
	jmp  .L000114
.L000113:
	sub  rsp, 8
	mov  rax, 0
	call error_at_node
	add  rsp, 8
.L000114:
	push rax
	pop  rax
.L000112:
.L000108:
// Line 96 (CALL fprintf ((GVAR output):(ADDR  "\t.byte %d\n" ):(LVAR 44):) )
// Line 96 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  eax, [rax]
	push rax
// Line 96 (ADDR  "\t.byte %d\n" )
	lea  rax, .LS000035[rip]
	push rax
// Line 96 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000115
	mov  rax, 0
	call fprintf
	jmp  .L000116
.L000115:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000116:
	push rax
	pop  rax
	jmp  .L000104
.L000103:
// Line 123 (IF (CALL is_ptr_to_char ((LVAR 8):) ) (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):) (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):))
// Line 97 (CALL is_ptr_to_char ((LVAR 8):) )
// Line 97 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000119
	mov  rax, 0
	call is_ptr_to_char
	jmp  .L000120
.L000119:
	sub  rsp, 8
	mov  rax, 0
	call is_ptr_to_char
	add  rsp, 8
.L000120:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000117
// Line 103 (BLOCK(IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )):)
// Line 103 (IF (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )) (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) ) (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ))
// Line 99 (&& (LVAR 16) (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 ))
// Line 99 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000123
// Line 99 (== (MEMBER (DEREF (LVAR 16)) kind 0)  2 )
// Line 99 (MEMBER (DEREF (LVAR 16)) kind 0)
// Line 99 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 99  2 
	push 2
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
// Line 100 (CALL fprintf ((GVAR output):(ADDR  "\t.quad .LS%06d\n" ):(MEMBER (DEREF (LVAR 16)) int_val 32):) )
// Line 100 (MEMBER (DEREF (LVAR 16)) int_val 32)
// Line 100 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 100 (ADDR  "\t.quad .LS%06d\n" )
	lea  rax, .LS000036[rip]
	push rax
// Line 100 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000125
	mov  rax, 0
	call fprintf
	jmp  .L000126
.L000125:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000126:
	push rax
	pop  rax
	jmp  .L000122
.L000121:
// Line 102 (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )
// Line 102 (ADDR  "\t.quad 0\n" )
	lea  rax, .LS000037[rip]
	push rax
// Line 102 (GVAR output)
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
.L000122:
	jmp  .L000118
.L000117:
// Line 123 (BLOCK(= (LVAR 48) (CALL sizeof_type ((LVAR 8):) )):(SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)):)
// Line 104 (= (LVAR 48) (CALL sizeof_type ((LVAR 8):) ))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 104 (CALL sizeof_type ((LVAR 8):) )
// Line 104 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000129
	mov  rax, 0
	call sizeof_type
	jmp  .L000130
.L000129:
	sub  rsp, 8
	mov  rax, 0
	call sizeof_type
	add  rsp, 8
.L000130:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 105 (SWITCH cond: (LVAR 48) body: (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):))
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 105 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 122 (BLOCK(CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)):(CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)):(CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)):(CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)):(DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )):)
// Line 106 (CASE cond: 1  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :))
// Line 106  1 
	push 1
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000132
// Line 109 (CASE cond: 2  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :))
// Line 109  2 
	push 2
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000133
// Line 112 (CASE cond: 4  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :))
// Line 112  4 
	push 4
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000134
// Line 115 (CASE cond: 8  body:(BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :))
// Line 115  8 
	push 8
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000135
// Line 119 (DEFAULT body:(CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) ))
	jmp  .L000136
	jmp  .L000131
.L000132:
// Line 107 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) ):BREAK :)
// Line 107 (CALL fprintf ((GVAR output):(ADDR  "\t.byte 0\n" ):) )
// Line 107 (ADDR  "\t.byte 0\n" )
	lea  rax, .LS000038[rip]
	push rax
// Line 107 (GVAR output)
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
// Line 108 BREAK 
	jmp  .L000131
.L000133:
// Line 110 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) ):BREAK :)
// Line 110 (CALL fprintf ((GVAR output):(ADDR  "\t.short 0\n" ):) )
// Line 110 (ADDR  "\t.short 0\n" )
	lea  rax, .LS000039[rip]
	push rax
// Line 110 (GVAR output)
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
// Line 111 BREAK 
	jmp  .L000131
.L000134:
// Line 113 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) ):BREAK :)
// Line 113 (CALL fprintf ((GVAR output):(ADDR  "\t.long 0\n" ):) )
// Line 113 (ADDR  "\t.long 0\n" )
	lea  rax, .LS000040[rip]
	push rax
// Line 113 (GVAR output)
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
// Line 114 BREAK 
	jmp  .L000131
.L000135:
// Line 116 (BLOCK(CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) ):BREAK :)
// Line 116 (CALL fprintf ((GVAR output):(ADDR  "\t.align 8\n" ):) )
// Line 116 (ADDR  "\t.align 8\n" )
	lea  rax, .LS000041[rip]
	push rax
// Line 116 (GVAR output)
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
// Line 117 (CALL fprintf ((GVAR output):(ADDR  "\t.quad 0\n" ):) )
// Line 117 (ADDR  "\t.quad 0\n" )
	lea  rax, .LS000042[rip]
	push rax
// Line 117 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000145
	mov  rax, 0
	call fprintf
	jmp  .L000146
.L000145:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000146:
	push rax
	pop  rax
// Line 118 BREAK 
	jmp  .L000131
.L000136:
// Line 120 (CALL fprintf ((GVAR output):(ADDR  "\t.zero %d\n" ):(LVAR 48):) )
// Line 120 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
// Line 120 (ADDR  "\t.zero %d\n" )
	lea  rax, .LS000043[rip]
	push rax
// Line 120 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
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
.L000131:
.L000118:
.L000104:
.L000090:
.L000067:
.L000041:
	mov  rsp, rbp
	pop  rbp
	ret
	.global compile
// Line 125 FDECL compile func ( * char  file ) void 
//    (LVAR 8) 
//    (BLOCK(CALL tokenize ((LVAR 8):(GVAR source_text): 1 :) ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: tokenize\n" ):) ):(FOR init: (= (LVAR 16) (GVAR token))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8)) body (BLOCK(= (LVAR 24) (CALL find_macro ((LVAR 16):) )):(IF (! (LVAR 24)) CONTINUE  NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) next 8)):(= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 24)) kind 0)):(= (MEMBER (DEREF (LVAR 16)) next 8) (MEMBER (DEREF (LVAR 24)) next 8)):(= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 24)) str 24)):(= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 24)) len 32)):(= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 24)) int_val 16)):(WHILE cond:(MEMBER (DEREF (LVAR 16)) next 8)body: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8))):(= (MEMBER (DEREF (LVAR 16)) next 8) (LVAR 32)):)):(CALL print_tokens ((GVAR token):) ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: pp\n" ):) ):(= (GVAR strings) (CALL vec_new () )):(CALL parse_program () ):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: parse\n" ):) ):(CALL print_globals () ):(CALL print_funcs () ):(CALL print_strings () ):(CALL print_structs () ):(CALL print_typedefs () ):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.intel_syntax noprefix\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.data\n" ):) ):(= (LVAR 40) (GVAR globals)):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: emit globals...\n" ):) ):(FOR init: NULL cond: (LVAR 40) post: (= (LVAR 40) (MEMBER (DEREF (LVAR 40)) next 0)) body (BLOCK(IF (MEMBER (DEREF (LVAR 40)) is_extern 32) (BLOCKCONTINUE :) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL emit_basic_global ((MEMBER (DEREF (LVAR 40)) type 16):(MEMBER (DEREF (LVAR 40)) body 24):) ):)):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: emitted globals\n" ):) ):(= (LVAR 44)  0 ):(WHILE cond:(< (CALL vec_len ((GVAR strings):) ) (LVAR 44))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  ".LS%06d:\n" ):(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) int_val 32):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) str 24):) ):(++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ):)):(CALL fprintf ((GVAR output):(ADDR  "\n" ):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.text\n" ):) ):(= (LVAR 48) (CALL vec_len ((GVAR ext_declarations):) )):(FOR init: (= (LVAR 52)  0 )cond: (< (LVAR 48) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(= (LVAR 60) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 52)))):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) str 24):) ):(CALL gen_stmt ((LVAR 60):) ):)):(CALL fprintf ((GVAR stderr):(ADDR  "monocc: compile complete\n" ):) ):))
compile:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp - 8], rdi
// Line 126 (CALL tokenize ((LVAR 8):(GVAR source_text): 1 :) )
// Line 235  1 
	push 1
// Line 126 (GVAR source_text)
	lea  rax, source_text[rip]
	mov  rax, [rax]
	push rax
// Line 126 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000149
	mov  rax, 0
	call tokenize
	jmp  .L000150
.L000149:
	sub  rsp, 8
	mov  rax, 0
	call tokenize
	add  rsp, 8
.L000150:
	push rax
	pop  rax
// Line 127 (CALL fprintf ((GVAR stderr):(ADDR  "monocc: tokenize\n" ):) )
// Line 127 (ADDR  "monocc: tokenize\n" )
	lea  rax, .LS000044[rip]
	push rax
// Line 127 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000151
	mov  rax, 0
	call fprintf
	jmp  .L000152
.L000151:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000152:
	push rax
	pop  rax
// Line 128 (FOR init: (= (LVAR 16) (GVAR token))cond: (LVAR 16) post: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8)) body (BLOCK(= (LVAR 24) (CALL find_macro ((LVAR 16):) )):(IF (! (LVAR 24)) CONTINUE  NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) next 8)):(= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 24)) kind 0)):(= (MEMBER (DEREF (LVAR 16)) next 8) (MEMBER (DEREF (LVAR 24)) next 8)):(= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 24)) str 24)):(= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 24)) len 32)):(= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 24)) int_val 16)):(WHILE cond:(MEMBER (DEREF (LVAR 16)) next 8)body: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8))):(= (MEMBER (DEREF (LVAR 16)) next 8) (LVAR 32)):))
// Line 128 (= (LVAR 16) (GVAR token))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 128 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
.L000155:
// Line 128 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000154
// Line 143 (BLOCK(= (LVAR 24) (CALL find_macro ((LVAR 16):) )):(IF (! (LVAR 24)) CONTINUE  NULL ):(= (LVAR 32) (MEMBER (DEREF (LVAR 16)) next 8)):(= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 24)) kind 0)):(= (MEMBER (DEREF (LVAR 16)) next 8) (MEMBER (DEREF (LVAR 24)) next 8)):(= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 24)) str 24)):(= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 24)) len 32)):(= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 24)) int_val 16)):(WHILE cond:(MEMBER (DEREF (LVAR 16)) next 8)body: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8))):(= (MEMBER (DEREF (LVAR 16)) next 8) (LVAR 32)):)
// Line 130 (= (LVAR 24) (CALL find_macro ((LVAR 16):) ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 130 (CALL find_macro ((LVAR 16):) )
// Line 130 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000156
	mov  rax, 0
	call find_macro
	jmp  .L000157
.L000156:
	sub  rsp, 8
	mov  rax, 0
	call find_macro
	add  rsp, 8
.L000157:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 133 (IF (! (LVAR 24)) CONTINUE  NULL )
// Line 131 (! (LVAR 24))
// Line 131 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000160
	mov  rax, 1
	jmp  .L000161
.L000160:
	mov  rax, 0
.L000161:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000158
// Line 132 CONTINUE 
	jmp  .L000153
	jmp  .L000159
.L000158:
.L000159:
// Line 133 (= (LVAR 32) (MEMBER (DEREF (LVAR 16)) next 8))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 133 (MEMBER (DEREF (LVAR 16)) next 8)
// Line 133 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
// Line 134 (= (MEMBER (DEREF (LVAR 16)) kind 0) (MEMBER (DEREF (LVAR 24)) kind 0))
// Line 134 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 134 (MEMBER (DEREF (LVAR 24)) kind 0)
// Line 134 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
// Line 135 (= (MEMBER (DEREF (LVAR 16)) next 8) (MEMBER (DEREF (LVAR 24)) next 8))
// Line 135 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 135 (MEMBER (DEREF (LVAR 24)) next 8)
// Line 135 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
// Line 136 (= (MEMBER (DEREF (LVAR 16)) str 24) (MEMBER (DEREF (LVAR 24)) str 24))
// Line 136 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	push rax
// Line 136 (MEMBER (DEREF (LVAR 24)) str 24)
// Line 136 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
// Line 137 (= (MEMBER (DEREF (LVAR 16)) len 32) (MEMBER (DEREF (LVAR 24)) len 32))
// Line 137 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	push rax
// Line 137 (MEMBER (DEREF (LVAR 24)) len 32)
// Line 137 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
// Line 138 (= (MEMBER (DEREF (LVAR 16)) int_val 16) (MEMBER (DEREF (LVAR 24)) int_val 16))
// Line 138 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 16
	push rax
// Line 138 (MEMBER (DEREF (LVAR 24)) int_val 16)
// Line 138 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
// Line 141 (WHILE cond:(MEMBER (DEREF (LVAR 16)) next 8)body: (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8)))
.L000162:
// Line 139 (MEMBER (DEREF (LVAR 16)) next 8)
// Line 139 (LVAR 16)
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
	je   .L000163
// Line 140 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 140 (MEMBER (DEREF (LVAR 16)) next 8)
// Line 140 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
	jmp  .L000162
.L000163:
// Line 141 (= (MEMBER (DEREF (LVAR 16)) next 8) (LVAR 32))
// Line 141 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 141 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000153:
// Line 128 (= (LVAR 16) (MEMBER (DEREF (LVAR 16)) next 8))
	mov  rax, rbp
	sub  rax, 16
	push rax
// Line 128 (MEMBER (DEREF (LVAR 16)) next 8)
// Line 128 (LVAR 16)
	mov  rax, rbp
	sub  rax, 16
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
	jmp  .L000155
.L000154:
// Line 143 (CALL print_tokens ((GVAR token):) )
// Line 143 (GVAR token)
	lea  rax, token[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000164
	mov  rax, 0
	call print_tokens
	jmp  .L000165
.L000164:
	sub  rsp, 8
	mov  rax, 0
	call print_tokens
	add  rsp, 8
.L000165:
	push rax
	pop  rax
// Line 144 (CALL fprintf ((GVAR stderr):(ADDR  "monocc: pp\n" ):) )
// Line 144 (ADDR  "monocc: pp\n" )
	lea  rax, .LS000045[rip]
	push rax
// Line 144 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000166
	mov  rax, 0
	call fprintf
	jmp  .L000167
.L000166:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000167:
	push rax
	pop  rax
// Line 146 (= (GVAR strings) (CALL vec_new () ))
	lea  rax, strings[rip]
	push rax
// Line 146 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000168
	mov  rax, 0
	call vec_new
	jmp  .L000169
.L000168:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L000169:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 147 (CALL parse_program () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000170
	mov  rax, 0
	call parse_program
	jmp  .L000171
.L000170:
	sub  rsp, 8
	mov  rax, 0
	call parse_program
	add  rsp, 8
.L000171:
	push rax
	pop  rax
// Line 148 (CALL fprintf ((GVAR stderr):(ADDR  "monocc: parse\n" ):) )
// Line 148 (ADDR  "monocc: parse\n" )
	lea  rax, .LS000046[rip]
	push rax
// Line 148 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000172
	mov  rax, 0
	call fprintf
	jmp  .L000173
.L000172:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000173:
	push rax
	pop  rax
// Line 149 (CALL print_globals () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000174
	mov  rax, 0
	call print_globals
	jmp  .L000175
.L000174:
	sub  rsp, 8
	mov  rax, 0
	call print_globals
	add  rsp, 8
.L000175:
	push rax
	pop  rax
// Line 150 (CALL print_funcs () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000176
	mov  rax, 0
	call print_funcs
	jmp  .L000177
.L000176:
	sub  rsp, 8
	mov  rax, 0
	call print_funcs
	add  rsp, 8
.L000177:
	push rax
	pop  rax
// Line 151 (CALL print_strings () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000178
	mov  rax, 0
	call print_strings
	jmp  .L000179
.L000178:
	sub  rsp, 8
	mov  rax, 0
	call print_strings
	add  rsp, 8
.L000179:
	push rax
	pop  rax
// Line 152 (CALL print_structs () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000180
	mov  rax, 0
	call print_structs
	jmp  .L000181
.L000180:
	sub  rsp, 8
	mov  rax, 0
	call print_structs
	add  rsp, 8
.L000181:
	push rax
	pop  rax
// Line 153 (CALL print_typedefs () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000182
	mov  rax, 0
	call print_typedefs
	jmp  .L000183
.L000182:
	sub  rsp, 8
	mov  rax, 0
	call print_typedefs
	add  rsp, 8
.L000183:
	push rax
	pop  rax
// Line 155 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 155 (ADDR  "\n" )
	lea  rax, .LS000047[rip]
	push rax
// Line 155 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000184
	mov  rax, 0
	call fprintf
	jmp  .L000185
.L000184:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000185:
	push rax
	pop  rax
// Line 156 (CALL fprintf ((GVAR output):(ADDR  "\t.intel_syntax noprefix\n" ):) )
// Line 156 (ADDR  "\t.intel_syntax noprefix\n" )
	lea  rax, .LS000048[rip]
	push rax
// Line 156 (GVAR output)
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
// Line 158 (CALL fprintf ((GVAR output):(ADDR  "\t.data\n" ):) )
// Line 158 (ADDR  "\t.data\n" )
	lea  rax, .LS000049[rip]
	push rax
// Line 158 (GVAR output)
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
// Line 159 (= (LVAR 40) (GVAR globals))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 159 (GVAR globals)
	lea  rax, globals[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 161 (CALL fprintf ((GVAR stderr):(ADDR  "monocc: emit globals...\n" ):) )
// Line 161 (ADDR  "monocc: emit globals...\n" )
	lea  rax, .LS000050[rip]
	push rax
// Line 161 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000190
	mov  rax, 0
	call fprintf
	jmp  .L000191
.L000190:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000191:
	push rax
	pop  rax
// Line 162 (FOR init: NULL cond: (LVAR 40) post: (= (LVAR 40) (MEMBER (DEREF (LVAR 40)) next 0)) body (BLOCK(IF (MEMBER (DEREF (LVAR 40)) is_extern 32) (BLOCKCONTINUE :) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL emit_basic_global ((MEMBER (DEREF (LVAR 40)) type 16):(MEMBER (DEREF (LVAR 40)) body 24):) ):))
.L000194:
// Line 162 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000193
// Line 170 (BLOCK(IF (MEMBER (DEREF (LVAR 40)) is_extern 32) (BLOCKCONTINUE :) NULL ):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) ):(CALL emit_basic_global ((MEMBER (DEREF (LVAR 40)) type 16):(MEMBER (DEREF (LVAR 40)) body 24):) ):)
// Line 166 (IF (MEMBER (DEREF (LVAR 40)) is_extern 32) (BLOCKCONTINUE :) NULL )
// Line 163 (MEMBER (DEREF (LVAR 40)) is_extern 32)
// Line 163 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 32
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000195
// Line 166 (BLOCKCONTINUE :)
// Line 164 CONTINUE 
	jmp  .L000192
	jmp  .L000196
.L000195:
.L000196:
// Line 166 (CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) )
// Line 167 (MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24)
// Line 167 (MEMBER (DEREF (LVAR 40)) token 8)
// Line 167 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
// Line 166 (MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32)
// Line 166 (MEMBER (DEREF (LVAR 40)) token 8)
// Line 166 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
// Line 166 (ADDR  "\t.global %.*s\n" )
	lea  rax, .LS000051[rip]
	push rax
// Line 166 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
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
// Line 168 (CALL fprintf ((GVAR output):(ADDR  "%.*s:\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24):) )
// Line 168 (MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) str 24)
// Line 168 (MEMBER (DEREF (LVAR 40)) token 8)
// Line 168 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
// Line 168 (MEMBER (DEREF (MEMBER (DEREF (LVAR 40)) token 8)) len 32)
// Line 168 (MEMBER (DEREF (LVAR 40)) token 8)
// Line 168 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
// Line 168 (ADDR  "%.*s:\n" )
	lea  rax, .LS000052[rip]
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
	jnz  .L000199
	mov  rax, 0
	call fprintf
	jmp  .L000200
.L000199:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000200:
	push rax
	pop  rax
// Line 169 (CALL emit_basic_global ((MEMBER (DEREF (LVAR 40)) type 16):(MEMBER (DEREF (LVAR 40)) body 24):) )
// Line 169 (MEMBER (DEREF (LVAR 40)) body 24)
// Line 169 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 24
	mov  rax, [rax]
	push rax
// Line 169 (MEMBER (DEREF (LVAR 40)) type 16)
// Line 169 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
	jnz  .L000201
	mov  rax, 0
	call emit_basic_global
	jmp  .L000202
.L000201:
	sub  rsp, 8
	mov  rax, 0
	call emit_basic_global
	add  rsp, 8
.L000202:
	push rax
	pop  rax
.L000192:
// Line 162 (= (LVAR 40) (MEMBER (DEREF (LVAR 40)) next 0))
	mov  rax, rbp
	sub  rax, 40
	push rax
// Line 162 (MEMBER (DEREF (LVAR 40)) next 0)
// Line 162 (LVAR 40)
	mov  rax, rbp
	sub  rax, 40
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
	jmp  .L000194
.L000193:
// Line 171 (CALL fprintf ((GVAR stderr):(ADDR  "monocc: emitted globals\n" ):) )
// Line 171 (ADDR  "monocc: emitted globals\n" )
	lea  rax, .LS000053[rip]
	push rax
// Line 171 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000203
	mov  rax, 0
	call fprintf
	jmp  .L000204
.L000203:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000204:
	push rax
	pop  rax
// Line 173 (= (LVAR 44)  0 )
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 173  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 180 (WHILE cond:(< (CALL vec_len ((GVAR strings):) ) (LVAR 44))body: (BLOCK(CALL fprintf ((GVAR output):(ADDR  ".LS%06d:\n" ):(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) int_val 32):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) str 24):) ):(++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ):))
.L000205:
// Line 174 (< (CALL vec_len ((GVAR strings):) ) (LVAR 44))
// Line 174 (CALL vec_len ((GVAR strings):) )
// Line 174 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000207
	mov  rax, 0
	call vec_len
	jmp  .L000208
.L000207:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000208:
	push rax
// Line 174 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
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
	je   .L000206
// Line 180 (BLOCK(CALL fprintf ((GVAR output):(ADDR  ".LS%06d:\n" ):(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) int_val 32):) ):(CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) str 24):) ):(++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ):)
// Line 175 (CALL fprintf ((GVAR output):(ADDR  ".LS%06d:\n" ):(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) int_val 32):) )
// Line 175 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) int_val 32)
// Line 175 (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))
// Line 175 (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44))
// Line 175 (MEMBER (DEREF (GVAR strings)) data 0)
// Line 175 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 175 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
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
	add  rax, 32
	mov  eax, [rax]
	push rax
// Line 175 (ADDR  ".LS%06d:\n" )
	lea  rax, .LS000054[rip]
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
	jnz  .L000209
	mov  rax, 0
	call fprintf
	jmp  .L000210
.L000209:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000210:
	push rax
	pop  rax
// Line 176 (CALL fprintf ((GVAR output):(ADDR  "\t.string \"%.*s\"\n" ):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) str 24):) )
// Line 177 (MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) str 24)
// Line 177 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)
// Line 177 (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))
// Line 177 (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44))
// Line 177 (MEMBER (DEREF (GVAR strings)) data 0)
// Line 177 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 177 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
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
// Line 176 (MEMBER (DEREF (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)) len 32)
// Line 176 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))) token 72)
// Line 176 (DEREF (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44)))
// Line 176 (] (MEMBER (DEREF (GVAR strings)) data 0) (LVAR 44))
// Line 176 (MEMBER (DEREF (GVAR strings)) data 0)
// Line 176 (GVAR strings)
	lea  rax, strings[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 176 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
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
// Line 176 (ADDR  "\t.string \"%.*s\"\n" )
	lea  rax, .LS000055[rip]
	push rax
// Line 176 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
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
// Line 178 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
// Line 178 (= (LVAR 44) (++ (LVAR 44)  1 ))
	mov  rax, rbp
	sub  rax, 44
	push rax
// Line 178 (++ (LVAR 44)  1 )
// Line 178 (LVAR 44)
	mov  rax, rbp
	sub  rax, 44
	mov  eax, [rax]
	push rax
// Line 178  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 178  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000205
.L000206:
// Line 180 (CALL fprintf ((GVAR output):(ADDR  "\n" ):) )
// Line 180 (ADDR  "\n" )
	lea  rax, .LS000056[rip]
	push rax
// Line 180 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000213
	mov  rax, 0
	call fprintf
	jmp  .L000214
.L000213:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000214:
	push rax
	pop  rax
// Line 182 (CALL fprintf ((GVAR output):(ADDR  "\t.text\n" ):) )
// Line 182 (ADDR  "\t.text\n" )
	lea  rax, .LS000057[rip]
	push rax
// Line 182 (GVAR output)
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
// Line 184 (= (LVAR 48) (CALL vec_len ((GVAR ext_declarations):) ))
	mov  rax, rbp
	sub  rax, 48
	push rax
// Line 184 (CALL vec_len ((GVAR ext_declarations):) )
// Line 184 (GVAR ext_declarations)
	lea  rax, ext_declarations[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000217
	mov  rax, 0
	call vec_len
	jmp  .L000218
.L000217:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000218:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 185 (FOR init: (= (LVAR 52)  0 )cond: (< (LVAR 48) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(= (LVAR 60) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 52)))):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) str 24):) ):(CALL gen_stmt ((LVAR 60):) ):))
// Line 185 (= (LVAR 52)  0 )
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 185  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000221:
// Line 185 (< (LVAR 48) (LVAR 52))
// Line 185 (LVAR 48)
	mov  rax, rbp
	sub  rax, 48
	mov  eax, [rax]
	push rax
// Line 185 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
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
	je   .L000220
// Line 190 (BLOCK(= (LVAR 60) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 52)))):(CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) str 24):) ):(CALL gen_stmt ((LVAR 60):) ):)
// Line 186 (= (LVAR 60) (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 52))))
	mov  rax, rbp
	sub  rax, 60
	push rax
// Line 186 (DEREF (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 52)))
// Line 186 (] (MEMBER (DEREF (GVAR ext_declarations)) data 0) (LVAR 52))
// Line 186 (MEMBER (DEREF (GVAR ext_declarations)) data 0)
// Line 186 (GVAR ext_declarations)
	lea  rax, ext_declarations[rip]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 186 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
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
// Line 187 (CALL fprintf ((GVAR output):(ADDR  "\t.global %.*s\n" ):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) len 32):(MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) str 24):) )
// Line 187 (MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) str 24)
// Line 187 (MEMBER (DEREF (LVAR 60)) token 72)
// Line 187 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
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
// Line 187 (MEMBER (DEREF (MEMBER (DEREF (LVAR 60)) token 72)) len 32)
// Line 187 (MEMBER (DEREF (LVAR 60)) token 72)
// Line 187 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
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
// Line 187 (ADDR  "\t.global %.*s\n" )
	lea  rax, .LS000058[rip]
	push rax
// Line 187 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000222
	mov  rax, 0
	call fprintf
	jmp  .L000223
.L000222:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000223:
	push rax
	pop  rax
// Line 188 (CALL gen_stmt ((LVAR 60):) )
// Line 188 (LVAR 60)
	mov  rax, rbp
	sub  rax, 60
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
.L000219:
// Line 185 (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )
// Line 185 (= (LVAR 52) (++ (LVAR 52)  1 ))
	mov  rax, rbp
	sub  rax, 52
	push rax
// Line 185 (++ (LVAR 52)  1 )
// Line 185 (LVAR 52)
	mov  rax, rbp
	sub  rax, 52
	mov  eax, [rax]
	push rax
// Line 185  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 185  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000221
.L000220:
// Line 190 (CALL fprintf ((GVAR stderr):(ADDR  "monocc: compile complete\n" ):) )
// Line 190 (ADDR  "monocc: compile complete\n" )
	lea  rax, .LS000059[rip]
	push rax
// Line 190 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000226
	mov  rax, 0
	call fprintf
	jmp  .L000227
.L000226:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000227:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	.global main
// Line 193 FDECL main func ( int  argc , * * char  argv ) int 
//    (LVAR 4) (LVAR 12) 
//    (BLOCK(FOR init: (= (LVAR 24)  1 )cond: (< (LVAR 4) (LVAR 24)) post: (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ) body (BLOCK(IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-test" ):) )  0 ) (BLOCK(CALL test_vec () ):(RETURN  0 ):) (IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )  0 ) (BLOCK(IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL ):(= (LVAR 20) (ADDR  "input" )):(= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))):BREAK :) (BLOCK(= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24)))):(= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )):(= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )):(CALL strcpy ((GVAR output_file_name):(LVAR 20):) ):(= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )):(IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL ):(= (DEREF (+ (LVAR 32)  1 ))  115 ):(CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) ):(= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )):(IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL ):(CALL compile ((LVAR 20):) ):(RETURN  0 ):))):)):(CALL fprintf ((GVAR stderr):(ADDR  "Invalid arguments.\n" ):) ):(RETURN  1 ):))
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp - 4], edi
	mov  [rbp - 12], rsi
// Line 196 (FOR init: (= (LVAR 24)  1 )cond: (< (LVAR 4) (LVAR 24)) post: (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 ) body (BLOCK(IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-test" ):) )  0 ) (BLOCK(CALL test_vec () ):(RETURN  0 ):) (IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )  0 ) (BLOCK(IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL ):(= (LVAR 20) (ADDR  "input" )):(= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))):BREAK :) (BLOCK(= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24)))):(= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )):(= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )):(CALL strcpy ((GVAR output_file_name):(LVAR 20):) ):(= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )):(IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL ):(= (DEREF (+ (LVAR 32)  1 ))  115 ):(CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) ):(= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )):(IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL ):(CALL compile ((LVAR 20):) ):(RETURN  0 ):))):))
// Line 196 (= (LVAR 24)  1 )
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 196  1 
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000230:
// Line 196 (< (LVAR 4) (LVAR 24))
// Line 196 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 196 (LVAR 24)
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
	je   .L000229
// Line 232 (BLOCK(IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-test" ):) )  0 ) (BLOCK(CALL test_vec () ):(RETURN  0 ):) (IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )  0 ) (BLOCK(IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL ):(= (LVAR 20) (ADDR  "input" )):(= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))):BREAK :) (BLOCK(= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24)))):(= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )):(= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )):(CALL strcpy ((GVAR output_file_name):(LVAR 20):) ):(= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )):(IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL ):(= (DEREF (+ (LVAR 32)  1 ))  115 ):(CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) ):(= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )):(IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL ):(CALL compile ((LVAR 20):) ):(RETURN  0 ):))):)
// Line 230 (IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-test" ):) )  0 ) (BLOCK(CALL test_vec () ):(RETURN  0 ):) (IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )  0 ) (BLOCK(IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL ):(= (LVAR 20) (ADDR  "input" )):(= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))):BREAK :) (BLOCK(= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24)))):(= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )):(= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )):(CALL strcpy ((GVAR output_file_name):(LVAR 20):) ):(= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )):(IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL ):(= (DEREF (+ (LVAR 32)  1 ))  115 ):(CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) ):(= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )):(IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL ):(CALL compile ((LVAR 20):) ):(RETURN  0 ):)))
// Line 197 (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-test" ):) )  0 )
// Line 197 (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-test" ):) )
// Line 197 (ADDR  "-test" )
	lea  rax, .LS000060[rip]
	push rax
// Line 197 (DEREF (] (LVAR 12) (LVAR 24)))
// Line 197 (] (LVAR 12) (LVAR 24))
// Line 197 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
// Line 197 (LVAR 24)
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
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000233
	mov  rax, 0
	call strcmp
	jmp  .L000234
.L000233:
	sub  rsp, 8
	mov  rax, 0
	call strcmp
	add  rsp, 8
.L000234:
	push rax
// Line 197  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000231
// Line 200 (BLOCK(CALL test_vec () ):(RETURN  0 ):)
// Line 198 (CALL test_vec () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000235
	mov  rax, 0
	call test_vec
	jmp  .L000236
.L000235:
	sub  rsp, 8
	mov  rax, 0
	call test_vec
	add  rsp, 8
.L000236:
	push rax
	pop  rax
// Line 199 (RETURN  0 )
// Line 199  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000232
.L000231:
// Line 230 (IF (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )  0 ) (BLOCK(IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL ):(= (LVAR 20) (ADDR  "input" )):(= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))):BREAK :) (BLOCK(= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24)))):(= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )):(= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )):(CALL strcpy ((GVAR output_file_name):(LVAR 20):) ):(= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )):(IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL ):(= (DEREF (+ (LVAR 32)  1 ))  115 ):(CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) ):(= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )):(IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL ):(CALL compile ((LVAR 20):) ):(RETURN  0 ):))
// Line 200 (== (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )  0 )
// Line 200 (CALL strcmp ((DEREF (] (LVAR 12) (LVAR 24))):(ADDR  "-string" ):) )
// Line 200 (ADDR  "-string" )
	lea  rax, .LS000061[rip]
	push rax
// Line 200 (DEREF (] (LVAR 12) (LVAR 24)))
// Line 200 (] (LVAR 12) (LVAR 24))
// Line 200 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
// Line 200 (LVAR 24)
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
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000239
	mov  rax, 0
	call strcmp
	jmp  .L000240
.L000239:
	sub  rsp, 8
	mov  rax, 0
	call strcmp
	add  rsp, 8
.L000240:
	push rax
// Line 200  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000237
// Line 208 (BLOCK(IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL ):(= (LVAR 20) (ADDR  "input" )):(= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))):BREAK :)
// Line 205 (IF (< (LVAR 4) (+ (LVAR 24)  1 )) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):) NULL )
// Line 201 (< (LVAR 4) (+ (LVAR 24)  1 ))
// Line 201 (LVAR 4)
	mov  rax, rbp
	sub  rax, 4
	mov  eax, [rax]
	push rax
// Line 201 (+ (LVAR 24)  1 )
// Line 201 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
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
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000241
// Line 205 (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) ):(RETURN  1 ):)
// Line 202 (CALL fprintf ((GVAR stderr):(ADDR  "No input string.\n" ):) )
// Line 202 (ADDR  "No input string.\n" )
	lea  rax, .LS000062[rip]
	push rax
// Line 202 (GVAR stderr)
	lea  rax, stderr[rip]
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
// Line 203 (RETURN  1 )
// Line 203  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000242
.L000241:
.L000242:
// Line 205 (= (LVAR 20) (ADDR  "input" ))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 205 (ADDR  "input" )
	lea  rax, .LS000063[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 206 (= (GVAR source_text) (DEREF (] (LVAR 12) (+ (LVAR 24)  1 ))))
	lea  rax, source_text[rip]
	push rax
// Line 206 (DEREF (] (LVAR 12) (+ (LVAR 24)  1 )))
// Line 206 (] (LVAR 12) (+ (LVAR 24)  1 ))
// Line 206 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
// Line 206 (+ (LVAR 24)  1 )
// Line 206 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 206  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
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
// Line 207 BREAK 
	jmp  .L000229
	jmp  .L000238
.L000237:
// Line 230 (BLOCK(= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24)))):(= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )):(= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )):(CALL strcpy ((GVAR output_file_name):(LVAR 20):) ):(= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )):(IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL ):(= (DEREF (+ (LVAR 32)  1 ))  115 ):(CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) ):(= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )):(IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL ):(CALL compile ((LVAR 20):) ):(RETURN  0 ):)
// Line 209 (= (LVAR 20) (DEREF (] (LVAR 12) (LVAR 24))))
	mov  rax, rbp
	sub  rax, 20
	push rax
// Line 209 (DEREF (] (LVAR 12) (LVAR 24)))
// Line 209 (] (LVAR 12) (LVAR 24))
// Line 209 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
// Line 209 (LVAR 24)
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
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 210 (= (GVAR source_text) (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) ))
	lea  rax, source_text[rip]
	push rax
// Line 210 (CALL read_file ((DEREF (] (LVAR 12) (LVAR 24))):) )
// Line 210 (DEREF (] (LVAR 12) (LVAR 24)))
// Line 210 (] (LVAR 12) (LVAR 24))
// Line 210 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  rax, [rax]
	push rax
// Line 210 (LVAR 24)
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
	jnz  .L000245
	mov  rax, 0
	call read_file
	jmp  .L000246
.L000245:
	sub  rsp, 8
	mov  rax, 0
	call read_file
	add  rsp, 8
.L000246:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 211 (= (GVAR output_file_name) (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) ))
	lea  rax, output_file_name[rip]
	push rax
// Line 211 (CALL calloc ( 1 :(+ (CALL strlen ((LVAR 20):) )  5 ):) )
// Line 211 (+ (CALL strlen ((LVAR 20):) )  5 )
// Line 211 (CALL strlen ((LVAR 20):) )
// Line 211 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000247
	mov  rax, 0
	call strlen
	jmp  .L000248
.L000247:
	sub  rsp, 8
	mov  rax, 0
	call strlen
	add  rsp, 8
.L000248:
	push rax
// Line 211  5 
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 211  1 
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
// Line 212 (CALL strcpy ((GVAR output_file_name):(LVAR 20):) )
// Line 212 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
// Line 212 (GVAR output_file_name)
	lea  rax, output_file_name[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000251
	mov  rax, 0
	call strcpy
	jmp  .L000252
.L000251:
	sub  rsp, 8
	mov  rax, 0
	call strcpy
	add  rsp, 8
.L000252:
	push rax
	pop  rax
// Line 213 (= (LVAR 32) (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 ))
	mov  rax, rbp
	sub  rax, 32
	push rax
// Line 213 (- (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))  2 )
// Line 213 (+ (GVAR output_file_name) (CALL strlen ((GVAR output_file_name):) ))
// Line 213 (GVAR output_file_name)
	lea  rax, output_file_name[rip]
	mov  rax, [rax]
	push rax
// Line 213 (CALL strlen ((GVAR output_file_name):) )
// Line 213 (GVAR output_file_name)
	lea  rax, output_file_name[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000253
	mov  rax, 0
	call strlen
	jmp  .L000254
.L000253:
	sub  rsp, 8
	mov  rax, 0
	call strlen
	add  rsp, 8
.L000254:
	push rax
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
// Line 213  2 
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 218 (IF (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 ) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):) NULL )
// Line 214 (!= (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )  0 )
// Line 214 (CALL strcmp ((LVAR 32):(ADDR  ".c" ):) )
// Line 214 (ADDR  ".c" )
	lea  rax, .LS000064[rip]
	push rax
// Line 214 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000257
	mov  rax, 0
	call strcmp
	jmp  .L000258
.L000257:
	sub  rsp, 8
	mov  rax, 0
	call strcmp
	add  rsp, 8
.L000258:
	push rax
// Line 214  0 
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setne al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000255
// Line 218 (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) ):(RETURN  1 ):)
// Line 215 (CALL fprintf ((GVAR stderr):(ADDR  "Invalid aource file name." ):) )
// Line 215 (ADDR  "Invalid aource file name." )
	lea  rax, .LS000065[rip]
	push rax
// Line 215 (GVAR stderr)
	lea  rax, stderr[rip]
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
// Line 216 (RETURN  1 )
// Line 216  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	jmp  .L000256
.L000255:
.L000256:
// Line 218 (= (DEREF (+ (LVAR 32)  1 ))  115 )
// Line 218 (+ (LVAR 32)  1 )
// Line 218 (LVAR 32)
	mov  rax, rbp
	sub  rax, 32
	mov  rax, [rax]
	push rax
// Line 218  1 
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 218  115 
	push 115
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 220 (CALL fprintf ((GVAR stderr):(ADDR  "output file: %s\n" ):(GVAR output_file_name):) )
// Line 220 (GVAR output_file_name)
	lea  rax, output_file_name[rip]
	mov  rax, [rax]
	push rax
// Line 220 (ADDR  "output file: %s\n" )
	lea  rax, .LS000066[rip]
	push rax
// Line 220 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000261
	mov  rax, 0
	call fprintf
	jmp  .L000262
.L000261:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000262:
	push rax
	pop  rax
// Line 221 (= (GVAR output) (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) ))
	lea  rax, output[rip]
	push rax
// Line 221 (CALL fopen ((GVAR output_file_name):(ADDR  "w" ):) )
// Line 221 (ADDR  "w" )
	lea  rax, .LS000067[rip]
	push rax
// Line 221 (GVAR output_file_name)
	lea  rax, output_file_name[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000263
	mov  rax, 0
	call fopen
	jmp  .L000264
.L000263:
	sub  rsp, 8
	mov  rax, 0
	call fopen
	add  rsp, 8
.L000264:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 227 (IF (! (GVAR output)) (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):) NULL )
// Line 222 (! (GVAR output))
// Line 222 (GVAR output)
	lea  rax, output[rip]
	mov  rax, [rax]
	push rax
	pop  rax
	cmp  rax, 0
	jne  .L000267
	mov  rax, 1
	jmp  .L000268
.L000267:
	mov  rax, 0
.L000268:
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000265
// Line 227 (BLOCK(CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) ):(CALL exit ( 1 :) ):)
// Line 223 (CALL fprintf ((GVAR stderr):(ADDR  "Cannot open output file.\n" ):) )
// Line 223 (ADDR  "Cannot open output file.\n" )
	lea  rax, .LS000068[rip]
	push rax
// Line 223 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000269
	mov  rax, 0
	call fprintf
	jmp  .L000270
.L000269:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000270:
	push rax
	pop  rax
// Line 224 (CALL exit ( 1 :) )
// Line 224  1 
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000271
	mov  rax, 0
	call exit
	jmp  .L000272
.L000271:
	sub  rsp, 8
	mov  rax, 0
	call exit
	add  rsp, 8
.L000272:
	push rax
	pop  rax
	jmp  .L000266
.L000265:
.L000266:
// Line 227 (CALL compile ((LVAR 20):) )
// Line 227 (LVAR 20)
	mov  rax, rbp
	sub  rax, 20
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000273
	mov  rax, 0
	call compile
	jmp  .L000274
.L000273:
	sub  rsp, 8
	mov  rax, 0
	call compile
	add  rsp, 8
.L000274:
	push rax
	pop  rax
// Line 228 (RETURN  0 )
// Line 228  0 
	push 0
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
.L000238:
.L000232:
.L000228:
// Line 196 (++ (= (LVAR 24) (++ (LVAR 24)  1 ))  1 )
// Line 196 (= (LVAR 24) (++ (LVAR 24)  1 ))
	mov  rax, rbp
	sub  rax, 24
	push rax
// Line 196 (++ (LVAR 24)  1 )
// Line 196 (LVAR 24)
	mov  rax, rbp
	sub  rax, 24
	mov  eax, [rax]
	push rax
// Line 196  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 196  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000230
.L000229:
// Line 232 (CALL fprintf ((GVAR stderr):(ADDR  "Invalid arguments.\n" ):) )
// Line 232 (ADDR  "Invalid arguments.\n" )
	lea  rax, .LS000069[rip]
	push rax
// Line 232 (GVAR stderr)
	lea  rax, stderr[rip]
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
// Line 233 (RETURN  1 )
// Line 233  1 
	push 1
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret

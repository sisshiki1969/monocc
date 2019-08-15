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
// [Vector][*][vec_new][(][)][{][Vector][*][vec][=][(][Vector][*][)][malloc][(]<sizeof>[(][Vector][)][)][;]
// [vec][->][data][=][(][Node][*][*][)][malloc][(][5][*]<sizeof>[(]<void>[*][)][)][;]
// [vec][->][len][=][0][;]
// [vec][->][capacity][=][5][;]
// <return>[vec][;]
// [}]<int>[vec_len][(][Vector][*][vec][)][{]<return>[vec][->][len][;]
// [}]<void>[vec_push][(][Vector][*][vec][,][Node][*][data][)][{]<if>[(][vec][->][len][==][vec][->][capacity][)][{][vec][->][capacity][*=][2][;]
// [vec][->][data][=][realloc][(][vec][->][data][,][vec][->][capacity][*]<sizeof>[(]<void>[*][)][)][;]
// [}][vec][->][data][[][vec][->][len][++][]][=][data][;]
// [}]<void>[test_vec][(][)][{][Vector][*][vec][=][vec_new][(][)][;]
// <for>[(]<int>[i][=][0][;]
// [i][<][100][;]
// [i][++][)][vec_push][(][vec][,][new_node_num][(][i][,][(][(]<void>[*][)][0][)][)][)][;]
// [assert_expect][(]<__LINE__>[,][100][,][vec_len][(][vec][)][)][;]
// [assert_expect][(]<__LINE__>[,][0][,][vec][->][data][[][0][]][->][int_val][)][;]
// [assert_expect][(]<__LINE__>[,][50][,][vec][->][data][[][50][]][->][int_val][)][;]
// [assert_expect][(]<__LINE__>[,][99][,][vec][->][data][[][99][]][->][int_val][)][;]
// [fprintf][(][stderr][,]"test_vec() cleared\n"[)][;]
// [}]<EOF>
// FDECL vec_new func ( ) * struct <Vector> 
//    
//    (BLOCK(= (LVAR 8) (CAST * struct <Vector>  (CALL malloc ( 16 :) ))):(= (MEMBER (DEREF (LVAR 8)) data 0) (CAST * * struct <Node>  (CALL malloc ((*  5   8 ):) ))):(= (MEMBER (DEREF (LVAR 8)) len 8)  0 ):(= (MEMBER (DEREF (LVAR 8)) capacity 12)  5 ):(RETURN (LVAR 8)):))
//    vec  offset:8  * struct <Vector> 

// FDECL vec_len func ( * struct <Vector>  vec ) int 
//    (LVAR 8) 
//    (BLOCK(RETURN (MEMBER (DEREF (LVAR 8)) len 8)):))
//    vec  offset:8  * struct <Vector> 

// FDECL vec_push func ( * struct <Vector>  vec , * struct <Node>  data ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) len 8) (MEMBER (DEREF (LVAR 8)) capacity 12)) (BLOCK(= (MEMBER (DEREF (LVAR 8)) capacity 12) (*= (MEMBER (DEREF (LVAR 8)) capacity 12)  2 )):(= (MEMBER (DEREF (LVAR 8)) data 0) (CALL realloc ((MEMBER (DEREF (LVAR 8)) data 0):(* (MEMBER (DEREF (LVAR 8)) capacity 12)  8 ):) )):) NULL ):(= (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0) (++ (= (MEMBER (DEREF (LVAR 8)) len 8) (++ (MEMBER (DEREF (LVAR 8)) len 8)  1 ))  1 ))) (LVAR 16)):))
//    data  offset:16  * struct <Node> 
//    vec  offset:8  * struct <Vector> 

// FDECL test_vec func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (CALL vec_new () )):(FOR init: (= (LVAR 12)  0 )cond: (<  100  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (CALL vec_push ((LVAR 8):(CALL new_node_num ((LVAR 12):(CAST * void   0 ):) ):) )):(CALL assert_expect ( 28 : 100 :(CALL vec_len ((LVAR 8):) ):) ):(CALL assert_expect ( 29 : 0 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  0 ))) int_val 32):) ):(CALL assert_expect ( 30 : 50 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  50 ))) int_val 32):) ):(CALL assert_expect ( 31 : 99 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  99 ))) int_val 32):) ):(CALL fprintf ((GVAR stderr):(ADDR  "test_vec() cleared\n" ):) ):))
//    i  offset:12  int 
//    vec  offset:8  * struct <Vector> 

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
// test_vec func ( ) void 
// vec_push func ( * struct <Vector>  vec , * struct <Node>  data ) void 
// vec_len func ( * struct <Vector>  vec ) int 
// vec_new func ( ) * struct <Vector> 
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
// "test_vec() cleared\n"

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
	.string "test_vec() cleared\n"

	.text
	.global vec_new
// Line 6 FDECL vec_new func ( ) * struct <Vector> 
//    
//    (BLOCK(= (LVAR 8) (CAST * struct <Vector>  (CALL malloc ( 16 :) ))):(= (MEMBER (DEREF (LVAR 8)) data 0) (CAST * * struct <Node>  (CALL malloc ((*  5   8 ):) ))):(= (MEMBER (DEREF (LVAR 8)) len 8)  0 ):(= (MEMBER (DEREF (LVAR 8)) capacity 12)  5 ):(RETURN (LVAR 8)):))
vec_new:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 7 (= (LVAR 8) (CAST * struct <Vector>  (CALL malloc ( 16 :) )))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 7 (CAST * struct <Vector>  (CALL malloc ( 16 :) ))
// Line 7 (CALL malloc ( 16 :) )
// Line 7  16 
	push 16
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000000
	mov  rax, 0
	call malloc
	jmp  .L000001
.L000000:
	sub  rsp, 8
	mov  rax, 0
	call malloc
	add  rsp, 8
.L000001:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 8 (= (MEMBER (DEREF (LVAR 8)) data 0) (CAST * * struct <Node>  (CALL malloc ((*  5   8 ):) )))
// Line 8 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 8 (CAST * * struct <Node>  (CALL malloc ((*  5   8 ):) ))
// Line 8 (CALL malloc ((*  5   8 ):) )
// Line 8 (*  5   8 )
// Line 8  5 
	push 5
// Line 8  8 
	push 8
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000002
	mov  rax, 0
	call malloc
	jmp  .L000003
.L000002:
	sub  rsp, 8
	mov  rax, 0
	call malloc
	add  rsp, 8
.L000003:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 9 (= (MEMBER (DEREF (LVAR 8)) len 8)  0 )
// Line 9 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 9  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 10 (= (MEMBER (DEREF (LVAR 8)) capacity 12)  5 )
// Line 10 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 12
	push rax
// Line 10  5 
	push 5
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 11 (RETURN (LVAR 8))
// Line 11 (LVAR 8)
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
	.global vec_len
// Line 14 FDECL vec_len func ( * struct <Vector>  vec ) int 
//    (LVAR 8) 
//    (BLOCK(RETURN (MEMBER (DEREF (LVAR 8)) len 8)):))
vec_len:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp - 8], rdi
// Line 14 (RETURN (MEMBER (DEREF (LVAR 8)) len 8))
// Line 14 (MEMBER (DEREF (LVAR 8)) len 8)
// Line 14 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret
	mov  rsp, rbp
	pop  rbp
	ret
	.global vec_push
// Line 16 FDECL vec_push func ( * struct <Vector>  vec , * struct <Node>  data ) void 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(IF (== (MEMBER (DEREF (LVAR 8)) len 8) (MEMBER (DEREF (LVAR 8)) capacity 12)) (BLOCK(= (MEMBER (DEREF (LVAR 8)) capacity 12) (*= (MEMBER (DEREF (LVAR 8)) capacity 12)  2 )):(= (MEMBER (DEREF (LVAR 8)) data 0) (CALL realloc ((MEMBER (DEREF (LVAR 8)) data 0):(* (MEMBER (DEREF (LVAR 8)) capacity 12)  8 ):) )):) NULL ):(= (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0) (++ (= (MEMBER (DEREF (LVAR 8)) len 8) (++ (MEMBER (DEREF (LVAR 8)) len 8)  1 ))  1 ))) (LVAR 16)):))
vec_push:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 21 (IF (== (MEMBER (DEREF (LVAR 8)) len 8) (MEMBER (DEREF (LVAR 8)) capacity 12)) (BLOCK(= (MEMBER (DEREF (LVAR 8)) capacity 12) (*= (MEMBER (DEREF (LVAR 8)) capacity 12)  2 )):(= (MEMBER (DEREF (LVAR 8)) data 0) (CALL realloc ((MEMBER (DEREF (LVAR 8)) data 0):(* (MEMBER (DEREF (LVAR 8)) capacity 12)  8 ):) )):) NULL )
// Line 17 (== (MEMBER (DEREF (LVAR 8)) len 8) (MEMBER (DEREF (LVAR 8)) capacity 12))
// Line 17 (MEMBER (DEREF (LVAR 8)) len 8)
// Line 17 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 17 (MEMBER (DEREF (LVAR 8)) capacity 12)
// Line 17 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 12
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
	je   .L000004
// Line 21 (BLOCK(= (MEMBER (DEREF (LVAR 8)) capacity 12) (*= (MEMBER (DEREF (LVAR 8)) capacity 12)  2 )):(= (MEMBER (DEREF (LVAR 8)) data 0) (CALL realloc ((MEMBER (DEREF (LVAR 8)) data 0):(* (MEMBER (DEREF (LVAR 8)) capacity 12)  8 ):) )):)
// Line 18 (= (MEMBER (DEREF (LVAR 8)) capacity 12) (*= (MEMBER (DEREF (LVAR 8)) capacity 12)  2 ))
// Line 18 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 12
	push rax
// Line 18 (*= (MEMBER (DEREF (LVAR 8)) capacity 12)  2 )
// Line 18 (MEMBER (DEREF (LVAR 8)) capacity 12)
// Line 18 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 12
	mov  eax, [rax]
	push rax
// Line 18  2 
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 19 (= (MEMBER (DEREF (LVAR 8)) data 0) (CALL realloc ((MEMBER (DEREF (LVAR 8)) data 0):(* (MEMBER (DEREF (LVAR 8)) capacity 12)  8 ):) ))
// Line 19 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	push rax
// Line 19 (CALL realloc ((MEMBER (DEREF (LVAR 8)) data 0):(* (MEMBER (DEREF (LVAR 8)) capacity 12)  8 ):) )
// Line 19 (* (MEMBER (DEREF (LVAR 8)) capacity 12)  8 )
// Line 19 (MEMBER (DEREF (LVAR 8)) capacity 12)
// Line 19 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 12
	mov  eax, [rax]
	push rax
// Line 19  8 
	push 8
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 19 (MEMBER (DEREF (LVAR 8)) data 0)
// Line 19 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000006
	mov  rax, 0
	call realloc
	jmp  .L000007
.L000006:
	sub  rsp, 8
	mov  rax, 0
	call realloc
	add  rsp, 8
.L000007:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
	jmp  .L000005
.L000004:
.L000005:
// Line 21 (= (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0) (++ (= (MEMBER (DEREF (LVAR 8)) len 8) (++ (MEMBER (DEREF (LVAR 8)) len 8)  1 ))  1 ))) (LVAR 16))
// Line 21 (] (MEMBER (DEREF (LVAR 8)) data 0) (++ (= (MEMBER (DEREF (LVAR 8)) len 8) (++ (MEMBER (DEREF (LVAR 8)) len 8)  1 ))  1 ))
// Line 21 (MEMBER (DEREF (LVAR 8)) data 0)
// Line 21 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 21 (++ (= (MEMBER (DEREF (LVAR 8)) len 8) (++ (MEMBER (DEREF (LVAR 8)) len 8)  1 ))  1 )
// Line 21 (= (MEMBER (DEREF (LVAR 8)) len 8) (++ (MEMBER (DEREF (LVAR 8)) len 8)  1 ))
// Line 21 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	push rax
// Line 21 (++ (MEMBER (DEREF (LVAR 8)) len 8)  1 )
// Line 21 (MEMBER (DEREF (LVAR 8)) len 8)
// Line 21 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 21  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 21  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop rax
	push rax
// Line 21 (LVAR 16)
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
	.global test_vec
// Line 24 FDECL test_vec func ( ) void 
//    
//    (BLOCK(= (LVAR 8) (CALL vec_new () )):(FOR init: (= (LVAR 12)  0 )cond: (<  100  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (CALL vec_push ((LVAR 8):(CALL new_node_num ((LVAR 12):(CAST * void   0 ):) ):) )):(CALL assert_expect ( 28 : 100 :(CALL vec_len ((LVAR 8):) ):) ):(CALL assert_expect ( 29 : 0 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  0 ))) int_val 32):) ):(CALL assert_expect ( 30 : 50 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  50 ))) int_val 32):) ):(CALL assert_expect ( 31 : 99 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  99 ))) int_val 32):) ):(CALL fprintf ((GVAR stderr):(ADDR  "test_vec() cleared\n" ):) ):))
test_vec:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
// Line 25 (= (LVAR 8) (CALL vec_new () ))
	mov  rax, rbp
	sub  rax, 8
	push rax
// Line 25 (CALL vec_new () )
	mov  rax, rsp
	and  rax, 15
	jnz  .L000008
	mov  rax, 0
	call vec_new
	jmp  .L000009
.L000008:
	sub  rsp, 8
	mov  rax, 0
	call vec_new
	add  rsp, 8
.L000009:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 26 (FOR init: (= (LVAR 12)  0 )cond: (<  100  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (CALL vec_push ((LVAR 8):(CALL new_node_num ((LVAR 12):(CAST * void   0 ):) ):) ))
// Line 26 (= (LVAR 12)  0 )
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 26  0 
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000012:
// Line 26 (<  100  (LVAR 12))
// Line 26  100 
	push 100
// Line 26 (LVAR 12)
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
	je   .L000011
// Line 27 (CALL vec_push ((LVAR 8):(CALL new_node_num ((LVAR 12):(CAST * void   0 ):) ):) )
// Line 27 (CALL new_node_num ((LVAR 12):(CAST * void   0 ):) )
// Line 34 (CAST * void   0 )
// Line 34  0 
	push 0
// Line 27 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000013
	mov  rax, 0
	call new_node_num
	jmp  .L000014
.L000013:
	sub  rsp, 8
	mov  rax, 0
	call new_node_num
	add  rsp, 8
.L000014:
	push rax
// Line 27 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000015
	mov  rax, 0
	call vec_push
	jmp  .L000016
.L000015:
	sub  rsp, 8
	mov  rax, 0
	call vec_push
	add  rsp, 8
.L000016:
	push rax
	pop  rax
.L000010:
// Line 26 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
// Line 26 (= (LVAR 12) (++ (LVAR 12)  1 ))
	mov  rax, rbp
	sub  rax, 12
	push rax
// Line 26 (++ (LVAR 12)  1 )
// Line 26 (LVAR 12)
	mov  rax, rbp
	sub  rax, 12
	mov  eax, [rax]
	push rax
// Line 26  1 
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 26  1 
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000012
.L000011:
// Line 28 (CALL assert_expect ( 28 : 100 :(CALL vec_len ((LVAR 8):) ):) )
// Line 28 (CALL vec_len ((LVAR 8):) )
// Line 28 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000017
	mov  rax, 0
	call vec_len
	jmp  .L000018
.L000017:
	sub  rsp, 8
	mov  rax, 0
	call vec_len
	add  rsp, 8
.L000018:
	push rax
// Line 28  100 
	push 100
// Line 28  28 
	push 28
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
// Line 29 (CALL assert_expect ( 29 : 0 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  0 ))) int_val 32):) )
// Line 29 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  0 ))) int_val 32)
// Line 29 (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  0 ))
// Line 29 (] (MEMBER (DEREF (LVAR 8)) data 0)  0 )
// Line 29 (MEMBER (DEREF (LVAR 8)) data 0)
// Line 29 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 29  0 
	push 0
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
// Line 29  0 
	push 0
// Line 29  29 
	push 29
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
// Line 30 (CALL assert_expect ( 30 : 50 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  50 ))) int_val 32):) )
// Line 30 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  50 ))) int_val 32)
// Line 30 (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  50 ))
// Line 30 (] (MEMBER (DEREF (LVAR 8)) data 0)  50 )
// Line 30 (MEMBER (DEREF (LVAR 8)) data 0)
// Line 30 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 30  50 
	push 50
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
// Line 30  50 
	push 50
// Line 30  30 
	push 30
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
// Line 31 (CALL assert_expect ( 31 : 99 :(MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  99 ))) int_val 32):) )
// Line 31 (MEMBER (DEREF (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  99 ))) int_val 32)
// Line 31 (DEREF (] (MEMBER (DEREF (LVAR 8)) data 0)  99 ))
// Line 31 (] (MEMBER (DEREF (LVAR 8)) data 0)  99 )
// Line 31 (MEMBER (DEREF (LVAR 8)) data 0)
// Line 31 (LVAR 8)
	mov  rax, rbp
	sub  rax, 8
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 31  99 
	push 99
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
// Line 31  99 
	push 99
// Line 31  31 
	push 31
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000025
	mov  rax, 0
	call assert_expect
	jmp  .L000026
.L000025:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000026:
	push rax
	pop  rax
// Line 32 (CALL fprintf ((GVAR stderr):(ADDR  "test_vec() cleared\n" ):) )
// Line 32 (ADDR  "test_vec() cleared\n" )
	lea  rax, .LS000000[rip]
	push rax
// Line 32 (GVAR stderr)
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000027
	mov  rax, 0
	call fprintf
	jmp  .L000028
.L000027:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000028:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret

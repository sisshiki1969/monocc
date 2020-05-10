// FDECL main func ( ) struct <A> 
//    
//    (BLOCK(= (MEMBER (LVAR 12) a 0)  400 ):(= (MEMBER (LVAR 12) b 4)  200 ):(= (MEMBER (LVAR 12) c 8)  20 ):(= (LVAR 24) (LVAR 12)):(CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) a 0):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) b 4):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) c 8):) ):(= (LVAR 44) (ADDR (LVAR 36))):(= (LVAR 36) (LVAR 12)):(CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) a 0):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) b 4):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) c 8):) ):))
//    cp  offset:44  * struct <A> 
//    c  offset:36  struct <A> 
//    b  offset:24  struct <A> 
//    a  offset:12  struct <A> 

// <EOF>
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
// verbose bool NULL 
// registers [4] [6] * char NULL 
// source_text * char NULL 
// stdout * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// stderr * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// Functions
// main func ( ) struct <A> 
// new_func func ( * struct <Token>  ident , * struct <Type>  type , * struct <Node>  body ) * struct <Global> 
// new_gvar func ( * struct <Token>  ident , * struct <Type>  type ) * struct <Global> 
// find_macro func ( * struct <Token>  token ) * struct <Macro> 
// new_macro func ( * struct <Token>  token , * struct <Token>  args , * struct <Token>  subst ) * struct <Macro> 
// pp func ( ) void 
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
// read_token func ( * struct <TokContext>  ctx ) * struct <Token> 
// skip_space func ( * struct <TokContext>  ctx ) void 
// read_if func ( * struct <TokContext>  ctx , int  c ) bool 
// cmp_token_str func ( * struct <Token>  t , * char  c ) bool 
// cmp_token func ( * struct <Token>  t1 , * struct <Token>  t2 ) bool 
// tokenize func ( * char  file , * char  source , bool  is_main ) void 
// print_tokens func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * struct <Token>  token ) void 
// new_tok_context func ( * struct <FileInfo>  file_info , * struct <Token>  cur , * char  p ) * struct <TokContext> 
// error_at_node func ( * struct <Node>  node , * char  fmt ) void 
// error_at_token func ( * struct <Token>  token , * char  fmt ) void 
// error_at_char func ( * struct <FileInfo>  fi , * char  source , * char  fmt ) void 
// error func ( * char  fmt ) void 
// get_file_no func ( * char  p ) int 
// get_line func ( * char  p , * char  source ) int 
// copy_token func ( * struct <Token>  src , * struct <Token>  dest ) void 
// new_token func ( enum <TokenKind>  kind , * struct <Token>  cur , * char  str , int  len ) * struct <Token> 
// read_file func ( * char  path ) * char 
// find_typedef func ( * struct <Token>  ident ) * struct <Type> 
// find_tag func ( * struct <Token>  token ) * struct <TagName> 
// __errno_location func ( ) * int 
// exit func ( int  status ) void 
// strerror func ( int  n ) * char 
// fclose func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp ) void 
// ftell func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp ) int 
// fread func ( * char  buf , int  size , int  n , * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp ) void 
// fseek func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} fp , int  n , int  seek_end ) int 
// fopen func ( * char  p , * char  mode ) * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}
// sprintf func ( * char  str , * char  fmt ) int 
// vfprintf func ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * char  format , * struct <> { int <gp_offset:0>, int <fp_offset:4>, * void <overflow_arg_area:8>, * void <reg_save_area:16>} arg ) int 
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
// strstr func ( * char  s1 , * char  s2 ) * char 
// strrchr func ( * char  s , int  c ) * char 
// strchr func ( * char  s , int  c ) * char 
// strlen func ( * char  s ) int 
// isalnum func ( int  c ) int 
// realloc func ( * void  ptr , int  size ) * void 
// malloc func ( int  size ) * void 
// calloc func ( int  n , int  size ) * void 
// __builtin_va_start func ( ) void 
// Strings
// "%d\n"
// "%d\n"
// "%d\n"
// "%d\n"
// "%d\n"
// "%d\n"

// Tagnames
// A struct { int <a:0>, int <b:4>, char <c:8>}
// Macro struct { * struct <Macro> <next:0>, * struct <Token> <token:8>, * struct <Token> <params:16>, * struct <Token> <subst:24>}
// TokContext struct { * struct <FileInfo> <file_info:0>, * struct <Token> <cur:8>, * char <p:16>}
// Vector struct { * * struct <Node> <data:0>, int <len:8>, int <capacity:12>}
// Typedef struct { * struct <Typedef> <next:0>, * struct <Type> <type:8>, * struct <Token> <ident:16>}
// TagName struct { * struct <TagName> <next:0>, * struct <Token> <ident:8>, * struct <Type> <type:16>}
// Global struct { * struct <Global> <next:0>, * struct <Token> <token:8>, * struct <Type> <type:16>, * struct <Node> <body:24>, bool <is_extern:32>}
// Node struct { enum <kind:0>, * struct <Node> <lhs:8>, * struct <Node> <rhs:16>, * struct <Node> <xhs:24>, int <int_val:32>, * struct <LVar> <lvar:40>, int <offset:48>, * char <label:56>, * struct <Vector> <nodes:64>, * struct <Token> <token:72>, * struct <Type> <type:80>}
// LVar struct { * struct <LVar> <next:0>, * struct <Token> <token:8>, * struct <Type> <type:16>, int <offset:24>, * struct <LVar> <scope:32>, bool <scope_head:40>}
// ND_FDECL enum_el { 39 }
// ND_BLOCK enum_el { 38 }
// ND_CONTINUE enum_el { 37 }
// ND_BREAK enum_el { 36 }
// ND_RETURN enum_el { 35 }
// ND_DEFAULT enum_el { 34 }
// ND_CASE enum_el { 33 }
// ND_SWITCH enum_el { 32 }
// ND_FOR enum_el { 31 }
// ND_WHILE enum_el { 30 }
// ND_IF enum_el { 29 }
// ND_CAST enum_el { 28 }
// ND_MEMBER enum_el { 27 }
// ND_CALL enum_el { 26 }
// ND_GVAR enum_el { 25 }
// ND_LVAR enum_el { 24 }
// ND_DEREF enum_el { 23 }
// ND_ADDR enum_el { 22 }
// ND_ASSIGN enum_el { 21 }
// ND_CMP enum_el { 20 }
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
// TokenKind enum { enum_el <TK_IDENT:0> , enum_el <TK_NUM:1> , enum_el <TK_STR:2> , enum_el <TK_ADD:3> , enum_el <TK_SUB:4> , enum_el <TK_MUL:5> , enum_el <TK_DIV:6> , enum_el <TK_EQ:7> , enum_el <TK_NEQ:8> , enum_el <TK_GT:9> , enum_el <TK_GE:10> , enum_el <TK_LT:11> , enum_el <TK_LE:12> , enum_el <TK_ASSIGN:13> , enum_el <TK_ASSIGN_ADD:14> , enum_el <TK_ASSIGN_SUB:15> , enum_el <TK_ASSIGN_MUL:16> , enum_el <TK_ASSIGN_DIV:17> , enum_el <TK_INC:18> , enum_el <TK_DEC:19> , enum_el <TK_LAND:20> , enum_el <TK_LOR:21> , enum_el <TK_AND:22> , enum_el <TK_OR:23> , enum_el <TK_XOR:24> , enum_el <TK_NOT:25> , enum_el <TK_SHR:26> , enum_el <TK_SHL:27> , enum_el <TK_SEMI:28> , enum_el <TK_OP_PAREN:29> , enum_el <TK_CL_PAREN:30> , enum_el <TK_OP_BRACE:31> , enum_el <TK_CL_BRACE:32> , enum_el <TK_OP_BRACKET:33> , enum_el <TK_CL_BRACKET:34> , enum_el <TK_COMMA:35> , enum_el <TK_COLON:36> , enum_el <TK_DOT:37> , enum_el <TK_ARROW:38> , enum_el <TK_TILDA:39> , enum_el <TK_ELLIPSIS:40> , enum_el <TK_IF:41> , enum_el <TK_ELSE:42> , enum_el <TK_WHILE:43> , enum_el <TK_FOR:44> , enum_el <TK_SWITCH:45> , enum_el <TK_CASE:46> , enum_el <TK_DEFAULT:47> , enum_el <TK_BREAK:48> , enum_el <TK_CONTINUE:49> , enum_el <TK_RETURN:50> , enum_el <TK_SIZEOF:51> , enum_el <TK_INT:52> , enum_el <TK_CHAR:53> , enum_el <TK_BOOL:54> , enum_el <TK_VOID:55> , enum_el <TK_STRUCT:56> , enum_el <TK_ENUM:57> , enum_el <TK_UNION:58> , enum_el <TK_EXTERN:59> , enum_el <TK_TYPEDEF:60> , enum_el <TK_EOF:61> , enum_el <TK_MACRO:62> }
// TK_MACRO enum_el { 62 }
// TK_EOF enum_el { 61 }
// TK_TYPEDEF enum_el { 60 }
// TK_EXTERN enum_el { 59 }
// TK_UNION enum_el { 58 }
// TK_ENUM enum_el { 57 }
// TK_STRUCT enum_el { 56 }
// TK_VOID enum_el { 55 }
// TK_BOOL enum_el { 54 }
// TK_CHAR enum_el { 53 }
// TK_INT enum_el { 52 }
// TK_SIZEOF enum_el { 51 }
// TK_RETURN enum_el { 50 }
// TK_CONTINUE enum_el { 49 }
// TK_BREAK enum_el { 48 }
// TK_DEFAULT enum_el { 47 }
// TK_CASE enum_el { 46 }
// TK_SWITCH enum_el { 45 }
// TK_FOR enum_el { 44 }
// TK_WHILE enum_el { 43 }
// TK_ELSE enum_el { 42 }
// TK_IF enum_el { 41 }
// TK_ELLIPSIS enum_el { 40 }
// TK_TILDA enum_el { 39 }
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
// FileInfo struct { * struct <FileInfo> <next:0>, * char <file_name:8>, * char <start:16>, * char <end:24>, int <no:32>}

// Typedef
// A struct <A> 
// Macro struct <Macro> 
// TokContext struct <TokContext> 
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
// __gnuc_va_list [1] struct <> { int <gp_offset:0>, int <fp_offset:4>, * void <overflow_arg_area:8>, * void <reg_save_area:16>}
// va_list [1] struct <> { int <gp_offset:0>, int <fp_offset:4>, * void <overflow_arg_area:8>, * void <reg_save_area:16>}
// FILE struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}

	.intel_syntax noprefix
	.data
.LS000000:
	.string "%d\n"
.LS000001:
	.string "%d\n"
.LS000002:
	.string "%d\n"
.LS000003:
	.string "%d\n"
.LS000004:
	.string "%d\n"
.LS000005:
	.string "%d\n"

	.file 2 "./src/monocc.h"
	.file 1 "test.c"
	.text
	.global main
// Line 12 FDECL main func ( ) struct <A> 
//    
//    (BLOCK(= (MEMBER (LVAR 12) a 0)  400 ):(= (MEMBER (LVAR 12) b 4)  200 ):(= (MEMBER (LVAR 12) c 8)  20 ):(= (LVAR 24) (LVAR 12)):(CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) a 0):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) b 4):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) c 8):) ):(= (LVAR 44) (ADDR (LVAR 36))):(= (LVAR 36) (LVAR 12)):(CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) a 0):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) b 4):) ):(CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) c 8):) ):))
	.loc 1 12
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
// Line 14 (= (MEMBER (LVAR 12) a 0)  400 )
	.loc 1 14
	lea  rax, [rbp - 12]
	add  rax, 0
	push rax
// Line 14  400 
	.loc 1 14
	push 400
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 15 (= (MEMBER (LVAR 12) b 4)  200 )
	.loc 1 15
	lea  rax, [rbp - 12]
	add  rax, 4
	push rax
// Line 15  200 
	.loc 1 15
	push 200
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 16 (= (MEMBER (LVAR 12) c 8)  20 )
	.loc 1 16
	lea  rax, [rbp - 12]
	add  rax, 8
	push rax
// Line 16  20 
	.loc 1 16
	push 20
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 18 (= (LVAR 24) (LVAR 12))
	.loc 1 18
	lea  rax, [rbp - 24]
	push rax
	lea  rax, [rbp - 12]
	push rax
	pop  rdi
	pop  rsi
	mov  al, BYTE PTR [rdi + 0]
	mov  BYTE PTR [rsi + 0], al
	mov  al, BYTE PTR [rdi + 1]
	mov  BYTE PTR [rsi + 1], al
	mov  al, BYTE PTR [rdi + 2]
	mov  BYTE PTR [rsi + 2], al
	mov  al, BYTE PTR [rdi + 3]
	mov  BYTE PTR [rsi + 3], al
	mov  al, BYTE PTR [rdi + 4]
	mov  BYTE PTR [rsi + 4], al
	mov  al, BYTE PTR [rdi + 5]
	mov  BYTE PTR [rsi + 5], al
	mov  al, BYTE PTR [rdi + 6]
	mov  BYTE PTR [rsi + 6], al
	mov  al, BYTE PTR [rdi + 7]
	mov  BYTE PTR [rsi + 7], al
	mov  al, BYTE PTR [rdi + 8]
	mov  BYTE PTR [rsi + 8], al
	mov  al, BYTE PTR [rdi + 9]
	mov  BYTE PTR [rsi + 9], al
	mov  al, BYTE PTR [rdi + 10]
	mov  BYTE PTR [rsi + 10], al
	mov  al, BYTE PTR [rdi + 11]
	mov  BYTE PTR [rsi + 11], al
	push rdi
	pop  rax
// Line 19 (CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) a 0):) )
	.loc 1 19
// Line 19 (MEMBER (LVAR 24) a 0)
	.loc 1 19
	lea  rax, [rbp - 24]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 19 (ADDR  "%d\n" )
	.loc 1 19
	lea  rax, .LS000000[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000000
	mov  rax, 0
	call printf
	jmp  .L000001
.L000000:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000001:
	push rax
	pop  rax
// Line 20 (CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) b 4):) )
	.loc 1 20
// Line 20 (MEMBER (LVAR 24) b 4)
	.loc 1 20
	lea  rax, [rbp - 24]
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 20 (ADDR  "%d\n" )
	.loc 1 20
	lea  rax, .LS000001[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000002
	mov  rax, 0
	call printf
	jmp  .L000003
.L000002:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000003:
	push rax
	pop  rax
// Line 21 (CALL printf ((ADDR  "%d\n" ):(MEMBER (LVAR 24) c 8):) )
	.loc 1 21
// Line 21 (MEMBER (LVAR 24) c 8)
	.loc 1 21
	lea  rax, [rbp - 24]
	add  rax, 8
	movsx eax, BYTE PTR [rax]
	push rax
// Line 21 (ADDR  "%d\n" )
	.loc 1 21
	lea  rax, .LS000002[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000004
	mov  rax, 0
	call printf
	jmp  .L000005
.L000004:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000005:
	push rax
	pop  rax
// Line 23 (= (LVAR 44) (ADDR (LVAR 36)))
	.loc 1 23
	lea  rax, [rbp - 44]
	push rax
// Line 23 (ADDR (LVAR 36))
	.loc 1 23
	lea  rax, [rbp - 36]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 24 (= (LVAR 36) (LVAR 12))
	.loc 1 24
	lea  rax, [rbp - 36]
	push rax
	lea  rax, [rbp - 12]
	push rax
	pop  rdi
	pop  rsi
	mov  al, BYTE PTR [rdi + 0]
	mov  BYTE PTR [rsi + 0], al
	mov  al, BYTE PTR [rdi + 1]
	mov  BYTE PTR [rsi + 1], al
	mov  al, BYTE PTR [rdi + 2]
	mov  BYTE PTR [rsi + 2], al
	mov  al, BYTE PTR [rdi + 3]
	mov  BYTE PTR [rsi + 3], al
	mov  al, BYTE PTR [rdi + 4]
	mov  BYTE PTR [rsi + 4], al
	mov  al, BYTE PTR [rdi + 5]
	mov  BYTE PTR [rsi + 5], al
	mov  al, BYTE PTR [rdi + 6]
	mov  BYTE PTR [rsi + 6], al
	mov  al, BYTE PTR [rdi + 7]
	mov  BYTE PTR [rsi + 7], al
	mov  al, BYTE PTR [rdi + 8]
	mov  BYTE PTR [rsi + 8], al
	mov  al, BYTE PTR [rdi + 9]
	mov  BYTE PTR [rsi + 9], al
	mov  al, BYTE PTR [rdi + 10]
	mov  BYTE PTR [rsi + 10], al
	mov  al, BYTE PTR [rdi + 11]
	mov  BYTE PTR [rsi + 11], al
	push rdi
	pop  rax
// Line 25 (CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) a 0):) )
	.loc 1 25
// Line 25 (MEMBER (DEREF (LVAR 44)) a 0)
	.loc 1 25
// Line 25 (LVAR 44)
	.loc 1 25
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 25 (ADDR  "%d\n" )
	.loc 1 25
	lea  rax, .LS000003[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000006
	mov  rax, 0
	call printf
	jmp  .L000007
.L000006:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000007:
	push rax
	pop  rax
// Line 26 (CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) b 4):) )
	.loc 1 26
// Line 26 (MEMBER (DEREF (LVAR 44)) b 4)
	.loc 1 26
// Line 26 (LVAR 44)
	.loc 1 26
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 26 (ADDR  "%d\n" )
	.loc 1 26
	lea  rax, .LS000004[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000008
	mov  rax, 0
	call printf
	jmp  .L000009
.L000008:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000009:
	push rax
	pop  rax
// Line 27 (CALL printf ((ADDR  "%d\n" ):(MEMBER (DEREF (LVAR 44)) c 8):) )
	.loc 1 27
// Line 27 (MEMBER (DEREF (LVAR 44)) c 8)
	.loc 1 27
// Line 27 (LVAR 44)
	.loc 1 27
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop rax
	add  rax, 8
	movsx eax, BYTE PTR [rax]
	push rax
// Line 27 (ADDR  "%d\n" )
	.loc 1 27
	lea  rax, .LS000005[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000010
	mov  rax, 0
	call printf
	jmp  .L000011
.L000010:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000011:
	push rax
	pop  rax
	mov  rsp, rbp
	pop  rbp
	ret

// FDECL assert_expect func ( int  line , long  expected , long  actual ) void  max_offset:52
//    (LVAR 36) (LVAR 44) (LVAR 52) 
//    (BLOCK(IF (== (LVAR 44) (LVAR 52)) (RETURN NULL ) NULL ):(CALL fprintf ((CAST * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} (GVAR stderr)):(CAST * char  (ADDR  "%d: %ld expected, but got %ld\n" )):(LVAR 36):(LVAR 44):(LVAR 52):) ):(CALL exit ((CAST int   1 ):) ):))
//    actual  offset:52  long 
//    expected  offset:44  long 
//    line  offset:36  int 

// FDECL fibo func ( int  x ) int  max_offset:36
//    (LVAR 36) 
//    (BLOCK(IF (<  2  (LVAR 36)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((CAST int  (- (LVAR 36)  1 )):) ) (CALL fibo ((CAST int  (- (LVAR 36)  2 )):) ))):))
//    x  offset:36  int 

// FDECL array_local func ( ) int  max_offset:416
//    
//    (BLOCK(= (LVAR 356)  0 ):(= (LVAR 360)  0 ):(= (LVAR 376) { 0 , 1 , -2 , -3 }):(= (LVAR 408) { 0 , -1 , -2 , -3 }):(= (LVAR 416) { -5 , -6 , 7 , 8 }):(WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)):(CALL assert_expect ((CAST int   74 ):(CAST long   0 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  0 ))):) ):(CALL assert_expect ((CAST int   75 ):(CAST long   1 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  1 ))):) ):(CALL assert_expect ((CAST int   76 ):(CAST long   -2 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  2 ))):) ):(CALL assert_expect ((CAST int   77 ):(CAST long   -3 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  3 ))):) ):(CALL assert_expect ((CAST int   79 ):(CAST long   0 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  0 ))):) ):(CALL assert_expect ((CAST int   80 ):(CAST long   -1 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  1 ))):) ):(CALL assert_expect ((CAST int   81 ):(CAST long   -2 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  2 ))):) ):(CALL assert_expect ((CAST int   82 ):(CAST long   -3 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  3 ))):) ):(CALL assert_expect ((CAST int   84 ):(CAST long   -5 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  0 ))):) ):(CALL assert_expect ((CAST int   85 ):(CAST long   -6 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  1 ))):) ):(CALL assert_expect ((CAST int   86 ):(CAST long   7 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  2 ))):) ):(CALL assert_expect ((CAST int   87 ):(CAST long   8 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  3 ))):) ):(CALL assert_expect ((CAST int   89 ):(CAST long   1 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))):) ):(CALL assert_expect ((CAST int   90 ):(CAST long   97 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))):) ):(CALL assert_expect ((CAST int   91 ):(CAST long   84 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))):) ):(RETURN  0 ):))
//    m  offset:416  [4] short 
//    l  offset:408  [4] long 
//    k  offset:376  [4] int 
//    j  offset:360  int 
//    i  offset:356  int 
//    a  offset:352  [10] [8] int 

// FDECL array_global func ( ) int  max_offset:36
//    
//    (BLOCK(CALL assert_expect ((CAST int   121 ):(CAST long   127 ):(CAST long  (GVAR char_global)):) ):(CALL assert_expect ((CAST int   122 ):(CAST long   256 ):(CAST long  (GVAR short_global)):) ):(CALL assert_expect ((CAST int   123 ):(CAST long   512 ):(CAST long  (GVAR int_global)):) ):(CALL assert_expect ((CAST int   124 ):(CAST long   1024 ):(CAST long  (GVAR long_global)):) ):(FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ((CAST int   126 ):(CAST long  (+ (LVAR 36)  1 )):(CAST long  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) )):(CALL assert_expect ((CAST int   127 ):(CAST long   105 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))):) ):(CALL assert_expect ((CAST int   128 ):(CAST long   119 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ((CAST int   139 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   140 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))):(CAST long   97 ):) ):(CALL assert_expect ((CAST int   141 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))):(CAST long   84 ):) ):(RETURN  0 ):))
//    i  offset:36  int 

// FDECL string func ( ) int  max_offset:63
//    
//    (BLOCK(= (LVAR 40) (ADDR  "Hello world!\n" )):(CALL printf ((CAST * char  (ADDR  "%s" )):(LVAR 40):) ):(= (LVAR 63)  "\tHello---" ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (LVAR 63)):) ):(CALL assert_expect ((CAST int   152 ):(CAST long   9 ):(CAST long  (DEREF (] (ADDR (LVAR 63))  15 ))):) ):(CALL assert_expect ((CAST int   154 ):(CAST long   119 ):(CAST long   119 ):) ):(CALL assert_expect ((CAST int   155 ):(CAST long   119 ):(CAST long  (DEREF (] (LVAR 40)  6 ))):) ):))
//    str_ary9  offset:63  [23] char 
//    str  offset:40  * char 

// FDECL block_scope func ( ) void  max_offset:48
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ((CAST int   160 ):(CAST long   1 ):(CAST long  (GVAR i)):) ):(= (LVAR 36)  5 ):(CALL assert_expect ((CAST int   162 ):(CAST long   5 ):(CAST long  (LVAR 36)):) ):(BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   169 ):(CAST long   4 ):(CAST long  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   171 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):):(CALL assert_expect ((CAST int   173 ):(CAST long   2 ):(CAST long  (LVAR 40)):) ):):(CALL assert_expect ((CAST int   175 ):(CAST long   5 ):(CAST long  (LVAR 36)):) ):))
//    i  offset:48  int 
//    i  offset:44  int 
//    i  offset:40  int 
//    i  offset:36  int 

// FDECL for_ func ( ) void  max_offset:44
//    
//    (BLOCK(= (LVAR 36)  100 ):(CALL assert_expect ((CAST int   180 ):(CAST long   100 ):(CAST long  (LVAR 36)):) ):(FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   183 ):(CAST long   12 ):(CAST long  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   185 ):(CAST long   9 ):(CAST long  (LVAR 44)):) ):)):(CALL assert_expect ((CAST int   187 ):(CAST long   100 ):(CAST long  (LVAR 36)):) ):(= (LVAR 36)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)):(CALL assert_expect ((CAST int   193 ):(CAST long   6 ):(CAST long  (LVAR 36)):) ):))
//    x  offset:44  int 
//    x  offset:40  int 
//    x  offset:36  int 

// FDECL switch_ func ( int  s ) int  max_offset:44
//    (LVAR 36) 
//    (BLOCK(SWITCH cond: (LVAR 36) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):)):(RETURN (LVAR 40)):))
//    switch  offset:44  int 
//    i  offset:40  int 
//    s  offset:36  int 

// FDECL switch2_ func ( char  s ) int  max_offset:41
//    (LVAR 33) 
//    (BLOCK(SWITCH cond: (LVAR 33) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):)):(RETURN (LVAR 37)):))
//    switch  offset:41  int 
//    i  offset:37  int 
//    s  offset:33  char 

// FDECL list_ func ( ) void  max_offset:56
//    
//    (BLOCK(= (LVAR 36)  16 ):(= (LVAR 44)  0 ):(FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)):(CALL assert_expect ((CAST int   267 ):(CAST long   5 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   269 ):(CAST long   4 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   271 ):(CAST long   3 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   273 ):(CAST long   2 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   275 ):(CAST long   1 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   277 ):(CAST long   0 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ((CAST int   280 ):(CAST long   777 ):(CAST long  (MEMBER (GVAR def) payload 0)):) ):))
//    new  offset:56  * struct <List> 
//    i  offset:48  int 
//    cursor  offset:44  * struct <List> 
//    size  offset:36  int 

// FDECL struct_ func ( ) void  max_offset:832
//    
//    (BLOCK(CALL assert_expect ((CAST int   303 ):(CAST long   32 ):(CAST long   32 ):) ):(CALL assert_expect ((CAST int   304 ):(CAST long   8 ):(CAST long   8 ):) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ((CAST int   309 ):(CAST long   9 ):(CAST long  (MEMBER (GVAR pos) col 4)):) ):(CALL assert_expect ((CAST int   310 ):(CAST long   45 ):(CAST long  (MEMBER (GVAR pos) row 0)):) ):(CALL assert_expect ((CAST int   312 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   313 ):(CAST long   4 ):(CAST long   4 ):) ):(= (LVAR 368) (ADDR (LVAR 360))):(= (MEMBER (LVAR 360) size 136)  10 ):(= (MEMBER (LVAR 360) ch 140)  5 ):(= (MEMBER (LVAR 512) size 136)  195 ):(= (MEMBER (LVAR 512) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ((CAST int   324 ):(CAST long   10 ):(CAST long  (MEMBER (LVAR 360) size 136)):) ):(CALL assert_expect ((CAST int   325 ):(CAST long   5 ):(CAST long  (MEMBER (LVAR 360) ch 140)):) ):(= (MEMBER (LVAR 360) size 136)  110 ):(= (MEMBER (LVAR 360) ch 140)  79 ):(CALL assert_expect ((CAST int   328 ):(CAST long   110 ):(CAST long  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   329 ):(CAST long   79 ):(CAST long  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   330 ):(CAST long   110 ):(CAST long  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   331 ):(CAST long   79 ):(CAST long  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   332 ):(CAST long   195 ):(CAST long  (MEMBER (LVAR 512) size 136)):) ):(CALL assert_expect ((CAST int   333 ):(CAST long   39 ):(CAST long  (MEMBER (LVAR 512) ch 140)):) ):(CALL assert_expect ((CAST int   334 ):(CAST long   184 ):(CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)):) ):(CALL assert_expect ((CAST int   335 ):(CAST long   984 ):(CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)):) ):(= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512))):(= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360))):(CALL assert_expect ((CAST int   339 ):(CAST long   195 ):(CAST long  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  100 ):(= (MEMBER (LVAR 816) size 136)  500 ):(= (LVAR 816) (LVAR 672)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ((CAST int   347 ):(CAST long   100 ):(CAST long  (MEMBER (LVAR 816) size 136)):) ):(= (LVAR 816) (GVAR leaf_global)):(CALL assert_expect ((CAST int   349 ):(CAST long   700 ):(CAST long  (MEMBER (LVAR 816) size 136)):) ):(= (GVAR leaf_global) (LVAR 672)):(CALL assert_expect ((CAST int   351 ):(CAST long   100 ):(CAST long  (MEMBER (GVAR leaf_global) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  999 ):(= (LVAR 824) (ADDR (LVAR 672))):(= (LVAR 832) (ADDR (LVAR 816))):(= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))):(CALL assert_expect ((CAST int   356 ):(CAST long   999 ):(CAST long  (MEMBER (DEREF (LVAR 832)) size 136)):) ):(CALL assert_expect ((CAST int   357 ):(CAST long   999 ):(CAST long  (MEMBER (GVAR leaf_global) size 136)):) ):))
//    l2p  offset:832  * struct <Leaf> 
//    l1p  offset:824  * struct <Leaf> 
//    l2  offset:816  struct <Leaf> 
//    l1  offset:672  struct <Leaf> 
//    tree  offset:528  struct <Tree> 
//    node_new  offset:512  struct <Leaf> 
//    node_ptr  offset:368  * struct <Leaf> 
//    node  offset:360  struct <Leaf> 
//    s1  offset:216  struct <S1> 
//    s2  offset:184  struct <S2> 
//    leaf  offset:176  struct <Leaf> 

// FDECL print_board func ( * [8] int  board ) void  max_offset:48
//    (LVAR 40) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n" )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n\n" )):) ):))
//    j  offset:48  int 
//    i  offset:44  int 
//    board  offset:40  * [8] int 

// FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int  max_offset:56
//    (LVAR 40) (LVAR 48) 
//    (BLOCK(FOR init: (= (LVAR 52)  0 )cond: (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
//    j  offset:56  int 
//    i  offset:52  int 
//    p  offset:48  * struct <Pos> 
//    board  offset:40  * [8] int 

// FDECL solve func ( * [8] int  board , int  row ) void  max_offset:56
//    (LVAR 40) (LVAR 44) 
//    (BLOCK(IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((CAST * [8] int  (LVAR 40)):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)):))
//    p  offset:56  struct <Pos> 
//    i  offset:48  int 
//    row  offset:44  int 
//    board  offset:40  * [8] int 

// FDECL q8 func ( ) int  max_offset:296
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))):(CALL solve ((CAST * [8] int  (ADDR (LVAR 288))):(CAST int   0 ):) ):(RETURN (GVAR q8_count)):))
//    j  offset:296  int 
//    i  offset:292  int 
//    board  offset:288  [8] [8] int 

// FDECL fun func ( * int  p ) int  max_offset:40
//    (LVAR 40) 
//    (BLOCK(RETURN (DEREF (LVAR 40))):))
//    p  offset:40  * int 

// FDECL struct_initializer func ( ) void  max_offset:136
//    
//    (BLOCK(CALL assert_expect ((CAST int   431 ):(CAST long   14 ):(CAST long  (MEMBER (MEMBER (GVAR v1) x 0) x 0)):) ):(CALL assert_expect ((CAST int   432 ):(CAST long   17 ):(CAST long  (MEMBER (MEMBER (GVAR v1) x 0) y 8)):) ):(CALL assert_expect ((CAST int   433 ):(CAST long   5 ):(CAST long  (MEMBER (GVAR v1) y 16)):) ):(CALL assert_expect ((CAST int   434 ):(CAST long   9 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  0 ))):) ):(CALL assert_expect ((CAST int   435 ):(CAST long   10 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  1 ))):) ):(CALL assert_expect ((CAST int   436 ):(CAST long   11 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  2 ))):) ):(CALL assert_expect ((CAST int   437 ):(CAST long   12 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  3 ))):) ):(CALL assert_expect ((CAST int   438 ):(CAST long   10 ):(CAST long  (MEMBER (DEREF (MEMBER (GVAR v1) p 32)) y 8)):) ):(= (LVAR 72) {{ 10 , 77 }, 11 ,{ 51 , 52 , 53 , 54 }, 0 }):(CALL assert_expect ((CAST int   440 ):(CAST long   10 ):(CAST long  (MEMBER (MEMBER (LVAR 72) x 0) x 0)):) ):(CALL assert_expect ((CAST int   441 ):(CAST long   11 ):(CAST long  (MEMBER (LVAR 72) y 16)):) ):(CALL assert_expect ((CAST int   442 ):(CAST long   51 ):(CAST long  (DEREF (] (ADDR (MEMBER (LVAR 72) z 24))  0 ))):) ):(CALL assert_expect ((CAST int   444 ):(CAST long   3 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) x 0)):) ):(CALL assert_expect ((CAST int   445 ):(CAST long   4 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) y 8)):) ):(CALL assert_expect ((CAST int   446 ):(CAST long   7 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) x 0)):) ):(CALL assert_expect ((CAST int   447 ):(CAST long   8 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) y 8)):) ):(CALL assert_expect ((CAST int   448 ):(CAST long   11 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) x 0)):) ):(CALL assert_expect ((CAST int   449 ):(CAST long   12 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) y 8)):) ):(CALL assert_expect ((CAST int   450 ):(CAST long   30 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) x 0)):) ):(CALL assert_expect ((CAST int   451 ):(CAST long   31 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) y 8)):) ):(= (LVAR 136) {{ -3 , -4 },{ -7 , -8 },{ -11 , -12 },{ -30 , -31 }}):(CALL assert_expect ((CAST int   454 ):(CAST long   -3 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) x 0)):) ):(CALL assert_expect ((CAST int   455 ):(CAST long   -4 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) y 8)):) ):(CALL assert_expect ((CAST int   456 ):(CAST long   -7 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) x 0)):) ):(CALL assert_expect ((CAST int   457 ):(CAST long   -8 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) y 8)):) ):(CALL assert_expect ((CAST int   458 ):(CAST long   -11 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) x 0)):) ):(CALL assert_expect ((CAST int   459 ):(CAST long   -12 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) y 8)):) ):(CALL assert_expect ((CAST int   460 ):(CAST long   -30 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) x 0)):) ):(CALL assert_expect ((CAST int   461 ):(CAST long   -31 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) y 8)):) ):))
//    ary  offset:136  [4] struct <SubVec> 
//    v  offset:72  struct <Vector> 

// FDECL main func ( ) int  max_offset:93
//    
//    (BLOCK(= (LVAR 40) (CAST * void   0 )):(CALL assert_expect ((CAST int   469 ):(CAST long   1 ):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   470 ):(CAST long   0 ):(CAST long   0 ):) ):(CALL assert_expect ((CAST int   471 ):(CAST long   0 ):(CAST long  (CAST long  (CAST * void   0 ))):) ):(CALL assert_expect ((CAST int   473 ):(CAST long   70 ):(CAST long  (*  10  (+  2   5 ))):) ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (GVAR str_ary)):) ):(CALL assert_expect ((CAST int   476 ):(CAST long   1979 ):(CAST long  (GVAR i)):) ):(CALL assert_expect ((CAST int   477 ):(CAST long   2015 ):(CAST long  (GVAR j)):) ):(CALL assert_expect ((CAST int   478 ):(CAST long   24 ):(CAST long  (GVAR s)):) ):(CALL assert_expect ((CAST int   480 ):(CAST long   9 ):(CAST long   9 ):) ):(CALL assert_expect ((CAST int   481 ):(CAST long   4 ):(CAST long  (+  -3   7 )):) ):(CALL assert_expect ((CAST int   482 ):(CAST long   21 ):(CAST long  (- (+  5   20 )  4 )):) ):(CALL assert_expect ((CAST int   483 ):(CAST long   21 ):(CAST long  (+  5  (*  4   4 ))):) ):(CALL assert_expect ((CAST int   484 ):(CAST long   24 ):(CAST long  (* (*  4  (-  5   2 )) (-  4   2 ))):) ):(CALL assert_expect ((CAST int   485 ):(CAST long   13 ):(CAST long  (- (+  6  (*  3   4 )) (/  15   3 ))):) ):(CALL assert_expect ((CAST int   486 ):(CAST long   33 ):(CAST long  (/ (* (+  6   3 ) (-  15   4 ))  3 )):) ):(CALL assert_expect ((CAST int   487 ):(CAST long   0 ):(CAST long  (==  3  (+  3   1 ))):) ):(CALL assert_expect ((CAST int   488 ):(CAST long   1 ):(CAST long  (!=  4  (*  4   2 ))):) ):(CALL assert_expect ((CAST int   489 ):(CAST long   0 ):(CAST long  (!=  3  (*  1   3 ))):) ):(CALL assert_expect ((CAST int   490 ):(CAST long   1 ):(CAST long  (>=  5  (-  8   4 ))):) ):(CALL assert_expect ((CAST int   491 ):(CAST long   1 ):(CAST long  (>=  5  (-  7   2 ))):) ):(CALL assert_expect ((CAST int   492 ):(CAST long   0 ):(CAST long  (>= (-  11   8 )  5 )):) ):(CALL assert_expect ((CAST int   493 ):(CAST long   1 ):(CAST long  (<= (*  2   30 )  3 )):) ):(CALL assert_expect ((CAST int   494 ):(CAST long   1 ):(CAST long  (<= (/  9   3 )  3 )):) ):(CALL assert_expect ((CAST int   495 ):(CAST long   0 ):(CAST long  (<= (-  20   18 )  3 )):) ):(CALL assert_expect ((CAST int   496 ):(CAST long   1 ):(CAST long  (== (+ (*  -5   2 )  10 )  0 )):) ):(CALL assert_expect ((CAST int   497 ):(CAST long   1 ):(CAST long  (== (/  6   2 ) (/  9   3 ))):) ):(CALL assert_expect ((CAST int   498 ):(CAST long   1 ):(CAST long  (< (+  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   499 ):(CAST long   1 ):(CAST long  (> (+  1   4 )  4 )):) ):(CALL assert_expect ((CAST int   500 ):(CAST long   0 ):(CAST long  (< (-  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   501 ):(CAST long   0 ):(CAST long  (> (-  1   4 )  4 )):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   503 ):(CAST long   0 ):(CAST long  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   504 ):(CAST long   0 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   505 ):(CAST long   0 ):(CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   506 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   507 ):(CAST long   1 ):(CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   508 ):(CAST long   2 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   509 ):(CAST long   1 ):(CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   510 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   511 ):(CAST long   1 ):(CAST long  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   512 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   514 ):(CAST long   0 ):(CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   515 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   517 ):(CAST long   0 ):(CAST long  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))):) ):(CALL assert_expect ((CAST int   518 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   519 ):(CAST long   1 ):(CAST long  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   520 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   521 ):(CAST long   1 ):(CAST long  (!  0 )):) ):(CALL assert_expect ((CAST int   522 ):(CAST long   0 ):(CAST long  (!  1 )):) ):(CALL assert_expect ((CAST int   523 ):(CAST long   0 ):(CAST long  (! (! (!  1 )))):) ):(CALL assert_expect ((CAST int   525 ):(CAST long   256 ):(CAST long  (<<  1   8 )):) ):(CALL assert_expect ((CAST int   526 ):(CAST long   32 ):(CAST long  (>>  512   4 )):) ):(CALL assert_expect ((CAST int   530 ):(CAST long   1 ):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   531 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   532 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   533 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   534 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   535 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   536 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   537 ):(CAST long   8 ):(CAST long   8 ):) ):(= (LVAR 45)  254 ):(CALL assert_expect ((CAST int   539 ):(CAST long   -2 ):(CAST long  (LVAR 45)):) ):(= (LVAR 49)  100 ):(CALL assert_expect ((CAST int   541 ):(CAST long   100 ):(CAST long  (LVAR 49)):) ):(= (LVAR 53)  -100 ):(CALL assert_expect ((CAST int   543 ):(CAST long   -100 ):(CAST long  (LVAR 53)):) ):(CALL assert_expect ((CAST int   547 ):(CAST long   131585 ):(CAST long  (CAST int   131585 )):) ):(CALL assert_expect ((CAST int   548 ):(CAST long   513 ):(CAST long  (CAST short   131585 )):) ):(CALL assert_expect ((CAST int   549 ):(CAST long   1 ):(CAST long  (CAST char   131585 )):) ):(CALL assert_expect ((CAST int   550 ):(CAST long   1 ):(CAST long  (CAST long   1 )):) ):(CALL assert_expect ((CAST int   552 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   553 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   554 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   555 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   557 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   558 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   559 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   560 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   561 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   562 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   563 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   564 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   566 ):(CAST long  (CAST long   -5 )):(CAST long  (+  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   567 ):(CAST long  (CAST long   -15 )):(CAST long  (-  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   568 ):(CAST long  (CAST long   -50 )):(CAST long  (*  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   569 ):(CAST long  (CAST long   -2 )):(CAST long  (/  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   571 ):(CAST long   1 ):(CAST long  (< (CAST long   -1 )  -2 )):) ):(CALL assert_expect ((CAST int   572 ):(CAST long   1 ):(CAST long  (<= (CAST long   -1 )  -2 )):) ):(CALL assert_expect ((CAST int   573 ):(CAST long   0 ):(CAST long  (>  -2  (CAST long   -1 ))):) ):(CALL assert_expect ((CAST int   574 ):(CAST long   0 ):(CAST long  (>=  -2  (CAST long   -1 ))):) ):(CALL assert_expect ((CAST int   576 ):(CAST long   1 ):(CAST long  (<  -1  (CAST long   -2 ))):) ):(CALL assert_expect ((CAST int   577 ):(CAST long   1 ):(CAST long  (<=  -1  (CAST long   -2 ))):) ):(CALL assert_expect ((CAST int   578 ):(CAST long   0 ):(CAST long  (> (CAST long   -2 )  -1 )):) ):(CALL assert_expect ((CAST int   579 ):(CAST long   0 ):(CAST long  (>= (CAST long   -2 )  -1 )):) ):(CALL assert_expect ((CAST int   581 ):(CAST long   0 ):(CAST long  (CAST int  (+ (+  2147483647   2147483647 )  2 ))):) ):(= (LVAR 77)  -1 ):(CALL assert_expect ((CAST int   584 ):(CAST long  (CAST long   -1 )):(CAST long  (LVAR 77)):) ):(= (LVAR 81)  10 ):(CALL assert_expect ((CAST int   589 ):(CAST long   15 ):(CAST long  (= (LVAR 81) (+= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   590 ):(CAST long   15 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   591 ):(CAST long   8 ):(CAST long  (= (LVAR 81) (-= (LVAR 81)  7 ))):) ):(CALL assert_expect ((CAST int   592 ):(CAST long   8 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   593 ):(CAST long   40 ):(CAST long  (= (LVAR 81) (*= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   594 ):(CAST long   40 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   595 ):(CAST long   4 ):(CAST long  (= (LVAR 81) (/= (LVAR 81)  10 ))):) ):(CALL assert_expect ((CAST int   596 ):(CAST long   4 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   599 ):(CAST long   4 ):(CAST long  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   600 ):(CAST long   5 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   601 ):(CAST long   5 ):(CAST long  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   602 ):(CAST long   4 ):(CAST long  (LVAR 81)):) ):(= (LVAR 85) (/  100  (LVAR 81))):(CALL assert_expect ((CAST int   607 ):(CAST long   25 ):(CAST long  (LVAR 85)):) ):(= (LVAR 89)  77 ):(IF (== (LVAR 89)  77 ) (= (LVAR 89)  55 ) (= (LVAR 89)  66 )):(CALL assert_expect ((CAST int   615 ):(CAST long   55 ):(CAST long  (LVAR 89)):) ):(CALL assert_expect ((CAST int   616 ):(CAST long   1346269 ):(CAST long  (CALL fibo ((CAST int   30 ):) )):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL struct_initializer () ):(CALL assert_expect ((CAST int   639 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   640 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   641 ):(CAST long   10 ):(CAST long   10 ):) ):(CALL assert_expect ((CAST int   642 ):(CAST long   12 ):(CAST long   12 ):) ):(CALL assert_expect ((CAST int   644 ):(CAST long   11 ):(CAST long  (CALL switch_ ((CAST int   1 ):) )):) ):(CALL assert_expect ((CAST int   645 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   2 ):) )):) ):(CALL assert_expect ((CAST int   646 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   3 ):) )):) ):(CALL assert_expect ((CAST int   647 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   4 ):) )):) ):(CALL assert_expect ((CAST int   648 ):(CAST long   15 ):(CAST long  (CALL switch_ ((CAST int   5 ):) )):) ):(CALL assert_expect ((CAST int   649 ):(CAST long   15 ):(CAST long  (CALL switch_ ((CAST int   6 ):) )):) ):(CALL assert_expect ((CAST int   652 ):(CAST long   11 ):(CAST long  (CALL switch2_ ((CAST char   97 ):) )):) ):(CALL assert_expect ((CAST int   653 ):(CAST long   12 ):(CAST long  (CALL switch2_ ((CAST char   98 ):) )):) ):(CALL assert_expect ((CAST int   654 ):(CAST long   12 ):(CAST long  (CALL switch2_ ((CAST char   99 ):) )):) ):(CALL assert_expect ((CAST int   655 ):(CAST long   15 ):(CAST long  (CALL switch2_ ((CAST char   122 ):) )):) ):(CALL assert_expect ((CAST int   658 ):(CAST long   92 ):(CAST long  (CALL q8 () )):) ):(CALL assert_expect ((CAST int   661 ):(CAST long   0 ):(CAST long   0 ):) ):(CALL assert_expect ((CAST int   662 ):(CAST long   1 ):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   663 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   664 ):(CAST long   3 ):(CAST long   3 ):) ):(CALL assert_expect ((CAST int   666 ):(CAST long   15 ):(CAST long  (|  13   7 )):) ):(CALL assert_expect ((CAST int   667 ):(CAST long   5115 ):(CAST long  (|  938   5073 )):) ):(CALL assert_expect ((CAST int   668 ):(CAST long   5 ):(CAST long  (&  13   7 )):) ):(CALL assert_expect ((CAST int   669 ):(CAST long   896 ):(CAST long  (&  938   5073 )):) ):(CALL assert_expect ((CAST int   670 ):(CAST long   10 ):(CAST long  (^  13   7 )):) ):(CALL assert_expect ((CAST int   671 ):(CAST long   4219 ):(CAST long  (^  938   5073 )):) ):(CALL assert_expect ((CAST int   673 ):(CAST long   29 ):(CAST long  (>>  938   5 )):) ):(CALL assert_expect ((CAST int   674 ):(CAST long   1664 ):(CAST long  (<<  13   7 )):) ):(CALL printf ((CAST * char  (ADDR  "passed tests.\n" )):) ):(RETURN  0 ):))
//    MONTH  offset:93  enum 
//    i  offset:89  int 
//    init  offset:85  int 
//    z  offset:81  int 
//    x  offset:77  long 
//    _ulong  offset:69  unsigned long 
//    _long  offset:61  long 
//    _int  offset:53  int 
//    _uint  offset:49  unsigned int 
//    _char  offset:45  char 
//    a  offset:44  int 
//    jum  offset:40  * int 

// <EOF>
// Globals
// ary_sub [4] struct <SubVec> {{ 3 , 4 },{ 7 ,(-  18   10 )},{ 11 , 12 },{ 30 , 31 }}
// v1 struct <Vector> {{ 14 ,(+  2  (*  3   5 ))}, 5 ,{ 9 ,(*  2  (+  2   3 )), 11 , 12 },(ADDR (GVAR sb))}
// sb struct <SubVec> { 5 , 10 }
// q8_count int NULL 
// number enum <Number> NULL 
// ptr_to_pos * struct <Pos> NULL 
// pos struct <Pos> NULL 
// def struct <> { int <payload:0>}NULL 
// list1 struct <List> NULL 
// long_global long  1024 
// int_global int  512 
// short_global short  256 
// char_global char  127 
// reg [4] [5] [4] char {{ "rdi" , "rsi" , "rdx" , "rcx" , "r8" },{ "edi" , "esi" , "edx" , "ecx" , "r8d" },{ "di" , "si" , "dx" , "cx" , "r8w" },{ "dil" , "sil" , "dl" , "cl" , "r8b" }}
// ary_int [5] int { 1 , 2 , 3 , 4 , 5 }
// quick [14] char  "QuickBrownFox" 
// str_ary [27] char  "Hey, girls.\n" 
// str * char  "Hi, guys.\tAre you hungry" 
// s char  24 
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
// stdout * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// stderr * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}NULL 
// Functions
// main func ( ) int 
// struct_initializer func ( ) void 
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
// assert_expect func ( int  line , long  expected , long  actual ) void 
// fprintf func VARIADIC ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * char  fmt ) int 
// calloc func ( int  n , int  size ) * void 
// printf func VARIADIC ( * char  fmt ) int 
// exit func ( int  status ) void 
// __builtin_va_start func VARIADIC ( ) void 
// Strings
// "%d: %ld expected, but got %ld\n"
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
// "%s"
// "\tHello---world,\tagain\n"
// "%s"
// "Q "
// ". "
// "\n"
// "\n\n"
// "%s"
// "passed tests.\n"

// Tagnames
// December enum_el { 12 }
// November enum_el { 11 }
// October enum_el { 10 }
// April enum_el { 4 }
// March enum_el { 3 }
// February enum_el { 2 }
// January enum_el { 1 }
// INVALID enum_el { 0 }
// Vector struct { struct <SubVec> <x:0>, long <y:16>, [4] char <z:24>, * struct <SubVec> <p:32>}
// SubVec struct { long <x:0>, int <y:8>}
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
// FILE struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>}

	.intel_syntax noprefix
	.data
	.global ary_sub
ary_sub:
	.quad 3
	.long 4
	.zero 4
	.quad 7
	.long 8
	.zero 4
	.quad 11
	.long 12
	.zero 4
	.quad 30
	.long 31
	.zero 4
	.global v1
v1:
	.quad 14
	.long 17
	.zero 4
	.quad 5
	.byte 9
	.byte 10
	.byte 11
	.byte 12
	.zero 4
	.quad sb
	.global sb
sb:
	.quad 5
	.long 10
	.zero 4
	.global q8_count
q8_count:
	.zero 4
	.global number
number:
	.zero 4
	.global ptr_to_pos
ptr_to_pos:
	.zero 8
	.global pos
pos:
	.zero 8
	.global def
def:
	.zero 4
	.global list1
list1:
	.zero 16
	.global long_global
long_global:
	.quad 1024
	.global int_global
int_global:
	.long 512
	.global short_global
short_global:
	.word 256
	.global char_global
char_global:
	.byte 127
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
	.global str_ary
str_ary:
	.string "Hey, girls.\nAre you angry?"
	.global str
str:
	.quad .LS000001
	.global s
s:
	.byte 24
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
	.zero 8
	.global M
M:
	.zero 8
	.global L
L:
	.zero 8
	.global K
K:
	.zero 8
	.global I
I:
	.zero 100
	.global H
H:
	.zero 40
	.global G
G:
	.zero 8
	.global F
F:
	.zero 8
	.global E
E:
	.zero 8
	.global C
C:
	.zero 20
	.global B
B:
	.zero 8
	.global A
A:
	.zero 4
.LS000000:
	.string "%d: %ld expected, but got %ld\n"
.LS000001:
	.string "Hi, guys.\tAre you hungry"
.LS000002:
	.string "Hey, girls.\nAre you angry?"
.LS000003:
	.string "QuickBrownFox"
.LS000004:
	.string "rdi"
.LS000005:
	.string "rsi"
.LS000006:
	.string "rdx"
.LS000007:
	.string "rcx"
.LS000008:
	.string "r8"
.LS000009:
	.string "edi"
.LS000010:
	.string "esi"
.LS000011:
	.string "edx"
.LS000012:
	.string "ecx"
.LS000013:
	.string "r8d"
.LS000014:
	.string "di"
.LS000015:
	.string "si"
.LS000016:
	.string "dx"
.LS000017:
	.string "cx"
.LS000018:
	.string "r8w"
.LS000019:
	.string "dil"
.LS000020:
	.string "sil"
.LS000021:
	.string "dl"
.LS000022:
	.string "cl"
.LS000023:
	.string "r8b"
.LS000024:
	.string "Hello world!\n"
.LS000025:
	.string "%s"
.LS000026:
	.string "\tHello---world,\tagain\n"
.LS000027:
	.string "%s"
.LS000028:
	.string "Q "
.LS000029:
	.string ". "
.LS000030:
	.string "\n"
.LS000031:
	.string "\n\n"
.LS000032:
	.string "%s"
.LS000033:
	.string "passed tests.\n"

	.file 1 "./test/test.c"
	.text
	.global assert_expect
// Line 19 FDECL assert_expect func ( int  line , long  expected , long  actual ) void  max_offset:52
//    (LVAR 36) (LVAR 44) (LVAR 52) 
//    (BLOCK(IF (== (LVAR 44) (LVAR 52)) (RETURN NULL ) NULL ):(CALL fprintf ((CAST * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} (GVAR stderr)):(CAST * char  (ADDR  "%d: %ld expected, but got %ld\n" )):(LVAR 36):(LVAR 44):(LVAR 52):) ):(CALL exit ((CAST int   1 ):) ):))
	.loc 1 19
assert_expect:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 36], edi
	mov  [rbp - 44], rsi
	mov  [rbp - 52], rdx
// Line 21 (IF (== (LVAR 44) (LVAR 52)) (RETURN NULL ) NULL )
	.loc 1 21
// Line 20 (== (LVAR 44) (LVAR 52))
	.loc 1 20
// Line 20 (LVAR 44)
	.loc 1 20
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
// Line 20 (LVAR 52)
	.loc 1 20
	lea  rax, [rbp - 52]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000000
// Line 20 (RETURN NULL )
	.loc 1 20
	jmp  .L.return.assert_expect
	jmp  .L000001
.L000000:
.L000001:
// Line 21 (CALL fprintf ((CAST * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} (GVAR stderr)):(CAST * char  (ADDR  "%d: %ld expected, but got %ld\n" )):(LVAR 36):(LVAR 44):(LVAR 52):) )
	.loc 1 21
// Line 21 (LVAR 52)
	.loc 1 21
	lea  rax, [rbp - 52]
	mov  rax, [rax]
	push rax
// Line 21 (LVAR 44)
	.loc 1 21
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
// Line 21 (LVAR 36)
	.loc 1 21
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 21 (CAST * char  (ADDR  "%d: %ld expected, but got %ld\n" ))
	.loc 1 21
// Line 21 (ADDR  "%d: %ld expected, but got %ld\n" )
	.loc 1 21
	lea  rax, .LS000000[rip]
	push rax
// Line 21 (CAST * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} (GVAR stderr))
	.loc 1 21
// Line 21 (GVAR stderr)
	.loc 1 21
	lea  rax, stderr[rip]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	pop  rdx
	pop  rcx
	pop  r8
	mov  rax, rsp
	and  rax, 15
	jnz  .L000002
	mov  rax, 0
	call fprintf
	jmp  .L000003
.L000002:
	sub  rsp, 8
	mov  rax, 0
	call fprintf
	add  rsp, 8
.L000003:
	push rax
	pop  rax
// Line 22 (CALL exit ((CAST int   1 ):) )
	.loc 1 22
// Line 22 (CAST int   1 )
	.loc 1 22
// Line 22  1 
	.loc 1 22
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000004
	mov  rax, 0
	call exit
	jmp  .L000005
.L000004:
	sub  rsp, 8
	mov  rax, 0
	call exit
	add  rsp, 8
.L000005:
	push rax
	pop  rax
.L.return.assert_expect:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global fibo
// Line 54 FDECL fibo func ( int  x ) int  max_offset:36
//    (LVAR 36) 
//    (BLOCK(IF (<  2  (LVAR 36)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((CAST int  (- (LVAR 36)  1 )):) ) (CALL fibo ((CAST int  (- (LVAR 36)  2 )):) ))):))
	.loc 1 54
fibo:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 36], edi
// Line 56 (IF (<  2  (LVAR 36)) (RETURN  1 ) NULL )
	.loc 1 56
// Line 55 (<  2  (LVAR 36))
	.loc 1 55
// Line 55  2 
	.loc 1 55
	push 2
// Line 55 (LVAR 36)
	.loc 1 55
	lea  rax, [rbp - 36]
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
	je   .L000006
// Line 55 (RETURN  1 )
	.loc 1 55
// Line 55  1 
	.loc 1 55
	push 1
	pop  rax
	jmp  .L.return.fibo
	jmp  .L000007
.L000006:
.L000007:
// Line 56 (RETURN (+ (CALL fibo ((CAST int  (- (LVAR 36)  1 )):) ) (CALL fibo ((CAST int  (- (LVAR 36)  2 )):) )))
	.loc 1 56
// Line 56 (+ (CALL fibo ((CAST int  (- (LVAR 36)  1 )):) ) (CALL fibo ((CAST int  (- (LVAR 36)  2 )):) ))
	.loc 1 56
// Line 56 (CALL fibo ((CAST int  (- (LVAR 36)  1 )):) )
	.loc 1 56
// Line 56 (CAST int  (- (LVAR 36)  1 ))
	.loc 1 56
// Line 56 (- (LVAR 36)  1 )
	.loc 1 56
// Line 56 (LVAR 36)
	.loc 1 56
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 56  1 
	.loc 1 56
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000008
	mov  rax, 0
	call fibo
	jmp  .L000009
.L000008:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000009:
	push rax
// Line 56 (CALL fibo ((CAST int  (- (LVAR 36)  2 )):) )
	.loc 1 56
// Line 56 (CAST int  (- (LVAR 36)  2 ))
	.loc 1 56
// Line 56 (- (LVAR 36)  2 )
	.loc 1 56
// Line 56 (LVAR 36)
	.loc 1 56
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 56  2 
	.loc 1 56
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000010
	mov  rax, 0
	call fibo
	jmp  .L000011
.L000010:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000011:
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	jmp  .L.return.fibo
.L.return.fibo:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global array_local
// Line 59 FDECL array_local func ( ) int  max_offset:416
//    
//    (BLOCK(= (LVAR 356)  0 ):(= (LVAR 360)  0 ):(= (LVAR 376) { 0 , 1 , -2 , -3 }):(= (LVAR 408) { 0 , -1 , -2 , -3 }):(= (LVAR 416) { -5 , -6 , 7 , 8 }):(WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)):(CALL assert_expect ((CAST int   74 ):(CAST long   0 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  0 ))):) ):(CALL assert_expect ((CAST int   75 ):(CAST long   1 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  1 ))):) ):(CALL assert_expect ((CAST int   76 ):(CAST long   -2 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  2 ))):) ):(CALL assert_expect ((CAST int   77 ):(CAST long   -3 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  3 ))):) ):(CALL assert_expect ((CAST int   79 ):(CAST long   0 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  0 ))):) ):(CALL assert_expect ((CAST int   80 ):(CAST long   -1 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  1 ))):) ):(CALL assert_expect ((CAST int   81 ):(CAST long   -2 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  2 ))):) ):(CALL assert_expect ((CAST int   82 ):(CAST long   -3 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  3 ))):) ):(CALL assert_expect ((CAST int   84 ):(CAST long   -5 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  0 ))):) ):(CALL assert_expect ((CAST int   85 ):(CAST long   -6 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  1 ))):) ):(CALL assert_expect ((CAST int   86 ):(CAST long   7 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  2 ))):) ):(CALL assert_expect ((CAST int   87 ):(CAST long   8 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  3 ))):) ):(CALL assert_expect ((CAST int   89 ):(CAST long   1 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))):) ):(CALL assert_expect ((CAST int   90 ):(CAST long   97 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))):) ):(CALL assert_expect ((CAST int   91 ):(CAST long   84 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))):) ):(RETURN  0 ):))
	.loc 1 59
array_local:
	push rbp
	mov  rbp, rsp
	sub  rsp, 416
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 61 (= (LVAR 356)  0 )
	.loc 1 61
// Line 61  0 
	.loc 1 61
	push 0
	lea  rax, [rbp - 356]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 62 (= (LVAR 360)  0 )
	.loc 1 62
// Line 62  0 
	.loc 1 62
	push 0
	lea  rax, [rbp - 360]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 63 (= (LVAR 376) { 0 , 1 , -2 , -3 })
	.loc 1 63
// Line 63  0 
	.loc 1 63
	push 0
	lea  rax, [rbp - 376]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 63  1 
	.loc 1 63
	push 1
	lea  rax, [rbp - 372]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 63  -2 
	.loc 1 63
	push -2
	lea  rax, [rbp - 368]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 63  -3 
	.loc 1 63
	push -3
	lea  rax, [rbp - 364]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 64 (= (LVAR 408) { 0 , -1 , -2 , -3 })
	.loc 1 64
// Line 64  0 
	.loc 1 64
	push 0
	lea  rax, [rbp - 408]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 64  -1 
	.loc 1 64
	push -1
	lea  rax, [rbp - 400]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 64  -2 
	.loc 1 64
	push -2
	lea  rax, [rbp - 392]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 64  -3 
	.loc 1 64
	push -3
	lea  rax, [rbp - 384]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 65 (= (LVAR 416) { -5 , -6 , 7 , 8 })
	.loc 1 65
// Line 65  -5 
	.loc 1 65
	push -5
	lea  rax, [rbp - 416]
	pop  rdi
	mov  [rax], di
	push rdi
// Line 65  -6 
	.loc 1 65
	push -6
	lea  rax, [rbp - 414]
	pop  rdi
	mov  [rax], di
	push rdi
// Line 65  7 
	.loc 1 65
	push 7
	lea  rax, [rbp - 412]
	pop  rdi
	mov  [rax], di
	push rdi
// Line 65  8 
	.loc 1 65
	push 8
	lea  rax, [rbp - 410]
	pop  rdi
	mov  [rax], di
	push rdi
	pop  rax
// Line 74 (WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):))
	.loc 1 74
.L000012:
// Line 66 (<=  9  (LVAR 356))
	.loc 1 66
// Line 66  9 
	.loc 1 66
	push 9
// Line 66 (LVAR 356)
	.loc 1 66
	lea  rax, [rbp - 356]
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
	je   .L000013
// Line 74 (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)
	.loc 1 74
// Line 67 (= (LVAR 360)  0 )
	.loc 1 67
// Line 67  0 
	.loc 1 67
	push 0
	lea  rax, [rbp - 360]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 72 (WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):))
	.loc 1 72
.L000014:
// Line 68 (<=  7  (LVAR 360))
	.loc 1 68
// Line 68  7 
	.loc 1 68
	push 7
// Line 68 (LVAR 360)
	.loc 1 68
	lea  rax, [rbp - 360]
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
	je   .L000015
// Line 72 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)
	.loc 1 72
// Line 69 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360)))
	.loc 1 69
// Line 69 (+ (* (LVAR 356)  10 ) (LVAR 360))
	.loc 1 69
// Line 69 (* (LVAR 356)  10 )
	.loc 1 69
// Line 69 (LVAR 356)
	.loc 1 69
	lea  rax, [rbp - 356]
	mov  eax, [rax]
	push rax
// Line 69  10 
	.loc 1 69
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 69 (LVAR 360)
	.loc 1 69
	lea  rax, [rbp - 360]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 69 (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))
	.loc 1 69
// Line 69 (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356))))
	.loc 1 69
// Line 69 (] (ADDR (LVAR 352)) (LVAR 356))
	.loc 1 69
// Line 69 (ADDR (LVAR 352))
	.loc 1 69
	lea  rax, [rbp - 352]
	push rax
// Line 69 (LVAR 356)
	.loc 1 69
	lea  rax, [rbp - 356]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 69 (LVAR 360)
	.loc 1 69
	lea  rax, [rbp - 360]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 70 (++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 )
	.loc 1 70
// Line 70 (= (LVAR 360) (++ (LVAR 360)  1 ))
	.loc 1 70
// Line 70 (++ (LVAR 360)  1 )
	.loc 1 70
// Line 70 (LVAR 360)
	.loc 1 70
	lea  rax, [rbp - 360]
	mov  eax, [rax]
	push rax
// Line 70  1 
	.loc 1 70
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 360]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 70  1 
	.loc 1 70
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000014
.L000015:
// Line 72 (= (LVAR 356) (+= (LVAR 356)  1 ))
	.loc 1 72
// Line 72 (+= (LVAR 356)  1 )
	.loc 1 72
// Line 72 (LVAR 356)
	.loc 1 72
	lea  rax, [rbp - 356]
	mov  eax, [rax]
	push rax
// Line 72  1 
	.loc 1 72
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 356]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000012
.L000013:
// Line 74 (CALL assert_expect ((CAST int   74 ):(CAST long   0 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  0 ))):) )
	.loc 1 74
// Line 74 (CAST long  (DEREF (] (ADDR (LVAR 376))  0 )))
	.loc 1 74
// Line 74 (DEREF (] (ADDR (LVAR 376))  0 ))
	.loc 1 74
// Line 74 (] (ADDR (LVAR 376))  0 )
	.loc 1 74
// Line 74 (ADDR (LVAR 376))
	.loc 1 74
	lea  rax, [rbp - 376]
	push rax
// Line 74  0 
	.loc 1 74
	push 0
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 74 (CAST long   0 )
	.loc 1 74
// Line 74  0 
	.loc 1 74
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 74 (CAST int   74 )
	.loc 1 74
// Line 74  74 
	.loc 1 74
	push 74
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000016
	mov  rax, 0
	call assert_expect
	jmp  .L000017
.L000016:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000017:
	push rax
	pop  rax
// Line 75 (CALL assert_expect ((CAST int   75 ):(CAST long   1 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  1 ))):) )
	.loc 1 75
// Line 75 (CAST long  (DEREF (] (ADDR (LVAR 376))  1 )))
	.loc 1 75
// Line 75 (DEREF (] (ADDR (LVAR 376))  1 ))
	.loc 1 75
// Line 75 (] (ADDR (LVAR 376))  1 )
	.loc 1 75
// Line 75 (ADDR (LVAR 376))
	.loc 1 75
	lea  rax, [rbp - 376]
	push rax
// Line 75  1 
	.loc 1 75
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 75 (CAST long   1 )
	.loc 1 75
// Line 75  1 
	.loc 1 75
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 75 (CAST int   75 )
	.loc 1 75
// Line 75  75 
	.loc 1 75
	push 75
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000018
	mov  rax, 0
	call assert_expect
	jmp  .L000019
.L000018:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000019:
	push rax
	pop  rax
// Line 76 (CALL assert_expect ((CAST int   76 ):(CAST long   -2 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  2 ))):) )
	.loc 1 76
// Line 76 (CAST long  (DEREF (] (ADDR (LVAR 376))  2 )))
	.loc 1 76
// Line 76 (DEREF (] (ADDR (LVAR 376))  2 ))
	.loc 1 76
// Line 76 (] (ADDR (LVAR 376))  2 )
	.loc 1 76
// Line 76 (ADDR (LVAR 376))
	.loc 1 76
	lea  rax, [rbp - 376]
	push rax
// Line 76  2 
	.loc 1 76
	push 2
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 76 (CAST long   -2 )
	.loc 1 76
// Line 76  -2 
	.loc 1 76
	push -2
	pop  rax
	movsx rax, eax
	push rax
// Line 76 (CAST int   76 )
	.loc 1 76
// Line 76  76 
	.loc 1 76
	push 76
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000020
	mov  rax, 0
	call assert_expect
	jmp  .L000021
.L000020:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000021:
	push rax
	pop  rax
// Line 77 (CALL assert_expect ((CAST int   77 ):(CAST long   -3 ):(CAST long  (DEREF (] (ADDR (LVAR 376))  3 ))):) )
	.loc 1 77
// Line 77 (CAST long  (DEREF (] (ADDR (LVAR 376))  3 )))
	.loc 1 77
// Line 77 (DEREF (] (ADDR (LVAR 376))  3 ))
	.loc 1 77
// Line 77 (] (ADDR (LVAR 376))  3 )
	.loc 1 77
// Line 77 (ADDR (LVAR 376))
	.loc 1 77
	lea  rax, [rbp - 376]
	push rax
// Line 77  3 
	.loc 1 77
	push 3
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 77 (CAST long   -3 )
	.loc 1 77
// Line 77  -3 
	.loc 1 77
	push -3
	pop  rax
	movsx rax, eax
	push rax
// Line 77 (CAST int   77 )
	.loc 1 77
// Line 77  77 
	.loc 1 77
	push 77
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000022
	mov  rax, 0
	call assert_expect
	jmp  .L000023
.L000022:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000023:
	push rax
	pop  rax
// Line 79 (CALL assert_expect ((CAST int   79 ):(CAST long   0 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  0 ))):) )
	.loc 1 79
// Line 79 (CAST long  (DEREF (] (ADDR (LVAR 408))  0 )))
	.loc 1 79
// Line 79 (DEREF (] (ADDR (LVAR 408))  0 ))
	.loc 1 79
// Line 79 (] (ADDR (LVAR 408))  0 )
	.loc 1 79
// Line 79 (ADDR (LVAR 408))
	.loc 1 79
	lea  rax, [rbp - 408]
	push rax
// Line 79  0 
	.loc 1 79
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
// Line 79 (CAST long   0 )
	.loc 1 79
// Line 79  0 
	.loc 1 79
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 79 (CAST int   79 )
	.loc 1 79
// Line 79  79 
	.loc 1 79
	push 79
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000024
	mov  rax, 0
	call assert_expect
	jmp  .L000025
.L000024:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000025:
	push rax
	pop  rax
// Line 80 (CALL assert_expect ((CAST int   80 ):(CAST long   -1 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  1 ))):) )
	.loc 1 80
// Line 80 (CAST long  (DEREF (] (ADDR (LVAR 408))  1 )))
	.loc 1 80
// Line 80 (DEREF (] (ADDR (LVAR 408))  1 ))
	.loc 1 80
// Line 80 (] (ADDR (LVAR 408))  1 )
	.loc 1 80
// Line 80 (ADDR (LVAR 408))
	.loc 1 80
	lea  rax, [rbp - 408]
	push rax
// Line 80  1 
	.loc 1 80
	push 1
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
// Line 80 (CAST long   -1 )
	.loc 1 80
// Line 80  -1 
	.loc 1 80
	push -1
	pop  rax
	movsx rax, eax
	push rax
// Line 80 (CAST int   80 )
	.loc 1 80
// Line 80  80 
	.loc 1 80
	push 80
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000026
	mov  rax, 0
	call assert_expect
	jmp  .L000027
.L000026:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000027:
	push rax
	pop  rax
// Line 81 (CALL assert_expect ((CAST int   81 ):(CAST long   -2 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  2 ))):) )
	.loc 1 81
// Line 81 (CAST long  (DEREF (] (ADDR (LVAR 408))  2 )))
	.loc 1 81
// Line 81 (DEREF (] (ADDR (LVAR 408))  2 ))
	.loc 1 81
// Line 81 (] (ADDR (LVAR 408))  2 )
	.loc 1 81
// Line 81 (ADDR (LVAR 408))
	.loc 1 81
	lea  rax, [rbp - 408]
	push rax
// Line 81  2 
	.loc 1 81
	push 2
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
// Line 81 (CAST long   -2 )
	.loc 1 81
// Line 81  -2 
	.loc 1 81
	push -2
	pop  rax
	movsx rax, eax
	push rax
// Line 81 (CAST int   81 )
	.loc 1 81
// Line 81  81 
	.loc 1 81
	push 81
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000028
	mov  rax, 0
	call assert_expect
	jmp  .L000029
.L000028:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000029:
	push rax
	pop  rax
// Line 82 (CALL assert_expect ((CAST int   82 ):(CAST long   -3 ):(CAST long  (DEREF (] (ADDR (LVAR 408))  3 ))):) )
	.loc 1 82
// Line 82 (CAST long  (DEREF (] (ADDR (LVAR 408))  3 )))
	.loc 1 82
// Line 82 (DEREF (] (ADDR (LVAR 408))  3 ))
	.loc 1 82
// Line 82 (] (ADDR (LVAR 408))  3 )
	.loc 1 82
// Line 82 (ADDR (LVAR 408))
	.loc 1 82
	lea  rax, [rbp - 408]
	push rax
// Line 82  3 
	.loc 1 82
	push 3
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	mov  rax, [rax]
	push rax
// Line 82 (CAST long   -3 )
	.loc 1 82
// Line 82  -3 
	.loc 1 82
	push -3
	pop  rax
	movsx rax, eax
	push rax
// Line 82 (CAST int   82 )
	.loc 1 82
// Line 82  82 
	.loc 1 82
	push 82
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000030
	mov  rax, 0
	call assert_expect
	jmp  .L000031
.L000030:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000031:
	push rax
	pop  rax
// Line 84 (CALL assert_expect ((CAST int   84 ):(CAST long   -5 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  0 ))):) )
	.loc 1 84
// Line 84 (CAST long  (DEREF (] (ADDR (LVAR 416))  0 )))
	.loc 1 84
// Line 84 (DEREF (] (ADDR (LVAR 416))  0 ))
	.loc 1 84
// Line 84 (] (ADDR (LVAR 416))  0 )
	.loc 1 84
// Line 84 (ADDR (LVAR 416))
	.loc 1 84
	lea  rax, [rbp - 416]
	push rax
// Line 84  0 
	.loc 1 84
	push 0
	pop  rdi
	pop  rax
	imul rdi, 2
	add  rax, rdi
	push rax
	pop  rax
	movsx  eax, WORD PTR [rax]
	push rax
	pop  rax
	movsx rax, ax
	push rax
// Line 84 (CAST long   -5 )
	.loc 1 84
// Line 84  -5 
	.loc 1 84
	push -5
	pop  rax
	movsx rax, eax
	push rax
// Line 84 (CAST int   84 )
	.loc 1 84
// Line 84  84 
	.loc 1 84
	push 84
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000032
	mov  rax, 0
	call assert_expect
	jmp  .L000033
.L000032:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000033:
	push rax
	pop  rax
// Line 85 (CALL assert_expect ((CAST int   85 ):(CAST long   -6 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  1 ))):) )
	.loc 1 85
// Line 85 (CAST long  (DEREF (] (ADDR (LVAR 416))  1 )))
	.loc 1 85
// Line 85 (DEREF (] (ADDR (LVAR 416))  1 ))
	.loc 1 85
// Line 85 (] (ADDR (LVAR 416))  1 )
	.loc 1 85
// Line 85 (ADDR (LVAR 416))
	.loc 1 85
	lea  rax, [rbp - 416]
	push rax
// Line 85  1 
	.loc 1 85
	push 1
	pop  rdi
	pop  rax
	imul rdi, 2
	add  rax, rdi
	push rax
	pop  rax
	movsx  eax, WORD PTR [rax]
	push rax
	pop  rax
	movsx rax, ax
	push rax
// Line 85 (CAST long   -6 )
	.loc 1 85
// Line 85  -6 
	.loc 1 85
	push -6
	pop  rax
	movsx rax, eax
	push rax
// Line 85 (CAST int   85 )
	.loc 1 85
// Line 85  85 
	.loc 1 85
	push 85
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000034
	mov  rax, 0
	call assert_expect
	jmp  .L000035
.L000034:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000035:
	push rax
	pop  rax
// Line 86 (CALL assert_expect ((CAST int   86 ):(CAST long   7 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  2 ))):) )
	.loc 1 86
// Line 86 (CAST long  (DEREF (] (ADDR (LVAR 416))  2 )))
	.loc 1 86
// Line 86 (DEREF (] (ADDR (LVAR 416))  2 ))
	.loc 1 86
// Line 86 (] (ADDR (LVAR 416))  2 )
	.loc 1 86
// Line 86 (ADDR (LVAR 416))
	.loc 1 86
	lea  rax, [rbp - 416]
	push rax
// Line 86  2 
	.loc 1 86
	push 2
	pop  rdi
	pop  rax
	imul rdi, 2
	add  rax, rdi
	push rax
	pop  rax
	movsx  eax, WORD PTR [rax]
	push rax
	pop  rax
	movsx rax, ax
	push rax
// Line 86 (CAST long   7 )
	.loc 1 86
// Line 86  7 
	.loc 1 86
	push 7
	pop  rax
	movsx rax, eax
	push rax
// Line 86 (CAST int   86 )
	.loc 1 86
// Line 86  86 
	.loc 1 86
	push 86
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000036
	mov  rax, 0
	call assert_expect
	jmp  .L000037
.L000036:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000037:
	push rax
	pop  rax
// Line 87 (CALL assert_expect ((CAST int   87 ):(CAST long   8 ):(CAST long  (DEREF (] (ADDR (LVAR 416))  3 ))):) )
	.loc 1 87
// Line 87 (CAST long  (DEREF (] (ADDR (LVAR 416))  3 )))
	.loc 1 87
// Line 87 (DEREF (] (ADDR (LVAR 416))  3 ))
	.loc 1 87
// Line 87 (] (ADDR (LVAR 416))  3 )
	.loc 1 87
// Line 87 (ADDR (LVAR 416))
	.loc 1 87
	lea  rax, [rbp - 416]
	push rax
// Line 87  3 
	.loc 1 87
	push 3
	pop  rdi
	pop  rax
	imul rdi, 2
	add  rax, rdi
	push rax
	pop  rax
	movsx  eax, WORD PTR [rax]
	push rax
	pop  rax
	movsx rax, ax
	push rax
// Line 87 (CAST long   8 )
	.loc 1 87
// Line 87  8 
	.loc 1 87
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 87 (CAST int   87 )
	.loc 1 87
// Line 87  87 
	.loc 1 87
	push 87
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000038
	mov  rax, 0
	call assert_expect
	jmp  .L000039
.L000038:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000039:
	push rax
	pop  rax
// Line 89 (CALL assert_expect ((CAST int   89 ):(CAST long   1 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))):) )
	.loc 1 89
// Line 89 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 )))
	.loc 1 89
// Line 89 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))
	.loc 1 89
// Line 89 (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 )
	.loc 1 89
// Line 89 (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))
	.loc 1 89
// Line 89 (] (ADDR (LVAR 352))  0 )
	.loc 1 89
// Line 89 (ADDR (LVAR 352))
	.loc 1 89
	lea  rax, [rbp - 352]
	push rax
// Line 89  0 
	.loc 1 89
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 89  1 
	.loc 1 89
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 89 (CAST long   1 )
	.loc 1 89
// Line 89  1 
	.loc 1 89
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 89 (CAST int   89 )
	.loc 1 89
// Line 89  89 
	.loc 1 89
	push 89
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000040
	mov  rax, 0
	call assert_expect
	jmp  .L000041
.L000040:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000041:
	push rax
	pop  rax
// Line 90 (CALL assert_expect ((CAST int   90 ):(CAST long   97 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))):) )
	.loc 1 90
// Line 90 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 )))
	.loc 1 90
// Line 90 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))
	.loc 1 90
// Line 90 (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 )
	.loc 1 90
// Line 90 (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))
	.loc 1 90
// Line 90 (] (ADDR (LVAR 352))  9 )
	.loc 1 90
// Line 90 (ADDR (LVAR 352))
	.loc 1 90
	lea  rax, [rbp - 352]
	push rax
// Line 90  9 
	.loc 1 90
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 90  7 
	.loc 1 90
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 90 (CAST long   97 )
	.loc 1 90
// Line 90  97 
	.loc 1 90
	push 97
	pop  rax
	movsx rax, eax
	push rax
// Line 90 (CAST int   90 )
	.loc 1 90
// Line 90  90 
	.loc 1 90
	push 90
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000042
	mov  rax, 0
	call assert_expect
	jmp  .L000043
.L000042:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000043:
	push rax
	pop  rax
// Line 91 (CALL assert_expect ((CAST int   91 ):(CAST long   84 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))):) )
	.loc 1 91
// Line 91 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 )))
	.loc 1 91
// Line 91 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))
	.loc 1 91
// Line 91 (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 )
	.loc 1 91
// Line 91 (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))
	.loc 1 91
// Line 91 (] (ADDR (LVAR 352))  8 )
	.loc 1 91
// Line 91 (ADDR (LVAR 352))
	.loc 1 91
	lea  rax, [rbp - 352]
	push rax
// Line 91  8 
	.loc 1 91
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 91  4 
	.loc 1 91
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 91 (CAST long   84 )
	.loc 1 91
// Line 91  84 
	.loc 1 91
	push 84
	pop  rax
	movsx rax, eax
	push rax
// Line 91 (CAST int   91 )
	.loc 1 91
// Line 91  91 
	.loc 1 91
	push 91
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000044
	mov  rax, 0
	call assert_expect
	jmp  .L000045
.L000044:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000045:
	push rax
	pop  rax
// Line 92 (RETURN  0 )
	.loc 1 92
// Line 92  0 
	.loc 1 92
	push 0
	pop  rax
	jmp  .L.return.array_local
.L.return.array_local:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global array_global
// Line 120 FDECL array_global func ( ) int  max_offset:36
//    
//    (BLOCK(CALL assert_expect ((CAST int   121 ):(CAST long   127 ):(CAST long  (GVAR char_global)):) ):(CALL assert_expect ((CAST int   122 ):(CAST long   256 ):(CAST long  (GVAR short_global)):) ):(CALL assert_expect ((CAST int   123 ):(CAST long   512 ):(CAST long  (GVAR int_global)):) ):(CALL assert_expect ((CAST int   124 ):(CAST long   1024 ):(CAST long  (GVAR long_global)):) ):(FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ((CAST int   126 ):(CAST long  (+ (LVAR 36)  1 )):(CAST long  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) )):(CALL assert_expect ((CAST int   127 ):(CAST long   105 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))):) ):(CALL assert_expect ((CAST int   128 ):(CAST long   119 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ((CAST int   139 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   140 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))):(CAST long   97 ):) ):(CALL assert_expect ((CAST int   141 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))):(CAST long   84 ):) ):(RETURN  0 ):))
	.loc 1 120
array_global:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 121 (CALL assert_expect ((CAST int   121 ):(CAST long   127 ):(CAST long  (GVAR char_global)):) )
	.loc 1 121
// Line 121 (CAST long  (GVAR char_global))
	.loc 1 121
// Line 121 (GVAR char_global)
	.loc 1 121
	lea  rax, char_global[rip]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 121 (CAST long   127 )
	.loc 1 121
// Line 121  127 
	.loc 1 121
	push 127
	pop  rax
	movsx rax, eax
	push rax
// Line 121 (CAST int   121 )
	.loc 1 121
// Line 121  121 
	.loc 1 121
	push 121
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000046
	mov  rax, 0
	call assert_expect
	jmp  .L000047
.L000046:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000047:
	push rax
	pop  rax
// Line 122 (CALL assert_expect ((CAST int   122 ):(CAST long   256 ):(CAST long  (GVAR short_global)):) )
	.loc 1 122
// Line 122 (CAST long  (GVAR short_global))
	.loc 1 122
// Line 122 (GVAR short_global)
	.loc 1 122
	lea  rax, short_global[rip]
	movsx  eax, WORD PTR [rax]
	push rax
	pop  rax
	movsx rax, ax
	push rax
// Line 122 (CAST long   256 )
	.loc 1 122
// Line 122  256 
	.loc 1 122
	push 256
	pop  rax
	movsx rax, eax
	push rax
// Line 122 (CAST int   122 )
	.loc 1 122
// Line 122  122 
	.loc 1 122
	push 122
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000048
	mov  rax, 0
	call assert_expect
	jmp  .L000049
.L000048:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000049:
	push rax
	pop  rax
// Line 123 (CALL assert_expect ((CAST int   123 ):(CAST long   512 ):(CAST long  (GVAR int_global)):) )
	.loc 1 123
// Line 123 (CAST long  (GVAR int_global))
	.loc 1 123
// Line 123 (GVAR int_global)
	.loc 1 123
	lea  rax, int_global[rip]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 123 (CAST long   512 )
	.loc 1 123
// Line 123  512 
	.loc 1 123
	push 512
	pop  rax
	movsx rax, eax
	push rax
// Line 123 (CAST int   123 )
	.loc 1 123
// Line 123  123 
	.loc 1 123
	push 123
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000050
	mov  rax, 0
	call assert_expect
	jmp  .L000051
.L000050:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000051:
	push rax
	pop  rax
// Line 124 (CALL assert_expect ((CAST int   124 ):(CAST long   1024 ):(CAST long  (GVAR long_global)):) )
	.loc 1 124
// Line 124 (CAST long  (GVAR long_global))
	.loc 1 124
// Line 124 (GVAR long_global)
	.loc 1 124
	lea  rax, long_global[rip]
	mov  rax, [rax]
	push rax
// Line 124 (CAST long   1024 )
	.loc 1 124
// Line 124  1024 
	.loc 1 124
	push 1024
	pop  rax
	movsx rax, eax
	push rax
// Line 124 (CAST int   124 )
	.loc 1 124
// Line 124  124 
	.loc 1 124
	push 124
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000052
	mov  rax, 0
	call assert_expect
	jmp  .L000053
.L000052:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000053:
	push rax
	pop  rax
// Line 126 (FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ((CAST int   126 ):(CAST long  (+ (LVAR 36)  1 )):(CAST long  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) ))
	.loc 1 126
// Line 126 (= (LVAR 36)  0 )
	.loc 1 126
// Line 126  0 
	.loc 1 126
	push 0
	lea  rax, [rbp - 36]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000056:
// Line 126 (<  5  (LVAR 36))
	.loc 1 126
// Line 126  5 
	.loc 1 126
	push 5
// Line 126 (LVAR 36)
	.loc 1 126
	lea  rax, [rbp - 36]
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
	je   .L000055
// Line 126 (CALL assert_expect ((CAST int   126 ):(CAST long  (+ (LVAR 36)  1 )):(CAST long  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) )
	.loc 1 126
// Line 126 (CAST long  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36))))
	.loc 1 126
// Line 126 (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))
	.loc 1 126
// Line 126 (] (ADDR (GVAR ary_int)) (LVAR 36))
	.loc 1 126
// Line 126 (ADDR (GVAR ary_int))
	.loc 1 126
	lea  rax, ary_int[rip]
	push rax
// Line 126 (LVAR 36)
	.loc 1 126
	lea  rax, [rbp - 36]
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
	movsx rax, eax
	push rax
// Line 126 (CAST long  (+ (LVAR 36)  1 ))
	.loc 1 126
// Line 126 (+ (LVAR 36)  1 )
	.loc 1 126
// Line 126 (LVAR 36)
	.loc 1 126
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 126  1 
	.loc 1 126
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 126 (CAST int   126 )
	.loc 1 126
// Line 126  126 
	.loc 1 126
	push 126
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
.L000054:
// Line 126 (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 )
	.loc 1 126
// Line 126 (= (LVAR 36) (++ (LVAR 36)  1 ))
	.loc 1 126
// Line 126 (++ (LVAR 36)  1 )
	.loc 1 126
// Line 126 (LVAR 36)
	.loc 1 126
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 126  1 
	.loc 1 126
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 36]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 126  1 
	.loc 1 126
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000056
.L000055:
// Line 127 (CALL assert_expect ((CAST int   127 ):(CAST long   105 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))):) )
	.loc 1 127
// Line 127 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )))
	.loc 1 127
// Line 127 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))
	.loc 1 127
// Line 127 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )
	.loc 1 127
// Line 127 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))
	.loc 1 127
// Line 127 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )
	.loc 1 127
// Line 127 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 127
// Line 127 (] (ADDR (GVAR reg))  2 )
	.loc 1 127
// Line 127 (ADDR (GVAR reg))
	.loc 1 127
	lea  rax, reg[rip]
	push rax
// Line 127  2 
	.loc 1 127
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 127  1 
	.loc 1 127
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 127  1 
	.loc 1 127
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 127 (CAST long   105 )
	.loc 1 127
// Line 127  105 
	.loc 1 127
	push 105
	pop  rax
	movsx rax, eax
	push rax
// Line 127 (CAST int   127 )
	.loc 1 127
// Line 127  127 
	.loc 1 127
	push 127
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000059
	mov  rax, 0
	call assert_expect
	jmp  .L000060
.L000059:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000060:
	push rax
	pop  rax
// Line 128 (CALL assert_expect ((CAST int   128 ):(CAST long   119 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))):) )
	.loc 1 128
// Line 128 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )))
	.loc 1 128
// Line 128 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))
	.loc 1 128
// Line 128 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )
	.loc 1 128
// Line 128 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))
	.loc 1 128
// Line 128 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )
	.loc 1 128
// Line 128 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 128
// Line 128 (] (ADDR (GVAR reg))  2 )
	.loc 1 128
// Line 128 (ADDR (GVAR reg))
	.loc 1 128
	lea  rax, reg[rip]
	push rax
// Line 128  2 
	.loc 1 128
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 128  4 
	.loc 1 128
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 128  2 
	.loc 1 128
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 128 (CAST long   119 )
	.loc 1 128
// Line 128  119 
	.loc 1 128
	push 119
	pop  rax
	movsx rax, eax
	push rax
// Line 128 (CAST int   128 )
	.loc 1 128
// Line 128  128 
	.loc 1 128
	push 128
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000061
	mov  rax, 0
	call assert_expect
	jmp  .L000062
.L000061:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000062:
	push rax
	pop  rax
// Line 130 (= (GVAR i)  0 )
	.loc 1 130
// Line 130  0 
	.loc 1 130
	push 0
	lea  rax, i[rip]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 139 (WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):))
	.loc 1 139
.L000063:
// Line 131 (<=  9  (GVAR i))
	.loc 1 131
// Line 131  9 
	.loc 1 131
	push 9
// Line 131 (GVAR i)
	.loc 1 131
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
	je   .L000064
// Line 139 (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)
	.loc 1 139
// Line 132 (= (GVAR j)  0 )
	.loc 1 132
// Line 132  0 
	.loc 1 132
	push 0
	lea  rax, j[rip]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 137 (WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):))
	.loc 1 137
.L000065:
// Line 133 (<=  7  (GVAR j))
	.loc 1 133
// Line 133  7 
	.loc 1 133
	push 7
// Line 133 (GVAR j)
	.loc 1 133
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
	je   .L000066
// Line 137 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)
	.loc 1 137
// Line 134 (= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j)))
	.loc 1 134
// Line 134 (+ (* (GVAR i)  10 ) (GVAR j))
	.loc 1 134
// Line 134 (* (GVAR i)  10 )
	.loc 1 134
// Line 134 (GVAR i)
	.loc 1 134
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 134  10 
	.loc 1 134
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 134 (GVAR j)
	.loc 1 134
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 134 (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))
	.loc 1 134
// Line 134 (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i))))
	.loc 1 134
// Line 134 (] (ADDR (GVAR a)) (GVAR i))
	.loc 1 134
// Line 134 (ADDR (GVAR a))
	.loc 1 134
	lea  rax, a[rip]
	push rax
// Line 134 (GVAR i)
	.loc 1 134
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 134 (GVAR j)
	.loc 1 134
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 135 (++ (= (GVAR j) (++ (GVAR j)  1 ))  1 )
	.loc 1 135
// Line 135 (= (GVAR j) (++ (GVAR j)  1 ))
	.loc 1 135
// Line 135 (++ (GVAR j)  1 )
	.loc 1 135
// Line 135 (GVAR j)
	.loc 1 135
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 135  1 
	.loc 1 135
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, j[rip]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 135  1 
	.loc 1 135
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000065
.L000066:
// Line 137 (++ (= (GVAR i) (++ (GVAR i)  1 ))  1 )
	.loc 1 137
// Line 137 (= (GVAR i) (++ (GVAR i)  1 ))
	.loc 1 137
// Line 137 (++ (GVAR i)  1 )
	.loc 1 137
// Line 137 (GVAR i)
	.loc 1 137
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 137  1 
	.loc 1 137
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, i[rip]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 137  1 
	.loc 1 137
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000063
.L000064:
// Line 139 (CALL assert_expect ((CAST int   139 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))):(CAST long   1 ):) )
	.loc 1 139
// Line 139 (CAST long   1 )
	.loc 1 139
// Line 139  1 
	.loc 1 139
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 139 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )))
	.loc 1 139
// Line 139 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))
	.loc 1 139
// Line 139 (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )
	.loc 1 139
// Line 139 (ADDR (DEREF (] (ADDR (GVAR a))  0 )))
	.loc 1 139
// Line 139 (] (ADDR (GVAR a))  0 )
	.loc 1 139
// Line 139 (ADDR (GVAR a))
	.loc 1 139
	lea  rax, a[rip]
	push rax
// Line 139  0 
	.loc 1 139
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 139  1 
	.loc 1 139
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 139 (CAST int   139 )
	.loc 1 139
// Line 139  139 
	.loc 1 139
	push 139
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000067
	mov  rax, 0
	call assert_expect
	jmp  .L000068
.L000067:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000068:
	push rax
	pop  rax
// Line 140 (CALL assert_expect ((CAST int   140 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))):(CAST long   97 ):) )
	.loc 1 140
// Line 140 (CAST long   97 )
	.loc 1 140
// Line 140  97 
	.loc 1 140
	push 97
	pop  rax
	movsx rax, eax
	push rax
// Line 140 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )))
	.loc 1 140
// Line 140 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))
	.loc 1 140
// Line 140 (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )
	.loc 1 140
// Line 140 (ADDR (DEREF (] (ADDR (GVAR a))  9 )))
	.loc 1 140
// Line 140 (] (ADDR (GVAR a))  9 )
	.loc 1 140
// Line 140 (ADDR (GVAR a))
	.loc 1 140
	lea  rax, a[rip]
	push rax
// Line 140  9 
	.loc 1 140
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 140  7 
	.loc 1 140
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 140 (CAST int   140 )
	.loc 1 140
// Line 140  140 
	.loc 1 140
	push 140
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000069
	mov  rax, 0
	call assert_expect
	jmp  .L000070
.L000069:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000070:
	push rax
	pop  rax
// Line 141 (CALL assert_expect ((CAST int   141 ):(CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))):(CAST long   84 ):) )
	.loc 1 141
// Line 141 (CAST long   84 )
	.loc 1 141
// Line 141  84 
	.loc 1 141
	push 84
	pop  rax
	movsx rax, eax
	push rax
// Line 141 (CAST long  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )))
	.loc 1 141
// Line 141 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))
	.loc 1 141
// Line 141 (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )
	.loc 1 141
// Line 141 (ADDR (DEREF (] (ADDR (GVAR a))  8 )))
	.loc 1 141
// Line 141 (] (ADDR (GVAR a))  8 )
	.loc 1 141
// Line 141 (ADDR (GVAR a))
	.loc 1 141
	lea  rax, a[rip]
	push rax
// Line 141  8 
	.loc 1 141
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 141  4 
	.loc 1 141
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 141 (CAST int   141 )
	.loc 1 141
// Line 141  141 
	.loc 1 141
	push 141
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000071
	mov  rax, 0
	call assert_expect
	jmp  .L000072
.L000071:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000072:
	push rax
	pop  rax
// Line 142 (RETURN  0 )
	.loc 1 142
// Line 142  0 
	.loc 1 142
	push 0
	pop  rax
	jmp  .L.return.array_global
.L.return.array_global:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global string
// Line 145 FDECL string func ( ) int  max_offset:63
//    
//    (BLOCK(= (LVAR 40) (ADDR  "Hello world!\n" )):(CALL printf ((CAST * char  (ADDR  "%s" )):(LVAR 40):) ):(= (LVAR 63)  "\tHello---" ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (LVAR 63)):) ):(CALL assert_expect ((CAST int   152 ):(CAST long   9 ):(CAST long  (DEREF (] (ADDR (LVAR 63))  15 ))):) ):(CALL assert_expect ((CAST int   154 ):(CAST long   119 ):(CAST long   119 ):) ):(CALL assert_expect ((CAST int   155 ):(CAST long   119 ):(CAST long  (DEREF (] (LVAR 40)  6 ))):) ):))
	.loc 1 145
string:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 146 (= (LVAR 40) (ADDR  "Hello world!\n" ))
	.loc 1 146
// Line 146 (ADDR  "Hello world!\n" )
	.loc 1 146
	lea  rax, .LS000024[rip]
	push rax
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 147 (CALL printf ((CAST * char  (ADDR  "%s" )):(LVAR 40):) )
	.loc 1 147
// Line 147 (LVAR 40)
	.loc 1 147
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 147 (CAST * char  (ADDR  "%s" ))
	.loc 1 147
// Line 147 (ADDR  "%s" )
	.loc 1 147
	lea  rax, .LS000025[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000073
	mov  rax, 0
	call printf
	jmp  .L000074
.L000073:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000074:
	push rax
	pop  rax
// Line 148 (= (LVAR 63)  "\tHello---" )
	.loc 1 148
	mov  DWORD PTR [rbp - 63], 1818576905
	mov  DWORD PTR [rbp - 59], 757952364
	mov  DWORD PTR [rbp - 55], 1919907629
	mov  DWORD PTR [rbp - 51], 153904236
	mov  DWORD PTR [rbp - 47], 1767991137
	mov  BYTE PTR [rbp - 43], 110
	mov  BYTE PTR [rbp - 42], 10
	mov  BYTE PTR [rbp - 41], 0
	push rdi
	pop  rax
// Line 151 (CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (LVAR 63)):) )
	.loc 1 151
// Line 151 (ADDR (LVAR 63))
	.loc 1 151
	lea  rax, [rbp - 63]
	push rax
// Line 151 (CAST * char  (ADDR  "%s" ))
	.loc 1 151
// Line 151 (ADDR  "%s" )
	.loc 1 151
	lea  rax, .LS000027[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000075
	mov  rax, 0
	call printf
	jmp  .L000076
.L000075:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000076:
	push rax
	pop  rax
// Line 152 (CALL assert_expect ((CAST int   152 ):(CAST long   9 ):(CAST long  (DEREF (] (ADDR (LVAR 63))  15 ))):) )
	.loc 1 152
// Line 152 (CAST long  (DEREF (] (ADDR (LVAR 63))  15 )))
	.loc 1 152
// Line 152 (DEREF (] (ADDR (LVAR 63))  15 ))
	.loc 1 152
// Line 152 (] (ADDR (LVAR 63))  15 )
	.loc 1 152
// Line 152 (ADDR (LVAR 63))
	.loc 1 152
	lea  rax, [rbp - 63]
	push rax
// Line 152  15 
	.loc 1 152
	push 15
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 152 (CAST long   9 )
	.loc 1 152
// Line 152  9 
	.loc 1 152
	push 9
	pop  rax
	movsx rax, eax
	push rax
// Line 152 (CAST int   152 )
	.loc 1 152
// Line 152  152 
	.loc 1 152
	push 152
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
// Line 154 (CALL assert_expect ((CAST int   154 ):(CAST long   119 ):(CAST long   119 ):) )
	.loc 1 154
// Line 154 (CAST long   119 )
	.loc 1 154
// Line 154  119 
	.loc 1 154
	push 119
	pop  rax
	movsx rax, eax
	push rax
// Line 154 (CAST long   119 )
	.loc 1 154
// Line 154  119 
	.loc 1 154
	push 119
	pop  rax
	movsx rax, eax
	push rax
// Line 154 (CAST int   154 )
	.loc 1 154
// Line 154  154 
	.loc 1 154
	push 154
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000079
	mov  rax, 0
	call assert_expect
	jmp  .L000080
.L000079:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000080:
	push rax
	pop  rax
// Line 155 (CALL assert_expect ((CAST int   155 ):(CAST long   119 ):(CAST long  (DEREF (] (LVAR 40)  6 ))):) )
	.loc 1 155
// Line 155 (CAST long  (DEREF (] (LVAR 40)  6 )))
	.loc 1 155
// Line 155 (DEREF (] (LVAR 40)  6 ))
	.loc 1 155
// Line 155 (] (LVAR 40)  6 )
	.loc 1 155
// Line 155 (LVAR 40)
	.loc 1 155
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 155  6 
	.loc 1 155
	push 6
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 155 (CAST long   119 )
	.loc 1 155
// Line 155  119 
	.loc 1 155
	push 119
	pop  rax
	movsx rax, eax
	push rax
// Line 155 (CAST int   155 )
	.loc 1 155
// Line 155  155 
	.loc 1 155
	push 155
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000081
	mov  rax, 0
	call assert_expect
	jmp  .L000082
.L000081:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000082:
	push rax
	pop  rax
.L.return.string:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global block_scope
// Line 158 FDECL block_scope func ( ) void  max_offset:48
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ((CAST int   160 ):(CAST long   1 ):(CAST long  (GVAR i)):) ):(= (LVAR 36)  5 ):(CALL assert_expect ((CAST int   162 ):(CAST long   5 ):(CAST long  (LVAR 36)):) ):(BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   169 ):(CAST long   4 ):(CAST long  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   171 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):):(CALL assert_expect ((CAST int   173 ):(CAST long   2 ):(CAST long  (LVAR 40)):) ):):(CALL assert_expect ((CAST int   175 ):(CAST long   5 ):(CAST long  (LVAR 36)):) ):))
	.loc 1 158
block_scope:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 159 (= (GVAR i)  1 )
	.loc 1 159
// Line 159  1 
	.loc 1 159
	push 1
	lea  rax, i[rip]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 160 (CALL assert_expect ((CAST int   160 ):(CAST long   1 ):(CAST long  (GVAR i)):) )
	.loc 1 160
// Line 160 (CAST long  (GVAR i))
	.loc 1 160
// Line 160 (GVAR i)
	.loc 1 160
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 160 (CAST long   1 )
	.loc 1 160
// Line 160  1 
	.loc 1 160
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 160 (CAST int   160 )
	.loc 1 160
// Line 160  160 
	.loc 1 160
	push 160
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000083
	mov  rax, 0
	call assert_expect
	jmp  .L000084
.L000083:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000084:
	push rax
	pop  rax
// Line 161 (= (LVAR 36)  5 )
	.loc 1 161
// Line 161  5 
	.loc 1 161
	push 5
	lea  rax, [rbp - 36]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 162 (CALL assert_expect ((CAST int   162 ):(CAST long   5 ):(CAST long  (LVAR 36)):) )
	.loc 1 162
// Line 162 (CAST long  (LVAR 36))
	.loc 1 162
// Line 162 (LVAR 36)
	.loc 1 162
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 162 (CAST long   5 )
	.loc 1 162
// Line 162  5 
	.loc 1 162
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 162 (CAST int   162 )
	.loc 1 162
// Line 162  162 
	.loc 1 162
	push 162
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000085
	mov  rax, 0
	call assert_expect
	jmp  .L000086
.L000085:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000086:
	push rax
	pop  rax
// Line 175 (BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   169 ):(CAST long   4 ):(CAST long  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   171 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):):(CALL assert_expect ((CAST int   173 ):(CAST long   2 ):(CAST long  (LVAR 40)):) ):)
	.loc 1 175
// Line 164 (= (LVAR 40)  2 )
	.loc 1 164
// Line 164  2 
	.loc 1 164
	push 2
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 173 (BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   169 ):(CAST long   4 ):(CAST long  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   171 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):)
	.loc 1 173
// Line 166 (= (LVAR 44)  3 )
	.loc 1 166
// Line 166  3 
	.loc 1 166
	push 3
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 171 (BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   169 ):(CAST long   4 ):(CAST long  (LVAR 48)):) ):)
	.loc 1 171
// Line 168 (= (LVAR 48)  4 )
	.loc 1 168
// Line 168  4 
	.loc 1 168
	push 4
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 169 (CALL assert_expect ((CAST int   169 ):(CAST long   4 ):(CAST long  (LVAR 48)):) )
	.loc 1 169
// Line 169 (CAST long  (LVAR 48))
	.loc 1 169
// Line 169 (LVAR 48)
	.loc 1 169
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 169 (CAST long   4 )
	.loc 1 169
// Line 169  4 
	.loc 1 169
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 169 (CAST int   169 )
	.loc 1 169
// Line 169  169 
	.loc 1 169
	push 169
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000087
	mov  rax, 0
	call assert_expect
	jmp  .L000088
.L000087:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000088:
	push rax
	pop  rax
// Line 171 (CALL assert_expect ((CAST int   171 ):(CAST long   3 ):(CAST long  (LVAR 44)):) )
	.loc 1 171
// Line 171 (CAST long  (LVAR 44))
	.loc 1 171
// Line 171 (LVAR 44)
	.loc 1 171
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 171 (CAST long   3 )
	.loc 1 171
// Line 171  3 
	.loc 1 171
	push 3
	pop  rax
	movsx rax, eax
	push rax
// Line 171 (CAST int   171 )
	.loc 1 171
// Line 171  171 
	.loc 1 171
	push 171
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000089
	mov  rax, 0
	call assert_expect
	jmp  .L000090
.L000089:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000090:
	push rax
	pop  rax
// Line 173 (CALL assert_expect ((CAST int   173 ):(CAST long   2 ):(CAST long  (LVAR 40)):) )
	.loc 1 173
// Line 173 (CAST long  (LVAR 40))
	.loc 1 173
// Line 173 (LVAR 40)
	.loc 1 173
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 173 (CAST long   2 )
	.loc 1 173
// Line 173  2 
	.loc 1 173
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 173 (CAST int   173 )
	.loc 1 173
// Line 173  173 
	.loc 1 173
	push 173
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000091
	mov  rax, 0
	call assert_expect
	jmp  .L000092
.L000091:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000092:
	push rax
	pop  rax
// Line 175 (CALL assert_expect ((CAST int   175 ):(CAST long   5 ):(CAST long  (LVAR 36)):) )
	.loc 1 175
// Line 175 (CAST long  (LVAR 36))
	.loc 1 175
// Line 175 (LVAR 36)
	.loc 1 175
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 175 (CAST long   5 )
	.loc 1 175
// Line 175  5 
	.loc 1 175
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 175 (CAST int   175 )
	.loc 1 175
// Line 175  175 
	.loc 1 175
	push 175
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000093
	mov  rax, 0
	call assert_expect
	jmp  .L000094
.L000093:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000094:
	push rax
	pop  rax
.L.return.block_scope:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global for_
// Line 178 FDECL for_ func ( ) void  max_offset:44
//    
//    (BLOCK(= (LVAR 36)  100 ):(CALL assert_expect ((CAST int   180 ):(CAST long   100 ):(CAST long  (LVAR 36)):) ):(FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   183 ):(CAST long   12 ):(CAST long  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   185 ):(CAST long   9 ):(CAST long  (LVAR 44)):) ):)):(CALL assert_expect ((CAST int   187 ):(CAST long   100 ):(CAST long  (LVAR 36)):) ):(= (LVAR 36)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)):(CALL assert_expect ((CAST int   193 ):(CAST long   6 ):(CAST long  (LVAR 36)):) ):))
	.loc 1 178
for_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 179 (= (LVAR 36)  100 )
	.loc 1 179
// Line 179  100 
	.loc 1 179
	push 100
	lea  rax, [rbp - 36]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 180 (CALL assert_expect ((CAST int   180 ):(CAST long   100 ):(CAST long  (LVAR 36)):) )
	.loc 1 180
// Line 180 (CAST long  (LVAR 36))
	.loc 1 180
// Line 180 (LVAR 36)
	.loc 1 180
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 180 (CAST long   100 )
	.loc 1 180
// Line 180  100 
	.loc 1 180
	push 100
	pop  rax
	movsx rax, eax
	push rax
// Line 180 (CAST int   180 )
	.loc 1 180
// Line 180  180 
	.loc 1 180
	push 180
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000095
	mov  rax, 0
	call assert_expect
	jmp  .L000096
.L000095:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000096:
	push rax
	pop  rax
// Line 181 (FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   183 ):(CAST long   12 ):(CAST long  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   185 ):(CAST long   9 ):(CAST long  (LVAR 44)):) ):))
	.loc 1 181
// Line 181 (= (LVAR 40)  10 )
	.loc 1 181
// Line 181  10 
	.loc 1 181
	push 10
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000099:
// Line 181 (<  100  (LVAR 40))
	.loc 1 181
// Line 181  100 
	.loc 1 181
	push 100
// Line 181 (LVAR 40)
	.loc 1 181
	lea  rax, [rbp - 40]
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
	je   .L000098
// Line 187 (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   183 ):(CAST long   12 ):(CAST long  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   185 ):(CAST long   9 ):(CAST long  (LVAR 44)):) ):)
	.loc 1 187
// Line 183 (IF (== (LVAR 40)  15 ) BREAK  NULL )
	.loc 1 183
// Line 182 (== (LVAR 40)  15 )
	.loc 1 182
// Line 182 (LVAR 40)
	.loc 1 182
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 182  15 
	.loc 1 182
	push 15
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000100
// Line 182 BREAK 
	.loc 1 182
	jmp  .L000098
	jmp  .L000101
.L000100:
.L000101:
// Line 184 (IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   183 ):(CAST long   12 ):(CAST long  (LVAR 40)):) ) NULL )
	.loc 1 184
// Line 183 (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 ))
	.loc 1 183
// Line 183 (LVAR 40)
	.loc 1 183
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 183 (* (/ (LVAR 40)  3 )  3 )
	.loc 1 183
// Line 183 (/ (LVAR 40)  3 )
	.loc 1 183
// Line 183 (LVAR 40)
	.loc 1 183
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 183  3 
	.loc 1 183
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 183  3 
	.loc 1 183
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
	je   .L000102
// Line 183 (CALL assert_expect ((CAST int   183 ):(CAST long   12 ):(CAST long  (LVAR 40)):) )
	.loc 1 183
// Line 183 (CAST long  (LVAR 40))
	.loc 1 183
// Line 183 (LVAR 40)
	.loc 1 183
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 183 (CAST long   12 )
	.loc 1 183
// Line 183  12 
	.loc 1 183
	push 12
	pop  rax
	movsx rax, eax
	push rax
// Line 183 (CAST int   183 )
	.loc 1 183
// Line 183  183 
	.loc 1 183
	push 183
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
	jmp  .L000103
.L000102:
.L000103:
// Line 184 (= (LVAR 44)  9 )
	.loc 1 184
// Line 184  9 
	.loc 1 184
	push 9
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 185 (CALL assert_expect ((CAST int   185 ):(CAST long   9 ):(CAST long  (LVAR 44)):) )
	.loc 1 185
// Line 185 (CAST long  (LVAR 44))
	.loc 1 185
// Line 185 (LVAR 44)
	.loc 1 185
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 185 (CAST long   9 )
	.loc 1 185
// Line 185  9 
	.loc 1 185
	push 9
	pop  rax
	movsx rax, eax
	push rax
// Line 185 (CAST int   185 )
	.loc 1 185
// Line 185  185 
	.loc 1 185
	push 185
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
.L000097:
// Line 181 (= (LVAR 40) (+= (LVAR 40)  1 ))
	.loc 1 181
// Line 181 (+= (LVAR 40)  1 )
	.loc 1 181
// Line 181 (LVAR 40)
	.loc 1 181
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 181  1 
	.loc 1 181
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000099
.L000098:
// Line 187 (CALL assert_expect ((CAST int   187 ):(CAST long   100 ):(CAST long  (LVAR 36)):) )
	.loc 1 187
// Line 187 (CAST long  (LVAR 36))
	.loc 1 187
// Line 187 (LVAR 36)
	.loc 1 187
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 187 (CAST long   100 )
	.loc 1 187
// Line 187  100 
	.loc 1 187
	push 100
	pop  rax
	movsx rax, eax
	push rax
// Line 187 (CAST int   187 )
	.loc 1 187
// Line 187  187 
	.loc 1 187
	push 187
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
// Line 188 (= (LVAR 36)  0 )
	.loc 1 188
// Line 188  0 
	.loc 1 188
	push 0
	lea  rax, [rbp - 36]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 189 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):))
	.loc 1 189
.L000112:
// Line 189  1 
	.loc 1 189
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000111
// Line 193 (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)
	.loc 1 193
// Line 191 (IF (== (LVAR 36)  6 ) BREAK  NULL )
	.loc 1 191
// Line 190 (== (LVAR 36)  6 )
	.loc 1 190
// Line 190 (LVAR 36)
	.loc 1 190
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 190  6 
	.loc 1 190
	push 6
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000113
// Line 190 BREAK 
	.loc 1 190
	jmp  .L000111
	jmp  .L000114
.L000113:
.L000114:
// Line 191 (= (LVAR 36) (+ (LVAR 36)  1 ))
	.loc 1 191
// Line 191 (+ (LVAR 36)  1 )
	.loc 1 191
// Line 191 (LVAR 36)
	.loc 1 191
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 191  1 
	.loc 1 191
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 36]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
.L000110:
	jmp  .L000112
.L000111:
// Line 193 (CALL assert_expect ((CAST int   193 ):(CAST long   6 ):(CAST long  (LVAR 36)):) )
	.loc 1 193
// Line 193 (CAST long  (LVAR 36))
	.loc 1 193
// Line 193 (LVAR 36)
	.loc 1 193
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 193 (CAST long   6 )
	.loc 1 193
// Line 193  6 
	.loc 1 193
	push 6
	pop  rax
	movsx rax, eax
	push rax
// Line 193 (CAST int   193 )
	.loc 1 193
// Line 193  193 
	.loc 1 193
	push 193
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000115
	mov  rax, 0
	call assert_expect
	jmp  .L000116
.L000115:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000116:
	push rax
	pop  rax
.L.return.for_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global switch_
// Line 196 FDECL switch_ func ( int  s ) int  max_offset:44
//    (LVAR 36) 
//    (BLOCK(SWITCH cond: (LVAR 36) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):)):(RETURN (LVAR 40)):))
	.loc 1 196
switch_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 36], edi
// Line 198 (SWITCH cond: (LVAR 36) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):))
	.loc 1 198
	lea  rax, [rbp - 44]
	push rax
// Line 198 (LVAR 36)
	.loc 1 198
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 213 (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):)
	.loc 1 213
// Line 199 (CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :))
	.loc 1 199
// Line 199  1 
	.loc 1 199
	push 1
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000118
// Line 202 (CASE cond: 2  body:(BLOCK))
	.loc 1 202
// Line 202  2 
	.loc 1 202
	push 2
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000119
// Line 203 (CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):))
	.loc 1 203
// Line 203  3 
	.loc 1 203
	push 3
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000120
// Line 205 (CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):))
	.loc 1 205
// Line 205  4 
	.loc 1 205
	push 4
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000121
// Line 208 (CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):))
	.loc 1 208
// Line 208  5 
	.loc 1 208
	push 5
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000122
// Line 210 (DEFAULT body:(= (LVAR 40)  15 ))
	.loc 1 210
	jmp  .L000123
	jmp  .L000117
.L000118:
// Line 200 (BLOCK(= (LVAR 40)  11 ):BREAK :)
	.loc 1 200
// Line 200 (= (LVAR 40)  11 )
	.loc 1 200
// Line 200  11 
	.loc 1 200
	push 11
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 201 BREAK 
	.loc 1 201
	jmp  .L000117
.L000119:
// Line 203 (BLOCK)
	.loc 1 203
.L000120:
// Line 204 (BLOCK(= (LVAR 40)  12 ):)
	.loc 1 204
// Line 204 (= (LVAR 40)  12 )
	.loc 1 204
// Line 204  12 
	.loc 1 204
	push 12
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
.L000121:
// Line 206 (BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)
	.loc 1 206
// Line 206 (= (LVAR 40)  13 )
	.loc 1 206
// Line 206  13 
	.loc 1 206
	push 13
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 207 (RETURN (LVAR 40))
	.loc 1 207
// Line 207 (LVAR 40)
	.loc 1 207
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.switch_
.L000122:
// Line 209 (BLOCK(= (LVAR 40)  14 ):)
	.loc 1 209
// Line 209 (= (LVAR 40)  14 )
	.loc 1 209
// Line 209  14 
	.loc 1 209
	push 14
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
.L000123:
// Line 211 (= (LVAR 40)  15 )
	.loc 1 211
// Line 211  15 
	.loc 1 211
	push 15
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
.L000117:
// Line 213 (RETURN (LVAR 40))
	.loc 1 213
// Line 213 (LVAR 40)
	.loc 1 213
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.switch_
.L.return.switch_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global switch2_
// Line 216 FDECL switch2_ func ( char  s ) int  max_offset:41
//    (LVAR 33) 
//    (BLOCK(SWITCH cond: (LVAR 33) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):)):(RETURN (LVAR 37)):))
	.loc 1 216
switch2_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 33], dil
// Line 218 (SWITCH cond: (LVAR 33) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):))
	.loc 1 218
	lea  rax, [rbp - 41]
	push rax
// Line 218 (LVAR 33)
	.loc 1 218
	lea  rax, [rbp - 33]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 229 (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):)
	.loc 1 229
// Line 219 (CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :))
	.loc 1 219
// Line 219  97 
	.loc 1 219
	push 97
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000125
// Line 222 (CASE cond: 98  body:(BLOCK))
	.loc 1 222
// Line 222  98 
	.loc 1 222
	push 98
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000126
// Line 223 (CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :))
	.loc 1 223
// Line 223  99 
	.loc 1 223
	push 99
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000127
// Line 226 (DEFAULT body:(= (LVAR 37)  15 ))
	.loc 1 226
	jmp  .L000128
	jmp  .L000124
.L000125:
// Line 220 (BLOCK(= (LVAR 37)  11 ):BREAK :)
	.loc 1 220
// Line 220 (= (LVAR 37)  11 )
	.loc 1 220
// Line 220  11 
	.loc 1 220
	push 11
	lea  rax, [rbp - 37]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 221 BREAK 
	.loc 1 221
	jmp  .L000124
.L000126:
// Line 223 (BLOCK)
	.loc 1 223
.L000127:
// Line 224 (BLOCK(= (LVAR 37)  12 ):BREAK :)
	.loc 1 224
// Line 224 (= (LVAR 37)  12 )
	.loc 1 224
// Line 224  12 
	.loc 1 224
	push 12
	lea  rax, [rbp - 37]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 225 BREAK 
	.loc 1 225
	jmp  .L000124
.L000128:
// Line 227 (= (LVAR 37)  15 )
	.loc 1 227
// Line 227  15 
	.loc 1 227
	push 15
	lea  rax, [rbp - 37]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
.L000124:
// Line 229 (RETURN (LVAR 37))
	.loc 1 229
// Line 229 (LVAR 37)
	.loc 1 229
	lea  rax, [rbp - 37]
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.switch2_
.L.return.switch2_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global list_
// Line 258 FDECL list_ func ( ) void  max_offset:56
//    
//    (BLOCK(= (LVAR 36)  16 ):(= (LVAR 44)  0 ):(FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)):(CALL assert_expect ((CAST int   267 ):(CAST long   5 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   269 ):(CAST long   4 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   271 ):(CAST long   3 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   273 ):(CAST long   2 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   275 ):(CAST long   1 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   277 ):(CAST long   0 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ((CAST int   280 ):(CAST long   777 ):(CAST long  (MEMBER (GVAR def) payload 0)):) ):))
	.loc 1 258
list_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 259 (= (LVAR 36)  16 )
	.loc 1 259
// Line 259  16 
	.loc 1 259
	push 16
	lea  rax, [rbp - 36]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 260 (= (LVAR 44)  0 )
	.loc 1 260
// Line 260  0 
	.loc 1 260
	push 0
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 261 (FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):))
	.loc 1 261
// Line 261 (= (LVAR 48)  0 )
	.loc 1 261
// Line 261  0 
	.loc 1 261
	push 0
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000131:
// Line 261 (<  6  (LVAR 48))
	.loc 1 261
// Line 261  6 
	.loc 1 261
	push 6
// Line 261 (LVAR 48)
	.loc 1 261
	lea  rax, [rbp - 48]
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
	je   .L000130
// Line 267 (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)
	.loc 1 267
// Line 262 (= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) ))
	.loc 1 262
// Line 262 (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )
	.loc 1 262
// Line 262 (CAST int  (LVAR 36))
	.loc 1 262
// Line 262 (LVAR 36)
	.loc 1 262
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 262 (CAST int   1 )
	.loc 1 262
// Line 262  1 
	.loc 1 262
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000132
	mov  rax, 0
	call calloc
	jmp  .L000133
.L000132:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000133:
	push rax
	lea  rax, [rbp - 56]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 263 (= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48))
	.loc 1 263
// Line 263 (LVAR 48)
	.loc 1 263
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 263 (LVAR 56)
	.loc 1 263
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 264 (= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44))
	.loc 1 264
// Line 264 (LVAR 44)
	.loc 1 264
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
// Line 264 (LVAR 56)
	.loc 1 264
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 265 (= (LVAR 44) (LVAR 56))
	.loc 1 265
// Line 265 (LVAR 56)
	.loc 1 265
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
.L000129:
// Line 261 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 261
// Line 261 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 261
// Line 261 (++ (LVAR 48)  1 )
	.loc 1 261
// Line 261 (LVAR 48)
	.loc 1 261
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 261  1 
	.loc 1 261
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 261  1 
	.loc 1 261
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000131
.L000130:
// Line 267 (CALL assert_expect ((CAST int   267 ):(CAST long   5 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 267
// Line 267 (CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 267
// Line 267 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 267
// Line 267 (LVAR 44)
	.loc 1 267
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 267 (CAST long   5 )
	.loc 1 267
// Line 267  5 
	.loc 1 267
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 267 (CAST int   267 )
	.loc 1 267
// Line 267  267 
	.loc 1 267
	push 267
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
// Line 268 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 268
// Line 268 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 268
// Line 268 (LVAR 44)
	.loc 1 268
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 269 (CALL assert_expect ((CAST int   269 ):(CAST long   4 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 269
// Line 269 (CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 269
// Line 269 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 269
// Line 269 (LVAR 44)
	.loc 1 269
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 269 (CAST long   4 )
	.loc 1 269
// Line 269  4 
	.loc 1 269
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 269 (CAST int   269 )
	.loc 1 269
// Line 269  269 
	.loc 1 269
	push 269
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
// Line 270 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 270
// Line 270 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 270
// Line 270 (LVAR 44)
	.loc 1 270
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 271 (CALL assert_expect ((CAST int   271 ):(CAST long   3 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 271
// Line 271 (CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 271
// Line 271 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 271
// Line 271 (LVAR 44)
	.loc 1 271
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 271 (CAST long   3 )
	.loc 1 271
// Line 271  3 
	.loc 1 271
	push 3
	pop  rax
	movsx rax, eax
	push rax
// Line 271 (CAST int   271 )
	.loc 1 271
// Line 271  271 
	.loc 1 271
	push 271
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
// Line 272 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 272
// Line 272 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 272
// Line 272 (LVAR 44)
	.loc 1 272
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 273 (CALL assert_expect ((CAST int   273 ):(CAST long   2 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 273
// Line 273 (CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 273
// Line 273 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 273
// Line 273 (LVAR 44)
	.loc 1 273
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 273 (CAST long   2 )
	.loc 1 273
// Line 273  2 
	.loc 1 273
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 273 (CAST int   273 )
	.loc 1 273
// Line 273  273 
	.loc 1 273
	push 273
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
// Line 274 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 274
// Line 274 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 274
// Line 274 (LVAR 44)
	.loc 1 274
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 275 (CALL assert_expect ((CAST int   275 ):(CAST long   1 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 275
// Line 275 (CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 275
// Line 275 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 275
// Line 275 (LVAR 44)
	.loc 1 275
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 275 (CAST long   1 )
	.loc 1 275
// Line 275  1 
	.loc 1 275
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 275 (CAST int   275 )
	.loc 1 275
// Line 275  275 
	.loc 1 275
	push 275
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
// Line 276 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 276
// Line 276 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 276
// Line 276 (LVAR 44)
	.loc 1 276
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 277 (CALL assert_expect ((CAST int   277 ):(CAST long   0 ):(CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 277
// Line 277 (CAST long  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 277
// Line 277 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 277
// Line 277 (LVAR 44)
	.loc 1 277
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 277 (CAST long   0 )
	.loc 1 277
// Line 277  0 
	.loc 1 277
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 277 (CAST int   277 )
	.loc 1 277
// Line 277  277 
	.loc 1 277
	push 277
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
// Line 279 (= (MEMBER (GVAR def) payload 0)  777 )
	.loc 1 279
// Line 279  777 
	.loc 1 279
	push 777
	lea  rax, def[rip]
	add  rax, 0
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 280 (CALL assert_expect ((CAST int   280 ):(CAST long   777 ):(CAST long  (MEMBER (GVAR def) payload 0)):) )
	.loc 1 280
// Line 280 (CAST long  (MEMBER (GVAR def) payload 0))
	.loc 1 280
// Line 280 (MEMBER (GVAR def) payload 0)
	.loc 1 280
	lea  rax, def[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 280 (CAST long   777 )
	.loc 1 280
// Line 280  777 
	.loc 1 280
	push 777
	pop  rax
	movsx rax, eax
	push rax
// Line 280 (CAST int   280 )
	.loc 1 280
// Line 280  280 
	.loc 1 280
	push 280
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000146
	mov  rax, 0
	call assert_expect
	jmp  .L000147
.L000146:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000147:
	push rax
	pop  rax
.L.return.list_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global struct_
// Line 283 FDECL struct_ func ( ) void  max_offset:832
//    
//    (BLOCK(CALL assert_expect ((CAST int   303 ):(CAST long   32 ):(CAST long   32 ):) ):(CALL assert_expect ((CAST int   304 ):(CAST long   8 ):(CAST long   8 ):) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ((CAST int   309 ):(CAST long   9 ):(CAST long  (MEMBER (GVAR pos) col 4)):) ):(CALL assert_expect ((CAST int   310 ):(CAST long   45 ):(CAST long  (MEMBER (GVAR pos) row 0)):) ):(CALL assert_expect ((CAST int   312 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   313 ):(CAST long   4 ):(CAST long   4 ):) ):(= (LVAR 368) (ADDR (LVAR 360))):(= (MEMBER (LVAR 360) size 136)  10 ):(= (MEMBER (LVAR 360) ch 140)  5 ):(= (MEMBER (LVAR 512) size 136)  195 ):(= (MEMBER (LVAR 512) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ((CAST int   324 ):(CAST long   10 ):(CAST long  (MEMBER (LVAR 360) size 136)):) ):(CALL assert_expect ((CAST int   325 ):(CAST long   5 ):(CAST long  (MEMBER (LVAR 360) ch 140)):) ):(= (MEMBER (LVAR 360) size 136)  110 ):(= (MEMBER (LVAR 360) ch 140)  79 ):(CALL assert_expect ((CAST int   328 ):(CAST long   110 ):(CAST long  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   329 ):(CAST long   79 ):(CAST long  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   330 ):(CAST long   110 ):(CAST long  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   331 ):(CAST long   79 ):(CAST long  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   332 ):(CAST long   195 ):(CAST long  (MEMBER (LVAR 512) size 136)):) ):(CALL assert_expect ((CAST int   333 ):(CAST long   39 ):(CAST long  (MEMBER (LVAR 512) ch 140)):) ):(CALL assert_expect ((CAST int   334 ):(CAST long   184 ):(CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)):) ):(CALL assert_expect ((CAST int   335 ):(CAST long   984 ):(CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)):) ):(= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512))):(= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360))):(CALL assert_expect ((CAST int   339 ):(CAST long   195 ):(CAST long  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  100 ):(= (MEMBER (LVAR 816) size 136)  500 ):(= (LVAR 816) (LVAR 672)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ((CAST int   347 ):(CAST long   100 ):(CAST long  (MEMBER (LVAR 816) size 136)):) ):(= (LVAR 816) (GVAR leaf_global)):(CALL assert_expect ((CAST int   349 ):(CAST long   700 ):(CAST long  (MEMBER (LVAR 816) size 136)):) ):(= (GVAR leaf_global) (LVAR 672)):(CALL assert_expect ((CAST int   351 ):(CAST long   100 ):(CAST long  (MEMBER (GVAR leaf_global) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  999 ):(= (LVAR 824) (ADDR (LVAR 672))):(= (LVAR 832) (ADDR (LVAR 816))):(= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))):(CALL assert_expect ((CAST int   356 ):(CAST long   999 ):(CAST long  (MEMBER (DEREF (LVAR 832)) size 136)):) ):(CALL assert_expect ((CAST int   357 ):(CAST long   999 ):(CAST long  (MEMBER (GVAR leaf_global) size 136)):) ):))
	.loc 1 283
struct_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 832
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 303 (CALL assert_expect ((CAST int   303 ):(CAST long   32 ):(CAST long   32 ):) )
	.loc 1 303
// Line 303 (CAST long   32 )
	.loc 1 303
// Line 303  32 
	.loc 1 303
	push 32
	pop  rax
	movsx rax, eax
	push rax
// Line 303 (CAST long   32 )
	.loc 1 303
// Line 303  32 
	.loc 1 303
	push 32
	pop  rax
	movsx rax, eax
	push rax
// Line 303 (CAST int   303 )
	.loc 1 303
// Line 303  303 
	.loc 1 303
	push 303
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000148
	mov  rax, 0
	call assert_expect
	jmp  .L000149
.L000148:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000149:
	push rax
	pop  rax
// Line 304 (CALL assert_expect ((CAST int   304 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 304
// Line 304 (CAST long   8 )
	.loc 1 304
// Line 304  8 
	.loc 1 304
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 304 (CAST long   8 )
	.loc 1 304
// Line 304  8 
	.loc 1 304
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 304 (CAST int   304 )
	.loc 1 304
// Line 304  304 
	.loc 1 304
	push 304
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000150
	mov  rax, 0
	call assert_expect
	jmp  .L000151
.L000150:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000151:
	push rax
	pop  rax
// Line 306 (= (MEMBER (GVAR pos) col 4)  9 )
	.loc 1 306
// Line 306  9 
	.loc 1 306
	push 9
	lea  rax, pos[rip]
	add  rax, 4
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 307 (= (MEMBER (GVAR pos) row 0)  45 )
	.loc 1 307
// Line 307  45 
	.loc 1 307
	push 45
	lea  rax, pos[rip]
	add  rax, 0
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 309 (CALL assert_expect ((CAST int   309 ):(CAST long   9 ):(CAST long  (MEMBER (GVAR pos) col 4)):) )
	.loc 1 309
// Line 309 (CAST long  (MEMBER (GVAR pos) col 4))
	.loc 1 309
// Line 309 (MEMBER (GVAR pos) col 4)
	.loc 1 309
	lea  rax, pos[rip]
	add  rax, 4
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 309 (CAST long   9 )
	.loc 1 309
// Line 309  9 
	.loc 1 309
	push 9
	pop  rax
	movsx rax, eax
	push rax
// Line 309 (CAST int   309 )
	.loc 1 309
// Line 309  309 
	.loc 1 309
	push 309
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000152
	mov  rax, 0
	call assert_expect
	jmp  .L000153
.L000152:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000153:
	push rax
	pop  rax
// Line 310 (CALL assert_expect ((CAST int   310 ):(CAST long   45 ):(CAST long  (MEMBER (GVAR pos) row 0)):) )
	.loc 1 310
// Line 310 (CAST long  (MEMBER (GVAR pos) row 0))
	.loc 1 310
// Line 310 (MEMBER (GVAR pos) row 0)
	.loc 1 310
	lea  rax, pos[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 310 (CAST long   45 )
	.loc 1 310
// Line 310  45 
	.loc 1 310
	push 45
	pop  rax
	movsx rax, eax
	push rax
// Line 310 (CAST int   310 )
	.loc 1 310
// Line 310  310 
	.loc 1 310
	push 310
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000154
	mov  rax, 0
	call assert_expect
	jmp  .L000155
.L000154:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000155:
	push rax
	pop  rax
// Line 312 (CALL assert_expect ((CAST int   312 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 312
// Line 312 (CAST long   4 )
	.loc 1 312
// Line 312  4 
	.loc 1 312
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 312 (CAST long   4 )
	.loc 1 312
// Line 312  4 
	.loc 1 312
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 312 (CAST int   312 )
	.loc 1 312
// Line 312  312 
	.loc 1 312
	push 312
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000156
	mov  rax, 0
	call assert_expect
	jmp  .L000157
.L000156:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000157:
	push rax
	pop  rax
// Line 313 (CALL assert_expect ((CAST int   313 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 313
// Line 313 (CAST long   4 )
	.loc 1 313
// Line 313  4 
	.loc 1 313
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 313 (CAST long   4 )
	.loc 1 313
// Line 313  4 
	.loc 1 313
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 313 (CAST int   313 )
	.loc 1 313
// Line 313  313 
	.loc 1 313
	push 313
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000158
	mov  rax, 0
	call assert_expect
	jmp  .L000159
.L000158:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000159:
	push rax
	pop  rax
// Line 316 (= (LVAR 368) (ADDR (LVAR 360)))
	.loc 1 316
// Line 316 (ADDR (LVAR 360))
	.loc 1 316
	lea  rax, [rbp - 360]
	push rax
	lea  rax, [rbp - 368]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 318 (= (MEMBER (LVAR 360) size 136)  10 )
	.loc 1 318
// Line 318  10 
	.loc 1 318
	push 10
	lea  rax, [rbp - 360]
	add  rax, 136
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 319 (= (MEMBER (LVAR 360) ch 140)  5 )
	.loc 1 319
// Line 319  5 
	.loc 1 319
	push 5
	lea  rax, [rbp - 360]
	add  rax, 140
	pop  rdi
	mov  [rax], dil
	push rdi
	pop  rax
// Line 320 (= (MEMBER (LVAR 512) size 136)  195 )
	.loc 1 320
// Line 320  195 
	.loc 1 320
	push 195
	lea  rax, [rbp - 512]
	add  rax, 136
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 321 (= (MEMBER (LVAR 512) ch 140)  39 )
	.loc 1 321
// Line 321  39 
	.loc 1 321
	push 39
	lea  rax, [rbp - 512]
	add  rax, 140
	pop  rdi
	mov  [rax], dil
	push rdi
	pop  rax
// Line 322 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 )
	.loc 1 322
// Line 322  184 
	.loc 1 322
	push 184
// Line 322 (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )
	.loc 1 322
// Line 322 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 322
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 322  0 
	.loc 1 322
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 323 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 )
	.loc 1 323
// Line 323  984 
	.loc 1 323
	push 984
// Line 323 (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )
	.loc 1 323
// Line 323 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 323
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 323  16 
	.loc 1 323
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 4
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 324 (CALL assert_expect ((CAST int   324 ):(CAST long   10 ):(CAST long  (MEMBER (LVAR 360) size 136)):) )
	.loc 1 324
// Line 324 (CAST long  (MEMBER (LVAR 360) size 136))
	.loc 1 324
// Line 324 (MEMBER (LVAR 360) size 136)
	.loc 1 324
	lea  rax, [rbp - 360]
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 324 (CAST long   10 )
	.loc 1 324
// Line 324  10 
	.loc 1 324
	push 10
	pop  rax
	movsx rax, eax
	push rax
// Line 324 (CAST int   324 )
	.loc 1 324
// Line 324  324 
	.loc 1 324
	push 324
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000160
	mov  rax, 0
	call assert_expect
	jmp  .L000161
.L000160:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000161:
	push rax
	pop  rax
// Line 325 (CALL assert_expect ((CAST int   325 ):(CAST long   5 ):(CAST long  (MEMBER (LVAR 360) ch 140)):) )
	.loc 1 325
// Line 325 (CAST long  (MEMBER (LVAR 360) ch 140))
	.loc 1 325
// Line 325 (MEMBER (LVAR 360) ch 140)
	.loc 1 325
	lea  rax, [rbp - 360]
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 325 (CAST long   5 )
	.loc 1 325
// Line 325  5 
	.loc 1 325
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 325 (CAST int   325 )
	.loc 1 325
// Line 325  325 
	.loc 1 325
	push 325
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000162
	mov  rax, 0
	call assert_expect
	jmp  .L000163
.L000162:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000163:
	push rax
	pop  rax
// Line 326 (= (MEMBER (LVAR 360) size 136)  110 )
	.loc 1 326
// Line 326  110 
	.loc 1 326
	push 110
	lea  rax, [rbp - 360]
	add  rax, 136
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 327 (= (MEMBER (LVAR 360) ch 140)  79 )
	.loc 1 327
// Line 327  79 
	.loc 1 327
	push 79
	lea  rax, [rbp - 360]
	add  rax, 140
	pop  rdi
	mov  [rax], dil
	push rdi
	pop  rax
// Line 328 (CALL assert_expect ((CAST int   328 ):(CAST long   110 ):(CAST long  (MEMBER (DEREF (LVAR 368)) size 136)):) )
	.loc 1 328
// Line 328 (CAST long  (MEMBER (DEREF (LVAR 368)) size 136))
	.loc 1 328
// Line 328 (MEMBER (DEREF (LVAR 368)) size 136)
	.loc 1 328
// Line 328 (LVAR 368)
	.loc 1 328
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 328 (CAST long   110 )
	.loc 1 328
// Line 328  110 
	.loc 1 328
	push 110
	pop  rax
	movsx rax, eax
	push rax
// Line 328 (CAST int   328 )
	.loc 1 328
// Line 328  328 
	.loc 1 328
	push 328
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000164
	mov  rax, 0
	call assert_expect
	jmp  .L000165
.L000164:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000165:
	push rax
	pop  rax
// Line 329 (CALL assert_expect ((CAST int   329 ):(CAST long   79 ):(CAST long  (MEMBER (DEREF (LVAR 368)) ch 140)):) )
	.loc 1 329
// Line 329 (CAST long  (MEMBER (DEREF (LVAR 368)) ch 140))
	.loc 1 329
// Line 329 (MEMBER (DEREF (LVAR 368)) ch 140)
	.loc 1 329
// Line 329 (LVAR 368)
	.loc 1 329
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 329 (CAST long   79 )
	.loc 1 329
// Line 329  79 
	.loc 1 329
	push 79
	pop  rax
	movsx rax, eax
	push rax
// Line 329 (CAST int   329 )
	.loc 1 329
// Line 329  329 
	.loc 1 329
	push 329
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000166
	mov  rax, 0
	call assert_expect
	jmp  .L000167
.L000166:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000167:
	push rax
	pop  rax
// Line 330 (CALL assert_expect ((CAST int   330 ):(CAST long   110 ):(CAST long  (MEMBER (DEREF (LVAR 368)) size 136)):) )
	.loc 1 330
// Line 330 (CAST long  (MEMBER (DEREF (LVAR 368)) size 136))
	.loc 1 330
// Line 330 (MEMBER (DEREF (LVAR 368)) size 136)
	.loc 1 330
// Line 330 (LVAR 368)
	.loc 1 330
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 330 (CAST long   110 )
	.loc 1 330
// Line 330  110 
	.loc 1 330
	push 110
	pop  rax
	movsx rax, eax
	push rax
// Line 330 (CAST int   330 )
	.loc 1 330
// Line 330  330 
	.loc 1 330
	push 330
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000168
	mov  rax, 0
	call assert_expect
	jmp  .L000169
.L000168:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000169:
	push rax
	pop  rax
// Line 331 (CALL assert_expect ((CAST int   331 ):(CAST long   79 ):(CAST long  (MEMBER (DEREF (LVAR 368)) ch 140)):) )
	.loc 1 331
// Line 331 (CAST long  (MEMBER (DEREF (LVAR 368)) ch 140))
	.loc 1 331
// Line 331 (MEMBER (DEREF (LVAR 368)) ch 140)
	.loc 1 331
// Line 331 (LVAR 368)
	.loc 1 331
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 331 (CAST long   79 )
	.loc 1 331
// Line 331  79 
	.loc 1 331
	push 79
	pop  rax
	movsx rax, eax
	push rax
// Line 331 (CAST int   331 )
	.loc 1 331
// Line 331  331 
	.loc 1 331
	push 331
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000170
	mov  rax, 0
	call assert_expect
	jmp  .L000171
.L000170:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000171:
	push rax
	pop  rax
// Line 332 (CALL assert_expect ((CAST int   332 ):(CAST long   195 ):(CAST long  (MEMBER (LVAR 512) size 136)):) )
	.loc 1 332
// Line 332 (CAST long  (MEMBER (LVAR 512) size 136))
	.loc 1 332
// Line 332 (MEMBER (LVAR 512) size 136)
	.loc 1 332
	lea  rax, [rbp - 512]
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 332 (CAST long   195 )
	.loc 1 332
// Line 332  195 
	.loc 1 332
	push 195
	pop  rax
	movsx rax, eax
	push rax
// Line 332 (CAST int   332 )
	.loc 1 332
// Line 332  332 
	.loc 1 332
	push 332
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000172
	mov  rax, 0
	call assert_expect
	jmp  .L000173
.L000172:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000173:
	push rax
	pop  rax
// Line 333 (CALL assert_expect ((CAST int   333 ):(CAST long   39 ):(CAST long  (MEMBER (LVAR 512) ch 140)):) )
	.loc 1 333
// Line 333 (CAST long  (MEMBER (LVAR 512) ch 140))
	.loc 1 333
// Line 333 (MEMBER (LVAR 512) ch 140)
	.loc 1 333
	lea  rax, [rbp - 512]
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 333 (CAST long   39 )
	.loc 1 333
// Line 333  39 
	.loc 1 333
	push 39
	pop  rax
	movsx rax, eax
	push rax
// Line 333 (CAST int   333 )
	.loc 1 333
// Line 333  333 
	.loc 1 333
	push 333
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000174
	mov  rax, 0
	call assert_expect
	jmp  .L000175
.L000174:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000175:
	push rax
	pop  rax
// Line 334 (CALL assert_expect ((CAST int   334 ):(CAST long   184 ):(CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)):) )
	.loc 1 334
// Line 334 (CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0))
	.loc 1 334
// Line 334 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)
	.loc 1 334
// Line 334 (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )
	.loc 1 334
// Line 334 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 334
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 334  0 
	.loc 1 334
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 334 (CAST long   184 )
	.loc 1 334
// Line 334  184 
	.loc 1 334
	push 184
	pop  rax
	movsx rax, eax
	push rax
// Line 334 (CAST int   334 )
	.loc 1 334
// Line 334  334 
	.loc 1 334
	push 334
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000176
	mov  rax, 0
	call assert_expect
	jmp  .L000177
.L000176:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000177:
	push rax
	pop  rax
// Line 335 (CALL assert_expect ((CAST int   335 ):(CAST long   984 ):(CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)):) )
	.loc 1 335
// Line 335 (CAST long  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4))
	.loc 1 335
// Line 335 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)
	.loc 1 335
// Line 335 (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )
	.loc 1 335
// Line 335 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 335
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 335  16 
	.loc 1 335
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 335 (CAST long   984 )
	.loc 1 335
// Line 335  984 
	.loc 1 335
	push 984
	pop  rax
	movsx rax, eax
	push rax
// Line 335 (CAST int   335 )
	.loc 1 335
// Line 335  335 
	.loc 1 335
	push 335
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000178
	mov  rax, 0
	call assert_expect
	jmp  .L000179
.L000178:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000179:
	push rax
	pop  rax
// Line 337 (= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512)))
	.loc 1 337
// Line 337 (ADDR (LVAR 512))
	.loc 1 337
	lea  rax, [rbp - 512]
	push rax
	lea  rax, [rbp - 528]
	add  rax, 8
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 338 (= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360)))
	.loc 1 338
// Line 338 (ADDR (LVAR 360))
	.loc 1 338
	lea  rax, [rbp - 360]
	push rax
	lea  rax, [rbp - 528]
	add  rax, 0
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 339 (CALL assert_expect ((CAST int   339 ):(CAST long   195 ):(CAST long  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)):) )
	.loc 1 339
// Line 339 (CAST long  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136))
	.loc 1 339
// Line 339 (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)
	.loc 1 339
// Line 339 (MEMBER (LVAR 528) right 8)
	.loc 1 339
	lea  rax, [rbp - 528]
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 339 (CAST long   195 )
	.loc 1 339
// Line 339  195 
	.loc 1 339
	push 195
	pop  rax
	movsx rax, eax
	push rax
// Line 339 (CAST int   339 )
	.loc 1 339
// Line 339  339 
	.loc 1 339
	push 339
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000180
	mov  rax, 0
	call assert_expect
	jmp  .L000181
.L000180:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000181:
	push rax
	pop  rax
// Line 343 (= (MEMBER (LVAR 672) size 136)  100 )
	.loc 1 343
// Line 343  100 
	.loc 1 343
	push 100
	lea  rax, [rbp - 672]
	add  rax, 136
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 344 (= (MEMBER (LVAR 816) size 136)  500 )
	.loc 1 344
// Line 344  500 
	.loc 1 344
	push 500
	lea  rax, [rbp - 816]
	add  rax, 136
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 345 (= (LVAR 816) (LVAR 672))
	.loc 1 345
// Line 345 (LVAR 672)
	.loc 1 345
	lea  rax, [rbp - 672]
	push rax
	lea  rax, [rbp - 816]
	pop  rsi
	mov  rdi, QWORD PTR [rsi + 0]
	mov  QWORD PTR [rax + 0], rdi
	mov  rdi, QWORD PTR [rsi + 8]
	mov  QWORD PTR [rax + 8], rdi
	mov  rdi, QWORD PTR [rsi + 16]
	mov  QWORD PTR [rax + 16], rdi
	mov  rdi, QWORD PTR [rsi + 24]
	mov  QWORD PTR [rax + 24], rdi
	mov  rdi, QWORD PTR [rsi + 32]
	mov  QWORD PTR [rax + 32], rdi
	mov  rdi, QWORD PTR [rsi + 40]
	mov  QWORD PTR [rax + 40], rdi
	mov  rdi, QWORD PTR [rsi + 48]
	mov  QWORD PTR [rax + 48], rdi
	mov  rdi, QWORD PTR [rsi + 56]
	mov  QWORD PTR [rax + 56], rdi
	mov  rdi, QWORD PTR [rsi + 64]
	mov  QWORD PTR [rax + 64], rdi
	mov  rdi, QWORD PTR [rsi + 72]
	mov  QWORD PTR [rax + 72], rdi
	mov  rdi, QWORD PTR [rsi + 80]
	mov  QWORD PTR [rax + 80], rdi
	mov  rdi, QWORD PTR [rsi + 88]
	mov  QWORD PTR [rax + 88], rdi
	mov  rdi, QWORD PTR [rsi + 96]
	mov  QWORD PTR [rax + 96], rdi
	mov  rdi, QWORD PTR [rsi + 104]
	mov  QWORD PTR [rax + 104], rdi
	mov  rdi, QWORD PTR [rsi + 112]
	mov  QWORD PTR [rax + 112], rdi
	mov  rdi, QWORD PTR [rsi + 120]
	mov  QWORD PTR [rax + 120], rdi
	mov  rdi, QWORD PTR [rsi + 128]
	mov  QWORD PTR [rax + 128], rdi
	mov  rdi, QWORD PTR [rsi + 136]
	mov  QWORD PTR [rax + 136], rdi
	push rax
	pop  rax
// Line 346 (= (MEMBER (GVAR leaf_global) size 136)  700 )
	.loc 1 346
// Line 346  700 
	.loc 1 346
	push 700
	lea  rax, leaf_global[rip]
	add  rax, 136
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 347 (CALL assert_expect ((CAST int   347 ):(CAST long   100 ):(CAST long  (MEMBER (LVAR 816) size 136)):) )
	.loc 1 347
// Line 347 (CAST long  (MEMBER (LVAR 816) size 136))
	.loc 1 347
// Line 347 (MEMBER (LVAR 816) size 136)
	.loc 1 347
	lea  rax, [rbp - 816]
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 347 (CAST long   100 )
	.loc 1 347
// Line 347  100 
	.loc 1 347
	push 100
	pop  rax
	movsx rax, eax
	push rax
// Line 347 (CAST int   347 )
	.loc 1 347
// Line 347  347 
	.loc 1 347
	push 347
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000182
	mov  rax, 0
	call assert_expect
	jmp  .L000183
.L000182:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000183:
	push rax
	pop  rax
// Line 348 (= (LVAR 816) (GVAR leaf_global))
	.loc 1 348
// Line 348 (GVAR leaf_global)
	.loc 1 348
	lea  rax, leaf_global[rip]
	push rax
	lea  rax, [rbp - 816]
	pop  rsi
	mov  rdi, QWORD PTR [rsi + 0]
	mov  QWORD PTR [rax + 0], rdi
	mov  rdi, QWORD PTR [rsi + 8]
	mov  QWORD PTR [rax + 8], rdi
	mov  rdi, QWORD PTR [rsi + 16]
	mov  QWORD PTR [rax + 16], rdi
	mov  rdi, QWORD PTR [rsi + 24]
	mov  QWORD PTR [rax + 24], rdi
	mov  rdi, QWORD PTR [rsi + 32]
	mov  QWORD PTR [rax + 32], rdi
	mov  rdi, QWORD PTR [rsi + 40]
	mov  QWORD PTR [rax + 40], rdi
	mov  rdi, QWORD PTR [rsi + 48]
	mov  QWORD PTR [rax + 48], rdi
	mov  rdi, QWORD PTR [rsi + 56]
	mov  QWORD PTR [rax + 56], rdi
	mov  rdi, QWORD PTR [rsi + 64]
	mov  QWORD PTR [rax + 64], rdi
	mov  rdi, QWORD PTR [rsi + 72]
	mov  QWORD PTR [rax + 72], rdi
	mov  rdi, QWORD PTR [rsi + 80]
	mov  QWORD PTR [rax + 80], rdi
	mov  rdi, QWORD PTR [rsi + 88]
	mov  QWORD PTR [rax + 88], rdi
	mov  rdi, QWORD PTR [rsi + 96]
	mov  QWORD PTR [rax + 96], rdi
	mov  rdi, QWORD PTR [rsi + 104]
	mov  QWORD PTR [rax + 104], rdi
	mov  rdi, QWORD PTR [rsi + 112]
	mov  QWORD PTR [rax + 112], rdi
	mov  rdi, QWORD PTR [rsi + 120]
	mov  QWORD PTR [rax + 120], rdi
	mov  rdi, QWORD PTR [rsi + 128]
	mov  QWORD PTR [rax + 128], rdi
	mov  rdi, QWORD PTR [rsi + 136]
	mov  QWORD PTR [rax + 136], rdi
	push rax
	pop  rax
// Line 349 (CALL assert_expect ((CAST int   349 ):(CAST long   700 ):(CAST long  (MEMBER (LVAR 816) size 136)):) )
	.loc 1 349
// Line 349 (CAST long  (MEMBER (LVAR 816) size 136))
	.loc 1 349
// Line 349 (MEMBER (LVAR 816) size 136)
	.loc 1 349
	lea  rax, [rbp - 816]
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 349 (CAST long   700 )
	.loc 1 349
// Line 349  700 
	.loc 1 349
	push 700
	pop  rax
	movsx rax, eax
	push rax
// Line 349 (CAST int   349 )
	.loc 1 349
// Line 349  349 
	.loc 1 349
	push 349
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000184
	mov  rax, 0
	call assert_expect
	jmp  .L000185
.L000184:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000185:
	push rax
	pop  rax
// Line 350 (= (GVAR leaf_global) (LVAR 672))
	.loc 1 350
// Line 350 (LVAR 672)
	.loc 1 350
	lea  rax, [rbp - 672]
	push rax
	lea  rax, leaf_global[rip]
	pop  rsi
	mov  rdi, QWORD PTR [rsi + 0]
	mov  QWORD PTR [rax + 0], rdi
	mov  rdi, QWORD PTR [rsi + 8]
	mov  QWORD PTR [rax + 8], rdi
	mov  rdi, QWORD PTR [rsi + 16]
	mov  QWORD PTR [rax + 16], rdi
	mov  rdi, QWORD PTR [rsi + 24]
	mov  QWORD PTR [rax + 24], rdi
	mov  rdi, QWORD PTR [rsi + 32]
	mov  QWORD PTR [rax + 32], rdi
	mov  rdi, QWORD PTR [rsi + 40]
	mov  QWORD PTR [rax + 40], rdi
	mov  rdi, QWORD PTR [rsi + 48]
	mov  QWORD PTR [rax + 48], rdi
	mov  rdi, QWORD PTR [rsi + 56]
	mov  QWORD PTR [rax + 56], rdi
	mov  rdi, QWORD PTR [rsi + 64]
	mov  QWORD PTR [rax + 64], rdi
	mov  rdi, QWORD PTR [rsi + 72]
	mov  QWORD PTR [rax + 72], rdi
	mov  rdi, QWORD PTR [rsi + 80]
	mov  QWORD PTR [rax + 80], rdi
	mov  rdi, QWORD PTR [rsi + 88]
	mov  QWORD PTR [rax + 88], rdi
	mov  rdi, QWORD PTR [rsi + 96]
	mov  QWORD PTR [rax + 96], rdi
	mov  rdi, QWORD PTR [rsi + 104]
	mov  QWORD PTR [rax + 104], rdi
	mov  rdi, QWORD PTR [rsi + 112]
	mov  QWORD PTR [rax + 112], rdi
	mov  rdi, QWORD PTR [rsi + 120]
	mov  QWORD PTR [rax + 120], rdi
	mov  rdi, QWORD PTR [rsi + 128]
	mov  QWORD PTR [rax + 128], rdi
	mov  rdi, QWORD PTR [rsi + 136]
	mov  QWORD PTR [rax + 136], rdi
	push rax
	pop  rax
// Line 351 (CALL assert_expect ((CAST int   351 ):(CAST long   100 ):(CAST long  (MEMBER (GVAR leaf_global) size 136)):) )
	.loc 1 351
// Line 351 (CAST long  (MEMBER (GVAR leaf_global) size 136))
	.loc 1 351
// Line 351 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 351
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 351 (CAST long   100 )
	.loc 1 351
// Line 351  100 
	.loc 1 351
	push 100
	pop  rax
	movsx rax, eax
	push rax
// Line 351 (CAST int   351 )
	.loc 1 351
// Line 351  351 
	.loc 1 351
	push 351
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000186
	mov  rax, 0
	call assert_expect
	jmp  .L000187
.L000186:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000187:
	push rax
	pop  rax
// Line 352 (= (MEMBER (LVAR 672) size 136)  999 )
	.loc 1 352
// Line 352  999 
	.loc 1 352
	push 999
	lea  rax, [rbp - 672]
	add  rax, 136
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 353 (= (LVAR 824) (ADDR (LVAR 672)))
	.loc 1 353
// Line 353 (ADDR (LVAR 672))
	.loc 1 353
	lea  rax, [rbp - 672]
	push rax
	lea  rax, [rbp - 824]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 354 (= (LVAR 832) (ADDR (LVAR 816)))
	.loc 1 354
// Line 354 (ADDR (LVAR 816))
	.loc 1 354
	lea  rax, [rbp - 816]
	push rax
	lea  rax, [rbp - 832]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 355 (= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824))))
	.loc 1 355
// Line 355 (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))
	.loc 1 355
// Line 355 (DEREF (LVAR 824))
	.loc 1 355
// Line 355 (LVAR 824)
	.loc 1 355
	lea  rax, [rbp - 824]
	mov  rax, [rax]
	push rax
// Line 355 (LVAR 832)
	.loc 1 355
	lea  rax, [rbp - 832]
	mov  rax, [rax]
	push rax
	pop  rax
	pop  rsi
	mov  rdi, QWORD PTR [rsi + 0]
	mov  QWORD PTR [rax + 0], rdi
	mov  rdi, QWORD PTR [rsi + 8]
	mov  QWORD PTR [rax + 8], rdi
	mov  rdi, QWORD PTR [rsi + 16]
	mov  QWORD PTR [rax + 16], rdi
	mov  rdi, QWORD PTR [rsi + 24]
	mov  QWORD PTR [rax + 24], rdi
	mov  rdi, QWORD PTR [rsi + 32]
	mov  QWORD PTR [rax + 32], rdi
	mov  rdi, QWORD PTR [rsi + 40]
	mov  QWORD PTR [rax + 40], rdi
	mov  rdi, QWORD PTR [rsi + 48]
	mov  QWORD PTR [rax + 48], rdi
	mov  rdi, QWORD PTR [rsi + 56]
	mov  QWORD PTR [rax + 56], rdi
	mov  rdi, QWORD PTR [rsi + 64]
	mov  QWORD PTR [rax + 64], rdi
	mov  rdi, QWORD PTR [rsi + 72]
	mov  QWORD PTR [rax + 72], rdi
	mov  rdi, QWORD PTR [rsi + 80]
	mov  QWORD PTR [rax + 80], rdi
	mov  rdi, QWORD PTR [rsi + 88]
	mov  QWORD PTR [rax + 88], rdi
	mov  rdi, QWORD PTR [rsi + 96]
	mov  QWORD PTR [rax + 96], rdi
	mov  rdi, QWORD PTR [rsi + 104]
	mov  QWORD PTR [rax + 104], rdi
	mov  rdi, QWORD PTR [rsi + 112]
	mov  QWORD PTR [rax + 112], rdi
	mov  rdi, QWORD PTR [rsi + 120]
	mov  QWORD PTR [rax + 120], rdi
	mov  rdi, QWORD PTR [rsi + 128]
	mov  QWORD PTR [rax + 128], rdi
	mov  rdi, QWORD PTR [rsi + 136]
	mov  QWORD PTR [rax + 136], rdi
	push rax
	lea  rax, leaf_global[rip]
	pop  rsi
	mov  rdi, QWORD PTR [rsi + 0]
	mov  QWORD PTR [rax + 0], rdi
	mov  rdi, QWORD PTR [rsi + 8]
	mov  QWORD PTR [rax + 8], rdi
	mov  rdi, QWORD PTR [rsi + 16]
	mov  QWORD PTR [rax + 16], rdi
	mov  rdi, QWORD PTR [rsi + 24]
	mov  QWORD PTR [rax + 24], rdi
	mov  rdi, QWORD PTR [rsi + 32]
	mov  QWORD PTR [rax + 32], rdi
	mov  rdi, QWORD PTR [rsi + 40]
	mov  QWORD PTR [rax + 40], rdi
	mov  rdi, QWORD PTR [rsi + 48]
	mov  QWORD PTR [rax + 48], rdi
	mov  rdi, QWORD PTR [rsi + 56]
	mov  QWORD PTR [rax + 56], rdi
	mov  rdi, QWORD PTR [rsi + 64]
	mov  QWORD PTR [rax + 64], rdi
	mov  rdi, QWORD PTR [rsi + 72]
	mov  QWORD PTR [rax + 72], rdi
	mov  rdi, QWORD PTR [rsi + 80]
	mov  QWORD PTR [rax + 80], rdi
	mov  rdi, QWORD PTR [rsi + 88]
	mov  QWORD PTR [rax + 88], rdi
	mov  rdi, QWORD PTR [rsi + 96]
	mov  QWORD PTR [rax + 96], rdi
	mov  rdi, QWORD PTR [rsi + 104]
	mov  QWORD PTR [rax + 104], rdi
	mov  rdi, QWORD PTR [rsi + 112]
	mov  QWORD PTR [rax + 112], rdi
	mov  rdi, QWORD PTR [rsi + 120]
	mov  QWORD PTR [rax + 120], rdi
	mov  rdi, QWORD PTR [rsi + 128]
	mov  QWORD PTR [rax + 128], rdi
	mov  rdi, QWORD PTR [rsi + 136]
	mov  QWORD PTR [rax + 136], rdi
	push rax
	pop  rax
// Line 356 (CALL assert_expect ((CAST int   356 ):(CAST long   999 ):(CAST long  (MEMBER (DEREF (LVAR 832)) size 136)):) )
	.loc 1 356
// Line 356 (CAST long  (MEMBER (DEREF (LVAR 832)) size 136))
	.loc 1 356
// Line 356 (MEMBER (DEREF (LVAR 832)) size 136)
	.loc 1 356
// Line 356 (LVAR 832)
	.loc 1 356
	lea  rax, [rbp - 832]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 356 (CAST long   999 )
	.loc 1 356
// Line 356  999 
	.loc 1 356
	push 999
	pop  rax
	movsx rax, eax
	push rax
// Line 356 (CAST int   356 )
	.loc 1 356
// Line 356  356 
	.loc 1 356
	push 356
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000188
	mov  rax, 0
	call assert_expect
	jmp  .L000189
.L000188:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000189:
	push rax
	pop  rax
// Line 357 (CALL assert_expect ((CAST int   357 ):(CAST long   999 ):(CAST long  (MEMBER (GVAR leaf_global) size 136)):) )
	.loc 1 357
// Line 357 (CAST long  (MEMBER (GVAR leaf_global) size 136))
	.loc 1 357
// Line 357 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 357
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 357 (CAST long   999 )
	.loc 1 357
// Line 357  999 
	.loc 1 357
	push 999
	pop  rax
	movsx rax, eax
	push rax
// Line 357 (CAST int   357 )
	.loc 1 357
// Line 357  357 
	.loc 1 357
	push 357
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000190
	mov  rax, 0
	call assert_expect
	jmp  .L000191
.L000190:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000191:
	push rax
	pop  rax
.L.return.struct_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_board
// Line 362 FDECL print_board func ( * [8] int  board ) void  max_offset:48
//    (LVAR 40) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n" )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n\n" )):) ):))
	.loc 1 362
print_board:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
// Line 363 (++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 )
	.loc 1 363
// Line 363 (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))
	.loc 1 363
// Line 363 (++ (GVAR q8_count)  1 )
	.loc 1 363
// Line 363 (GVAR q8_count)
	.loc 1 363
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
// Line 363  1 
	.loc 1 363
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, q8_count[rip]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 363  1 
	.loc 1 363
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 364 (RETURN NULL )
	.loc 1 364
	jmp  .L.return.print_board
// Line 365 (FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n" )):) ):))
	.loc 1 365
// Line 365 (= (LVAR 44)  0 )
	.loc 1 365
// Line 365  0 
	.loc 1 365
	push 0
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000194:
// Line 365 (<  8  (LVAR 44))
	.loc 1 365
// Line 365  8 
	.loc 1 365
	push 8
// Line 365 (LVAR 44)
	.loc 1 365
	lea  rax, [rbp - 44]
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
	je   .L000193
// Line 372 (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n" )):) ):)
	.loc 1 372
// Line 366 (FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):))
	.loc 1 366
// Line 366 (= (LVAR 48)  0 )
	.loc 1 366
// Line 366  0 
	.loc 1 366
	push 0
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000197:
// Line 366 (<  8  (LVAR 48))
	.loc 1 366
// Line 366  8 
	.loc 1 366
	push 8
// Line 366 (LVAR 48)
	.loc 1 366
	lea  rax, [rbp - 48]
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
	je   .L000196
// Line 370 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)
	.loc 1 370
// Line 368 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL )
	.loc 1 368
// Line 367 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))
	.loc 1 367
// Line 367 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 367
// Line 367 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 367
// Line 367 (] (LVAR 40) (LVAR 44))
	.loc 1 367
// Line 367 (LVAR 40)
	.loc 1 367
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 367 (LVAR 44)
	.loc 1 367
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 367 (LVAR 48)
	.loc 1 367
	lea  rax, [rbp - 48]
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
	je   .L000198
// Line 367 (CALL printf ((CAST * char  (ADDR  "Q " )):) )
	.loc 1 367
// Line 367 (CAST * char  (ADDR  "Q " ))
	.loc 1 367
// Line 367 (ADDR  "Q " )
	.loc 1 367
	lea  rax, .LS000028[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000200
	mov  rax, 0
	call printf
	jmp  .L000201
.L000200:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000201:
	push rax
	pop  rax
	jmp  .L000199
.L000198:
.L000199:
// Line 368 (CALL printf ((CAST * char  (ADDR  ". " )):) )
	.loc 1 368
// Line 368 (CAST * char  (ADDR  ". " ))
	.loc 1 368
// Line 368 (ADDR  ". " )
	.loc 1 368
	lea  rax, .LS000029[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000202
	mov  rax, 0
	call printf
	jmp  .L000203
.L000202:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000203:
	push rax
	pop  rax
.L000195:
// Line 366 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 366
// Line 366 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 366
// Line 366 (++ (LVAR 48)  1 )
	.loc 1 366
// Line 366 (LVAR 48)
	.loc 1 366
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 366  1 
	.loc 1 366
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 366  1 
	.loc 1 366
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000197
.L000196:
// Line 370 (CALL printf ((CAST * char  (ADDR  "\n" )):) )
	.loc 1 370
// Line 370 (CAST * char  (ADDR  "\n" ))
	.loc 1 370
// Line 370 (ADDR  "\n" )
	.loc 1 370
	lea  rax, .LS000030[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000204
	mov  rax, 0
	call printf
	jmp  .L000205
.L000204:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000205:
	push rax
	pop  rax
.L000192:
// Line 365 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 365
// Line 365 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 365
// Line 365 (++ (LVAR 44)  1 )
	.loc 1 365
// Line 365 (LVAR 44)
	.loc 1 365
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 365  1 
	.loc 1 365
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 365  1 
	.loc 1 365
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000194
.L000193:
// Line 372 (CALL printf ((CAST * char  (ADDR  "\n\n" )):) )
	.loc 1 372
// Line 372 (CAST * char  (ADDR  "\n\n" ))
	.loc 1 372
// Line 372 (ADDR  "\n\n" )
	.loc 1 372
	lea  rax, .LS000031[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000206
	mov  rax, 0
	call printf
	jmp  .L000207
.L000206:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000207:
	push rax
	pop  rax
.L.return.print_board:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global conflict
// Line 375 FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int  max_offset:56
//    (LVAR 40) (LVAR 48) 
//    (BLOCK(FOR init: (= (LVAR 52)  0 )cond: (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
	.loc 1 375
conflict:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
	mov  [rbp - 48], rsi
// Line 376 (FOR init: (= (LVAR 52)  0 )cond: (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):))
	.loc 1 376
// Line 376 (= (LVAR 52)  0 )
	.loc 1 376
// Line 376  0 
	.loc 1 376
	push 0
	lea  rax, [rbp - 52]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000210:
// Line 376 (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))
	.loc 1 376
// Line 376 (MEMBER (DEREF (LVAR 48)) row 0)
	.loc 1 376
// Line 376 (LVAR 48)
	.loc 1 376
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 376 (LVAR 52)
	.loc 1 376
	lea  rax, [rbp - 52]
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
	je   .L000209
// Line 384 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):)
	.loc 1 384
// Line 378 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL )
	.loc 1 378
// Line 377 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4)))
	.loc 1 377
// Line 377 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))
	.loc 1 377
// Line 377 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 377
// Line 377 (] (LVAR 40) (LVAR 52))
	.loc 1 377
// Line 377 (LVAR 40)
	.loc 1 377
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 377 (LVAR 52)
	.loc 1 377
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 377 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 377
// Line 377 (LVAR 48)
	.loc 1 377
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
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
	je   .L000211
// Line 377 (RETURN  1 )
	.loc 1 377
// Line 377  1 
	.loc 1 377
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000212
.L000211:
.L000212:
// Line 378 (= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)))
	.loc 1 378
// Line 378 (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))
	.loc 1 378
// Line 378 (MEMBER (DEREF (LVAR 48)) row 0)
	.loc 1 378
// Line 378 (LVAR 48)
	.loc 1 378
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 378 (LVAR 52)
	.loc 1 378
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	lea  rax, [rbp - 56]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 381 (IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 381
// Line 379 (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 )
	.loc 1 379
// Line 379 (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )
	.loc 1 379
// Line 379 (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 379
// Line 379 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 379
// Line 379 (LVAR 48)
	.loc 1 379
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 379 (LVAR 56)
	.loc 1 379
	lea  rax, [rbp - 56]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 379  1 
	.loc 1 379
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 379  0 
	.loc 1 379
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000213
// Line 381 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL )
	.loc 1 381
// Line 380 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))))
	.loc 1 380
// Line 380 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 380
// Line 380 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 380
// Line 380 (] (LVAR 40) (LVAR 52))
	.loc 1 380
// Line 380 (LVAR 40)
	.loc 1 380
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 380 (LVAR 52)
	.loc 1 380
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 380 (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 380
// Line 380 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 380
// Line 380 (LVAR 48)
	.loc 1 380
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 380 (LVAR 56)
	.loc 1 380
	lea  rax, [rbp - 56]
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
	je   .L000215
// Line 380 (RETURN  1 )
	.loc 1 380
// Line 380  1 
	.loc 1 380
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000216
.L000215:
.L000216:
	jmp  .L000214
.L000213:
.L000214:
// Line 383 (IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 383
// Line 381 (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 381
// Line 381  8 
	.loc 1 381
	push 8
// Line 381 (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 381
// Line 381 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 381
// Line 381 (LVAR 48)
	.loc 1 381
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 381 (LVAR 56)
	.loc 1 381
	lea  rax, [rbp - 56]
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
	je   .L000217
// Line 383 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL )
	.loc 1 383
// Line 382 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))))
	.loc 1 382
// Line 382 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 382
// Line 382 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 382
// Line 382 (] (LVAR 40) (LVAR 52))
	.loc 1 382
// Line 382 (LVAR 40)
	.loc 1 382
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 382 (LVAR 52)
	.loc 1 382
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 382 (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 382
// Line 382 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 382
// Line 382 (LVAR 48)
	.loc 1 382
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 382 (LVAR 56)
	.loc 1 382
	lea  rax, [rbp - 56]
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
	je   .L000219
// Line 382 (RETURN  1 )
	.loc 1 382
// Line 382  1 
	.loc 1 382
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000220
.L000219:
.L000220:
	jmp  .L000218
.L000217:
.L000218:
.L000208:
// Line 376 (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )
	.loc 1 376
// Line 376 (= (LVAR 52) (++ (LVAR 52)  1 ))
	.loc 1 376
// Line 376 (++ (LVAR 52)  1 )
	.loc 1 376
// Line 376 (LVAR 52)
	.loc 1 376
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
// Line 376  1 
	.loc 1 376
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 52]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 376  1 
	.loc 1 376
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000210
.L000209:
// Line 384 (RETURN  0 )
	.loc 1 384
// Line 384  0 
	.loc 1 384
	push 0
	pop  rax
	jmp  .L.return.conflict
.L.return.conflict:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global solve
// Line 387 FDECL solve func ( * [8] int  board , int  row ) void  max_offset:56
//    (LVAR 40) (LVAR 44) 
//    (BLOCK(IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((CAST * [8] int  (LVAR 40)):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)):))
	.loc 1 387
solve:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
	mov  [rbp - 44], esi
// Line 392 (IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((CAST * [8] int  (LVAR 40)):) ):(RETURN NULL ):) NULL )
	.loc 1 392
// Line 388 (== (LVAR 44)  8 )
	.loc 1 388
// Line 388 (LVAR 44)
	.loc 1 388
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 388  8 
	.loc 1 388
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000221
// Line 392 (BLOCK(CALL print_board ((CAST * [8] int  (LVAR 40)):) ):(RETURN NULL ):)
	.loc 1 392
// Line 389 (CALL print_board ((CAST * [8] int  (LVAR 40)):) )
	.loc 1 389
// Line 389 (CAST * [8] int  (LVAR 40))
	.loc 1 389
// Line 389 (LVAR 40)
	.loc 1 389
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000223
	mov  rax, 0
	call print_board
	jmp  .L000224
.L000223:
	sub  rsp, 8
	mov  rax, 0
	call print_board
	add  rsp, 8
.L000224:
	push rax
	pop  rax
// Line 390 (RETURN NULL )
	.loc 1 390
	jmp  .L.return.solve
	jmp  .L000222
.L000221:
.L000222:
// Line 392 (FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):))
	.loc 1 392
// Line 392 (= (LVAR 48)  0 )
	.loc 1 392
// Line 392  0 
	.loc 1 392
	push 0
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000227:
// Line 392 (<  8  (LVAR 48))
	.loc 1 392
// Line 392  8 
	.loc 1 392
	push 8
// Line 392 (LVAR 48)
	.loc 1 392
	lea  rax, [rbp - 48]
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
	je   .L000226
// Line 403 (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)
	.loc 1 403
// Line 394 (= (MEMBER (LVAR 56) row 0) (LVAR 44))
	.loc 1 394
// Line 394 (LVAR 44)
	.loc 1 394
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	lea  rax, [rbp - 56]
	add  rax, 0
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 395 (= (MEMBER (LVAR 56) col 4) (LVAR 48))
	.loc 1 395
// Line 395 (LVAR 48)
	.loc 1 395
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	lea  rax, [rbp - 56]
	add  rax, 4
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 402 (IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL )
	.loc 1 402
// Line 396 (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 )
	.loc 1 396
// Line 396 (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )
	.loc 1 396
// Line 396 (CAST * struct <Pos>  (ADDR (LVAR 56)))
	.loc 1 396
// Line 396 (ADDR (LVAR 56))
	.loc 1 396
	lea  rax, [rbp - 56]
	push rax
// Line 396 (CAST * [8] int  (LVAR 40))
	.loc 1 396
// Line 396 (LVAR 40)
	.loc 1 396
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000230
	mov  rax, 0
	call conflict
	jmp  .L000231
.L000230:
	sub  rsp, 8
	mov  rax, 0
	call conflict
	add  rsp, 8
.L000231:
	push rax
// Line 396  0 
	.loc 1 396
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000228
// Line 402 (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):)
	.loc 1 402
// Line 398 (= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 )
	.loc 1 398
// Line 398  1 
	.loc 1 398
	push 1
// Line 398 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 398
// Line 398 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 398
// Line 398 (] (LVAR 40) (LVAR 44))
	.loc 1 398
// Line 398 (LVAR 40)
	.loc 1 398
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 398 (LVAR 44)
	.loc 1 398
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 398 (LVAR 48)
	.loc 1 398
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 399 (CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) )
	.loc 1 399
// Line 399 (CAST int  (+ (LVAR 44)  1 ))
	.loc 1 399
// Line 399 (+ (LVAR 44)  1 )
	.loc 1 399
// Line 399 (LVAR 44)
	.loc 1 399
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 399  1 
	.loc 1 399
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 399 (CAST * [8] int  (LVAR 40))
	.loc 1 399
// Line 399 (LVAR 40)
	.loc 1 399
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000232
	mov  rax, 0
	call solve
	jmp  .L000233
.L000232:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000233:
	push rax
	pop  rax
// Line 400 (= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 )
	.loc 1 400
// Line 400  0 
	.loc 1 400
	push 0
// Line 400 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 400
// Line 400 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 400
// Line 400 (] (LVAR 40) (LVAR 44))
	.loc 1 400
// Line 400 (LVAR 40)
	.loc 1 400
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 400 (LVAR 44)
	.loc 1 400
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 400 (LVAR 48)
	.loc 1 400
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000229
.L000228:
.L000229:
.L000225:
// Line 392 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 392
// Line 392 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 392
// Line 392 (++ (LVAR 48)  1 )
	.loc 1 392
// Line 392 (LVAR 48)
	.loc 1 392
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 392  1 
	.loc 1 392
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 392  1 
	.loc 1 392
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000227
.L000226:
.L.return.solve:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global q8
// Line 405 FDECL q8 func ( ) int  max_offset:296
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))):(CALL solve ((CAST * [8] int  (ADDR (LVAR 288))):(CAST int   0 ):) ):(RETURN (GVAR q8_count)):))
	.loc 1 405
q8:
	push rbp
	mov  rbp, rsp
	sub  rsp, 304
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 407 (= (GVAR q8_count)  0 )
	.loc 1 407
// Line 407  0 
	.loc 1 407
	push 0
	lea  rax, q8_count[rip]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 408 (FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 )))
	.loc 1 408
// Line 408 (= (LVAR 292)  0 )
	.loc 1 408
// Line 408  0 
	.loc 1 408
	push 0
	lea  rax, [rbp - 292]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000236:
// Line 408 (<  8  (LVAR 292))
	.loc 1 408
// Line 408  8 
	.loc 1 408
	push 8
// Line 408 (LVAR 292)
	.loc 1 408
	lea  rax, [rbp - 292]
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
	je   .L000235
// Line 409 (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))
	.loc 1 409
// Line 409 (= (LVAR 296)  0 )
	.loc 1 409
// Line 409  0 
	.loc 1 409
	push 0
	lea  rax, [rbp - 296]
	pop  rdi
	mov  [rax], edi
	push rdi
.L000239:
// Line 409 (<  8  (LVAR 296))
	.loc 1 409
// Line 409  8 
	.loc 1 409
	push 8
// Line 409 (LVAR 296)
	.loc 1 409
	lea  rax, [rbp - 296]
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
	je   .L000238
// Line 409 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 )
	.loc 1 409
// Line 409  0 
	.loc 1 409
	push 0
// Line 409 (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296))
	.loc 1 409
// Line 409 (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292))))
	.loc 1 409
// Line 409 (] (ADDR (LVAR 288)) (LVAR 292))
	.loc 1 409
// Line 409 (ADDR (LVAR 288))
	.loc 1 409
	lea  rax, [rbp - 288]
	push rax
// Line 409 (LVAR 292)
	.loc 1 409
	lea  rax, [rbp - 292]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 409 (LVAR 296)
	.loc 1 409
	lea  rax, [rbp - 296]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
.L000237:
// Line 409 (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 )
	.loc 1 409
// Line 409 (= (LVAR 296) (++ (LVAR 296)  1 ))
	.loc 1 409
// Line 409 (++ (LVAR 296)  1 )
	.loc 1 409
// Line 409 (LVAR 296)
	.loc 1 409
	lea  rax, [rbp - 296]
	mov  eax, [rax]
	push rax
// Line 409  1 
	.loc 1 409
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 296]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 409  1 
	.loc 1 409
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000239
.L000238:
.L000234:
// Line 408 (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 )
	.loc 1 408
// Line 408 (= (LVAR 292) (++ (LVAR 292)  1 ))
	.loc 1 408
// Line 408 (++ (LVAR 292)  1 )
	.loc 1 408
// Line 408 (LVAR 292)
	.loc 1 408
	lea  rax, [rbp - 292]
	mov  eax, [rax]
	push rax
// Line 408  1 
	.loc 1 408
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 292]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 408  1 
	.loc 1 408
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000236
.L000235:
// Line 410 (CALL solve ((CAST * [8] int  (ADDR (LVAR 288))):(CAST int   0 ):) )
	.loc 1 410
// Line 410 (CAST int   0 )
	.loc 1 410
// Line 410  0 
	.loc 1 410
	push 0
// Line 410 (CAST * [8] int  (ADDR (LVAR 288)))
	.loc 1 410
// Line 410 (ADDR (LVAR 288))
	.loc 1 410
	lea  rax, [rbp - 288]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000240
	mov  rax, 0
	call solve
	jmp  .L000241
.L000240:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000241:
	push rax
	pop  rax
// Line 411 (RETURN (GVAR q8_count))
	.loc 1 411
// Line 411 (GVAR q8_count)
	.loc 1 411
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.q8
.L.return.q8:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global fun
// Line 414 FDECL fun func ( * int  p ) int  max_offset:40
//    (LVAR 40) 
//    (BLOCK(RETURN (DEREF (LVAR 40))):))
	.loc 1 414
fun:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
// Line 414 (RETURN (DEREF (LVAR 40)))
	.loc 1 414
// Line 414 (DEREF (LVAR 40))
	.loc 1 414
// Line 414 (LVAR 40)
	.loc 1 414
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.fun
.L.return.fun:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global struct_initializer
// Line 430 FDECL struct_initializer func ( ) void  max_offset:136
//    
//    (BLOCK(CALL assert_expect ((CAST int   431 ):(CAST long   14 ):(CAST long  (MEMBER (MEMBER (GVAR v1) x 0) x 0)):) ):(CALL assert_expect ((CAST int   432 ):(CAST long   17 ):(CAST long  (MEMBER (MEMBER (GVAR v1) x 0) y 8)):) ):(CALL assert_expect ((CAST int   433 ):(CAST long   5 ):(CAST long  (MEMBER (GVAR v1) y 16)):) ):(CALL assert_expect ((CAST int   434 ):(CAST long   9 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  0 ))):) ):(CALL assert_expect ((CAST int   435 ):(CAST long   10 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  1 ))):) ):(CALL assert_expect ((CAST int   436 ):(CAST long   11 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  2 ))):) ):(CALL assert_expect ((CAST int   437 ):(CAST long   12 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  3 ))):) ):(CALL assert_expect ((CAST int   438 ):(CAST long   10 ):(CAST long  (MEMBER (DEREF (MEMBER (GVAR v1) p 32)) y 8)):) ):(= (LVAR 72) {{ 10 , 77 }, 11 ,{ 51 , 52 , 53 , 54 }, 0 }):(CALL assert_expect ((CAST int   440 ):(CAST long   10 ):(CAST long  (MEMBER (MEMBER (LVAR 72) x 0) x 0)):) ):(CALL assert_expect ((CAST int   441 ):(CAST long   11 ):(CAST long  (MEMBER (LVAR 72) y 16)):) ):(CALL assert_expect ((CAST int   442 ):(CAST long   51 ):(CAST long  (DEREF (] (ADDR (MEMBER (LVAR 72) z 24))  0 ))):) ):(CALL assert_expect ((CAST int   444 ):(CAST long   3 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) x 0)):) ):(CALL assert_expect ((CAST int   445 ):(CAST long   4 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) y 8)):) ):(CALL assert_expect ((CAST int   446 ):(CAST long   7 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) x 0)):) ):(CALL assert_expect ((CAST int   447 ):(CAST long   8 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) y 8)):) ):(CALL assert_expect ((CAST int   448 ):(CAST long   11 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) x 0)):) ):(CALL assert_expect ((CAST int   449 ):(CAST long   12 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) y 8)):) ):(CALL assert_expect ((CAST int   450 ):(CAST long   30 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) x 0)):) ):(CALL assert_expect ((CAST int   451 ):(CAST long   31 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) y 8)):) ):(= (LVAR 136) {{ -3 , -4 },{ -7 , -8 },{ -11 , -12 },{ -30 , -31 }}):(CALL assert_expect ((CAST int   454 ):(CAST long   -3 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) x 0)):) ):(CALL assert_expect ((CAST int   455 ):(CAST long   -4 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) y 8)):) ):(CALL assert_expect ((CAST int   456 ):(CAST long   -7 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) x 0)):) ):(CALL assert_expect ((CAST int   457 ):(CAST long   -8 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) y 8)):) ):(CALL assert_expect ((CAST int   458 ):(CAST long   -11 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) x 0)):) ):(CALL assert_expect ((CAST int   459 ):(CAST long   -12 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) y 8)):) ):(CALL assert_expect ((CAST int   460 ):(CAST long   -30 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) x 0)):) ):(CALL assert_expect ((CAST int   461 ):(CAST long   -31 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) y 8)):) ):))
	.loc 1 430
struct_initializer:
	push rbp
	mov  rbp, rsp
	sub  rsp, 144
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 431 (CALL assert_expect ((CAST int   431 ):(CAST long   14 ):(CAST long  (MEMBER (MEMBER (GVAR v1) x 0) x 0)):) )
	.loc 1 431
// Line 431 (CAST long  (MEMBER (MEMBER (GVAR v1) x 0) x 0))
	.loc 1 431
// Line 431 (MEMBER (MEMBER (GVAR v1) x 0) x 0)
	.loc 1 431
	lea  rax, v1[rip]
	add  rax, 0
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 431 (CAST long   14 )
	.loc 1 431
// Line 431  14 
	.loc 1 431
	push 14
	pop  rax
	movsx rax, eax
	push rax
// Line 431 (CAST int   431 )
	.loc 1 431
// Line 431  431 
	.loc 1 431
	push 431
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
// Line 432 (CALL assert_expect ((CAST int   432 ):(CAST long   17 ):(CAST long  (MEMBER (MEMBER (GVAR v1) x 0) y 8)):) )
	.loc 1 432
// Line 432 (CAST long  (MEMBER (MEMBER (GVAR v1) x 0) y 8))
	.loc 1 432
// Line 432 (MEMBER (MEMBER (GVAR v1) x 0) y 8)
	.loc 1 432
	lea  rax, v1[rip]
	add  rax, 0
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 432 (CAST long   17 )
	.loc 1 432
// Line 432  17 
	.loc 1 432
	push 17
	pop  rax
	movsx rax, eax
	push rax
// Line 432 (CAST int   432 )
	.loc 1 432
// Line 432  432 
	.loc 1 432
	push 432
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
// Line 433 (CALL assert_expect ((CAST int   433 ):(CAST long   5 ):(CAST long  (MEMBER (GVAR v1) y 16)):) )
	.loc 1 433
// Line 433 (CAST long  (MEMBER (GVAR v1) y 16))
	.loc 1 433
// Line 433 (MEMBER (GVAR v1) y 16)
	.loc 1 433
	lea  rax, v1[rip]
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 433 (CAST long   5 )
	.loc 1 433
// Line 433  5 
	.loc 1 433
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 433 (CAST int   433 )
	.loc 1 433
// Line 433  433 
	.loc 1 433
	push 433
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
// Line 434 (CALL assert_expect ((CAST int   434 ):(CAST long   9 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  0 ))):) )
	.loc 1 434
// Line 434 (CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  0 )))
	.loc 1 434
// Line 434 (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  0 ))
	.loc 1 434
// Line 434 (] (ADDR (MEMBER (GVAR v1) z 24))  0 )
	.loc 1 434
// Line 434 (ADDR (MEMBER (GVAR v1) z 24))
	.loc 1 434
	lea  rax, v1[rip]
	add  rax, 24
	push rax
// Line 434  0 
	.loc 1 434
	push 0
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 434 (CAST long   9 )
	.loc 1 434
// Line 434  9 
	.loc 1 434
	push 9
	pop  rax
	movsx rax, eax
	push rax
// Line 434 (CAST int   434 )
	.loc 1 434
// Line 434  434 
	.loc 1 434
	push 434
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
// Line 435 (CALL assert_expect ((CAST int   435 ):(CAST long   10 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  1 ))):) )
	.loc 1 435
// Line 435 (CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  1 )))
	.loc 1 435
// Line 435 (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  1 ))
	.loc 1 435
// Line 435 (] (ADDR (MEMBER (GVAR v1) z 24))  1 )
	.loc 1 435
// Line 435 (ADDR (MEMBER (GVAR v1) z 24))
	.loc 1 435
	lea  rax, v1[rip]
	add  rax, 24
	push rax
// Line 435  1 
	.loc 1 435
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 435 (CAST long   10 )
	.loc 1 435
// Line 435  10 
	.loc 1 435
	push 10
	pop  rax
	movsx rax, eax
	push rax
// Line 435 (CAST int   435 )
	.loc 1 435
// Line 435  435 
	.loc 1 435
	push 435
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
// Line 436 (CALL assert_expect ((CAST int   436 ):(CAST long   11 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  2 ))):) )
	.loc 1 436
// Line 436 (CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  2 )))
	.loc 1 436
// Line 436 (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  2 ))
	.loc 1 436
// Line 436 (] (ADDR (MEMBER (GVAR v1) z 24))  2 )
	.loc 1 436
// Line 436 (ADDR (MEMBER (GVAR v1) z 24))
	.loc 1 436
	lea  rax, v1[rip]
	add  rax, 24
	push rax
// Line 436  2 
	.loc 1 436
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 436 (CAST long   11 )
	.loc 1 436
// Line 436  11 
	.loc 1 436
	push 11
	pop  rax
	movsx rax, eax
	push rax
// Line 436 (CAST int   436 )
	.loc 1 436
// Line 436  436 
	.loc 1 436
	push 436
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
// Line 437 (CALL assert_expect ((CAST int   437 ):(CAST long   12 ):(CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  3 ))):) )
	.loc 1 437
// Line 437 (CAST long  (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  3 )))
	.loc 1 437
// Line 437 (DEREF (] (ADDR (MEMBER (GVAR v1) z 24))  3 ))
	.loc 1 437
// Line 437 (] (ADDR (MEMBER (GVAR v1) z 24))  3 )
	.loc 1 437
// Line 437 (ADDR (MEMBER (GVAR v1) z 24))
	.loc 1 437
	lea  rax, v1[rip]
	add  rax, 24
	push rax
// Line 437  3 
	.loc 1 437
	push 3
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 437 (CAST long   12 )
	.loc 1 437
// Line 437  12 
	.loc 1 437
	push 12
	pop  rax
	movsx rax, eax
	push rax
// Line 437 (CAST int   437 )
	.loc 1 437
// Line 437  437 
	.loc 1 437
	push 437
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
// Line 438 (CALL assert_expect ((CAST int   438 ):(CAST long   10 ):(CAST long  (MEMBER (DEREF (MEMBER (GVAR v1) p 32)) y 8)):) )
	.loc 1 438
// Line 438 (CAST long  (MEMBER (DEREF (MEMBER (GVAR v1) p 32)) y 8))
	.loc 1 438
// Line 438 (MEMBER (DEREF (MEMBER (GVAR v1) p 32)) y 8)
	.loc 1 438
// Line 438 (MEMBER (GVAR v1) p 32)
	.loc 1 438
	lea  rax, v1[rip]
	add  rax, 32
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 438 (CAST long   10 )
	.loc 1 438
// Line 438  10 
	.loc 1 438
	push 10
	pop  rax
	movsx rax, eax
	push rax
// Line 438 (CAST int   438 )
	.loc 1 438
// Line 438  438 
	.loc 1 438
	push 438
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
// Line 439 (= (LVAR 72) {{ 10 , 77 }, 11 ,{ 51 , 52 , 53 , 54 }, 0 })
	.loc 1 439
// Line 439  10 
	.loc 1 439
	push 10
	lea  rax, [rbp - 72]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 439  77 
	.loc 1 439
	push 77
	lea  rax, [rbp - 64]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 439  11 
	.loc 1 439
	push 11
	lea  rax, [rbp - 56]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 439  51 
	.loc 1 439
	push 51
	lea  rax, [rbp - 48]
	pop  rdi
	mov  [rax], dil
	push rdi
// Line 439  52 
	.loc 1 439
	push 52
	lea  rax, [rbp - 47]
	pop  rdi
	mov  [rax], dil
	push rdi
// Line 439  53 
	.loc 1 439
	push 53
	lea  rax, [rbp - 46]
	pop  rdi
	mov  [rax], dil
	push rdi
// Line 439  54 
	.loc 1 439
	push 54
	lea  rax, [rbp - 45]
	pop  rdi
	mov  [rax], dil
	push rdi
// Line 439  0 
	.loc 1 439
	push 0
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 440 (CALL assert_expect ((CAST int   440 ):(CAST long   10 ):(CAST long  (MEMBER (MEMBER (LVAR 72) x 0) x 0)):) )
	.loc 1 440
// Line 440 (CAST long  (MEMBER (MEMBER (LVAR 72) x 0) x 0))
	.loc 1 440
// Line 440 (MEMBER (MEMBER (LVAR 72) x 0) x 0)
	.loc 1 440
	lea  rax, [rbp - 72]
	add  rax, 0
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 440 (CAST long   10 )
	.loc 1 440
// Line 440  10 
	.loc 1 440
	push 10
	pop  rax
	movsx rax, eax
	push rax
// Line 440 (CAST int   440 )
	.loc 1 440
// Line 440  440 
	.loc 1 440
	push 440
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
// Line 441 (CALL assert_expect ((CAST int   441 ):(CAST long   11 ):(CAST long  (MEMBER (LVAR 72) y 16)):) )
	.loc 1 441
// Line 441 (CAST long  (MEMBER (LVAR 72) y 16))
	.loc 1 441
// Line 441 (MEMBER (LVAR 72) y 16)
	.loc 1 441
	lea  rax, [rbp - 72]
	add  rax, 16
	mov  rax, [rax]
	push rax
// Line 441 (CAST long   11 )
	.loc 1 441
// Line 441  11 
	.loc 1 441
	push 11
	pop  rax
	movsx rax, eax
	push rax
// Line 441 (CAST int   441 )
	.loc 1 441
// Line 441  441 
	.loc 1 441
	push 441
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
// Line 442 (CALL assert_expect ((CAST int   442 ):(CAST long   51 ):(CAST long  (DEREF (] (ADDR (MEMBER (LVAR 72) z 24))  0 ))):) )
	.loc 1 442
// Line 442 (CAST long  (DEREF (] (ADDR (MEMBER (LVAR 72) z 24))  0 )))
	.loc 1 442
// Line 442 (DEREF (] (ADDR (MEMBER (LVAR 72) z 24))  0 ))
	.loc 1 442
// Line 442 (] (ADDR (MEMBER (LVAR 72) z 24))  0 )
	.loc 1 442
// Line 442 (ADDR (MEMBER (LVAR 72) z 24))
	.loc 1 442
	lea  rax, [rbp - 72]
	add  rax, 24
	push rax
// Line 442  0 
	.loc 1 442
	push 0
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 442 (CAST long   51 )
	.loc 1 442
// Line 442  51 
	.loc 1 442
	push 51
	pop  rax
	movsx rax, eax
	push rax
// Line 442 (CAST int   442 )
	.loc 1 442
// Line 442  442 
	.loc 1 442
	push 442
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
// Line 444 (CALL assert_expect ((CAST int   444 ):(CAST long   3 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) x 0)):) )
	.loc 1 444
// Line 444 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) x 0))
	.loc 1 444
// Line 444 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) x 0)
	.loc 1 444
// Line 444 (] (ADDR (GVAR ary_sub))  0 )
	.loc 1 444
// Line 444 (ADDR (GVAR ary_sub))
	.loc 1 444
	lea  rax, ary_sub[rip]
	push rax
// Line 444  0 
	.loc 1 444
	push 0
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 444 (CAST long   3 )
	.loc 1 444
// Line 444  3 
	.loc 1 444
	push 3
	pop  rax
	movsx rax, eax
	push rax
// Line 444 (CAST int   444 )
	.loc 1 444
// Line 444  444 
	.loc 1 444
	push 444
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
// Line 445 (CALL assert_expect ((CAST int   445 ):(CAST long   4 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) y 8)):) )
	.loc 1 445
// Line 445 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) y 8))
	.loc 1 445
// Line 445 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  0 )) y 8)
	.loc 1 445
// Line 445 (] (ADDR (GVAR ary_sub))  0 )
	.loc 1 445
// Line 445 (ADDR (GVAR ary_sub))
	.loc 1 445
	lea  rax, ary_sub[rip]
	push rax
// Line 445  0 
	.loc 1 445
	push 0
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 445 (CAST long   4 )
	.loc 1 445
// Line 445  4 
	.loc 1 445
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 445 (CAST int   445 )
	.loc 1 445
// Line 445  445 
	.loc 1 445
	push 445
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
// Line 446 (CALL assert_expect ((CAST int   446 ):(CAST long   7 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) x 0)):) )
	.loc 1 446
// Line 446 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) x 0))
	.loc 1 446
// Line 446 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) x 0)
	.loc 1 446
// Line 446 (] (ADDR (GVAR ary_sub))  1 )
	.loc 1 446
// Line 446 (ADDR (GVAR ary_sub))
	.loc 1 446
	lea  rax, ary_sub[rip]
	push rax
// Line 446  1 
	.loc 1 446
	push 1
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 446 (CAST long   7 )
	.loc 1 446
// Line 446  7 
	.loc 1 446
	push 7
	pop  rax
	movsx rax, eax
	push rax
// Line 446 (CAST int   446 )
	.loc 1 446
// Line 446  446 
	.loc 1 446
	push 446
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
// Line 447 (CALL assert_expect ((CAST int   447 ):(CAST long   8 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) y 8)):) )
	.loc 1 447
// Line 447 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) y 8))
	.loc 1 447
// Line 447 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  1 )) y 8)
	.loc 1 447
// Line 447 (] (ADDR (GVAR ary_sub))  1 )
	.loc 1 447
// Line 447 (ADDR (GVAR ary_sub))
	.loc 1 447
	lea  rax, ary_sub[rip]
	push rax
// Line 447  1 
	.loc 1 447
	push 1
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 447 (CAST long   8 )
	.loc 1 447
// Line 447  8 
	.loc 1 447
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 447 (CAST int   447 )
	.loc 1 447
// Line 447  447 
	.loc 1 447
	push 447
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
// Line 448 (CALL assert_expect ((CAST int   448 ):(CAST long   11 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) x 0)):) )
	.loc 1 448
// Line 448 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) x 0))
	.loc 1 448
// Line 448 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) x 0)
	.loc 1 448
// Line 448 (] (ADDR (GVAR ary_sub))  2 )
	.loc 1 448
// Line 448 (ADDR (GVAR ary_sub))
	.loc 1 448
	lea  rax, ary_sub[rip]
	push rax
// Line 448  2 
	.loc 1 448
	push 2
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 448 (CAST long   11 )
	.loc 1 448
// Line 448  11 
	.loc 1 448
	push 11
	pop  rax
	movsx rax, eax
	push rax
// Line 448 (CAST int   448 )
	.loc 1 448
// Line 448  448 
	.loc 1 448
	push 448
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
// Line 449 (CALL assert_expect ((CAST int   449 ):(CAST long   12 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) y 8)):) )
	.loc 1 449
// Line 449 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) y 8))
	.loc 1 449
// Line 449 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  2 )) y 8)
	.loc 1 449
// Line 449 (] (ADDR (GVAR ary_sub))  2 )
	.loc 1 449
// Line 449 (ADDR (GVAR ary_sub))
	.loc 1 449
	lea  rax, ary_sub[rip]
	push rax
// Line 449  2 
	.loc 1 449
	push 2
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 449 (CAST long   12 )
	.loc 1 449
// Line 449  12 
	.loc 1 449
	push 12
	pop  rax
	movsx rax, eax
	push rax
// Line 449 (CAST int   449 )
	.loc 1 449
// Line 449  449 
	.loc 1 449
	push 449
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
// Line 450 (CALL assert_expect ((CAST int   450 ):(CAST long   30 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) x 0)):) )
	.loc 1 450
// Line 450 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) x 0))
	.loc 1 450
// Line 450 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) x 0)
	.loc 1 450
// Line 450 (] (ADDR (GVAR ary_sub))  3 )
	.loc 1 450
// Line 450 (ADDR (GVAR ary_sub))
	.loc 1 450
	lea  rax, ary_sub[rip]
	push rax
// Line 450  3 
	.loc 1 450
	push 3
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 450 (CAST long   30 )
	.loc 1 450
// Line 450  30 
	.loc 1 450
	push 30
	pop  rax
	movsx rax, eax
	push rax
// Line 450 (CAST int   450 )
	.loc 1 450
// Line 450  450 
	.loc 1 450
	push 450
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
// Line 451 (CALL assert_expect ((CAST int   451 ):(CAST long   31 ):(CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) y 8)):) )
	.loc 1 451
// Line 451 (CAST long  (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) y 8))
	.loc 1 451
// Line 451 (MEMBER (DEREF (] (ADDR (GVAR ary_sub))  3 )) y 8)
	.loc 1 451
// Line 451 (] (ADDR (GVAR ary_sub))  3 )
	.loc 1 451
// Line 451 (ADDR (GVAR ary_sub))
	.loc 1 451
	lea  rax, ary_sub[rip]
	push rax
// Line 451  3 
	.loc 1 451
	push 3
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 451 (CAST long   31 )
	.loc 1 451
// Line 451  31 
	.loc 1 451
	push 31
	pop  rax
	movsx rax, eax
	push rax
// Line 451 (CAST int   451 )
	.loc 1 451
// Line 451  451 
	.loc 1 451
	push 451
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
// Line 453 (= (LVAR 136) {{ -3 , -4 },{ -7 , -8 },{ -11 , -12 },{ -30 , -31 }})
	.loc 1 453
// Line 453  -3 
	.loc 1 453
	push -3
	lea  rax, [rbp - 136]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 453  -4 
	.loc 1 453
	push -4
	lea  rax, [rbp - 128]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 453  -7 
	.loc 1 453
	push -7
	lea  rax, [rbp - 120]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 453  -8 
	.loc 1 453
	push -8
	lea  rax, [rbp - 112]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 453  -11 
	.loc 1 453
	push -11
	lea  rax, [rbp - 104]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 453  -12 
	.loc 1 453
	push -12
	lea  rax, [rbp - 96]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 453  -30 
	.loc 1 453
	push -30
	lea  rax, [rbp - 88]
	pop  rdi
	mov  [rax], rdi
	push rdi
// Line 453  -31 
	.loc 1 453
	push -31
	lea  rax, [rbp - 80]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 454 (CALL assert_expect ((CAST int   454 ):(CAST long   -3 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) x 0)):) )
	.loc 1 454
// Line 454 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) x 0))
	.loc 1 454
// Line 454 (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) x 0)
	.loc 1 454
// Line 454 (] (ADDR (LVAR 136))  0 )
	.loc 1 454
// Line 454 (ADDR (LVAR 136))
	.loc 1 454
	lea  rax, [rbp - 136]
	push rax
// Line 454  0 
	.loc 1 454
	push 0
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 454 (CAST long   -3 )
	.loc 1 454
// Line 454  -3 
	.loc 1 454
	push -3
	pop  rax
	movsx rax, eax
	push rax
// Line 454 (CAST int   454 )
	.loc 1 454
// Line 454  454 
	.loc 1 454
	push 454
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
// Line 455 (CALL assert_expect ((CAST int   455 ):(CAST long   -4 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) y 8)):) )
	.loc 1 455
// Line 455 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) y 8))
	.loc 1 455
// Line 455 (MEMBER (DEREF (] (ADDR (LVAR 136))  0 )) y 8)
	.loc 1 455
// Line 455 (] (ADDR (LVAR 136))  0 )
	.loc 1 455
// Line 455 (ADDR (LVAR 136))
	.loc 1 455
	lea  rax, [rbp - 136]
	push rax
// Line 455  0 
	.loc 1 455
	push 0
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 455 (CAST long   -4 )
	.loc 1 455
// Line 455  -4 
	.loc 1 455
	push -4
	pop  rax
	movsx rax, eax
	push rax
// Line 455 (CAST int   455 )
	.loc 1 455
// Line 455  455 
	.loc 1 455
	push 455
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
// Line 456 (CALL assert_expect ((CAST int   456 ):(CAST long   -7 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) x 0)):) )
	.loc 1 456
// Line 456 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) x 0))
	.loc 1 456
// Line 456 (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) x 0)
	.loc 1 456
// Line 456 (] (ADDR (LVAR 136))  1 )
	.loc 1 456
// Line 456 (ADDR (LVAR 136))
	.loc 1 456
	lea  rax, [rbp - 136]
	push rax
// Line 456  1 
	.loc 1 456
	push 1
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 456 (CAST long   -7 )
	.loc 1 456
// Line 456  -7 
	.loc 1 456
	push -7
	pop  rax
	movsx rax, eax
	push rax
// Line 456 (CAST int   456 )
	.loc 1 456
// Line 456  456 
	.loc 1 456
	push 456
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
// Line 457 (CALL assert_expect ((CAST int   457 ):(CAST long   -8 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) y 8)):) )
	.loc 1 457
// Line 457 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) y 8))
	.loc 1 457
// Line 457 (MEMBER (DEREF (] (ADDR (LVAR 136))  1 )) y 8)
	.loc 1 457
// Line 457 (] (ADDR (LVAR 136))  1 )
	.loc 1 457
// Line 457 (ADDR (LVAR 136))
	.loc 1 457
	lea  rax, [rbp - 136]
	push rax
// Line 457  1 
	.loc 1 457
	push 1
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 457 (CAST long   -8 )
	.loc 1 457
// Line 457  -8 
	.loc 1 457
	push -8
	pop  rax
	movsx rax, eax
	push rax
// Line 457 (CAST int   457 )
	.loc 1 457
// Line 457  457 
	.loc 1 457
	push 457
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
// Line 458 (CALL assert_expect ((CAST int   458 ):(CAST long   -11 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) x 0)):) )
	.loc 1 458
// Line 458 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) x 0))
	.loc 1 458
// Line 458 (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) x 0)
	.loc 1 458
// Line 458 (] (ADDR (LVAR 136))  2 )
	.loc 1 458
// Line 458 (ADDR (LVAR 136))
	.loc 1 458
	lea  rax, [rbp - 136]
	push rax
// Line 458  2 
	.loc 1 458
	push 2
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 458 (CAST long   -11 )
	.loc 1 458
// Line 458  -11 
	.loc 1 458
	push -11
	pop  rax
	movsx rax, eax
	push rax
// Line 458 (CAST int   458 )
	.loc 1 458
// Line 458  458 
	.loc 1 458
	push 458
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
// Line 459 (CALL assert_expect ((CAST int   459 ):(CAST long   -12 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) y 8)):) )
	.loc 1 459
// Line 459 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) y 8))
	.loc 1 459
// Line 459 (MEMBER (DEREF (] (ADDR (LVAR 136))  2 )) y 8)
	.loc 1 459
// Line 459 (] (ADDR (LVAR 136))  2 )
	.loc 1 459
// Line 459 (ADDR (LVAR 136))
	.loc 1 459
	lea  rax, [rbp - 136]
	push rax
// Line 459  2 
	.loc 1 459
	push 2
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 459 (CAST long   -12 )
	.loc 1 459
// Line 459  -12 
	.loc 1 459
	push -12
	pop  rax
	movsx rax, eax
	push rax
// Line 459 (CAST int   459 )
	.loc 1 459
// Line 459  459 
	.loc 1 459
	push 459
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
// Line 460 (CALL assert_expect ((CAST int   460 ):(CAST long   -30 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) x 0)):) )
	.loc 1 460
// Line 460 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) x 0))
	.loc 1 460
// Line 460 (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) x 0)
	.loc 1 460
// Line 460 (] (ADDR (LVAR 136))  3 )
	.loc 1 460
// Line 460 (ADDR (LVAR 136))
	.loc 1 460
	lea  rax, [rbp - 136]
	push rax
// Line 460  3 
	.loc 1 460
	push 3
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
// Line 460 (CAST long   -30 )
	.loc 1 460
// Line 460  -30 
	.loc 1 460
	push -30
	pop  rax
	movsx rax, eax
	push rax
// Line 460 (CAST int   460 )
	.loc 1 460
// Line 460  460 
	.loc 1 460
	push 460
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
// Line 461 (CALL assert_expect ((CAST int   461 ):(CAST long   -31 ):(CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) y 8)):) )
	.loc 1 461
// Line 461 (CAST long  (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) y 8))
	.loc 1 461
// Line 461 (MEMBER (DEREF (] (ADDR (LVAR 136))  3 )) y 8)
	.loc 1 461
// Line 461 (] (ADDR (LVAR 136))  3 )
	.loc 1 461
// Line 461 (ADDR (LVAR 136))
	.loc 1 461
	lea  rax, [rbp - 136]
	push rax
// Line 461  3 
	.loc 1 461
	push 3
	pop  rdi
	pop  rax
	imul rdi, 16
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 461 (CAST long   -31 )
	.loc 1 461
// Line 461  -31 
	.loc 1 461
	push -31
	pop  rax
	movsx rax, eax
	push rax
// Line 461 (CAST int   461 )
	.loc 1 461
// Line 461  461 
	.loc 1 461
	push 461
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
.L.return.struct_initializer:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global main
// Line 464 FDECL main func ( ) int  max_offset:93
//    
//    (BLOCK(= (LVAR 40) (CAST * void   0 )):(CALL assert_expect ((CAST int   469 ):(CAST long   1 ):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   470 ):(CAST long   0 ):(CAST long   0 ):) ):(CALL assert_expect ((CAST int   471 ):(CAST long   0 ):(CAST long  (CAST long  (CAST * void   0 ))):) ):(CALL assert_expect ((CAST int   473 ):(CAST long   70 ):(CAST long  (*  10  (+  2   5 ))):) ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (GVAR str_ary)):) ):(CALL assert_expect ((CAST int   476 ):(CAST long   1979 ):(CAST long  (GVAR i)):) ):(CALL assert_expect ((CAST int   477 ):(CAST long   2015 ):(CAST long  (GVAR j)):) ):(CALL assert_expect ((CAST int   478 ):(CAST long   24 ):(CAST long  (GVAR s)):) ):(CALL assert_expect ((CAST int   480 ):(CAST long   9 ):(CAST long   9 ):) ):(CALL assert_expect ((CAST int   481 ):(CAST long   4 ):(CAST long  (+  -3   7 )):) ):(CALL assert_expect ((CAST int   482 ):(CAST long   21 ):(CAST long  (- (+  5   20 )  4 )):) ):(CALL assert_expect ((CAST int   483 ):(CAST long   21 ):(CAST long  (+  5  (*  4   4 ))):) ):(CALL assert_expect ((CAST int   484 ):(CAST long   24 ):(CAST long  (* (*  4  (-  5   2 )) (-  4   2 ))):) ):(CALL assert_expect ((CAST int   485 ):(CAST long   13 ):(CAST long  (- (+  6  (*  3   4 )) (/  15   3 ))):) ):(CALL assert_expect ((CAST int   486 ):(CAST long   33 ):(CAST long  (/ (* (+  6   3 ) (-  15   4 ))  3 )):) ):(CALL assert_expect ((CAST int   487 ):(CAST long   0 ):(CAST long  (==  3  (+  3   1 ))):) ):(CALL assert_expect ((CAST int   488 ):(CAST long   1 ):(CAST long  (!=  4  (*  4   2 ))):) ):(CALL assert_expect ((CAST int   489 ):(CAST long   0 ):(CAST long  (!=  3  (*  1   3 ))):) ):(CALL assert_expect ((CAST int   490 ):(CAST long   1 ):(CAST long  (>=  5  (-  8   4 ))):) ):(CALL assert_expect ((CAST int   491 ):(CAST long   1 ):(CAST long  (>=  5  (-  7   2 ))):) ):(CALL assert_expect ((CAST int   492 ):(CAST long   0 ):(CAST long  (>= (-  11   8 )  5 )):) ):(CALL assert_expect ((CAST int   493 ):(CAST long   1 ):(CAST long  (<= (*  2   30 )  3 )):) ):(CALL assert_expect ((CAST int   494 ):(CAST long   1 ):(CAST long  (<= (/  9   3 )  3 )):) ):(CALL assert_expect ((CAST int   495 ):(CAST long   0 ):(CAST long  (<= (-  20   18 )  3 )):) ):(CALL assert_expect ((CAST int   496 ):(CAST long   1 ):(CAST long  (== (+ (*  -5   2 )  10 )  0 )):) ):(CALL assert_expect ((CAST int   497 ):(CAST long   1 ):(CAST long  (== (/  6   2 ) (/  9   3 ))):) ):(CALL assert_expect ((CAST int   498 ):(CAST long   1 ):(CAST long  (< (+  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   499 ):(CAST long   1 ):(CAST long  (> (+  1   4 )  4 )):) ):(CALL assert_expect ((CAST int   500 ):(CAST long   0 ):(CAST long  (< (-  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   501 ):(CAST long   0 ):(CAST long  (> (-  1   4 )  4 )):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   503 ):(CAST long   0 ):(CAST long  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   504 ):(CAST long   0 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   505 ):(CAST long   0 ):(CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   506 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   507 ):(CAST long   1 ):(CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   508 ):(CAST long   2 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   509 ):(CAST long   1 ):(CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   510 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   511 ):(CAST long   1 ):(CAST long  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   512 ):(CAST long   3 ):(CAST long  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   514 ):(CAST long   0 ):(CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   515 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   517 ):(CAST long   0 ):(CAST long  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))):) ):(CALL assert_expect ((CAST int   518 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   519 ):(CAST long   1 ):(CAST long  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   520 ):(CAST long   1 ):(CAST long  (LVAR 44)):) ):(CALL assert_expect ((CAST int   521 ):(CAST long   1 ):(CAST long  (!  0 )):) ):(CALL assert_expect ((CAST int   522 ):(CAST long   0 ):(CAST long  (!  1 )):) ):(CALL assert_expect ((CAST int   523 ):(CAST long   0 ):(CAST long  (! (! (!  1 )))):) ):(CALL assert_expect ((CAST int   525 ):(CAST long   256 ):(CAST long  (<<  1   8 )):) ):(CALL assert_expect ((CAST int   526 ):(CAST long   32 ):(CAST long  (>>  512   4 )):) ):(CALL assert_expect ((CAST int   530 ):(CAST long   1 ):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   531 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   532 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   533 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   534 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   535 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   536 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   537 ):(CAST long   8 ):(CAST long   8 ):) ):(= (LVAR 45)  254 ):(CALL assert_expect ((CAST int   539 ):(CAST long   -2 ):(CAST long  (LVAR 45)):) ):(= (LVAR 49)  100 ):(CALL assert_expect ((CAST int   541 ):(CAST long   100 ):(CAST long  (LVAR 49)):) ):(= (LVAR 53)  -100 ):(CALL assert_expect ((CAST int   543 ):(CAST long   -100 ):(CAST long  (LVAR 53)):) ):(CALL assert_expect ((CAST int   547 ):(CAST long   131585 ):(CAST long  (CAST int   131585 )):) ):(CALL assert_expect ((CAST int   548 ):(CAST long   513 ):(CAST long  (CAST short   131585 )):) ):(CALL assert_expect ((CAST int   549 ):(CAST long   1 ):(CAST long  (CAST char   131585 )):) ):(CALL assert_expect ((CAST int   550 ):(CAST long   1 ):(CAST long  (CAST long   1 )):) ):(CALL assert_expect ((CAST int   552 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   553 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   554 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   555 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   557 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   558 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   559 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   560 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   561 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   562 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   563 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   564 ):(CAST long   8 ):(CAST long   8 ):) ):(CALL assert_expect ((CAST int   566 ):(CAST long  (CAST long   -5 )):(CAST long  (+  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   567 ):(CAST long  (CAST long   -15 )):(CAST long  (-  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   568 ):(CAST long  (CAST long   -50 )):(CAST long  (*  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   569 ):(CAST long  (CAST long   -2 )):(CAST long  (/  -10  (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   571 ):(CAST long   1 ):(CAST long  (< (CAST long   -1 )  -2 )):) ):(CALL assert_expect ((CAST int   572 ):(CAST long   1 ):(CAST long  (<= (CAST long   -1 )  -2 )):) ):(CALL assert_expect ((CAST int   573 ):(CAST long   0 ):(CAST long  (>  -2  (CAST long   -1 ))):) ):(CALL assert_expect ((CAST int   574 ):(CAST long   0 ):(CAST long  (>=  -2  (CAST long   -1 ))):) ):(CALL assert_expect ((CAST int   576 ):(CAST long   1 ):(CAST long  (<  -1  (CAST long   -2 ))):) ):(CALL assert_expect ((CAST int   577 ):(CAST long   1 ):(CAST long  (<=  -1  (CAST long   -2 ))):) ):(CALL assert_expect ((CAST int   578 ):(CAST long   0 ):(CAST long  (> (CAST long   -2 )  -1 )):) ):(CALL assert_expect ((CAST int   579 ):(CAST long   0 ):(CAST long  (>= (CAST long   -2 )  -1 )):) ):(CALL assert_expect ((CAST int   581 ):(CAST long   0 ):(CAST long  (CAST int  (+ (+  2147483647   2147483647 )  2 ))):) ):(= (LVAR 77)  -1 ):(CALL assert_expect ((CAST int   584 ):(CAST long  (CAST long   -1 )):(CAST long  (LVAR 77)):) ):(= (LVAR 81)  10 ):(CALL assert_expect ((CAST int   589 ):(CAST long   15 ):(CAST long  (= (LVAR 81) (+= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   590 ):(CAST long   15 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   591 ):(CAST long   8 ):(CAST long  (= (LVAR 81) (-= (LVAR 81)  7 ))):) ):(CALL assert_expect ((CAST int   592 ):(CAST long   8 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   593 ):(CAST long   40 ):(CAST long  (= (LVAR 81) (*= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   594 ):(CAST long   40 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   595 ):(CAST long   4 ):(CAST long  (= (LVAR 81) (/= (LVAR 81)  10 ))):) ):(CALL assert_expect ((CAST int   596 ):(CAST long   4 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   599 ):(CAST long   4 ):(CAST long  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   600 ):(CAST long   5 ):(CAST long  (LVAR 81)):) ):(CALL assert_expect ((CAST int   601 ):(CAST long   5 ):(CAST long  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   602 ):(CAST long   4 ):(CAST long  (LVAR 81)):) ):(= (LVAR 85) (/  100  (LVAR 81))):(CALL assert_expect ((CAST int   607 ):(CAST long   25 ):(CAST long  (LVAR 85)):) ):(= (LVAR 89)  77 ):(IF (== (LVAR 89)  77 ) (= (LVAR 89)  55 ) (= (LVAR 89)  66 )):(CALL assert_expect ((CAST int   615 ):(CAST long   55 ):(CAST long  (LVAR 89)):) ):(CALL assert_expect ((CAST int   616 ):(CAST long   1346269 ):(CAST long  (CALL fibo ((CAST int   30 ):) )):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL struct_initializer () ):(CALL assert_expect ((CAST int   639 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   640 ):(CAST long   4 ):(CAST long   4 ):) ):(CALL assert_expect ((CAST int   641 ):(CAST long   10 ):(CAST long   10 ):) ):(CALL assert_expect ((CAST int   642 ):(CAST long   12 ):(CAST long   12 ):) ):(CALL assert_expect ((CAST int   644 ):(CAST long   11 ):(CAST long  (CALL switch_ ((CAST int   1 ):) )):) ):(CALL assert_expect ((CAST int   645 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   2 ):) )):) ):(CALL assert_expect ((CAST int   646 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   3 ):) )):) ):(CALL assert_expect ((CAST int   647 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   4 ):) )):) ):(CALL assert_expect ((CAST int   648 ):(CAST long   15 ):(CAST long  (CALL switch_ ((CAST int   5 ):) )):) ):(CALL assert_expect ((CAST int   649 ):(CAST long   15 ):(CAST long  (CALL switch_ ((CAST int   6 ):) )):) ):(CALL assert_expect ((CAST int   652 ):(CAST long   11 ):(CAST long  (CALL switch2_ ((CAST char   97 ):) )):) ):(CALL assert_expect ((CAST int   653 ):(CAST long   12 ):(CAST long  (CALL switch2_ ((CAST char   98 ):) )):) ):(CALL assert_expect ((CAST int   654 ):(CAST long   12 ):(CAST long  (CALL switch2_ ((CAST char   99 ):) )):) ):(CALL assert_expect ((CAST int   655 ):(CAST long   15 ):(CAST long  (CALL switch2_ ((CAST char   122 ):) )):) ):(CALL assert_expect ((CAST int   658 ):(CAST long   92 ):(CAST long  (CALL q8 () )):) ):(CALL assert_expect ((CAST int   661 ):(CAST long   0 ):(CAST long   0 ):) ):(CALL assert_expect ((CAST int   662 ):(CAST long   1 ):(CAST long   1 ):) ):(CALL assert_expect ((CAST int   663 ):(CAST long   2 ):(CAST long   2 ):) ):(CALL assert_expect ((CAST int   664 ):(CAST long   3 ):(CAST long   3 ):) ):(CALL assert_expect ((CAST int   666 ):(CAST long   15 ):(CAST long  (|  13   7 )):) ):(CALL assert_expect ((CAST int   667 ):(CAST long   5115 ):(CAST long  (|  938   5073 )):) ):(CALL assert_expect ((CAST int   668 ):(CAST long   5 ):(CAST long  (&  13   7 )):) ):(CALL assert_expect ((CAST int   669 ):(CAST long   896 ):(CAST long  (&  938   5073 )):) ):(CALL assert_expect ((CAST int   670 ):(CAST long   10 ):(CAST long  (^  13   7 )):) ):(CALL assert_expect ((CAST int   671 ):(CAST long   4219 ):(CAST long  (^  938   5073 )):) ):(CALL assert_expect ((CAST int   673 ):(CAST long   29 ):(CAST long  (>>  938   5 )):) ):(CALL assert_expect ((CAST int   674 ):(CAST long   1664 ):(CAST long  (<<  13   7 )):) ):(CALL printf ((CAST * char  (ADDR  "passed tests.\n" )):) ):(RETURN  0 ):))
	.loc 1 464
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 96
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 468 (= (LVAR 40) (CAST * void   0 ))
	.loc 1 468
// Line 467 (CAST * void   0 )
	.loc 1 467
// Line 467  0 
	.loc 1 467
	push 0
	pop  rax
	mov  eax, eax
	push rax
	lea  rax, [rbp - 40]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 469 (CALL assert_expect ((CAST int   469 ):(CAST long   1 ):(CAST long   1 ):) )
	.loc 1 469
// Line 465 (CAST long   1 )
	.loc 1 465
// Line 465  1 
	.loc 1 465
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 469 (CAST long   1 )
	.loc 1 469
// Line 469  1 
	.loc 1 469
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 469 (CAST int   469 )
	.loc 1 469
// Line 469  469 
	.loc 1 469
	push 469
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
// Line 470 (CALL assert_expect ((CAST int   470 ):(CAST long   0 ):(CAST long   0 ):) )
	.loc 1 470
// Line 466 (CAST long   0 )
	.loc 1 466
// Line 466  0 
	.loc 1 466
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 470 (CAST long   0 )
	.loc 1 470
// Line 470  0 
	.loc 1 470
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 470 (CAST int   470 )
	.loc 1 470
// Line 470  470 
	.loc 1 470
	push 470
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
// Line 471 (CALL assert_expect ((CAST int   471 ):(CAST long   0 ):(CAST long  (CAST long  (CAST * void   0 ))):) )
	.loc 1 471
// Line 471 (CAST long  (CAST long  (CAST * void   0 )))
	.loc 1 471
// Line 471 (CAST long  (CAST * void   0 ))
	.loc 1 471
// Line 467 (CAST * void   0 )
	.loc 1 467
// Line 467  0 
	.loc 1 467
	push 0
	pop  rax
	mov  eax, eax
	push rax
// Line 471 (CAST long   0 )
	.loc 1 471
// Line 471  0 
	.loc 1 471
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 471 (CAST int   471 )
	.loc 1 471
// Line 471  471 
	.loc 1 471
	push 471
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
// Line 473 (CALL assert_expect ((CAST int   473 ):(CAST long   70 ):(CAST long  (*  10  (+  2   5 ))):) )
	.loc 1 473
// Line 472 (CAST long  (*  10  (+  2   5 )))
	.loc 1 472
// Line 472 (*  10  (+  2   5 ))
	.loc 1 472
// Line 473  10 
	.loc 1 473
	push 10
// Line 472 (+  2   5 )
	.loc 1 472
// Line 473  2 
	.loc 1 473
	push 2
// Line 473  5 
	.loc 1 473
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 473 (CAST long   70 )
	.loc 1 473
// Line 473  70 
	.loc 1 473
	push 70
	pop  rax
	movsx rax, eax
	push rax
// Line 473 (CAST int   473 )
	.loc 1 473
// Line 473  473 
	.loc 1 473
	push 473
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
// Line 474 (CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (GVAR str_ary)):) )
	.loc 1 474
// Line 474 (ADDR (GVAR str_ary))
	.loc 1 474
	lea  rax, str_ary[rip]
	push rax
// Line 474 (CAST * char  (ADDR  "%s" ))
	.loc 1 474
// Line 474 (ADDR  "%s" )
	.loc 1 474
	lea  rax, .LS000032[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000304
	mov  rax, 0
	call printf
	jmp  .L000305
.L000304:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000305:
	push rax
	pop  rax
// Line 476 (CALL assert_expect ((CAST int   476 ):(CAST long   1979 ):(CAST long  (GVAR i)):) )
	.loc 1 476
// Line 476 (CAST long  (GVAR i))
	.loc 1 476
// Line 476 (GVAR i)
	.loc 1 476
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 476 (CAST long   1979 )
	.loc 1 476
// Line 476  1979 
	.loc 1 476
	push 1979
	pop  rax
	movsx rax, eax
	push rax
// Line 476 (CAST int   476 )
	.loc 1 476
// Line 476  476 
	.loc 1 476
	push 476
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
// Line 477 (CALL assert_expect ((CAST int   477 ):(CAST long   2015 ):(CAST long  (GVAR j)):) )
	.loc 1 477
// Line 477 (CAST long  (GVAR j))
	.loc 1 477
// Line 477 (GVAR j)
	.loc 1 477
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 477 (CAST long   2015 )
	.loc 1 477
// Line 477  2015 
	.loc 1 477
	push 2015
	pop  rax
	movsx rax, eax
	push rax
// Line 477 (CAST int   477 )
	.loc 1 477
// Line 477  477 
	.loc 1 477
	push 477
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000308
	mov  rax, 0
	call assert_expect
	jmp  .L000309
.L000308:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000309:
	push rax
	pop  rax
// Line 478 (CALL assert_expect ((CAST int   478 ):(CAST long   24 ):(CAST long  (GVAR s)):) )
	.loc 1 478
// Line 478 (CAST long  (GVAR s))
	.loc 1 478
// Line 478 (GVAR s)
	.loc 1 478
	lea  rax, s[rip]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 478 (CAST long   24 )
	.loc 1 478
// Line 478  24 
	.loc 1 478
	push 24
	pop  rax
	movsx rax, eax
	push rax
// Line 478 (CAST int   478 )
	.loc 1 478
// Line 478  478 
	.loc 1 478
	push 478
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
// Line 480 (CALL assert_expect ((CAST int   480 ):(CAST long   9 ):(CAST long   9 ):) )
	.loc 1 480
// Line 480 (CAST long   9 )
	.loc 1 480
// Line 480  9 
	.loc 1 480
	push 9
	pop  rax
	movsx rax, eax
	push rax
// Line 480 (CAST long   9 )
	.loc 1 480
// Line 480  9 
	.loc 1 480
	push 9
	pop  rax
	movsx rax, eax
	push rax
// Line 480 (CAST int   480 )
	.loc 1 480
// Line 480  480 
	.loc 1 480
	push 480
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000312
	mov  rax, 0
	call assert_expect
	jmp  .L000313
.L000312:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000313:
	push rax
	pop  rax
// Line 481 (CALL assert_expect ((CAST int   481 ):(CAST long   4 ):(CAST long  (+  -3   7 )):) )
	.loc 1 481
// Line 481 (CAST long  (+  -3   7 ))
	.loc 1 481
// Line 481 (+  -3   7 )
	.loc 1 481
// Line 481  -3 
	.loc 1 481
	push -3
// Line 481  7 
	.loc 1 481
	push 7
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 481 (CAST long   4 )
	.loc 1 481
// Line 481  4 
	.loc 1 481
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 481 (CAST int   481 )
	.loc 1 481
// Line 481  481 
	.loc 1 481
	push 481
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
// Line 482 (CALL assert_expect ((CAST int   482 ):(CAST long   21 ):(CAST long  (- (+  5   20 )  4 )):) )
	.loc 1 482
// Line 482 (CAST long  (- (+  5   20 )  4 ))
	.loc 1 482
// Line 482 (- (+  5   20 )  4 )
	.loc 1 482
// Line 482 (+  5   20 )
	.loc 1 482
// Line 482  5 
	.loc 1 482
	push 5
// Line 482  20 
	.loc 1 482
	push 20
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 482  4 
	.loc 1 482
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 482 (CAST long   21 )
	.loc 1 482
// Line 482  21 
	.loc 1 482
	push 21
	pop  rax
	movsx rax, eax
	push rax
// Line 482 (CAST int   482 )
	.loc 1 482
// Line 482  482 
	.loc 1 482
	push 482
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000316
	mov  rax, 0
	call assert_expect
	jmp  .L000317
.L000316:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000317:
	push rax
	pop  rax
// Line 483 (CALL assert_expect ((CAST int   483 ):(CAST long   21 ):(CAST long  (+  5  (*  4   4 ))):) )
	.loc 1 483
// Line 483 (CAST long  (+  5  (*  4   4 )))
	.loc 1 483
// Line 483 (+  5  (*  4   4 ))
	.loc 1 483
// Line 483  5 
	.loc 1 483
	push 5
// Line 483 (*  4   4 )
	.loc 1 483
// Line 483  4 
	.loc 1 483
	push 4
// Line 483  4 
	.loc 1 483
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 483 (CAST long   21 )
	.loc 1 483
// Line 483  21 
	.loc 1 483
	push 21
	pop  rax
	movsx rax, eax
	push rax
// Line 483 (CAST int   483 )
	.loc 1 483
// Line 483  483 
	.loc 1 483
	push 483
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
// Line 484 (CALL assert_expect ((CAST int   484 ):(CAST long   24 ):(CAST long  (* (*  4  (-  5   2 )) (-  4   2 ))):) )
	.loc 1 484
// Line 484 (CAST long  (* (*  4  (-  5   2 )) (-  4   2 )))
	.loc 1 484
// Line 484 (* (*  4  (-  5   2 )) (-  4   2 ))
	.loc 1 484
// Line 484 (*  4  (-  5   2 ))
	.loc 1 484
// Line 484  4 
	.loc 1 484
	push 4
// Line 484 (-  5   2 )
	.loc 1 484
// Line 484  5 
	.loc 1 484
	push 5
// Line 484  2 
	.loc 1 484
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 484 (-  4   2 )
	.loc 1 484
// Line 484  4 
	.loc 1 484
	push 4
// Line 484  2 
	.loc 1 484
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 484 (CAST long   24 )
	.loc 1 484
// Line 484  24 
	.loc 1 484
	push 24
	pop  rax
	movsx rax, eax
	push rax
// Line 484 (CAST int   484 )
	.loc 1 484
// Line 484  484 
	.loc 1 484
	push 484
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
// Line 485 (CALL assert_expect ((CAST int   485 ):(CAST long   13 ):(CAST long  (- (+  6  (*  3   4 )) (/  15   3 ))):) )
	.loc 1 485
// Line 485 (CAST long  (- (+  6  (*  3   4 )) (/  15   3 )))
	.loc 1 485
// Line 485 (- (+  6  (*  3   4 )) (/  15   3 ))
	.loc 1 485
// Line 485 (+  6  (*  3   4 ))
	.loc 1 485
// Line 485  6 
	.loc 1 485
	push 6
// Line 485 (*  3   4 )
	.loc 1 485
// Line 485  3 
	.loc 1 485
	push 3
// Line 485  4 
	.loc 1 485
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 485 (/  15   3 )
	.loc 1 485
// Line 485  15 
	.loc 1 485
	push 15
// Line 485  3 
	.loc 1 485
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
	pop  rax
	movsx rax, eax
	push rax
// Line 485 (CAST long   13 )
	.loc 1 485
// Line 485  13 
	.loc 1 485
	push 13
	pop  rax
	movsx rax, eax
	push rax
// Line 485 (CAST int   485 )
	.loc 1 485
// Line 485  485 
	.loc 1 485
	push 485
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
// Line 486 (CALL assert_expect ((CAST int   486 ):(CAST long   33 ):(CAST long  (/ (* (+  6   3 ) (-  15   4 ))  3 )):) )
	.loc 1 486
// Line 486 (CAST long  (/ (* (+  6   3 ) (-  15   4 ))  3 ))
	.loc 1 486
// Line 486 (/ (* (+  6   3 ) (-  15   4 ))  3 )
	.loc 1 486
// Line 486 (* (+  6   3 ) (-  15   4 ))
	.loc 1 486
// Line 486 (+  6   3 )
	.loc 1 486
// Line 486  6 
	.loc 1 486
	push 6
// Line 486  3 
	.loc 1 486
	push 3
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 486 (-  15   4 )
	.loc 1 486
// Line 486  15 
	.loc 1 486
	push 15
// Line 486  4 
	.loc 1 486
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 486  3 
	.loc 1 486
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 486 (CAST long   33 )
	.loc 1 486
// Line 486  33 
	.loc 1 486
	push 33
	pop  rax
	movsx rax, eax
	push rax
// Line 486 (CAST int   486 )
	.loc 1 486
// Line 486  486 
	.loc 1 486
	push 486
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
// Line 487 (CALL assert_expect ((CAST int   487 ):(CAST long   0 ):(CAST long  (==  3  (+  3   1 ))):) )
	.loc 1 487
// Line 487 (CAST long  (==  3  (+  3   1 )))
	.loc 1 487
// Line 487 (==  3  (+  3   1 ))
	.loc 1 487
// Line 487  3 
	.loc 1 487
	push 3
// Line 487 (+  3   1 )
	.loc 1 487
// Line 487  3 
	.loc 1 487
	push 3
// Line 487  1 
	.loc 1 487
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
	pop  rax
	movsx rax, eax
	push rax
// Line 487 (CAST long   0 )
	.loc 1 487
// Line 487  0 
	.loc 1 487
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 487 (CAST int   487 )
	.loc 1 487
// Line 487  487 
	.loc 1 487
	push 487
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
// Line 488 (CALL assert_expect ((CAST int   488 ):(CAST long   1 ):(CAST long  (!=  4  (*  4   2 ))):) )
	.loc 1 488
// Line 488 (CAST long  (!=  4  (*  4   2 )))
	.loc 1 488
// Line 488 (!=  4  (*  4   2 ))
	.loc 1 488
// Line 488  4 
	.loc 1 488
	push 4
// Line 488 (*  4   2 )
	.loc 1 488
// Line 488  4 
	.loc 1 488
	push 4
// Line 488  2 
	.loc 1 488
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
	pop  rax
	movsx rax, eax
	push rax
// Line 488 (CAST long   1 )
	.loc 1 488
// Line 488  1 
	.loc 1 488
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 488 (CAST int   488 )
	.loc 1 488
// Line 488  488 
	.loc 1 488
	push 488
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
// Line 489 (CALL assert_expect ((CAST int   489 ):(CAST long   0 ):(CAST long  (!=  3  (*  1   3 ))):) )
	.loc 1 489
// Line 489 (CAST long  (!=  3  (*  1   3 )))
	.loc 1 489
// Line 489 (!=  3  (*  1   3 ))
	.loc 1 489
// Line 489  3 
	.loc 1 489
	push 3
// Line 489 (*  1   3 )
	.loc 1 489
// Line 489  1 
	.loc 1 489
	push 1
// Line 489  3 
	.loc 1 489
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
	pop  rax
	movsx rax, eax
	push rax
// Line 489 (CAST long   0 )
	.loc 1 489
// Line 489  0 
	.loc 1 489
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 489 (CAST int   489 )
	.loc 1 489
// Line 489  489 
	.loc 1 489
	push 489
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
// Line 490 (CALL assert_expect ((CAST int   490 ):(CAST long   1 ):(CAST long  (>=  5  (-  8   4 ))):) )
	.loc 1 490
// Line 490 (CAST long  (>=  5  (-  8   4 )))
	.loc 1 490
// Line 490 (>=  5  (-  8   4 ))
	.loc 1 490
// Line 490  5 
	.loc 1 490
	push 5
// Line 490 (-  8   4 )
	.loc 1 490
// Line 490  8 
	.loc 1 490
	push 8
// Line 490  4 
	.loc 1 490
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
	pop  rax
	movsx rax, eax
	push rax
// Line 490 (CAST long   1 )
	.loc 1 490
// Line 490  1 
	.loc 1 490
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 490 (CAST int   490 )
	.loc 1 490
// Line 490  490 
	.loc 1 490
	push 490
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
// Line 491 (CALL assert_expect ((CAST int   491 ):(CAST long   1 ):(CAST long  (>=  5  (-  7   2 ))):) )
	.loc 1 491
// Line 491 (CAST long  (>=  5  (-  7   2 )))
	.loc 1 491
// Line 491 (>=  5  (-  7   2 ))
	.loc 1 491
// Line 491  5 
	.loc 1 491
	push 5
// Line 491 (-  7   2 )
	.loc 1 491
// Line 491  7 
	.loc 1 491
	push 7
// Line 491  2 
	.loc 1 491
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
	pop  rax
	movsx rax, eax
	push rax
// Line 491 (CAST long   1 )
	.loc 1 491
// Line 491  1 
	.loc 1 491
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 491 (CAST int   491 )
	.loc 1 491
// Line 491  491 
	.loc 1 491
	push 491
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
// Line 492 (CALL assert_expect ((CAST int   492 ):(CAST long   0 ):(CAST long  (>= (-  11   8 )  5 )):) )
	.loc 1 492
// Line 492 (CAST long  (>= (-  11   8 )  5 ))
	.loc 1 492
// Line 492 (>= (-  11   8 )  5 )
	.loc 1 492
// Line 492 (-  11   8 )
	.loc 1 492
// Line 492  11 
	.loc 1 492
	push 11
// Line 492  8 
	.loc 1 492
	push 8
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 492  5 
	.loc 1 492
	push 5
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 492 (CAST long   0 )
	.loc 1 492
// Line 492  0 
	.loc 1 492
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 492 (CAST int   492 )
	.loc 1 492
// Line 492  492 
	.loc 1 492
	push 492
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
// Line 493 (CALL assert_expect ((CAST int   493 ):(CAST long   1 ):(CAST long  (<= (*  2   30 )  3 )):) )
	.loc 1 493
// Line 493 (CAST long  (<= (*  2   30 )  3 ))
	.loc 1 493
// Line 493 (<= (*  2   30 )  3 )
	.loc 1 493
// Line 493 (*  2   30 )
	.loc 1 493
// Line 493  2 
	.loc 1 493
	push 2
// Line 493  30 
	.loc 1 493
	push 30
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 493  3 
	.loc 1 493
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 493 (CAST long   1 )
	.loc 1 493
// Line 493  1 
	.loc 1 493
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 493 (CAST int   493 )
	.loc 1 493
// Line 493  493 
	.loc 1 493
	push 493
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
// Line 494 (CALL assert_expect ((CAST int   494 ):(CAST long   1 ):(CAST long  (<= (/  9   3 )  3 )):) )
	.loc 1 494
// Line 494 (CAST long  (<= (/  9   3 )  3 ))
	.loc 1 494
// Line 494 (<= (/  9   3 )  3 )
	.loc 1 494
// Line 494 (/  9   3 )
	.loc 1 494
// Line 494  9 
	.loc 1 494
	push 9
// Line 494  3 
	.loc 1 494
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 494  3 
	.loc 1 494
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 494 (CAST long   1 )
	.loc 1 494
// Line 494  1 
	.loc 1 494
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 494 (CAST int   494 )
	.loc 1 494
// Line 494  494 
	.loc 1 494
	push 494
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
// Line 495 (CALL assert_expect ((CAST int   495 ):(CAST long   0 ):(CAST long  (<= (-  20   18 )  3 )):) )
	.loc 1 495
// Line 495 (CAST long  (<= (-  20   18 )  3 ))
	.loc 1 495
// Line 495 (<= (-  20   18 )  3 )
	.loc 1 495
// Line 495 (-  20   18 )
	.loc 1 495
// Line 495  20 
	.loc 1 495
	push 20
// Line 495  18 
	.loc 1 495
	push 18
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 495  3 
	.loc 1 495
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 495 (CAST long   0 )
	.loc 1 495
// Line 495  0 
	.loc 1 495
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 495 (CAST int   495 )
	.loc 1 495
// Line 495  495 
	.loc 1 495
	push 495
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
// Line 496 (CALL assert_expect ((CAST int   496 ):(CAST long   1 ):(CAST long  (== (+ (*  -5   2 )  10 )  0 )):) )
	.loc 1 496
// Line 496 (CAST long  (== (+ (*  -5   2 )  10 )  0 ))
	.loc 1 496
// Line 496 (== (+ (*  -5   2 )  10 )  0 )
	.loc 1 496
// Line 496 (+ (*  -5   2 )  10 )
	.loc 1 496
// Line 496 (*  -5   2 )
	.loc 1 496
// Line 496  -5 
	.loc 1 496
	push -5
// Line 496  2 
	.loc 1 496
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 496  10 
	.loc 1 496
	push 10
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 496  0 
	.loc 1 496
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 496 (CAST long   1 )
	.loc 1 496
// Line 496  1 
	.loc 1 496
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 496 (CAST int   496 )
	.loc 1 496
// Line 496  496 
	.loc 1 496
	push 496
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
// Line 497 (CALL assert_expect ((CAST int   497 ):(CAST long   1 ):(CAST long  (== (/  6   2 ) (/  9   3 ))):) )
	.loc 1 497
// Line 497 (CAST long  (== (/  6   2 ) (/  9   3 )))
	.loc 1 497
// Line 497 (== (/  6   2 ) (/  9   3 ))
	.loc 1 497
// Line 497 (/  6   2 )
	.loc 1 497
// Line 497  6 
	.loc 1 497
	push 6
// Line 497  2 
	.loc 1 497
	push 2
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 497 (/  9   3 )
	.loc 1 497
// Line 497  9 
	.loc 1 497
	push 9
// Line 497  3 
	.loc 1 497
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
	pop  rax
	movsx rax, eax
	push rax
// Line 497 (CAST long   1 )
	.loc 1 497
// Line 497  1 
	.loc 1 497
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 497 (CAST int   497 )
	.loc 1 497
// Line 497  497 
	.loc 1 497
	push 497
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
// Line 498 (CALL assert_expect ((CAST int   498 ):(CAST long   1 ):(CAST long  (< (+  4   1 )  4 )):) )
	.loc 1 498
// Line 498 (CAST long  (< (+  4   1 )  4 ))
	.loc 1 498
// Line 498 (< (+  4   1 )  4 )
	.loc 1 498
// Line 498 (+  4   1 )
	.loc 1 498
// Line 498  4 
	.loc 1 498
	push 4
// Line 498  1 
	.loc 1 498
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 498  4 
	.loc 1 498
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 498 (CAST long   1 )
	.loc 1 498
// Line 498  1 
	.loc 1 498
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 498 (CAST int   498 )
	.loc 1 498
// Line 498  498 
	.loc 1 498
	push 498
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
// Line 499 (CALL assert_expect ((CAST int   499 ):(CAST long   1 ):(CAST long  (> (+  1   4 )  4 )):) )
	.loc 1 499
// Line 499 (CAST long  (> (+  1   4 )  4 ))
	.loc 1 499
// Line 499 (> (+  1   4 )  4 )
	.loc 1 499
// Line 499 (+  1   4 )
	.loc 1 499
// Line 499  1 
	.loc 1 499
	push 1
// Line 499  4 
	.loc 1 499
	push 4
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 499  4 
	.loc 1 499
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 499 (CAST long   1 )
	.loc 1 499
// Line 499  1 
	.loc 1 499
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 499 (CAST int   499 )
	.loc 1 499
// Line 499  499 
	.loc 1 499
	push 499
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
// Line 500 (CALL assert_expect ((CAST int   500 ):(CAST long   0 ):(CAST long  (< (-  4   1 )  4 )):) )
	.loc 1 500
// Line 500 (CAST long  (< (-  4   1 )  4 ))
	.loc 1 500
// Line 500 (< (-  4   1 )  4 )
	.loc 1 500
// Line 500 (-  4   1 )
	.loc 1 500
// Line 500  4 
	.loc 1 500
	push 4
// Line 500  1 
	.loc 1 500
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 500  4 
	.loc 1 500
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 500 (CAST long   0 )
	.loc 1 500
// Line 500  0 
	.loc 1 500
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 500 (CAST int   500 )
	.loc 1 500
// Line 500  500 
	.loc 1 500
	push 500
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
// Line 501 (CALL assert_expect ((CAST int   501 ):(CAST long   0 ):(CAST long  (> (-  1   4 )  4 )):) )
	.loc 1 501
// Line 501 (CAST long  (> (-  1   4 )  4 ))
	.loc 1 501
// Line 501 (> (-  1   4 )  4 )
	.loc 1 501
// Line 501 (-  1   4 )
	.loc 1 501
// Line 501  1 
	.loc 1 501
	push 1
// Line 501  4 
	.loc 1 501
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 501  4 
	.loc 1 501
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 501 (CAST long   0 )
	.loc 1 501
// Line 501  0 
	.loc 1 501
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 501 (CAST int   501 )
	.loc 1 501
// Line 501  501 
	.loc 1 501
	push 501
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000354
	mov  rax, 0
	call assert_expect
	jmp  .L000355
.L000354:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000355:
	push rax
	pop  rax
// Line 502 (= (LVAR 44)  0 )
	.loc 1 502
// Line 502  0 
	.loc 1 502
	push 0
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 503 (CALL assert_expect ((CAST int   503 ):(CAST long   0 ):(CAST long  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 503
// Line 503 (CAST long  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 503
// Line 503 (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 503
// Line 503  0 
	.loc 1 503
	push 0
	pop  rax
	cmp  eax, 0
	je   .L000356
// Line 503 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 503
// Line 503 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 503
// Line 503 (++ (LVAR 44)  1 )
	.loc 1 503
// Line 503 (LVAR 44)
	.loc 1 503
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 503  1 
	.loc 1 503
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 503  1 
	.loc 1 503
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000356
	mov  rax, 1
	jmp  .L000357
.L000356:
	mov  rax, 0
.L000357:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 503 (CAST long   0 )
	.loc 1 503
// Line 503  0 
	.loc 1 503
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 503 (CAST int   503 )
	.loc 1 503
// Line 503  503 
	.loc 1 503
	push 503
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000358
	mov  rax, 0
	call assert_expect
	jmp  .L000359
.L000358:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000359:
	push rax
	pop  rax
// Line 504 (CALL assert_expect ((CAST int   504 ):(CAST long   0 ):(CAST long  (LVAR 44)):) )
	.loc 1 504
// Line 504 (CAST long  (LVAR 44))
	.loc 1 504
// Line 504 (LVAR 44)
	.loc 1 504
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 504 (CAST long   0 )
	.loc 1 504
// Line 504  0 
	.loc 1 504
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 504 (CAST int   504 )
	.loc 1 504
// Line 504  504 
	.loc 1 504
	push 504
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
// Line 505 (CALL assert_expect ((CAST int   505 ):(CAST long   0 ):(CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 505
// Line 505 (CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 505
// Line 505 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 505
// Line 505  1 
	.loc 1 505
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000362
// Line 505 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 505
// Line 505 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 505
// Line 505 (++ (LVAR 44)  1 )
	.loc 1 505
// Line 505 (LVAR 44)
	.loc 1 505
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 505  1 
	.loc 1 505
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 505  1 
	.loc 1 505
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000362
	mov  rax, 1
	jmp  .L000363
.L000362:
	mov  rax, 0
.L000363:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 505 (CAST long   0 )
	.loc 1 505
// Line 505  0 
	.loc 1 505
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 505 (CAST int   505 )
	.loc 1 505
// Line 505  505 
	.loc 1 505
	push 505
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000364
	mov  rax, 0
	call assert_expect
	jmp  .L000365
.L000364:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000365:
	push rax
	pop  rax
// Line 506 (CALL assert_expect ((CAST int   506 ):(CAST long   1 ):(CAST long  (LVAR 44)):) )
	.loc 1 506
// Line 506 (CAST long  (LVAR 44))
	.loc 1 506
// Line 506 (LVAR 44)
	.loc 1 506
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 506 (CAST long   1 )
	.loc 1 506
// Line 506  1 
	.loc 1 506
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 506 (CAST int   506 )
	.loc 1 506
// Line 506  506 
	.loc 1 506
	push 506
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000366
	mov  rax, 0
	call assert_expect
	jmp  .L000367
.L000366:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000367:
	push rax
	pop  rax
// Line 507 (CALL assert_expect ((CAST int   507 ):(CAST long   1 ):(CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 507
// Line 507 (CAST long  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 507
// Line 507 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 507
// Line 507  1 
	.loc 1 507
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000368
// Line 507 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 507
// Line 507 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 507
// Line 507 (++ (LVAR 44)  1 )
	.loc 1 507
// Line 507 (LVAR 44)
	.loc 1 507
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 507  1 
	.loc 1 507
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 507  1 
	.loc 1 507
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000368
	mov  rax, 1
	jmp  .L000369
.L000368:
	mov  rax, 0
.L000369:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 507 (CAST long   1 )
	.loc 1 507
// Line 507  1 
	.loc 1 507
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 507 (CAST int   507 )
	.loc 1 507
// Line 507  507 
	.loc 1 507
	push 507
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
// Line 508 (CALL assert_expect ((CAST int   508 ):(CAST long   2 ):(CAST long  (LVAR 44)):) )
	.loc 1 508
// Line 508 (CAST long  (LVAR 44))
	.loc 1 508
// Line 508 (LVAR 44)
	.loc 1 508
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 508 (CAST long   2 )
	.loc 1 508
// Line 508  2 
	.loc 1 508
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 508 (CAST int   508 )
	.loc 1 508
// Line 508  508 
	.loc 1 508
	push 508
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000372
	mov  rax, 0
	call assert_expect
	jmp  .L000373
.L000372:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000373:
	push rax
	pop  rax
// Line 509 (CALL assert_expect ((CAST int   509 ):(CAST long   1 ):(CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 509
// Line 509 (CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 509
// Line 509 (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 509
// Line 509  0 
	.loc 1 509
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000374
// Line 509 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 509
// Line 509 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 509
// Line 509 (++ (LVAR 44)  1 )
	.loc 1 509
// Line 509 (LVAR 44)
	.loc 1 509
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 509  1 
	.loc 1 509
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 509  1 
	.loc 1 509
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000374
	mov  rax, 0
	jmp  .L000375
.L000374:
	mov  rax, 1
.L000375:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 509 (CAST long   1 )
	.loc 1 509
// Line 509  1 
	.loc 1 509
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 509 (CAST int   509 )
	.loc 1 509
// Line 509  509 
	.loc 1 509
	push 509
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000376
	mov  rax, 0
	call assert_expect
	jmp  .L000377
.L000376:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000377:
	push rax
	pop  rax
// Line 510 (CALL assert_expect ((CAST int   510 ):(CAST long   3 ):(CAST long  (LVAR 44)):) )
	.loc 1 510
// Line 510 (CAST long  (LVAR 44))
	.loc 1 510
// Line 510 (LVAR 44)
	.loc 1 510
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 510 (CAST long   3 )
	.loc 1 510
// Line 510  3 
	.loc 1 510
	push 3
	pop  rax
	movsx rax, eax
	push rax
// Line 510 (CAST int   510 )
	.loc 1 510
// Line 510  510 
	.loc 1 510
	push 510
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
// Line 511 (CALL assert_expect ((CAST int   511 ):(CAST long   1 ):(CAST long  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 511
// Line 511 (CAST long  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 511
// Line 511 (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 511
// Line 511  1 
	.loc 1 511
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000380
// Line 511 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 511
// Line 511 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 511
// Line 511 (++ (LVAR 44)  1 )
	.loc 1 511
// Line 511 (LVAR 44)
	.loc 1 511
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 511  1 
	.loc 1 511
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 511  1 
	.loc 1 511
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000380
	mov  rax, 0
	jmp  .L000381
.L000380:
	mov  rax, 1
.L000381:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 511 (CAST long   1 )
	.loc 1 511
// Line 511  1 
	.loc 1 511
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 511 (CAST int   511 )
	.loc 1 511
// Line 511  511 
	.loc 1 511
	push 511
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
// Line 512 (CALL assert_expect ((CAST int   512 ):(CAST long   3 ):(CAST long  (LVAR 44)):) )
	.loc 1 512
// Line 512 (CAST long  (LVAR 44))
	.loc 1 512
// Line 512 (LVAR 44)
	.loc 1 512
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 512 (CAST long   3 )
	.loc 1 512
// Line 512  3 
	.loc 1 512
	push 3
	pop  rax
	movsx rax, eax
	push rax
// Line 512 (CAST int   512 )
	.loc 1 512
// Line 512  512 
	.loc 1 512
	push 512
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000384
	mov  rax, 0
	call assert_expect
	jmp  .L000385
.L000384:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000385:
	push rax
	pop  rax
// Line 513 (= (LVAR 44)  0 )
	.loc 1 513
// Line 513  0 
	.loc 1 513
	push 0
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 514 (CALL assert_expect ((CAST int   514 ):(CAST long   0 ):(CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 514
// Line 514 (CAST long  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 514
// Line 514 (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 514
// Line 514  0 
	.loc 1 514
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000386
// Line 514 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 514
// Line 514 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 514
// Line 514 (++ (LVAR 44)  1 )
	.loc 1 514
// Line 514 (LVAR 44)
	.loc 1 514
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 514  1 
	.loc 1 514
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 514  1 
	.loc 1 514
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000386
	mov  rax, 0
	jmp  .L000387
.L000386:
	mov  rax, 1
.L000387:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 514 (CAST long   0 )
	.loc 1 514
// Line 514  0 
	.loc 1 514
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 514 (CAST int   514 )
	.loc 1 514
// Line 514  514 
	.loc 1 514
	push 514
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000388
	mov  rax, 0
	call assert_expect
	jmp  .L000389
.L000388:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000389:
	push rax
	pop  rax
// Line 515 (CALL assert_expect ((CAST int   515 ):(CAST long   1 ):(CAST long  (LVAR 44)):) )
	.loc 1 515
// Line 515 (CAST long  (LVAR 44))
	.loc 1 515
// Line 515 (LVAR 44)
	.loc 1 515
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 515 (CAST long   1 )
	.loc 1 515
// Line 515  1 
	.loc 1 515
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 515 (CAST int   515 )
	.loc 1 515
// Line 515  515 
	.loc 1 515
	push 515
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
// Line 516 (= (LVAR 44)  0 )
	.loc 1 516
// Line 516  0 
	.loc 1 516
	push 0
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 517 (CALL assert_expect ((CAST int   517 ):(CAST long   0 ):(CAST long  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))):) )
	.loc 1 517
// Line 517 (CAST long  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))))
	.loc 1 517
// Line 517 (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 517
// Line 517  0 
	.loc 1 517
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000392
// Line 517 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 517
// Line 517  1 
	.loc 1 517
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000394
// Line 517 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 517
// Line 517 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 517
// Line 517 (++ (LVAR 44)  1 )
	.loc 1 517
// Line 517 (LVAR 44)
	.loc 1 517
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 517  1 
	.loc 1 517
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 517  1 
	.loc 1 517
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000394
	mov  rax, 1
	jmp  .L000395
.L000394:
	mov  rax, 0
.L000395:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000392
	mov  rax, 0
	jmp  .L000393
.L000392:
	mov  rax, 1
.L000393:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 517 (CAST long   0 )
	.loc 1 517
// Line 517  0 
	.loc 1 517
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 517 (CAST int   517 )
	.loc 1 517
// Line 517  517 
	.loc 1 517
	push 517
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000396
	mov  rax, 0
	call assert_expect
	jmp  .L000397
.L000396:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000397:
	push rax
	pop  rax
// Line 518 (CALL assert_expect ((CAST int   518 ):(CAST long   1 ):(CAST long  (LVAR 44)):) )
	.loc 1 518
// Line 518 (CAST long  (LVAR 44))
	.loc 1 518
// Line 518 (LVAR 44)
	.loc 1 518
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 518 (CAST long   1 )
	.loc 1 518
// Line 518  1 
	.loc 1 518
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 518 (CAST int   518 )
	.loc 1 518
// Line 518  518 
	.loc 1 518
	push 518
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
// Line 519 (CALL assert_expect ((CAST int   519 ):(CAST long   1 ):(CAST long  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 519
// Line 519 (CAST long  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 519
// Line 519 (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 519
// Line 519 (&&  1   1 )
	.loc 1 519
// Line 519  1 
	.loc 1 519
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000402
// Line 519  1 
	.loc 1 519
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000402
	mov  rax, 1
	jmp  .L000403
.L000402:
	mov  rax, 0
.L000403:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000400
// Line 519 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 519
// Line 519 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 519
// Line 519 (++ (LVAR 44)  1 )
	.loc 1 519
// Line 519 (LVAR 44)
	.loc 1 519
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 519  1 
	.loc 1 519
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 44]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 519  1 
	.loc 1 519
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000400
	mov  rax, 0
	jmp  .L000401
.L000400:
	mov  rax, 1
.L000401:
	push  rax
	pop  rax
	movsx rax, eax
	push rax
// Line 519 (CAST long   1 )
	.loc 1 519
// Line 519  1 
	.loc 1 519
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 519 (CAST int   519 )
	.loc 1 519
// Line 519  519 
	.loc 1 519
	push 519
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000404
	mov  rax, 0
	call assert_expect
	jmp  .L000405
.L000404:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000405:
	push rax
	pop  rax
// Line 520 (CALL assert_expect ((CAST int   520 ):(CAST long   1 ):(CAST long  (LVAR 44)):) )
	.loc 1 520
// Line 520 (CAST long  (LVAR 44))
	.loc 1 520
// Line 520 (LVAR 44)
	.loc 1 520
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 520 (CAST long   1 )
	.loc 1 520
// Line 520  1 
	.loc 1 520
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 520 (CAST int   520 )
	.loc 1 520
// Line 520  520 
	.loc 1 520
	push 520
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
// Line 521 (CALL assert_expect ((CAST int   521 ):(CAST long   1 ):(CAST long  (!  0 )):) )
	.loc 1 521
// Line 521 (CAST long  (!  0 ))
	.loc 1 521
// Line 521 (!  0 )
	.loc 1 521
// Line 521  0 
	.loc 1 521
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000408
	mov  rax, 1
	jmp  .L000409
.L000408:
	mov  rax, 0
.L000409:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 521 (CAST long   1 )
	.loc 1 521
// Line 521  1 
	.loc 1 521
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 521 (CAST int   521 )
	.loc 1 521
// Line 521  521 
	.loc 1 521
	push 521
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
// Line 522 (CALL assert_expect ((CAST int   522 ):(CAST long   0 ):(CAST long  (!  1 )):) )
	.loc 1 522
// Line 522 (CAST long  (!  1 ))
	.loc 1 522
// Line 522 (!  1 )
	.loc 1 522
// Line 522  1 
	.loc 1 522
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000412
	mov  rax, 1
	jmp  .L000413
.L000412:
	mov  rax, 0
.L000413:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 522 (CAST long   0 )
	.loc 1 522
// Line 522  0 
	.loc 1 522
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 522 (CAST int   522 )
	.loc 1 522
// Line 522  522 
	.loc 1 522
	push 522
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
// Line 523 (CALL assert_expect ((CAST int   523 ):(CAST long   0 ):(CAST long  (! (! (!  1 )))):) )
	.loc 1 523
// Line 523 (CAST long  (! (! (!  1 ))))
	.loc 1 523
// Line 523 (! (! (!  1 )))
	.loc 1 523
// Line 523 (! (!  1 ))
	.loc 1 523
// Line 523 (!  1 )
	.loc 1 523
// Line 523  1 
	.loc 1 523
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000420
	mov  rax, 1
	jmp  .L000421
.L000420:
	mov  rax, 0
.L000421:
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
	cmp  eax, 0
	jne  .L000416
	mov  rax, 1
	jmp  .L000417
.L000416:
	mov  rax, 0
.L000417:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 523 (CAST long   0 )
	.loc 1 523
// Line 523  0 
	.loc 1 523
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 523 (CAST int   523 )
	.loc 1 523
// Line 523  523 
	.loc 1 523
	push 523
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
// Line 525 (CALL assert_expect ((CAST int   525 ):(CAST long   256 ):(CAST long  (<<  1   8 )):) )
	.loc 1 525
// Line 525 (CAST long  (<<  1   8 ))
	.loc 1 525
// Line 525 (<<  1   8 )
	.loc 1 525
// Line 525  1 
	.loc 1 525
	push 1
// Line 525  8 
	.loc 1 525
	push 8
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 525 (CAST long   256 )
	.loc 1 525
// Line 525  256 
	.loc 1 525
	push 256
	pop  rax
	movsx rax, eax
	push rax
// Line 525 (CAST int   525 )
	.loc 1 525
// Line 525  525 
	.loc 1 525
	push 525
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
// Line 526 (CALL assert_expect ((CAST int   526 ):(CAST long   32 ):(CAST long  (>>  512   4 )):) )
	.loc 1 526
// Line 526 (CAST long  (>>  512   4 ))
	.loc 1 526
// Line 526 (>>  512   4 )
	.loc 1 526
// Line 526  512 
	.loc 1 526
	push 512
// Line 526  4 
	.loc 1 526
	push 4
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 526 (CAST long   32 )
	.loc 1 526
// Line 526  32 
	.loc 1 526
	push 32
	pop  rax
	movsx rax, eax
	push rax
// Line 526 (CAST int   526 )
	.loc 1 526
// Line 526  526 
	.loc 1 526
	push 526
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
// Line 530 (CALL assert_expect ((CAST int   530 ):(CAST long   1 ):(CAST long   1 ):) )
	.loc 1 530
// Line 530 (CAST long   1 )
	.loc 1 530
// Line 530  1 
	.loc 1 530
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 530 (CAST long   1 )
	.loc 1 530
// Line 530  1 
	.loc 1 530
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 530 (CAST int   530 )
	.loc 1 530
// Line 530  530 
	.loc 1 530
	push 530
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
// Line 531 (CALL assert_expect ((CAST int   531 ):(CAST long   2 ):(CAST long   2 ):) )
	.loc 1 531
// Line 531 (CAST long   2 )
	.loc 1 531
// Line 531  2 
	.loc 1 531
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 531 (CAST long   2 )
	.loc 1 531
// Line 531  2 
	.loc 1 531
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 531 (CAST int   531 )
	.loc 1 531
// Line 531  531 
	.loc 1 531
	push 531
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
// Line 532 (CALL assert_expect ((CAST int   532 ):(CAST long   2 ):(CAST long   2 ):) )
	.loc 1 532
// Line 532 (CAST long   2 )
	.loc 1 532
// Line 532  2 
	.loc 1 532
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 532 (CAST long   2 )
	.loc 1 532
// Line 532  2 
	.loc 1 532
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 532 (CAST int   532 )
	.loc 1 532
// Line 532  532 
	.loc 1 532
	push 532
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
// Line 533 (CALL assert_expect ((CAST int   533 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 533
// Line 533 (CAST long   4 )
	.loc 1 533
// Line 533  4 
	.loc 1 533
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 533 (CAST long   4 )
	.loc 1 533
// Line 533  4 
	.loc 1 533
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 533 (CAST int   533 )
	.loc 1 533
// Line 533  533 
	.loc 1 533
	push 533
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
// Line 534 (CALL assert_expect ((CAST int   534 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 534
// Line 534 (CAST long   4 )
	.loc 1 534
// Line 534  4 
	.loc 1 534
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 534 (CAST long   4 )
	.loc 1 534
// Line 534  4 
	.loc 1 534
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 534 (CAST int   534 )
	.loc 1 534
// Line 534  534 
	.loc 1 534
	push 534
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
// Line 535 (CALL assert_expect ((CAST int   535 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 535
// Line 535 (CAST long   8 )
	.loc 1 535
// Line 535  8 
	.loc 1 535
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 535 (CAST long   8 )
	.loc 1 535
// Line 535  8 
	.loc 1 535
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 535 (CAST int   535 )
	.loc 1 535
// Line 535  535 
	.loc 1 535
	push 535
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
// Line 536 (CALL assert_expect ((CAST int   536 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 536
// Line 536 (CAST long   8 )
	.loc 1 536
// Line 536  8 
	.loc 1 536
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 536 (CAST long   8 )
	.loc 1 536
// Line 536  8 
	.loc 1 536
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 536 (CAST int   536 )
	.loc 1 536
// Line 536  536 
	.loc 1 536
	push 536
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
// Line 537 (CALL assert_expect ((CAST int   537 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 537
// Line 537 (CAST long   8 )
	.loc 1 537
// Line 537  8 
	.loc 1 537
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 537 (CAST long   8 )
	.loc 1 537
// Line 537  8 
	.loc 1 537
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 537 (CAST int   537 )
	.loc 1 537
// Line 537  537 
	.loc 1 537
	push 537
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
// Line 538 (= (LVAR 45)  254 )
	.loc 1 538
// Line 538  254 
	.loc 1 538
	push 254
	lea  rax, [rbp - 45]
	pop  rdi
	mov  [rax], dil
	push rdi
	pop  rax
// Line 539 (CALL assert_expect ((CAST int   539 ):(CAST long   -2 ):(CAST long  (LVAR 45)):) )
	.loc 1 539
// Line 539 (CAST long  (LVAR 45))
	.loc 1 539
// Line 539 (LVAR 45)
	.loc 1 539
	lea  rax, [rbp - 45]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 539 (CAST long   -2 )
	.loc 1 539
// Line 539  -2 
	.loc 1 539
	push -2
	pop  rax
	movsx rax, eax
	push rax
// Line 539 (CAST int   539 )
	.loc 1 539
// Line 539  539 
	.loc 1 539
	push 539
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000444
	mov  rax, 0
	call assert_expect
	jmp  .L000445
.L000444:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000445:
	push rax
	pop  rax
// Line 540 (= (LVAR 49)  100 )
	.loc 1 540
// Line 540  100 
	.loc 1 540
	push 100
	lea  rax, [rbp - 49]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 541 (CALL assert_expect ((CAST int   541 ):(CAST long   100 ):(CAST long  (LVAR 49)):) )
	.loc 1 541
// Line 541 (CAST long  (LVAR 49))
	.loc 1 541
// Line 541 (LVAR 49)
	.loc 1 541
	lea  rax, [rbp - 49]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 541 (CAST long   100 )
	.loc 1 541
// Line 541  100 
	.loc 1 541
	push 100
	pop  rax
	movsx rax, eax
	push rax
// Line 541 (CAST int   541 )
	.loc 1 541
// Line 541  541 
	.loc 1 541
	push 541
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000446
	mov  rax, 0
	call assert_expect
	jmp  .L000447
.L000446:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000447:
	push rax
	pop  rax
// Line 542 (= (LVAR 53)  -100 )
	.loc 1 542
// Line 542  -100 
	.loc 1 542
	push -100
	lea  rax, [rbp - 53]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 543 (CALL assert_expect ((CAST int   543 ):(CAST long   -100 ):(CAST long  (LVAR 53)):) )
	.loc 1 543
// Line 543 (CAST long  (LVAR 53))
	.loc 1 543
// Line 543 (LVAR 53)
	.loc 1 543
	lea  rax, [rbp - 53]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 543 (CAST long   -100 )
	.loc 1 543
// Line 543  -100 
	.loc 1 543
	push -100
	pop  rax
	movsx rax, eax
	push rax
// Line 543 (CAST int   543 )
	.loc 1 543
// Line 543  543 
	.loc 1 543
	push 543
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000448
	mov  rax, 0
	call assert_expect
	jmp  .L000449
.L000448:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000449:
	push rax
	pop  rax
// Line 547 (CALL assert_expect ((CAST int   547 ):(CAST long   131585 ):(CAST long  (CAST int   131585 )):) )
	.loc 1 547
// Line 547 (CAST long  (CAST int   131585 ))
	.loc 1 547
// Line 547 (CAST int   131585 )
	.loc 1 547
// Line 547  131585 
	.loc 1 547
	push 131585
	pop  rax
	movsx rax, eax
	push rax
// Line 547 (CAST long   131585 )
	.loc 1 547
// Line 547  131585 
	.loc 1 547
	push 131585
	pop  rax
	movsx rax, eax
	push rax
// Line 547 (CAST int   547 )
	.loc 1 547
// Line 547  547 
	.loc 1 547
	push 547
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000450
	mov  rax, 0
	call assert_expect
	jmp  .L000451
.L000450:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000451:
	push rax
	pop  rax
// Line 548 (CALL assert_expect ((CAST int   548 ):(CAST long   513 ):(CAST long  (CAST short   131585 )):) )
	.loc 1 548
// Line 548 (CAST long  (CAST short   131585 ))
	.loc 1 548
// Line 548 (CAST short   131585 )
	.loc 1 548
// Line 548  131585 
	.loc 1 548
	push 131585
	pop  rax
	movsx rax, ax
	push rax
// Line 548 (CAST long   513 )
	.loc 1 548
// Line 548  513 
	.loc 1 548
	push 513
	pop  rax
	movsx rax, eax
	push rax
// Line 548 (CAST int   548 )
	.loc 1 548
// Line 548  548 
	.loc 1 548
	push 548
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000452
	mov  rax, 0
	call assert_expect
	jmp  .L000453
.L000452:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000453:
	push rax
	pop  rax
// Line 549 (CALL assert_expect ((CAST int   549 ):(CAST long   1 ):(CAST long  (CAST char   131585 )):) )
	.loc 1 549
// Line 549 (CAST long  (CAST char   131585 ))
	.loc 1 549
// Line 549 (CAST char   131585 )
	.loc 1 549
// Line 549  131585 
	.loc 1 549
	push 131585
	pop  rax
	movsx rax, al
	push rax
// Line 549 (CAST long   1 )
	.loc 1 549
// Line 549  1 
	.loc 1 549
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 549 (CAST int   549 )
	.loc 1 549
// Line 549  549 
	.loc 1 549
	push 549
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000454
	mov  rax, 0
	call assert_expect
	jmp  .L000455
.L000454:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000455:
	push rax
	pop  rax
// Line 550 (CALL assert_expect ((CAST int   550 ):(CAST long   1 ):(CAST long  (CAST long   1 )):) )
	.loc 1 550
// Line 550 (CAST long  (CAST long   1 ))
	.loc 1 550
// Line 550 (CAST long   1 )
	.loc 1 550
// Line 550  1 
	.loc 1 550
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 550 (CAST long   1 )
	.loc 1 550
// Line 550  1 
	.loc 1 550
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 550 (CAST int   550 )
	.loc 1 550
// Line 550  550 
	.loc 1 550
	push 550
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000456
	mov  rax, 0
	call assert_expect
	jmp  .L000457
.L000456:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000457:
	push rax
	pop  rax
// Line 552 (CALL assert_expect ((CAST int   552 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 552
// Line 552 (CAST long   4 )
	.loc 1 552
// Line 552  4 
	.loc 1 552
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 552 (CAST long   4 )
	.loc 1 552
// Line 552  4 
	.loc 1 552
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 552 (CAST int   552 )
	.loc 1 552
// Line 552  552 
	.loc 1 552
	push 552
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000458
	mov  rax, 0
	call assert_expect
	jmp  .L000459
.L000458:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000459:
	push rax
	pop  rax
// Line 553 (CALL assert_expect ((CAST int   553 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 553
// Line 553 (CAST long   4 )
	.loc 1 553
// Line 553  4 
	.loc 1 553
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 553 (CAST long   4 )
	.loc 1 553
// Line 553  4 
	.loc 1 553
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 553 (CAST int   553 )
	.loc 1 553
// Line 553  553 
	.loc 1 553
	push 553
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000460
	mov  rax, 0
	call assert_expect
	jmp  .L000461
.L000460:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000461:
	push rax
	pop  rax
// Line 554 (CALL assert_expect ((CAST int   554 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 554
// Line 554 (CAST long   4 )
	.loc 1 554
// Line 554  4 
	.loc 1 554
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 554 (CAST long   4 )
	.loc 1 554
// Line 554  4 
	.loc 1 554
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 554 (CAST int   554 )
	.loc 1 554
// Line 554  554 
	.loc 1 554
	push 554
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000462
	mov  rax, 0
	call assert_expect
	jmp  .L000463
.L000462:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000463:
	push rax
	pop  rax
// Line 555 (CALL assert_expect ((CAST int   555 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 555
// Line 555 (CAST long   4 )
	.loc 1 555
// Line 555  4 
	.loc 1 555
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 555 (CAST long   4 )
	.loc 1 555
// Line 555  4 
	.loc 1 555
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 555 (CAST int   555 )
	.loc 1 555
// Line 555  555 
	.loc 1 555
	push 555
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000464
	mov  rax, 0
	call assert_expect
	jmp  .L000465
.L000464:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000465:
	push rax
	pop  rax
// Line 557 (CALL assert_expect ((CAST int   557 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 557
// Line 557 (CAST long   8 )
	.loc 1 557
// Line 557  8 
	.loc 1 557
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 557 (CAST long   8 )
	.loc 1 557
// Line 557  8 
	.loc 1 557
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 557 (CAST int   557 )
	.loc 1 557
// Line 557  557 
	.loc 1 557
	push 557
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000466
	mov  rax, 0
	call assert_expect
	jmp  .L000467
.L000466:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000467:
	push rax
	pop  rax
// Line 558 (CALL assert_expect ((CAST int   558 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 558
// Line 558 (CAST long   8 )
	.loc 1 558
// Line 558  8 
	.loc 1 558
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 558 (CAST long   8 )
	.loc 1 558
// Line 558  8 
	.loc 1 558
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 558 (CAST int   558 )
	.loc 1 558
// Line 558  558 
	.loc 1 558
	push 558
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000468
	mov  rax, 0
	call assert_expect
	jmp  .L000469
.L000468:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000469:
	push rax
	pop  rax
// Line 559 (CALL assert_expect ((CAST int   559 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 559
// Line 559 (CAST long   8 )
	.loc 1 559
// Line 559  8 
	.loc 1 559
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 559 (CAST long   8 )
	.loc 1 559
// Line 559  8 
	.loc 1 559
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 559 (CAST int   559 )
	.loc 1 559
// Line 559  559 
	.loc 1 559
	push 559
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000470
	mov  rax, 0
	call assert_expect
	jmp  .L000471
.L000470:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000471:
	push rax
	pop  rax
// Line 560 (CALL assert_expect ((CAST int   560 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 560
// Line 560 (CAST long   8 )
	.loc 1 560
// Line 560  8 
	.loc 1 560
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 560 (CAST long   8 )
	.loc 1 560
// Line 560  8 
	.loc 1 560
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 560 (CAST int   560 )
	.loc 1 560
// Line 560  560 
	.loc 1 560
	push 560
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000472
	mov  rax, 0
	call assert_expect
	jmp  .L000473
.L000472:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000473:
	push rax
	pop  rax
// Line 561 (CALL assert_expect ((CAST int   561 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 561
// Line 561 (CAST long   8 )
	.loc 1 561
// Line 561  8 
	.loc 1 561
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 561 (CAST long   8 )
	.loc 1 561
// Line 561  8 
	.loc 1 561
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 561 (CAST int   561 )
	.loc 1 561
// Line 561  561 
	.loc 1 561
	push 561
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000474
	mov  rax, 0
	call assert_expect
	jmp  .L000475
.L000474:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000475:
	push rax
	pop  rax
// Line 562 (CALL assert_expect ((CAST int   562 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 562
// Line 562 (CAST long   8 )
	.loc 1 562
// Line 562  8 
	.loc 1 562
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 562 (CAST long   8 )
	.loc 1 562
// Line 562  8 
	.loc 1 562
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 562 (CAST int   562 )
	.loc 1 562
// Line 562  562 
	.loc 1 562
	push 562
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000476
	mov  rax, 0
	call assert_expect
	jmp  .L000477
.L000476:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000477:
	push rax
	pop  rax
// Line 563 (CALL assert_expect ((CAST int   563 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 563
// Line 563 (CAST long   8 )
	.loc 1 563
// Line 563  8 
	.loc 1 563
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 563 (CAST long   8 )
	.loc 1 563
// Line 563  8 
	.loc 1 563
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 563 (CAST int   563 )
	.loc 1 563
// Line 563  563 
	.loc 1 563
	push 563
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000478
	mov  rax, 0
	call assert_expect
	jmp  .L000479
.L000478:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000479:
	push rax
	pop  rax
// Line 564 (CALL assert_expect ((CAST int   564 ):(CAST long   8 ):(CAST long   8 ):) )
	.loc 1 564
// Line 564 (CAST long   8 )
	.loc 1 564
// Line 564  8 
	.loc 1 564
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 564 (CAST long   8 )
	.loc 1 564
// Line 564  8 
	.loc 1 564
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 564 (CAST int   564 )
	.loc 1 564
// Line 564  564 
	.loc 1 564
	push 564
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000480
	mov  rax, 0
	call assert_expect
	jmp  .L000481
.L000480:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000481:
	push rax
	pop  rax
// Line 566 (CALL assert_expect ((CAST int   566 ):(CAST long  (CAST long   -5 )):(CAST long  (+  -10  (CAST long   5 ))):) )
	.loc 1 566
// Line 566 (CAST long  (+  -10  (CAST long   5 )))
	.loc 1 566
// Line 566 (+  -10  (CAST long   5 ))
	.loc 1 566
// Line 566  -10 
	.loc 1 566
	push -10
// Line 566 (CAST long   5 )
	.loc 1 566
// Line 566  5 
	.loc 1 566
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 566 (CAST long  (CAST long   -5 ))
	.loc 1 566
// Line 566 (CAST long   -5 )
	.loc 1 566
// Line 566  -5 
	.loc 1 566
	push -5
	pop  rax
	movsx rax, eax
	push rax
// Line 566 (CAST int   566 )
	.loc 1 566
// Line 566  566 
	.loc 1 566
	push 566
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000482
	mov  rax, 0
	call assert_expect
	jmp  .L000483
.L000482:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000483:
	push rax
	pop  rax
// Line 567 (CALL assert_expect ((CAST int   567 ):(CAST long  (CAST long   -15 )):(CAST long  (-  -10  (CAST long   5 ))):) )
	.loc 1 567
// Line 567 (CAST long  (-  -10  (CAST long   5 )))
	.loc 1 567
// Line 567 (-  -10  (CAST long   5 ))
	.loc 1 567
// Line 567  -10 
	.loc 1 567
	push -10
// Line 567 (CAST long   5 )
	.loc 1 567
// Line 567  5 
	.loc 1 567
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 567 (CAST long  (CAST long   -15 ))
	.loc 1 567
// Line 567 (CAST long   -15 )
	.loc 1 567
// Line 567  -15 
	.loc 1 567
	push -15
	pop  rax
	movsx rax, eax
	push rax
// Line 567 (CAST int   567 )
	.loc 1 567
// Line 567  567 
	.loc 1 567
	push 567
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000484
	mov  rax, 0
	call assert_expect
	jmp  .L000485
.L000484:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000485:
	push rax
	pop  rax
// Line 568 (CALL assert_expect ((CAST int   568 ):(CAST long  (CAST long   -50 )):(CAST long  (*  -10  (CAST long   5 ))):) )
	.loc 1 568
// Line 568 (CAST long  (*  -10  (CAST long   5 )))
	.loc 1 568
// Line 568 (*  -10  (CAST long   5 ))
	.loc 1 568
// Line 568  -10 
	.loc 1 568
	push -10
// Line 568 (CAST long   5 )
	.loc 1 568
// Line 568  5 
	.loc 1 568
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 568 (CAST long  (CAST long   -50 ))
	.loc 1 568
// Line 568 (CAST long   -50 )
	.loc 1 568
// Line 568  -50 
	.loc 1 568
	push -50
	pop  rax
	movsx rax, eax
	push rax
// Line 568 (CAST int   568 )
	.loc 1 568
// Line 568  568 
	.loc 1 568
	push 568
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000486
	mov  rax, 0
	call assert_expect
	jmp  .L000487
.L000486:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000487:
	push rax
	pop  rax
// Line 569 (CALL assert_expect ((CAST int   569 ):(CAST long  (CAST long   -2 )):(CAST long  (/  -10  (CAST long   5 ))):) )
	.loc 1 569
// Line 569 (CAST long  (/  -10  (CAST long   5 )))
	.loc 1 569
// Line 569 (/  -10  (CAST long   5 ))
	.loc 1 569
// Line 569  -10 
	.loc 1 569
	push -10
// Line 569 (CAST long   5 )
	.loc 1 569
// Line 569  5 
	.loc 1 569
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 569 (CAST long  (CAST long   -2 ))
	.loc 1 569
// Line 569 (CAST long   -2 )
	.loc 1 569
// Line 569  -2 
	.loc 1 569
	push -2
	pop  rax
	movsx rax, eax
	push rax
// Line 569 (CAST int   569 )
	.loc 1 569
// Line 569  569 
	.loc 1 569
	push 569
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000488
	mov  rax, 0
	call assert_expect
	jmp  .L000489
.L000488:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000489:
	push rax
	pop  rax
// Line 571 (CALL assert_expect ((CAST int   571 ):(CAST long   1 ):(CAST long  (< (CAST long   -1 )  -2 )):) )
	.loc 1 571
// Line 571 (CAST long  (< (CAST long   -1 )  -2 ))
	.loc 1 571
// Line 571 (< (CAST long   -1 )  -2 )
	.loc 1 571
// Line 571 (CAST long   -1 )
	.loc 1 571
// Line 571  -1 
	.loc 1 571
	push -1
	pop  rax
	movsx rax, eax
	push rax
// Line 571  -2 
	.loc 1 571
	push -2
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 571 (CAST long   1 )
	.loc 1 571
// Line 571  1 
	.loc 1 571
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 571 (CAST int   571 )
	.loc 1 571
// Line 571  571 
	.loc 1 571
	push 571
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000490
	mov  rax, 0
	call assert_expect
	jmp  .L000491
.L000490:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000491:
	push rax
	pop  rax
// Line 572 (CALL assert_expect ((CAST int   572 ):(CAST long   1 ):(CAST long  (<= (CAST long   -1 )  -2 )):) )
	.loc 1 572
// Line 572 (CAST long  (<= (CAST long   -1 )  -2 ))
	.loc 1 572
// Line 572 (<= (CAST long   -1 )  -2 )
	.loc 1 572
// Line 572 (CAST long   -1 )
	.loc 1 572
// Line 572  -1 
	.loc 1 572
	push -1
	pop  rax
	movsx rax, eax
	push rax
// Line 572  -2 
	.loc 1 572
	push -2
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 572 (CAST long   1 )
	.loc 1 572
// Line 572  1 
	.loc 1 572
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 572 (CAST int   572 )
	.loc 1 572
// Line 572  572 
	.loc 1 572
	push 572
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000492
	mov  rax, 0
	call assert_expect
	jmp  .L000493
.L000492:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000493:
	push rax
	pop  rax
// Line 573 (CALL assert_expect ((CAST int   573 ):(CAST long   0 ):(CAST long  (>  -2  (CAST long   -1 ))):) )
	.loc 1 573
// Line 573 (CAST long  (>  -2  (CAST long   -1 )))
	.loc 1 573
// Line 573 (>  -2  (CAST long   -1 ))
	.loc 1 573
// Line 573  -2 
	.loc 1 573
	push -2
// Line 573 (CAST long   -1 )
	.loc 1 573
// Line 573  -1 
	.loc 1 573
	push -1
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 573 (CAST long   0 )
	.loc 1 573
// Line 573  0 
	.loc 1 573
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 573 (CAST int   573 )
	.loc 1 573
// Line 573  573 
	.loc 1 573
	push 573
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000494
	mov  rax, 0
	call assert_expect
	jmp  .L000495
.L000494:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000495:
	push rax
	pop  rax
// Line 574 (CALL assert_expect ((CAST int   574 ):(CAST long   0 ):(CAST long  (>=  -2  (CAST long   -1 ))):) )
	.loc 1 574
// Line 574 (CAST long  (>=  -2  (CAST long   -1 )))
	.loc 1 574
// Line 574 (>=  -2  (CAST long   -1 ))
	.loc 1 574
// Line 574  -2 
	.loc 1 574
	push -2
// Line 574 (CAST long   -1 )
	.loc 1 574
// Line 574  -1 
	.loc 1 574
	push -1
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 574 (CAST long   0 )
	.loc 1 574
// Line 574  0 
	.loc 1 574
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 574 (CAST int   574 )
	.loc 1 574
// Line 574  574 
	.loc 1 574
	push 574
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000496
	mov  rax, 0
	call assert_expect
	jmp  .L000497
.L000496:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000497:
	push rax
	pop  rax
// Line 576 (CALL assert_expect ((CAST int   576 ):(CAST long   1 ):(CAST long  (<  -1  (CAST long   -2 ))):) )
	.loc 1 576
// Line 576 (CAST long  (<  -1  (CAST long   -2 )))
	.loc 1 576
// Line 576 (<  -1  (CAST long   -2 ))
	.loc 1 576
// Line 576  -1 
	.loc 1 576
	push -1
// Line 576 (CAST long   -2 )
	.loc 1 576
// Line 576  -2 
	.loc 1 576
	push -2
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 576 (CAST long   1 )
	.loc 1 576
// Line 576  1 
	.loc 1 576
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 576 (CAST int   576 )
	.loc 1 576
// Line 576  576 
	.loc 1 576
	push 576
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000498
	mov  rax, 0
	call assert_expect
	jmp  .L000499
.L000498:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000499:
	push rax
	pop  rax
// Line 577 (CALL assert_expect ((CAST int   577 ):(CAST long   1 ):(CAST long  (<=  -1  (CAST long   -2 ))):) )
	.loc 1 577
// Line 577 (CAST long  (<=  -1  (CAST long   -2 )))
	.loc 1 577
// Line 577 (<=  -1  (CAST long   -2 ))
	.loc 1 577
// Line 577  -1 
	.loc 1 577
	push -1
// Line 577 (CAST long   -2 )
	.loc 1 577
// Line 577  -2 
	.loc 1 577
	push -2
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 577 (CAST long   1 )
	.loc 1 577
// Line 577  1 
	.loc 1 577
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 577 (CAST int   577 )
	.loc 1 577
// Line 577  577 
	.loc 1 577
	push 577
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000500
	mov  rax, 0
	call assert_expect
	jmp  .L000501
.L000500:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000501:
	push rax
	pop  rax
// Line 578 (CALL assert_expect ((CAST int   578 ):(CAST long   0 ):(CAST long  (> (CAST long   -2 )  -1 )):) )
	.loc 1 578
// Line 578 (CAST long  (> (CAST long   -2 )  -1 ))
	.loc 1 578
// Line 578 (> (CAST long   -2 )  -1 )
	.loc 1 578
// Line 578 (CAST long   -2 )
	.loc 1 578
// Line 578  -2 
	.loc 1 578
	push -2
	pop  rax
	movsx rax, eax
	push rax
// Line 578  -1 
	.loc 1 578
	push -1
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 578 (CAST long   0 )
	.loc 1 578
// Line 578  0 
	.loc 1 578
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 578 (CAST int   578 )
	.loc 1 578
// Line 578  578 
	.loc 1 578
	push 578
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000502
	mov  rax, 0
	call assert_expect
	jmp  .L000503
.L000502:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000503:
	push rax
	pop  rax
// Line 579 (CALL assert_expect ((CAST int   579 ):(CAST long   0 ):(CAST long  (>= (CAST long   -2 )  -1 )):) )
	.loc 1 579
// Line 579 (CAST long  (>= (CAST long   -2 )  -1 ))
	.loc 1 579
// Line 579 (>= (CAST long   -2 )  -1 )
	.loc 1 579
// Line 579 (CAST long   -2 )
	.loc 1 579
// Line 579  -2 
	.loc 1 579
	push -2
	pop  rax
	movsx rax, eax
	push rax
// Line 579  -1 
	.loc 1 579
	push -1
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 579 (CAST long   0 )
	.loc 1 579
// Line 579  0 
	.loc 1 579
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 579 (CAST int   579 )
	.loc 1 579
// Line 579  579 
	.loc 1 579
	push 579
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000504
	mov  rax, 0
	call assert_expect
	jmp  .L000505
.L000504:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000505:
	push rax
	pop  rax
// Line 581 (CALL assert_expect ((CAST int   581 ):(CAST long   0 ):(CAST long  (CAST int  (+ (+  2147483647   2147483647 )  2 ))):) )
	.loc 1 581
// Line 581 (CAST long  (CAST int  (+ (+  2147483647   2147483647 )  2 )))
	.loc 1 581
// Line 581 (CAST int  (+ (+  2147483647   2147483647 )  2 ))
	.loc 1 581
// Line 581 (+ (+  2147483647   2147483647 )  2 )
	.loc 1 581
// Line 581 (+  2147483647   2147483647 )
	.loc 1 581
// Line 581  2147483647 
	.loc 1 581
	push 2147483647
// Line 581  2147483647 
	.loc 1 581
	push 2147483647
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 581  2 
	.loc 1 581
	push 2
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 581 (CAST long   0 )
	.loc 1 581
// Line 581  0 
	.loc 1 581
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 581 (CAST int   581 )
	.loc 1 581
// Line 581  581 
	.loc 1 581
	push 581
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000506
	mov  rax, 0
	call assert_expect
	jmp  .L000507
.L000506:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000507:
	push rax
	pop  rax
// Line 583 (= (LVAR 77)  -1 )
	.loc 1 583
// Line 583  -1 
	.loc 1 583
	push -1
	lea  rax, [rbp - 77]
	pop  rdi
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 584 (CALL assert_expect ((CAST int   584 ):(CAST long  (CAST long   -1 )):(CAST long  (LVAR 77)):) )
	.loc 1 584
// Line 584 (CAST long  (LVAR 77))
	.loc 1 584
// Line 584 (LVAR 77)
	.loc 1 584
	lea  rax, [rbp - 77]
	mov  rax, [rax]
	push rax
// Line 584 (CAST long  (CAST long   -1 ))
	.loc 1 584
// Line 584 (CAST long   -1 )
	.loc 1 584
// Line 584  -1 
	.loc 1 584
	push -1
	pop  rax
	movsx rax, eax
	push rax
// Line 584 (CAST int   584 )
	.loc 1 584
// Line 584  584 
	.loc 1 584
	push 584
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000508
	mov  rax, 0
	call assert_expect
	jmp  .L000509
.L000508:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000509:
	push rax
	pop  rax
// Line 588 (= (LVAR 81)  10 )
	.loc 1 588
// Line 588  10 
	.loc 1 588
	push 10
	lea  rax, [rbp - 81]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 589 (CALL assert_expect ((CAST int   589 ):(CAST long   15 ):(CAST long  (= (LVAR 81) (+= (LVAR 81)  5 ))):) )
	.loc 1 589
// Line 589 (CAST long  (= (LVAR 81) (+= (LVAR 81)  5 )))
	.loc 1 589
// Line 589 (= (LVAR 81) (+= (LVAR 81)  5 ))
	.loc 1 589
// Line 589 (+= (LVAR 81)  5 )
	.loc 1 589
// Line 589 (LVAR 81)
	.loc 1 589
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 589  5 
	.loc 1 589
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 81]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	movsx rax, eax
	push rax
// Line 589 (CAST long   15 )
	.loc 1 589
// Line 589  15 
	.loc 1 589
	push 15
	pop  rax
	movsx rax, eax
	push rax
// Line 589 (CAST int   589 )
	.loc 1 589
// Line 589  589 
	.loc 1 589
	push 589
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000510
	mov  rax, 0
	call assert_expect
	jmp  .L000511
.L000510:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000511:
	push rax
	pop  rax
// Line 590 (CALL assert_expect ((CAST int   590 ):(CAST long   15 ):(CAST long  (LVAR 81)):) )
	.loc 1 590
// Line 590 (CAST long  (LVAR 81))
	.loc 1 590
// Line 590 (LVAR 81)
	.loc 1 590
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 590 (CAST long   15 )
	.loc 1 590
// Line 590  15 
	.loc 1 590
	push 15
	pop  rax
	movsx rax, eax
	push rax
// Line 590 (CAST int   590 )
	.loc 1 590
// Line 590  590 
	.loc 1 590
	push 590
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000512
	mov  rax, 0
	call assert_expect
	jmp  .L000513
.L000512:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000513:
	push rax
	pop  rax
// Line 591 (CALL assert_expect ((CAST int   591 ):(CAST long   8 ):(CAST long  (= (LVAR 81) (-= (LVAR 81)  7 ))):) )
	.loc 1 591
// Line 591 (CAST long  (= (LVAR 81) (-= (LVAR 81)  7 )))
	.loc 1 591
// Line 591 (= (LVAR 81) (-= (LVAR 81)  7 ))
	.loc 1 591
// Line 591 (-= (LVAR 81)  7 )
	.loc 1 591
// Line 591 (LVAR 81)
	.loc 1 591
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 591  7 
	.loc 1 591
	push 7
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	lea  rax, [rbp - 81]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	movsx rax, eax
	push rax
// Line 591 (CAST long   8 )
	.loc 1 591
// Line 591  8 
	.loc 1 591
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 591 (CAST int   591 )
	.loc 1 591
// Line 591  591 
	.loc 1 591
	push 591
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000514
	mov  rax, 0
	call assert_expect
	jmp  .L000515
.L000514:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000515:
	push rax
	pop  rax
// Line 592 (CALL assert_expect ((CAST int   592 ):(CAST long   8 ):(CAST long  (LVAR 81)):) )
	.loc 1 592
// Line 592 (CAST long  (LVAR 81))
	.loc 1 592
// Line 592 (LVAR 81)
	.loc 1 592
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 592 (CAST long   8 )
	.loc 1 592
// Line 592  8 
	.loc 1 592
	push 8
	pop  rax
	movsx rax, eax
	push rax
// Line 592 (CAST int   592 )
	.loc 1 592
// Line 592  592 
	.loc 1 592
	push 592
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000516
	mov  rax, 0
	call assert_expect
	jmp  .L000517
.L000516:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000517:
	push rax
	pop  rax
// Line 593 (CALL assert_expect ((CAST int   593 ):(CAST long   40 ):(CAST long  (= (LVAR 81) (*= (LVAR 81)  5 ))):) )
	.loc 1 593
// Line 593 (CAST long  (= (LVAR 81) (*= (LVAR 81)  5 )))
	.loc 1 593
// Line 593 (= (LVAR 81) (*= (LVAR 81)  5 ))
	.loc 1 593
// Line 593 (*= (LVAR 81)  5 )
	.loc 1 593
// Line 593 (LVAR 81)
	.loc 1 593
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 593  5 
	.loc 1 593
	push 5
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	lea  rax, [rbp - 81]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	movsx rax, eax
	push rax
// Line 593 (CAST long   40 )
	.loc 1 593
// Line 593  40 
	.loc 1 593
	push 40
	pop  rax
	movsx rax, eax
	push rax
// Line 593 (CAST int   593 )
	.loc 1 593
// Line 593  593 
	.loc 1 593
	push 593
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000518
	mov  rax, 0
	call assert_expect
	jmp  .L000519
.L000518:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000519:
	push rax
	pop  rax
// Line 594 (CALL assert_expect ((CAST int   594 ):(CAST long   40 ):(CAST long  (LVAR 81)):) )
	.loc 1 594
// Line 594 (CAST long  (LVAR 81))
	.loc 1 594
// Line 594 (LVAR 81)
	.loc 1 594
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 594 (CAST long   40 )
	.loc 1 594
// Line 594  40 
	.loc 1 594
	push 40
	pop  rax
	movsx rax, eax
	push rax
// Line 594 (CAST int   594 )
	.loc 1 594
// Line 594  594 
	.loc 1 594
	push 594
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000520
	mov  rax, 0
	call assert_expect
	jmp  .L000521
.L000520:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000521:
	push rax
	pop  rax
// Line 595 (CALL assert_expect ((CAST int   595 ):(CAST long   4 ):(CAST long  (= (LVAR 81) (/= (LVAR 81)  10 ))):) )
	.loc 1 595
// Line 595 (CAST long  (= (LVAR 81) (/= (LVAR 81)  10 )))
	.loc 1 595
// Line 595 (= (LVAR 81) (/= (LVAR 81)  10 ))
	.loc 1 595
// Line 595 (/= (LVAR 81)  10 )
	.loc 1 595
// Line 595 (LVAR 81)
	.loc 1 595
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 595  10 
	.loc 1 595
	push 10
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
	lea  rax, [rbp - 81]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	movsx rax, eax
	push rax
// Line 595 (CAST long   4 )
	.loc 1 595
// Line 595  4 
	.loc 1 595
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 595 (CAST int   595 )
	.loc 1 595
// Line 595  595 
	.loc 1 595
	push 595
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000522
	mov  rax, 0
	call assert_expect
	jmp  .L000523
.L000522:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000523:
	push rax
	pop  rax
// Line 596 (CALL assert_expect ((CAST int   596 ):(CAST long   4 ):(CAST long  (LVAR 81)):) )
	.loc 1 596
// Line 596 (CAST long  (LVAR 81))
	.loc 1 596
// Line 596 (LVAR 81)
	.loc 1 596
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 596 (CAST long   4 )
	.loc 1 596
// Line 596  4 
	.loc 1 596
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 596 (CAST int   596 )
	.loc 1 596
// Line 596  596 
	.loc 1 596
	push 596
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000524
	mov  rax, 0
	call assert_expect
	jmp  .L000525
.L000524:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000525:
	push rax
	pop  rax
// Line 599 (CALL assert_expect ((CAST int   599 ):(CAST long   4 ):(CAST long  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )):) )
	.loc 1 599
// Line 599 (CAST long  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 ))
	.loc 1 599
// Line 599 (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )
	.loc 1 599
// Line 599 (= (LVAR 81) (++ (LVAR 81)  1 ))
	.loc 1 599
// Line 599 (++ (LVAR 81)  1 )
	.loc 1 599
// Line 599 (LVAR 81)
	.loc 1 599
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 599  1 
	.loc 1 599
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	lea  rax, [rbp - 81]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 599  1 
	.loc 1 599
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 599 (CAST long   4 )
	.loc 1 599
// Line 599  4 
	.loc 1 599
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 599 (CAST int   599 )
	.loc 1 599
// Line 599  599 
	.loc 1 599
	push 599
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000526
	mov  rax, 0
	call assert_expect
	jmp  .L000527
.L000526:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000527:
	push rax
	pop  rax
// Line 600 (CALL assert_expect ((CAST int   600 ):(CAST long   5 ):(CAST long  (LVAR 81)):) )
	.loc 1 600
// Line 600 (CAST long  (LVAR 81))
	.loc 1 600
// Line 600 (LVAR 81)
	.loc 1 600
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 600 (CAST long   5 )
	.loc 1 600
// Line 600  5 
	.loc 1 600
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 600 (CAST int   600 )
	.loc 1 600
// Line 600  600 
	.loc 1 600
	push 600
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000528
	mov  rax, 0
	call assert_expect
	jmp  .L000529
.L000528:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000529:
	push rax
	pop  rax
// Line 601 (CALL assert_expect ((CAST int   601 ):(CAST long   5 ):(CAST long  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )):) )
	.loc 1 601
// Line 601 (CAST long  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 ))
	.loc 1 601
// Line 601 (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )
	.loc 1 601
// Line 601 (= (LVAR 81) (-- (LVAR 81)  1 ))
	.loc 1 601
// Line 601 (-- (LVAR 81)  1 )
	.loc 1 601
// Line 601 (LVAR 81)
	.loc 1 601
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 601  1 
	.loc 1 601
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	lea  rax, [rbp - 81]
	pop  rdi
	mov  [rax], edi
	push rdi
// Line 601  1 
	.loc 1 601
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 601 (CAST long   5 )
	.loc 1 601
// Line 601  5 
	.loc 1 601
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 601 (CAST int   601 )
	.loc 1 601
// Line 601  601 
	.loc 1 601
	push 601
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000530
	mov  rax, 0
	call assert_expect
	jmp  .L000531
.L000530:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000531:
	push rax
	pop  rax
// Line 602 (CALL assert_expect ((CAST int   602 ):(CAST long   4 ):(CAST long  (LVAR 81)):) )
	.loc 1 602
// Line 602 (CAST long  (LVAR 81))
	.loc 1 602
// Line 602 (LVAR 81)
	.loc 1 602
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 602 (CAST long   4 )
	.loc 1 602
// Line 602  4 
	.loc 1 602
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 602 (CAST int   602 )
	.loc 1 602
// Line 602  602 
	.loc 1 602
	push 602
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000532
	mov  rax, 0
	call assert_expect
	jmp  .L000533
.L000532:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000533:
	push rax
	pop  rax
// Line 606 (= (LVAR 85) (/  100  (LVAR 81)))
	.loc 1 606
// Line 606 (/  100  (LVAR 81))
	.loc 1 606
// Line 606  100 
	.loc 1 606
	push 100
// Line 606 (LVAR 81)
	.loc 1 606
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
	lea  rax, [rbp - 85]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 607 (CALL assert_expect ((CAST int   607 ):(CAST long   25 ):(CAST long  (LVAR 85)):) )
	.loc 1 607
// Line 607 (CAST long  (LVAR 85))
	.loc 1 607
// Line 607 (LVAR 85)
	.loc 1 607
	lea  rax, [rbp - 85]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 607 (CAST long   25 )
	.loc 1 607
// Line 607  25 
	.loc 1 607
	push 25
	pop  rax
	movsx rax, eax
	push rax
// Line 607 (CAST int   607 )
	.loc 1 607
// Line 607  607 
	.loc 1 607
	push 607
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000534
	mov  rax, 0
	call assert_expect
	jmp  .L000535
.L000534:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000535:
	push rax
	pop  rax
// Line 610 (= (LVAR 89)  77 )
	.loc 1 610
// Line 610  77 
	.loc 1 610
	push 77
	lea  rax, [rbp - 89]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
// Line 615 (IF (== (LVAR 89)  77 ) (= (LVAR 89)  55 ) (= (LVAR 89)  66 ))
	.loc 1 615
// Line 611 (== (LVAR 89)  77 )
	.loc 1 611
// Line 611 (LVAR 89)
	.loc 1 611
	lea  rax, [rbp - 89]
	mov  eax, [rax]
	push rax
// Line 611  77 
	.loc 1 611
	push 77
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000536
// Line 612 (= (LVAR 89)  55 )
	.loc 1 612
// Line 612  55 
	.loc 1 612
	push 55
	lea  rax, [rbp - 89]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000537
.L000536:
// Line 614 (= (LVAR 89)  66 )
	.loc 1 614
// Line 614  66 
	.loc 1 614
	push 66
	lea  rax, [rbp - 89]
	pop  rdi
	mov  [rax], edi
	push rdi
	pop  rax
.L000537:
// Line 615 (CALL assert_expect ((CAST int   615 ):(CAST long   55 ):(CAST long  (LVAR 89)):) )
	.loc 1 615
// Line 615 (CAST long  (LVAR 89))
	.loc 1 615
// Line 615 (LVAR 89)
	.loc 1 615
	lea  rax, [rbp - 89]
	mov  eax, [rax]
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 615 (CAST long   55 )
	.loc 1 615
// Line 615  55 
	.loc 1 615
	push 55
	pop  rax
	movsx rax, eax
	push rax
// Line 615 (CAST int   615 )
	.loc 1 615
// Line 615  615 
	.loc 1 615
	push 615
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000538
	mov  rax, 0
	call assert_expect
	jmp  .L000539
.L000538:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000539:
	push rax
	pop  rax
// Line 616 (CALL assert_expect ((CAST int   616 ):(CAST long   1346269 ):(CAST long  (CALL fibo ((CAST int   30 ):) )):) )
	.loc 1 616
// Line 616 (CAST long  (CALL fibo ((CAST int   30 ):) ))
	.loc 1 616
// Line 616 (CALL fibo ((CAST int   30 ):) )
	.loc 1 616
// Line 616 (CAST int   30 )
	.loc 1 616
// Line 616  30 
	.loc 1 616
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000540
	mov  rax, 0
	call fibo
	jmp  .L000541
.L000540:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000541:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 616 (CAST long   1346269 )
	.loc 1 616
// Line 616  1346269 
	.loc 1 616
	push 1346269
	pop  rax
	movsx rax, eax
	push rax
// Line 616 (CAST int   616 )
	.loc 1 616
// Line 616  616 
	.loc 1 616
	push 616
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000542
	mov  rax, 0
	call assert_expect
	jmp  .L000543
.L000542:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000543:
	push rax
	pop  rax
// Line 617 (CALL array_global () )
	.loc 1 617
	mov  rax, rsp
	and  rax, 15
	jnz  .L000544
	mov  rax, 0
	call array_global
	jmp  .L000545
.L000544:
	sub  rsp, 8
	mov  rax, 0
	call array_global
	add  rsp, 8
.L000545:
	push rax
	pop  rax
// Line 618 (CALL array_local () )
	.loc 1 618
	mov  rax, rsp
	and  rax, 15
	jnz  .L000546
	mov  rax, 0
	call array_local
	jmp  .L000547
.L000546:
	sub  rsp, 8
	mov  rax, 0
	call array_local
	add  rsp, 8
.L000547:
	push rax
	pop  rax
// Line 619 (CALL string () )
	.loc 1 619
	mov  rax, rsp
	and  rax, 15
	jnz  .L000548
	mov  rax, 0
	call string
	jmp  .L000549
.L000548:
	sub  rsp, 8
	mov  rax, 0
	call string
	add  rsp, 8
.L000549:
	push rax
	pop  rax
// Line 620 (CALL block_scope () )
	.loc 1 620
	mov  rax, rsp
	and  rax, 15
	jnz  .L000550
	mov  rax, 0
	call block_scope
	jmp  .L000551
.L000550:
	sub  rsp, 8
	mov  rax, 0
	call block_scope
	add  rsp, 8
.L000551:
	push rax
	pop  rax
// Line 621 (CALL for_ () )
	.loc 1 621
	mov  rax, rsp
	and  rax, 15
	jnz  .L000552
	mov  rax, 0
	call for_
	jmp  .L000553
.L000552:
	sub  rsp, 8
	mov  rax, 0
	call for_
	add  rsp, 8
.L000553:
	push rax
	pop  rax
// Line 622 (CALL list_ () )
	.loc 1 622
	mov  rax, rsp
	and  rax, 15
	jnz  .L000554
	mov  rax, 0
	call list_
	jmp  .L000555
.L000554:
	sub  rsp, 8
	mov  rax, 0
	call list_
	add  rsp, 8
.L000555:
	push rax
	pop  rax
// Line 623 (CALL struct_ () )
	.loc 1 623
	mov  rax, rsp
	and  rax, 15
	jnz  .L000556
	mov  rax, 0
	call struct_
	jmp  .L000557
.L000556:
	sub  rsp, 8
	mov  rax, 0
	call struct_
	add  rsp, 8
.L000557:
	push rax
	pop  rax
// Line 624 (CALL struct_initializer () )
	.loc 1 624
	mov  rax, rsp
	and  rax, 15
	jnz  .L000558
	mov  rax, 0
	call struct_initializer
	jmp  .L000559
.L000558:
	sub  rsp, 8
	mov  rax, 0
	call struct_initializer
	add  rsp, 8
.L000559:
	push rax
	pop  rax
// Line 639 (CALL assert_expect ((CAST int   639 ):(CAST long   2 ):(CAST long   2 ):) )
	.loc 1 639
// Line 639 (CAST long   2 )
	.loc 1 639
// Line 639  2 
	.loc 1 639
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 639 (CAST long   2 )
	.loc 1 639
// Line 639  2 
	.loc 1 639
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 639 (CAST int   639 )
	.loc 1 639
// Line 639  639 
	.loc 1 639
	push 639
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000560
	mov  rax, 0
	call assert_expect
	jmp  .L000561
.L000560:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000561:
	push rax
	pop  rax
// Line 640 (CALL assert_expect ((CAST int   640 ):(CAST long   4 ):(CAST long   4 ):) )
	.loc 1 640
// Line 640 (CAST long   4 )
	.loc 1 640
// Line 640  4 
	.loc 1 640
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 640 (CAST long   4 )
	.loc 1 640
// Line 640  4 
	.loc 1 640
	push 4
	pop  rax
	movsx rax, eax
	push rax
// Line 640 (CAST int   640 )
	.loc 1 640
// Line 640  640 
	.loc 1 640
	push 640
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000562
	mov  rax, 0
	call assert_expect
	jmp  .L000563
.L000562:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000563:
	push rax
	pop  rax
// Line 641 (CALL assert_expect ((CAST int   641 ):(CAST long   10 ):(CAST long   10 ):) )
	.loc 1 641
// Line 641 (CAST long   10 )
	.loc 1 641
// Line 641  10 
	.loc 1 641
	push 10
	pop  rax
	movsx rax, eax
	push rax
// Line 641 (CAST long   10 )
	.loc 1 641
// Line 641  10 
	.loc 1 641
	push 10
	pop  rax
	movsx rax, eax
	push rax
// Line 641 (CAST int   641 )
	.loc 1 641
// Line 641  641 
	.loc 1 641
	push 641
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000564
	mov  rax, 0
	call assert_expect
	jmp  .L000565
.L000564:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000565:
	push rax
	pop  rax
// Line 642 (CALL assert_expect ((CAST int   642 ):(CAST long   12 ):(CAST long   12 ):) )
	.loc 1 642
// Line 642 (CAST long   12 )
	.loc 1 642
// Line 642  12 
	.loc 1 642
	push 12
	pop  rax
	movsx rax, eax
	push rax
// Line 642 (CAST long   12 )
	.loc 1 642
// Line 642  12 
	.loc 1 642
	push 12
	pop  rax
	movsx rax, eax
	push rax
// Line 642 (CAST int   642 )
	.loc 1 642
// Line 642  642 
	.loc 1 642
	push 642
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000566
	mov  rax, 0
	call assert_expect
	jmp  .L000567
.L000566:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000567:
	push rax
	pop  rax
// Line 644 (CALL assert_expect ((CAST int   644 ):(CAST long   11 ):(CAST long  (CALL switch_ ((CAST int   1 ):) )):) )
	.loc 1 644
// Line 644 (CAST long  (CALL switch_ ((CAST int   1 ):) ))
	.loc 1 644
// Line 644 (CALL switch_ ((CAST int   1 ):) )
	.loc 1 644
// Line 644 (CAST int   1 )
	.loc 1 644
// Line 644  1 
	.loc 1 644
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000568
	mov  rax, 0
	call switch_
	jmp  .L000569
.L000568:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000569:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 644 (CAST long   11 )
	.loc 1 644
// Line 644  11 
	.loc 1 644
	push 11
	pop  rax
	movsx rax, eax
	push rax
// Line 644 (CAST int   644 )
	.loc 1 644
// Line 644  644 
	.loc 1 644
	push 644
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000570
	mov  rax, 0
	call assert_expect
	jmp  .L000571
.L000570:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000571:
	push rax
	pop  rax
// Line 645 (CALL assert_expect ((CAST int   645 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   2 ):) )):) )
	.loc 1 645
// Line 645 (CAST long  (CALL switch_ ((CAST int   2 ):) ))
	.loc 1 645
// Line 645 (CALL switch_ ((CAST int   2 ):) )
	.loc 1 645
// Line 645 (CAST int   2 )
	.loc 1 645
// Line 645  2 
	.loc 1 645
	push 2
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000572
	mov  rax, 0
	call switch_
	jmp  .L000573
.L000572:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000573:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 645 (CAST long   13 )
	.loc 1 645
// Line 645  13 
	.loc 1 645
	push 13
	pop  rax
	movsx rax, eax
	push rax
// Line 645 (CAST int   645 )
	.loc 1 645
// Line 645  645 
	.loc 1 645
	push 645
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000574
	mov  rax, 0
	call assert_expect
	jmp  .L000575
.L000574:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000575:
	push rax
	pop  rax
// Line 646 (CALL assert_expect ((CAST int   646 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   3 ):) )):) )
	.loc 1 646
// Line 646 (CAST long  (CALL switch_ ((CAST int   3 ):) ))
	.loc 1 646
// Line 646 (CALL switch_ ((CAST int   3 ):) )
	.loc 1 646
// Line 646 (CAST int   3 )
	.loc 1 646
// Line 646  3 
	.loc 1 646
	push 3
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000576
	mov  rax, 0
	call switch_
	jmp  .L000577
.L000576:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000577:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 646 (CAST long   13 )
	.loc 1 646
// Line 646  13 
	.loc 1 646
	push 13
	pop  rax
	movsx rax, eax
	push rax
// Line 646 (CAST int   646 )
	.loc 1 646
// Line 646  646 
	.loc 1 646
	push 646
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000578
	mov  rax, 0
	call assert_expect
	jmp  .L000579
.L000578:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000579:
	push rax
	pop  rax
// Line 647 (CALL assert_expect ((CAST int   647 ):(CAST long   13 ):(CAST long  (CALL switch_ ((CAST int   4 ):) )):) )
	.loc 1 647
// Line 647 (CAST long  (CALL switch_ ((CAST int   4 ):) ))
	.loc 1 647
// Line 647 (CALL switch_ ((CAST int   4 ):) )
	.loc 1 647
// Line 647 (CAST int   4 )
	.loc 1 647
// Line 647  4 
	.loc 1 647
	push 4
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000580
	mov  rax, 0
	call switch_
	jmp  .L000581
.L000580:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000581:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 647 (CAST long   13 )
	.loc 1 647
// Line 647  13 
	.loc 1 647
	push 13
	pop  rax
	movsx rax, eax
	push rax
// Line 647 (CAST int   647 )
	.loc 1 647
// Line 647  647 
	.loc 1 647
	push 647
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000582
	mov  rax, 0
	call assert_expect
	jmp  .L000583
.L000582:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000583:
	push rax
	pop  rax
// Line 648 (CALL assert_expect ((CAST int   648 ):(CAST long   15 ):(CAST long  (CALL switch_ ((CAST int   5 ):) )):) )
	.loc 1 648
// Line 648 (CAST long  (CALL switch_ ((CAST int   5 ):) ))
	.loc 1 648
// Line 648 (CALL switch_ ((CAST int   5 ):) )
	.loc 1 648
// Line 648 (CAST int   5 )
	.loc 1 648
// Line 648  5 
	.loc 1 648
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000584
	mov  rax, 0
	call switch_
	jmp  .L000585
.L000584:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000585:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 648 (CAST long   15 )
	.loc 1 648
// Line 648  15 
	.loc 1 648
	push 15
	pop  rax
	movsx rax, eax
	push rax
// Line 648 (CAST int   648 )
	.loc 1 648
// Line 648  648 
	.loc 1 648
	push 648
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000586
	mov  rax, 0
	call assert_expect
	jmp  .L000587
.L000586:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000587:
	push rax
	pop  rax
// Line 649 (CALL assert_expect ((CAST int   649 ):(CAST long   15 ):(CAST long  (CALL switch_ ((CAST int   6 ):) )):) )
	.loc 1 649
// Line 649 (CAST long  (CALL switch_ ((CAST int   6 ):) ))
	.loc 1 649
// Line 649 (CALL switch_ ((CAST int   6 ):) )
	.loc 1 649
// Line 649 (CAST int   6 )
	.loc 1 649
// Line 649  6 
	.loc 1 649
	push 6
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000588
	mov  rax, 0
	call switch_
	jmp  .L000589
.L000588:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000589:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 649 (CAST long   15 )
	.loc 1 649
// Line 649  15 
	.loc 1 649
	push 15
	pop  rax
	movsx rax, eax
	push rax
// Line 649 (CAST int   649 )
	.loc 1 649
// Line 649  649 
	.loc 1 649
	push 649
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000590
	mov  rax, 0
	call assert_expect
	jmp  .L000591
.L000590:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000591:
	push rax
	pop  rax
// Line 652 (CALL assert_expect ((CAST int   652 ):(CAST long   11 ):(CAST long  (CALL switch2_ ((CAST char   97 ):) )):) )
	.loc 1 652
// Line 652 (CAST long  (CALL switch2_ ((CAST char   97 ):) ))
	.loc 1 652
// Line 652 (CALL switch2_ ((CAST char   97 ):) )
	.loc 1 652
// Line 652 (CAST char   97 )
	.loc 1 652
// Line 652  97 
	.loc 1 652
	push 97
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000592
	mov  rax, 0
	call switch2_
	jmp  .L000593
.L000592:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000593:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 652 (CAST long   11 )
	.loc 1 652
// Line 652  11 
	.loc 1 652
	push 11
	pop  rax
	movsx rax, eax
	push rax
// Line 652 (CAST int   652 )
	.loc 1 652
// Line 652  652 
	.loc 1 652
	push 652
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000594
	mov  rax, 0
	call assert_expect
	jmp  .L000595
.L000594:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000595:
	push rax
	pop  rax
// Line 653 (CALL assert_expect ((CAST int   653 ):(CAST long   12 ):(CAST long  (CALL switch2_ ((CAST char   98 ):) )):) )
	.loc 1 653
// Line 653 (CAST long  (CALL switch2_ ((CAST char   98 ):) ))
	.loc 1 653
// Line 653 (CALL switch2_ ((CAST char   98 ):) )
	.loc 1 653
// Line 653 (CAST char   98 )
	.loc 1 653
// Line 653  98 
	.loc 1 653
	push 98
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000596
	mov  rax, 0
	call switch2_
	jmp  .L000597
.L000596:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000597:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 653 (CAST long   12 )
	.loc 1 653
// Line 653  12 
	.loc 1 653
	push 12
	pop  rax
	movsx rax, eax
	push rax
// Line 653 (CAST int   653 )
	.loc 1 653
// Line 653  653 
	.loc 1 653
	push 653
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000598
	mov  rax, 0
	call assert_expect
	jmp  .L000599
.L000598:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000599:
	push rax
	pop  rax
// Line 654 (CALL assert_expect ((CAST int   654 ):(CAST long   12 ):(CAST long  (CALL switch2_ ((CAST char   99 ):) )):) )
	.loc 1 654
// Line 654 (CAST long  (CALL switch2_ ((CAST char   99 ):) ))
	.loc 1 654
// Line 654 (CALL switch2_ ((CAST char   99 ):) )
	.loc 1 654
// Line 654 (CAST char   99 )
	.loc 1 654
// Line 654  99 
	.loc 1 654
	push 99
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000600
	mov  rax, 0
	call switch2_
	jmp  .L000601
.L000600:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000601:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 654 (CAST long   12 )
	.loc 1 654
// Line 654  12 
	.loc 1 654
	push 12
	pop  rax
	movsx rax, eax
	push rax
// Line 654 (CAST int   654 )
	.loc 1 654
// Line 654  654 
	.loc 1 654
	push 654
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000602
	mov  rax, 0
	call assert_expect
	jmp  .L000603
.L000602:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000603:
	push rax
	pop  rax
// Line 655 (CALL assert_expect ((CAST int   655 ):(CAST long   15 ):(CAST long  (CALL switch2_ ((CAST char   122 ):) )):) )
	.loc 1 655
// Line 655 (CAST long  (CALL switch2_ ((CAST char   122 ):) ))
	.loc 1 655
// Line 655 (CALL switch2_ ((CAST char   122 ):) )
	.loc 1 655
// Line 655 (CAST char   122 )
	.loc 1 655
// Line 655  122 
	.loc 1 655
	push 122
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000604
	mov  rax, 0
	call switch2_
	jmp  .L000605
.L000604:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000605:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 655 (CAST long   15 )
	.loc 1 655
// Line 655  15 
	.loc 1 655
	push 15
	pop  rax
	movsx rax, eax
	push rax
// Line 655 (CAST int   655 )
	.loc 1 655
// Line 655  655 
	.loc 1 655
	push 655
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000606
	mov  rax, 0
	call assert_expect
	jmp  .L000607
.L000606:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000607:
	push rax
	pop  rax
// Line 658 (CALL assert_expect ((CAST int   658 ):(CAST long   92 ):(CAST long  (CALL q8 () )):) )
	.loc 1 658
// Line 658 (CAST long  (CALL q8 () ))
	.loc 1 658
// Line 658 (CALL q8 () )
	.loc 1 658
	mov  rax, rsp
	and  rax, 15
	jnz  .L000608
	mov  rax, 0
	call q8
	jmp  .L000609
.L000608:
	sub  rsp, 8
	mov  rax, 0
	call q8
	add  rsp, 8
.L000609:
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 658 (CAST long   92 )
	.loc 1 658
// Line 658  92 
	.loc 1 658
	push 92
	pop  rax
	movsx rax, eax
	push rax
// Line 658 (CAST int   658 )
	.loc 1 658
// Line 658  658 
	.loc 1 658
	push 658
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000610
	mov  rax, 0
	call assert_expect
	jmp  .L000611
.L000610:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000611:
	push rax
	pop  rax
// Line 661 (CALL assert_expect ((CAST int   661 ):(CAST long   0 ):(CAST long   0 ):) )
	.loc 1 661
// Line 661 (CAST long   0 )
	.loc 1 661
// Line 661  0 
	.loc 1 661
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 661 (CAST long   0 )
	.loc 1 661
// Line 661  0 
	.loc 1 661
	push 0
	pop  rax
	movsx rax, eax
	push rax
// Line 661 (CAST int   661 )
	.loc 1 661
// Line 661  661 
	.loc 1 661
	push 661
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000612
	mov  rax, 0
	call assert_expect
	jmp  .L000613
.L000612:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000613:
	push rax
	pop  rax
// Line 662 (CALL assert_expect ((CAST int   662 ):(CAST long   1 ):(CAST long   1 ):) )
	.loc 1 662
// Line 662 (CAST long   1 )
	.loc 1 662
// Line 662  1 
	.loc 1 662
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 662 (CAST long   1 )
	.loc 1 662
// Line 662  1 
	.loc 1 662
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 662 (CAST int   662 )
	.loc 1 662
// Line 662  662 
	.loc 1 662
	push 662
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000614
	mov  rax, 0
	call assert_expect
	jmp  .L000615
.L000614:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000615:
	push rax
	pop  rax
// Line 663 (CALL assert_expect ((CAST int   663 ):(CAST long   2 ):(CAST long   2 ):) )
	.loc 1 663
// Line 663 (CAST long   2 )
	.loc 1 663
// Line 663  2 
	.loc 1 663
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 663 (CAST long   2 )
	.loc 1 663
// Line 663  2 
	.loc 1 663
	push 2
	pop  rax
	movsx rax, eax
	push rax
// Line 663 (CAST int   663 )
	.loc 1 663
// Line 663  663 
	.loc 1 663
	push 663
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000616
	mov  rax, 0
	call assert_expect
	jmp  .L000617
.L000616:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000617:
	push rax
	pop  rax
// Line 664 (CALL assert_expect ((CAST int   664 ):(CAST long   3 ):(CAST long   3 ):) )
	.loc 1 664
// Line 664 (CAST long   3 )
	.loc 1 664
// Line 664  3 
	.loc 1 664
	push 3
	pop  rax
	movsx rax, eax
	push rax
// Line 664 (CAST long   3 )
	.loc 1 664
// Line 664  3 
	.loc 1 664
	push 3
	pop  rax
	movsx rax, eax
	push rax
// Line 664 (CAST int   664 )
	.loc 1 664
// Line 664  664 
	.loc 1 664
	push 664
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000618
	mov  rax, 0
	call assert_expect
	jmp  .L000619
.L000618:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000619:
	push rax
	pop  rax
// Line 666 (CALL assert_expect ((CAST int   666 ):(CAST long   15 ):(CAST long  (|  13   7 )):) )
	.loc 1 666
// Line 666 (CAST long  (|  13   7 ))
	.loc 1 666
// Line 666 (|  13   7 )
	.loc 1 666
// Line 666  13 
	.loc 1 666
	push 13
// Line 666  7 
	.loc 1 666
	push 7
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 666 (CAST long   15 )
	.loc 1 666
// Line 666  15 
	.loc 1 666
	push 15
	pop  rax
	movsx rax, eax
	push rax
// Line 666 (CAST int   666 )
	.loc 1 666
// Line 666  666 
	.loc 1 666
	push 666
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000620
	mov  rax, 0
	call assert_expect
	jmp  .L000621
.L000620:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000621:
	push rax
	pop  rax
// Line 667 (CALL assert_expect ((CAST int   667 ):(CAST long   5115 ):(CAST long  (|  938   5073 )):) )
	.loc 1 667
// Line 667 (CAST long  (|  938   5073 ))
	.loc 1 667
// Line 667 (|  938   5073 )
	.loc 1 667
// Line 667  938 
	.loc 1 667
	push 938
// Line 667  5073 
	.loc 1 667
	push 5073
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 667 (CAST long   5115 )
	.loc 1 667
// Line 667  5115 
	.loc 1 667
	push 5115
	pop  rax
	movsx rax, eax
	push rax
// Line 667 (CAST int   667 )
	.loc 1 667
// Line 667  667 
	.loc 1 667
	push 667
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000622
	mov  rax, 0
	call assert_expect
	jmp  .L000623
.L000622:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000623:
	push rax
	pop  rax
// Line 668 (CALL assert_expect ((CAST int   668 ):(CAST long   5 ):(CAST long  (&  13   7 )):) )
	.loc 1 668
// Line 668 (CAST long  (&  13   7 ))
	.loc 1 668
// Line 668 (&  13   7 )
	.loc 1 668
// Line 668  13 
	.loc 1 668
	push 13
// Line 668  7 
	.loc 1 668
	push 7
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 668 (CAST long   5 )
	.loc 1 668
// Line 668  5 
	.loc 1 668
	push 5
	pop  rax
	movsx rax, eax
	push rax
// Line 668 (CAST int   668 )
	.loc 1 668
// Line 668  668 
	.loc 1 668
	push 668
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000624
	mov  rax, 0
	call assert_expect
	jmp  .L000625
.L000624:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000625:
	push rax
	pop  rax
// Line 669 (CALL assert_expect ((CAST int   669 ):(CAST long   896 ):(CAST long  (&  938   5073 )):) )
	.loc 1 669
// Line 669 (CAST long  (&  938   5073 ))
	.loc 1 669
// Line 669 (&  938   5073 )
	.loc 1 669
// Line 669  938 
	.loc 1 669
	push 938
// Line 669  5073 
	.loc 1 669
	push 5073
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 669 (CAST long   896 )
	.loc 1 669
// Line 669  896 
	.loc 1 669
	push 896
	pop  rax
	movsx rax, eax
	push rax
// Line 669 (CAST int   669 )
	.loc 1 669
// Line 669  669 
	.loc 1 669
	push 669
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000626
	mov  rax, 0
	call assert_expect
	jmp  .L000627
.L000626:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000627:
	push rax
	pop  rax
// Line 670 (CALL assert_expect ((CAST int   670 ):(CAST long   10 ):(CAST long  (^  13   7 )):) )
	.loc 1 670
// Line 670 (CAST long  (^  13   7 ))
	.loc 1 670
// Line 670 (^  13   7 )
	.loc 1 670
// Line 670  13 
	.loc 1 670
	push 13
// Line 670  7 
	.loc 1 670
	push 7
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 670 (CAST long   10 )
	.loc 1 670
// Line 670  10 
	.loc 1 670
	push 10
	pop  rax
	movsx rax, eax
	push rax
// Line 670 (CAST int   670 )
	.loc 1 670
// Line 670  670 
	.loc 1 670
	push 670
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000628
	mov  rax, 0
	call assert_expect
	jmp  .L000629
.L000628:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000629:
	push rax
	pop  rax
// Line 671 (CALL assert_expect ((CAST int   671 ):(CAST long   4219 ):(CAST long  (^  938   5073 )):) )
	.loc 1 671
// Line 671 (CAST long  (^  938   5073 ))
	.loc 1 671
// Line 671 (^  938   5073 )
	.loc 1 671
// Line 671  938 
	.loc 1 671
	push 938
// Line 671  5073 
	.loc 1 671
	push 5073
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 671 (CAST long   4219 )
	.loc 1 671
// Line 671  4219 
	.loc 1 671
	push 4219
	pop  rax
	movsx rax, eax
	push rax
// Line 671 (CAST int   671 )
	.loc 1 671
// Line 671  671 
	.loc 1 671
	push 671
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000630
	mov  rax, 0
	call assert_expect
	jmp  .L000631
.L000630:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000631:
	push rax
	pop  rax
// Line 673 (CALL assert_expect ((CAST int   673 ):(CAST long   29 ):(CAST long  (>>  938   5 )):) )
	.loc 1 673
// Line 673 (CAST long  (>>  938   5 ))
	.loc 1 673
// Line 673 (>>  938   5 )
	.loc 1 673
// Line 673  938 
	.loc 1 673
	push 938
// Line 673  5 
	.loc 1 673
	push 5
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 673 (CAST long   29 )
	.loc 1 673
// Line 673  29 
	.loc 1 673
	push 29
	pop  rax
	movsx rax, eax
	push rax
// Line 673 (CAST int   673 )
	.loc 1 673
// Line 673  673 
	.loc 1 673
	push 673
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000632
	mov  rax, 0
	call assert_expect
	jmp  .L000633
.L000632:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000633:
	push rax
	pop  rax
// Line 674 (CALL assert_expect ((CAST int   674 ):(CAST long   1664 ):(CAST long  (<<  13   7 )):) )
	.loc 1 674
// Line 674 (CAST long  (<<  13   7 ))
	.loc 1 674
// Line 674 (<<  13   7 )
	.loc 1 674
// Line 674  13 
	.loc 1 674
	push 13
// Line 674  7 
	.loc 1 674
	push 7
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 674 (CAST long   1664 )
	.loc 1 674
// Line 674  1664 
	.loc 1 674
	push 1664
	pop  rax
	movsx rax, eax
	push rax
// Line 674 (CAST int   674 )
	.loc 1 674
// Line 674  674 
	.loc 1 674
	push 674
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000634
	mov  rax, 0
	call assert_expect
	jmp  .L000635
.L000634:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000635:
	push rax
	pop  rax
// Line 676 (CALL printf ((CAST * char  (ADDR  "passed tests.\n" )):) )
	.loc 1 676
// Line 676 (CAST * char  (ADDR  "passed tests.\n" ))
	.loc 1 676
// Line 676 (ADDR  "passed tests.\n" )
	.loc 1 676
	lea  rax, .LS000033[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000636
	mov  rax, 0
	call printf
	jmp  .L000637
.L000636:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000637:
	push rax
	pop  rax
// Line 677 (RETURN  0 )
	.loc 1 677
// Line 677  0 
	.loc 1 677
	push 0
	pop  rax
	jmp  .L.return.main
.L.return.main:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret

// FDECL assert_expect func ( int  line , int  expected , int  actual ) void  max_offset:44
//    (LVAR 36) (LVAR 40) (LVAR 44) 
//    (BLOCK(IF (== (LVAR 40) (LVAR 44)) (RETURN NULL ) NULL ):(CALL fprintf ((CAST * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} (GVAR stderr)):(CAST * char  (ADDR  "%d: %d expected, but got %d\n" )):(LVAR 36):(LVAR 40):(LVAR 44):) ):(CALL exit ((CAST int   1 ):) ):))
//    actual  offset:44  int 
//    expected  offset:40  int 
//    line  offset:36  int 

// FDECL fibo func ( int  x ) int  max_offset:36
//    (LVAR 36) 
//    (BLOCK(IF (<  2  (LVAR 36)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((CAST int  (- (LVAR 36)  1 )):) ) (CALL fibo ((CAST int  (- (LVAR 36)  2 )):) ))):))
//    x  offset:36  int 

// FDECL array_local func ( ) int  max_offset:416
//    
//    (BLOCK(= (LVAR 356)  0 ):(= (LVAR 360)  0 ):(= (LVAR 376) { 0 , 1 ,(-  0   2 ),(-  0   3 )}):(= (LVAR 408) { 0 ,(-  0   1 ),(-  0   2 ),(-  0   3 )}):(= (LVAR 416) {(-  0   5 ),(-  0   6 ), 7 , 8 }):(WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)):(CALL assert_expect ((CAST int   74 ):(CAST int   0 ):(CAST int  (DEREF (] (ADDR (LVAR 376))  0 ))):) ):(CALL assert_expect ((CAST int   75 ):(CAST int   1 ):(CAST int  (DEREF (] (ADDR (LVAR 376))  1 ))):) ):(CALL assert_expect ((CAST int   76 ):(CAST int  (-  0   2 )):(CAST int  (DEREF (] (ADDR (LVAR 376))  2 ))):) ):(CALL assert_expect ((CAST int   77 ):(CAST int  (-  0   3 )):(CAST int  (DEREF (] (ADDR (LVAR 376))  3 ))):) ):(CALL assert_expect ((CAST int   79 ):(CAST int   0 ):(CAST int  (DEREF (] (ADDR (LVAR 408))  0 ))):) ):(CALL assert_expect ((CAST int   80 ):(CAST int  (-  0   1 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  1 ))):) ):(CALL assert_expect ((CAST int   81 ):(CAST int  (-  0   2 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  2 ))):) ):(CALL assert_expect ((CAST int   82 ):(CAST int  (-  0   3 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  3 ))):) ):(CALL assert_expect ((CAST int   84 ):(CAST int  (-  0   5 )):(CAST int  (DEREF (] (ADDR (LVAR 416))  0 ))):) ):(CALL assert_expect ((CAST int   85 ):(CAST int  (-  0   6 )):(CAST int  (DEREF (] (ADDR (LVAR 416))  1 ))):) ):(CALL assert_expect ((CAST int   86 ):(CAST int   7 ):(CAST int  (DEREF (] (ADDR (LVAR 416))  2 ))):) ):(CALL assert_expect ((CAST int   87 ):(CAST int   8 ):(CAST int  (DEREF (] (ADDR (LVAR 416))  3 ))):) ):(CALL assert_expect ((CAST int   89 ):(CAST int   1 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))):) ):(CALL assert_expect ((CAST int   90 ):(CAST int   97 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))):) ):(CALL assert_expect ((CAST int   91 ):(CAST int   84 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))):) ):(RETURN  0 ):))
//    m  offset:416  [4] short 
//    l  offset:408  [4] long 
//    k  offset:376  [4] int 
//    j  offset:360  int 
//    i  offset:356  int 
//    a  offset:352  [10] [8] int 

// FDECL array_global func ( ) int  max_offset:36
//    
//    (BLOCK(FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ((CAST int   117 ):(CAST int  (+ (LVAR 36)  1 )):(CAST int  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) )):(CALL assert_expect ((CAST int   118 ):(CAST int   105 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))):) ):(CALL assert_expect ((CAST int   119 ):(CAST int   119 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ((CAST int   130 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   131 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))):(CAST int   97 ):) ):(CALL assert_expect ((CAST int   132 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))):(CAST int   84 ):) ):(RETURN  0 ):))
//    i  offset:36  int 

// FDECL string func ( ) int  max_offset:63
//    
//    (BLOCK(= (LVAR 40) (ADDR  "Hello world!\n" )):(CALL printf ((CAST * char  (ADDR  "%s" )):(LVAR 40):) ):(= (LVAR 63)  "\tHello---" ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (LVAR 63)):) ):(CALL assert_expect ((CAST int   143 ):(CAST int   9 ):(CAST int  (DEREF (] (ADDR (LVAR 63))  15 ))):) ):(CALL assert_expect ((CAST int   145 ):(CAST int   119 ):(CAST int   119 ):) ):(CALL assert_expect ((CAST int   146 ):(CAST int   119 ):(CAST int  (DEREF (] (LVAR 40)  6 ))):) ):))
//    str_ary9  offset:63  [23] char 
//    str  offset:40  * char 

// FDECL block_scope func ( ) void  max_offset:48
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ((CAST int   151 ):(CAST int   1 ):(CAST int  (GVAR i)):) ):(= (LVAR 36)  5 ):(CALL assert_expect ((CAST int   153 ):(CAST int   5 ):(CAST int  (LVAR 36)):) ):(BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   160 ):(CAST int   4 ):(CAST int  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   162 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):):(CALL assert_expect ((CAST int   164 ):(CAST int   2 ):(CAST int  (LVAR 40)):) ):):(CALL assert_expect ((CAST int   166 ):(CAST int   5 ):(CAST int  (LVAR 36)):) ):))
//    i  offset:48  int 
//    i  offset:44  int 
//    i  offset:40  int 
//    i  offset:36  int 

// FDECL for_ func ( ) void  max_offset:44
//    
//    (BLOCK(= (LVAR 36)  100 ):(CALL assert_expect ((CAST int   171 ):(CAST int   100 ):(CAST int  (LVAR 36)):) ):(FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   174 ):(CAST int   12 ):(CAST int  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   176 ):(CAST int   9 ):(CAST int  (LVAR 44)):) ):)):(CALL assert_expect ((CAST int   178 ):(CAST int   100 ):(CAST int  (LVAR 36)):) ):(= (LVAR 36)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)):(CALL assert_expect ((CAST int   184 ):(CAST int   6 ):(CAST int  (LVAR 36)):) ):))
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
//    (BLOCK(= (LVAR 36)  16 ):(= (LVAR 44)  0 ):(FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)):(CALL assert_expect ((CAST int   258 ):(CAST int   5 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   260 ):(CAST int   4 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   262 ):(CAST int   3 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   264 ):(CAST int   2 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   266 ):(CAST int   1 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   268 ):(CAST int   0 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ((CAST int   271 ):(CAST int   777 ):(CAST int  (MEMBER (GVAR def) payload 0)):) ):))
//    new  offset:56  * struct <List> 
//    i  offset:48  int 
//    cursor  offset:44  * struct <List> 
//    size  offset:36  int 

// FDECL struct_ func ( ) void  max_offset:832
//    
//    (BLOCK(CALL assert_expect ((CAST int   294 ):(CAST int   32 ):(CAST int   32 ):) ):(CALL assert_expect ((CAST int   295 ):(CAST int   8 ):(CAST int   8 ):) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ((CAST int   300 ):(CAST int   9 ):(CAST int  (MEMBER (GVAR pos) col 4)):) ):(CALL assert_expect ((CAST int   301 ):(CAST int   45 ):(CAST int  (MEMBER (GVAR pos) row 0)):) ):(CALL assert_expect ((CAST int   303 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   304 ):(CAST int   4 ):(CAST int   4 ):) ):(= (LVAR 368) (ADDR (LVAR 360))):(= (MEMBER (LVAR 360) size 136)  10 ):(= (MEMBER (LVAR 360) ch 140)  5 ):(= (MEMBER (LVAR 512) size 136)  195 ):(= (MEMBER (LVAR 512) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ((CAST int   315 ):(CAST int   10 ):(CAST int  (MEMBER (LVAR 360) size 136)):) ):(CALL assert_expect ((CAST int   316 ):(CAST int   5 ):(CAST int  (MEMBER (LVAR 360) ch 140)):) ):(= (MEMBER (LVAR 360) size 136)  110 ):(= (MEMBER (LVAR 360) ch 140)  79 ):(CALL assert_expect ((CAST int   319 ):(CAST int   110 ):(CAST int  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   320 ):(CAST int   79 ):(CAST int  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   321 ):(CAST int   110 ):(CAST int  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   322 ):(CAST int   79 ):(CAST int  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   323 ):(CAST int   195 ):(CAST int  (MEMBER (LVAR 512) size 136)):) ):(CALL assert_expect ((CAST int   324 ):(CAST int   39 ):(CAST int  (MEMBER (LVAR 512) ch 140)):) ):(CALL assert_expect ((CAST int   325 ):(CAST int   184 ):(CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)):) ):(CALL assert_expect ((CAST int   326 ):(CAST int   984 ):(CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)):) ):(= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512))):(= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360))):(CALL assert_expect ((CAST int   330 ):(CAST int   195 ):(CAST int  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  100 ):(= (MEMBER (LVAR 816) size 136)  500 ):(= (LVAR 816) (LVAR 672)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ((CAST int   338 ):(CAST int   100 ):(CAST int  (MEMBER (LVAR 816) size 136)):) ):(= (LVAR 816) (GVAR leaf_global)):(CALL assert_expect ((CAST int   340 ):(CAST int   700 ):(CAST int  (MEMBER (LVAR 816) size 136)):) ):(= (GVAR leaf_global) (LVAR 672)):(CALL assert_expect ((CAST int   342 ):(CAST int   100 ):(CAST int  (MEMBER (GVAR leaf_global) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  999 ):(= (LVAR 824) (ADDR (LVAR 672))):(= (LVAR 832) (ADDR (LVAR 816))):(= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))):(CALL assert_expect ((CAST int   347 ):(CAST int   999 ):(CAST int  (MEMBER (DEREF (LVAR 832)) size 136)):) ):(CALL assert_expect ((CAST int   348 ):(CAST int   999 ):(CAST int  (MEMBER (GVAR leaf_global) size 136)):) ):))
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

// FDECL main func ( ) int  max_offset:93
//    
//    (BLOCK(= (LVAR 40) (CAST * void   0 )):(CALL assert_expect ((CAST int   412 ):(CAST int   1 ):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   413 ):(CAST int   0 ):(CAST int   0 ):) ):(CALL assert_expect ((CAST int   414 ):(CAST int   0 ):(CAST int  (CAST long  (CAST * void   0 ))):) ):(CALL assert_expect ((CAST int   416 ):(CAST int   70 ):(CAST int  (*  10  (+  2   5 ))):) ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (GVAR str_ary)):) ):(CALL assert_expect ((CAST int   419 ):(CAST int   1979 ):(CAST int  (GVAR i)):) ):(CALL assert_expect ((CAST int   420 ):(CAST int   2015 ):(CAST int  (GVAR j)):) ):(CALL assert_expect ((CAST int   421 ):(CAST int   24 ):(CAST int  (GVAR s)):) ):(CALL assert_expect ((CAST int   423 ):(CAST int   9 ):(CAST int   9 ):) ):(CALL assert_expect ((CAST int   424 ):(CAST int   4 ):(CAST int  (+ (-  0   3 )  7 )):) ):(CALL assert_expect ((CAST int   425 ):(CAST int   21 ):(CAST int  (- (+  5   20 )  4 )):) ):(CALL assert_expect ((CAST int   426 ):(CAST int   21 ):(CAST int  (+  5  (*  4   4 ))):) ):(CALL assert_expect ((CAST int   427 ):(CAST int   24 ):(CAST int  (* (*  4  (-  5   2 )) (-  4   2 ))):) ):(CALL assert_expect ((CAST int   428 ):(CAST int   13 ):(CAST int  (- (+  6  (*  3   4 )) (/  15   3 ))):) ):(CALL assert_expect ((CAST int   429 ):(CAST int   33 ):(CAST int  (/ (* (+  6   3 ) (-  15   4 ))  3 )):) ):(CALL assert_expect ((CAST int   430 ):(CAST int   0 ):(CAST int  (==  3  (+  3   1 ))):) ):(CALL assert_expect ((CAST int   431 ):(CAST int   1 ):(CAST int  (!=  4  (*  4   2 ))):) ):(CALL assert_expect ((CAST int   432 ):(CAST int   0 ):(CAST int  (!=  3  (*  1   3 ))):) ):(CALL assert_expect ((CAST int   433 ):(CAST int   1 ):(CAST int  (>=  5  (-  8   4 ))):) ):(CALL assert_expect ((CAST int   434 ):(CAST int   1 ):(CAST int  (>=  5  (-  7   2 ))):) ):(CALL assert_expect ((CAST int   435 ):(CAST int   0 ):(CAST int  (>= (-  11   8 )  5 )):) ):(CALL assert_expect ((CAST int   436 ):(CAST int   1 ):(CAST int  (<= (*  2   30 )  3 )):) ):(CALL assert_expect ((CAST int   437 ):(CAST int   1 ):(CAST int  (<= (/  9   3 )  3 )):) ):(CALL assert_expect ((CAST int   438 ):(CAST int   0 ):(CAST int  (<= (-  20   18 )  3 )):) ):(CALL assert_expect ((CAST int   439 ):(CAST int   1 ):(CAST int  (== (+ (* (-  0   5 )  2 )  10 )  0 )):) ):(CALL assert_expect ((CAST int   440 ):(CAST int   1 ):(CAST int  (== (/  6   2 ) (/  9   3 ))):) ):(CALL assert_expect ((CAST int   441 ):(CAST int   1 ):(CAST int  (< (+  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   442 ):(CAST int   1 ):(CAST int  (> (+  1   4 )  4 )):) ):(CALL assert_expect ((CAST int   443 ):(CAST int   0 ):(CAST int  (< (-  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   444 ):(CAST int   0 ):(CAST int  (> (-  1   4 )  4 )):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   446 ):(CAST int   0 ):(CAST int  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   447 ):(CAST int   0 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   448 ):(CAST int   0 ):(CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   449 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   450 ):(CAST int   1 ):(CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   451 ):(CAST int   2 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   452 ):(CAST int   1 ):(CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   453 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   454 ):(CAST int   1 ):(CAST int  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   455 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   457 ):(CAST int   0 ):(CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   458 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   460 ):(CAST int   0 ):(CAST int  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))):) ):(CALL assert_expect ((CAST int   461 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   462 ):(CAST int   1 ):(CAST int  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   463 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   464 ):(CAST int   1 ):(CAST int  (!  0 )):) ):(CALL assert_expect ((CAST int   465 ):(CAST int   0 ):(CAST int  (!  1 )):) ):(CALL assert_expect ((CAST int   466 ):(CAST int   0 ):(CAST int  (! (! (!  1 )))):) ):(CALL assert_expect ((CAST int   468 ):(CAST int   256 ):(CAST int  (<<  1   8 )):) ):(CALL assert_expect ((CAST int   469 ):(CAST int   32 ):(CAST int  (>>  512   4 )):) ):(CALL assert_expect ((CAST int   473 ):(CAST int   1 ):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   474 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   475 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   476 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   477 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   478 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   479 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   480 ):(CAST int   8 ):(CAST int   8 ):) ):(= (LVAR 45)  254 ):(CALL assert_expect ((CAST int   482 ):(CAST int  (-  0   2 )):(CAST int  (LVAR 45)):) ):(= (LVAR 49) (-  0   100 )):(CALL assert_expect ((CAST int   484 ):(CAST int  (-  0   100 )):(CAST int  (LVAR 49)):) ):(= (LVAR 53) (-  0   100 )):(CALL assert_expect ((CAST int   486 ):(CAST int  (-  0   100 )):(CAST int  (LVAR 53)):) ):(CALL assert_expect ((CAST int   490 ):(CAST int   131585 ):(CAST int  (CAST int   131585 )):) ):(CALL assert_expect ((CAST int   491 ):(CAST int   513 ):(CAST int  (CAST short   131585 )):) ):(CALL assert_expect ((CAST int   492 ):(CAST int   1 ):(CAST int  (CAST char   131585 )):) ):(CALL assert_expect ((CAST int   493 ):(CAST int   1 ):(CAST int  (CAST long   1 )):) ):(CALL assert_expect ((CAST int   495 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   496 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   497 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   498 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   500 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   501 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   502 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   503 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   504 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   505 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   506 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   507 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   509 ):(CAST int  (CAST long  (-  0   5 ))):(CAST int  (+ (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   510 ):(CAST int  (CAST long  (-  0   15 ))):(CAST int  (- (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   511 ):(CAST int  (CAST long  (-  0   50 ))):(CAST int  (* (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   512 ):(CAST int  (CAST long  (-  0   2 ))):(CAST int  (/ (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   514 ):(CAST int   1 ):(CAST int  (< (CAST long  (-  0   1 )) (-  0   2 ))):) ):(CALL assert_expect ((CAST int   515 ):(CAST int   1 ):(CAST int  (<= (CAST long  (-  0   1 )) (-  0   2 ))):) ):(CALL assert_expect ((CAST int   516 ):(CAST int   0 ):(CAST int  (> (-  0   2 ) (CAST long  (-  0   1 )))):) ):(CALL assert_expect ((CAST int   517 ):(CAST int   0 ):(CAST int  (>= (-  0   2 ) (CAST long  (-  0   1 )))):) ):(CALL assert_expect ((CAST int   519 ):(CAST int   1 ):(CAST int  (< (-  0   1 ) (CAST long  (-  0   2 )))):) ):(CALL assert_expect ((CAST int   520 ):(CAST int   1 ):(CAST int  (<= (-  0   1 ) (CAST long  (-  0   2 )))):) ):(CALL assert_expect ((CAST int   521 ):(CAST int   0 ):(CAST int  (> (CAST long  (-  0   2 )) (-  0   1 ))):) ):(CALL assert_expect ((CAST int   522 ):(CAST int   0 ):(CAST int  (>= (CAST long  (-  0   2 )) (-  0   1 ))):) ):(CALL assert_expect ((CAST int   524 ):(CAST int   0 ):(CAST int  (+ (+  2147483647   2147483647 )  2 )):) ):(= (LVAR 77) (-  0   1 )):(CALL assert_expect ((CAST int   527 ):(CAST int  (CAST long  (-  0   1 ))):(CAST int  (LVAR 77)):) ):(= (LVAR 81)  10 ):(CALL assert_expect ((CAST int   532 ):(CAST int   15 ):(CAST int  (= (LVAR 81) (+= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   533 ):(CAST int   15 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   534 ):(CAST int   8 ):(CAST int  (= (LVAR 81) (-= (LVAR 81)  7 ))):) ):(CALL assert_expect ((CAST int   535 ):(CAST int   8 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   536 ):(CAST int   40 ):(CAST int  (= (LVAR 81) (*= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   537 ):(CAST int   40 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   538 ):(CAST int   4 ):(CAST int  (= (LVAR 81) (/= (LVAR 81)  10 ))):) ):(CALL assert_expect ((CAST int   539 ):(CAST int   4 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   542 ):(CAST int   4 ):(CAST int  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   543 ):(CAST int   5 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   544 ):(CAST int   5 ):(CAST int  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   545 ):(CAST int   4 ):(CAST int  (LVAR 81)):) ):(= (LVAR 85) (/  100  (LVAR 81))):(CALL assert_expect ((CAST int   550 ):(CAST int   25 ):(CAST int  (LVAR 85)):) ):(= (LVAR 89)  77 ):(IF (== (LVAR 89)  77 ) (= (LVAR 89)  55 ) (= (LVAR 89)  66 )):(CALL assert_expect ((CAST int   558 ):(CAST int   55 ):(CAST int  (LVAR 89)):) ):(CALL assert_expect ((CAST int   559 ):(CAST int   1346269 ):(CAST int  (CALL fibo ((CAST int   30 ):) )):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ((CAST int   581 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   582 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   583 ):(CAST int   10 ):(CAST int   10 ):) ):(CALL assert_expect ((CAST int   584 ):(CAST int   12 ):(CAST int   12 ):) ):(CALL assert_expect ((CAST int   586 ):(CAST int   11 ):(CAST int  (CALL switch_ ((CAST int   1 ):) )):) ):(CALL assert_expect ((CAST int   587 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   2 ):) )):) ):(CALL assert_expect ((CAST int   588 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   3 ):) )):) ):(CALL assert_expect ((CAST int   589 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   4 ):) )):) ):(CALL assert_expect ((CAST int   590 ):(CAST int   15 ):(CAST int  (CALL switch_ ((CAST int   5 ):) )):) ):(CALL assert_expect ((CAST int   591 ):(CAST int   15 ):(CAST int  (CALL switch_ ((CAST int   6 ):) )):) ):(CALL assert_expect ((CAST int   594 ):(CAST int   11 ):(CAST int  (CALL switch2_ ((CAST char   97 ):) )):) ):(CALL assert_expect ((CAST int   595 ):(CAST int   12 ):(CAST int  (CALL switch2_ ((CAST char   98 ):) )):) ):(CALL assert_expect ((CAST int   596 ):(CAST int   12 ):(CAST int  (CALL switch2_ ((CAST char   99 ):) )):) ):(CALL assert_expect ((CAST int   597 ):(CAST int   15 ):(CAST int  (CALL switch2_ ((CAST char   122 ):) )):) ):(CALL assert_expect ((CAST int   600 ):(CAST int   92 ):(CAST int  (CALL q8 () )):) ):(CALL assert_expect ((CAST int   603 ):(CAST int   0 ):(CAST int   0 ):) ):(CALL assert_expect ((CAST int   604 ):(CAST int   1 ):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   605 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   606 ):(CAST int   3 ):(CAST int   3 ):) ):(CALL assert_expect ((CAST int   608 ):(CAST int   15 ):(CAST int  (|  13   7 )):) ):(CALL assert_expect ((CAST int   609 ):(CAST int   5115 ):(CAST int  (|  938   5073 )):) ):(CALL assert_expect ((CAST int   610 ):(CAST int   5 ):(CAST int  (&  13   7 )):) ):(CALL assert_expect ((CAST int   611 ):(CAST int   896 ):(CAST int  (&  938   5073 )):) ):(CALL assert_expect ((CAST int   612 ):(CAST int   10 ):(CAST int  (^  13   7 )):) ):(CALL assert_expect ((CAST int   613 ):(CAST int   4219 ):(CAST int  (^  938   5073 )):) ):(CALL assert_expect ((CAST int   615 ):(CAST int   29 ):(CAST int  (>>  938   5 )):) ):(CALL assert_expect ((CAST int   616 ):(CAST int   1664 ):(CAST int  (<<  13   7 )):) ):(CALL printf ((CAST * char  (ADDR  "passed tests.\n" )):) ):(RETURN  0 ):))
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
// q8_count int NULL 
// number enum <Number> NULL 
// ptr_to_pos * struct <Pos> NULL 
// pos struct <Pos> NULL 
// def struct <> { int <payload:0>}NULL 
// list1 struct <List> NULL 
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
// assert_expect func ( int  line , int  expected , int  actual ) void 
// fprintf func VARIADIC ( * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} stream , * char  fmt ) int 
// calloc func ( int  n , int  size ) * void 
// printf func VARIADIC ( * char  fmt ) int 
// exit func ( int  status ) void 
// __builtin_va_start func VARIADIC ( ) void 
// Strings
// "%d: %d expected, but got %d\n"
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
	.string "%d: %d expected, but got %d\n"
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
// Line 19 FDECL assert_expect func ( int  line , int  expected , int  actual ) void  max_offset:44
//    (LVAR 36) (LVAR 40) (LVAR 44) 
//    (BLOCK(IF (== (LVAR 40) (LVAR 44)) (RETURN NULL ) NULL ):(CALL fprintf ((CAST * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} (GVAR stderr)):(CAST * char  (ADDR  "%d: %d expected, but got %d\n" )):(LVAR 36):(LVAR 40):(LVAR 44):) ):(CALL exit ((CAST int   1 ):) ):))
	.loc 1 19
assert_expect:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 36], edi
	mov  [rbp - 40], esi
	mov  [rbp - 44], edx
// Line 21 (IF (== (LVAR 40) (LVAR 44)) (RETURN NULL ) NULL )
	.loc 1 21
// Line 20 (== (LVAR 40) (LVAR 44))
	.loc 1 20
// Line 20 (LVAR 40)
	.loc 1 20
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 20 (LVAR 44)
	.loc 1 20
	lea  rax, [rbp - 44]
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
	je   .L000000
// Line 20 (RETURN NULL )
	.loc 1 20
	jmp  .L.return.assert_expect
	jmp  .L000001
.L000000:
.L000001:
// Line 21 (CALL fprintf ((CAST * struct <> { char <mode:0>, * char <ptr:8>, int <rcount:16>, int <wcount:20>, * char <base:24>, int <bufsiz:32>, int <fd:36>, [1] char <smallbuf:40>} (GVAR stderr)):(CAST * char  (ADDR  "%d: %d expected, but got %d\n" )):(LVAR 36):(LVAR 40):(LVAR 44):) )
	.loc 1 21
// Line 21 (LVAR 44)
	.loc 1 21
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 21 (LVAR 40)
	.loc 1 21
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 21 (LVAR 36)
	.loc 1 21
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 21 (CAST * char  (ADDR  "%d: %d expected, but got %d\n" ))
	.loc 1 21
// Line 21 (ADDR  "%d: %d expected, but got %d\n" )
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
//    (BLOCK(= (LVAR 356)  0 ):(= (LVAR 360)  0 ):(= (LVAR 376) { 0 , 1 ,(-  0   2 ),(-  0   3 )}):(= (LVAR 408) { 0 ,(-  0   1 ),(-  0   2 ),(-  0   3 )}):(= (LVAR 416) {(-  0   5 ),(-  0   6 ), 7 , 8 }):(WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)):(CALL assert_expect ((CAST int   74 ):(CAST int   0 ):(CAST int  (DEREF (] (ADDR (LVAR 376))  0 ))):) ):(CALL assert_expect ((CAST int   75 ):(CAST int   1 ):(CAST int  (DEREF (] (ADDR (LVAR 376))  1 ))):) ):(CALL assert_expect ((CAST int   76 ):(CAST int  (-  0   2 )):(CAST int  (DEREF (] (ADDR (LVAR 376))  2 ))):) ):(CALL assert_expect ((CAST int   77 ):(CAST int  (-  0   3 )):(CAST int  (DEREF (] (ADDR (LVAR 376))  3 ))):) ):(CALL assert_expect ((CAST int   79 ):(CAST int   0 ):(CAST int  (DEREF (] (ADDR (LVAR 408))  0 ))):) ):(CALL assert_expect ((CAST int   80 ):(CAST int  (-  0   1 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  1 ))):) ):(CALL assert_expect ((CAST int   81 ):(CAST int  (-  0   2 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  2 ))):) ):(CALL assert_expect ((CAST int   82 ):(CAST int  (-  0   3 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  3 ))):) ):(CALL assert_expect ((CAST int   84 ):(CAST int  (-  0   5 )):(CAST int  (DEREF (] (ADDR (LVAR 416))  0 ))):) ):(CALL assert_expect ((CAST int   85 ):(CAST int  (-  0   6 )):(CAST int  (DEREF (] (ADDR (LVAR 416))  1 ))):) ):(CALL assert_expect ((CAST int   86 ):(CAST int   7 ):(CAST int  (DEREF (] (ADDR (LVAR 416))  2 ))):) ):(CALL assert_expect ((CAST int   87 ):(CAST int   8 ):(CAST int  (DEREF (] (ADDR (LVAR 416))  3 ))):) ):(CALL assert_expect ((CAST int   89 ):(CAST int   1 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))):) ):(CALL assert_expect ((CAST int   90 ):(CAST int   97 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))):) ):(CALL assert_expect ((CAST int   91 ):(CAST int   84 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))):) ):(RETURN  0 ):))
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
	lea  rax, [rbp - 356]
	push rax
// Line 61  0 
	.loc 1 61
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 62 (= (LVAR 360)  0 )
	.loc 1 62
	lea  rax, [rbp - 360]
	push rax
// Line 62  0 
	.loc 1 62
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 63 (= (LVAR 376) { 0 , 1 ,(-  0   2 ),(-  0   3 )})
	.loc 1 63
	lea  rax, [rbp - 376]
	push rax
// Line 63  0 
	.loc 1 63
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	lea  rax, [rbp - 372]
	push rax
// Line 63  1 
	.loc 1 63
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	lea  rax, [rbp - 368]
	push rax
// Line 63 (-  0   2 )
	.loc 1 63
// Line 63  0 
	.loc 1 63
	push 0
// Line 63  2 
	.loc 1 63
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	lea  rax, [rbp - 364]
	push rax
// Line 63 (-  0   3 )
	.loc 1 63
// Line 63  0 
	.loc 1 63
	push 0
// Line 63  3 
	.loc 1 63
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 64 (= (LVAR 408) { 0 ,(-  0   1 ),(-  0   2 ),(-  0   3 )})
	.loc 1 64
	lea  rax, [rbp - 408]
	push rax
// Line 64  0 
	.loc 1 64
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	lea  rax, [rbp - 400]
	push rax
// Line 64 (-  0   1 )
	.loc 1 64
// Line 64  0 
	.loc 1 64
	push 0
// Line 64  1 
	.loc 1 64
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	lea  rax, [rbp - 392]
	push rax
// Line 64 (-  0   2 )
	.loc 1 64
// Line 64  0 
	.loc 1 64
	push 0
// Line 64  2 
	.loc 1 64
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	lea  rax, [rbp - 384]
	push rax
// Line 64 (-  0   3 )
	.loc 1 64
// Line 64  0 
	.loc 1 64
	push 0
// Line 64  3 
	.loc 1 64
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 65 (= (LVAR 416) {(-  0   5 ),(-  0   6 ), 7 , 8 })
	.loc 1 65
	lea  rax, [rbp - 416]
	push rax
// Line 65 (-  0   5 )
	.loc 1 65
// Line 65  0 
	.loc 1 65
	push 0
// Line 65  5 
	.loc 1 65
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], di
	push rdi
	lea  rax, [rbp - 414]
	push rax
// Line 65 (-  0   6 )
	.loc 1 65
// Line 65  0 
	.loc 1 65
	push 0
// Line 65  6 
	.loc 1 65
	push 6
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], di
	push rdi
	lea  rax, [rbp - 412]
	push rax
// Line 65  7 
	.loc 1 65
	push 7
	pop  rdi
	pop  rax
	mov  [rax], di
	push rdi
	lea  rax, [rbp - 410]
	push rax
// Line 65  8 
	.loc 1 65
	push 8
	pop  rdi
	pop  rax
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
	lea  rax, [rbp - 360]
	push rax
// Line 67  0 
	.loc 1 67
	push 0
	pop  rdi
	pop  rax
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
	push rax
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
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 70 (++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 )
	.loc 1 70
// Line 70 (= (LVAR 360) (++ (LVAR 360)  1 ))
	.loc 1 70
	lea  rax, [rbp - 360]
	push rax
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
	pop  rdi
	pop  rax
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
	lea  rax, [rbp - 356]
	push rax
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
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000012
.L000013:
// Line 74 (CALL assert_expect ((CAST int   74 ):(CAST int   0 ):(CAST int  (DEREF (] (ADDR (LVAR 376))  0 ))):) )
	.loc 1 74
// Line 74 (CAST int  (DEREF (] (ADDR (LVAR 376))  0 )))
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
// Line 74 (CAST int   0 )
	.loc 1 74
// Line 74  0 
	.loc 1 74
	push 0
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
// Line 75 (CALL assert_expect ((CAST int   75 ):(CAST int   1 ):(CAST int  (DEREF (] (ADDR (LVAR 376))  1 ))):) )
	.loc 1 75
// Line 75 (CAST int  (DEREF (] (ADDR (LVAR 376))  1 )))
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
// Line 75 (CAST int   1 )
	.loc 1 75
// Line 75  1 
	.loc 1 75
	push 1
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
// Line 76 (CALL assert_expect ((CAST int   76 ):(CAST int  (-  0   2 )):(CAST int  (DEREF (] (ADDR (LVAR 376))  2 ))):) )
	.loc 1 76
// Line 76 (CAST int  (DEREF (] (ADDR (LVAR 376))  2 )))
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
// Line 76 (CAST int  (-  0   2 ))
	.loc 1 76
// Line 76 (-  0   2 )
	.loc 1 76
// Line 76  0 
	.loc 1 76
	push 0
// Line 76  2 
	.loc 1 76
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 77 (CALL assert_expect ((CAST int   77 ):(CAST int  (-  0   3 )):(CAST int  (DEREF (] (ADDR (LVAR 376))  3 ))):) )
	.loc 1 77
// Line 77 (CAST int  (DEREF (] (ADDR (LVAR 376))  3 )))
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
// Line 77 (CAST int  (-  0   3 ))
	.loc 1 77
// Line 77 (-  0   3 )
	.loc 1 77
// Line 77  0 
	.loc 1 77
	push 0
// Line 77  3 
	.loc 1 77
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 79 (CALL assert_expect ((CAST int   79 ):(CAST int   0 ):(CAST int  (DEREF (] (ADDR (LVAR 408))  0 ))):) )
	.loc 1 79
// Line 79 (CAST int  (DEREF (] (ADDR (LVAR 408))  0 )))
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
// Line 79 (CAST int   0 )
	.loc 1 79
// Line 79  0 
	.loc 1 79
	push 0
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
// Line 80 (CALL assert_expect ((CAST int   80 ):(CAST int  (-  0   1 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  1 ))):) )
	.loc 1 80
// Line 80 (CAST int  (DEREF (] (ADDR (LVAR 408))  1 )))
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
// Line 80 (CAST int  (-  0   1 ))
	.loc 1 80
// Line 80 (-  0   1 )
	.loc 1 80
// Line 80  0 
	.loc 1 80
	push 0
// Line 80  1 
	.loc 1 80
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 81 (CALL assert_expect ((CAST int   81 ):(CAST int  (-  0   2 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  2 ))):) )
	.loc 1 81
// Line 81 (CAST int  (DEREF (] (ADDR (LVAR 408))  2 )))
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
// Line 81 (CAST int  (-  0   2 ))
	.loc 1 81
// Line 81 (-  0   2 )
	.loc 1 81
// Line 81  0 
	.loc 1 81
	push 0
// Line 81  2 
	.loc 1 81
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 82 (CALL assert_expect ((CAST int   82 ):(CAST int  (-  0   3 )):(CAST int  (DEREF (] (ADDR (LVAR 408))  3 ))):) )
	.loc 1 82
// Line 82 (CAST int  (DEREF (] (ADDR (LVAR 408))  3 )))
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
// Line 82 (CAST int  (-  0   3 ))
	.loc 1 82
// Line 82 (-  0   3 )
	.loc 1 82
// Line 82  0 
	.loc 1 82
	push 0
// Line 82  3 
	.loc 1 82
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 84 (CALL assert_expect ((CAST int   84 ):(CAST int  (-  0   5 )):(CAST int  (DEREF (] (ADDR (LVAR 416))  0 ))):) )
	.loc 1 84
// Line 84 (CAST int  (DEREF (] (ADDR (LVAR 416))  0 )))
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
// Line 84 (CAST int  (-  0   5 ))
	.loc 1 84
// Line 84 (-  0   5 )
	.loc 1 84
// Line 84  0 
	.loc 1 84
	push 0
// Line 84  5 
	.loc 1 84
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 85 (CALL assert_expect ((CAST int   85 ):(CAST int  (-  0   6 )):(CAST int  (DEREF (] (ADDR (LVAR 416))  1 ))):) )
	.loc 1 85
// Line 85 (CAST int  (DEREF (] (ADDR (LVAR 416))  1 )))
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
// Line 85 (CAST int  (-  0   6 ))
	.loc 1 85
// Line 85 (-  0   6 )
	.loc 1 85
// Line 85  0 
	.loc 1 85
	push 0
// Line 85  6 
	.loc 1 85
	push 6
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 86 (CALL assert_expect ((CAST int   86 ):(CAST int   7 ):(CAST int  (DEREF (] (ADDR (LVAR 416))  2 ))):) )
	.loc 1 86
// Line 86 (CAST int  (DEREF (] (ADDR (LVAR 416))  2 )))
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
// Line 86 (CAST int   7 )
	.loc 1 86
// Line 86  7 
	.loc 1 86
	push 7
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
// Line 87 (CALL assert_expect ((CAST int   87 ):(CAST int   8 ):(CAST int  (DEREF (] (ADDR (LVAR 416))  3 ))):) )
	.loc 1 87
// Line 87 (CAST int  (DEREF (] (ADDR (LVAR 416))  3 )))
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
// Line 87 (CAST int   8 )
	.loc 1 87
// Line 87  8 
	.loc 1 87
	push 8
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
// Line 89 (CALL assert_expect ((CAST int   89 ):(CAST int   1 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))):) )
	.loc 1 89
// Line 89 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 )))
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
// Line 89 (CAST int   1 )
	.loc 1 89
// Line 89  1 
	.loc 1 89
	push 1
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
// Line 90 (CALL assert_expect ((CAST int   90 ):(CAST int   97 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))):) )
	.loc 1 90
// Line 90 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 )))
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
// Line 90 (CAST int   97 )
	.loc 1 90
// Line 90  97 
	.loc 1 90
	push 97
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
// Line 91 (CALL assert_expect ((CAST int   91 ):(CAST int   84 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))):) )
	.loc 1 91
// Line 91 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 )))
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
// Line 91 (CAST int   84 )
	.loc 1 91
// Line 91  84 
	.loc 1 91
	push 84
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
// Line 116 FDECL array_global func ( ) int  max_offset:36
//    
//    (BLOCK(FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ((CAST int   117 ):(CAST int  (+ (LVAR 36)  1 )):(CAST int  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) )):(CALL assert_expect ((CAST int   118 ):(CAST int   105 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))):) ):(CALL assert_expect ((CAST int   119 ):(CAST int   119 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ((CAST int   130 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   131 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))):(CAST int   97 ):) ):(CALL assert_expect ((CAST int   132 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))):(CAST int   84 ):) ):(RETURN  0 ):))
	.loc 1 116
array_global:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 117 (FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ((CAST int   117 ):(CAST int  (+ (LVAR 36)  1 )):(CAST int  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) ))
	.loc 1 117
// Line 117 (= (LVAR 36)  0 )
	.loc 1 117
	lea  rax, [rbp - 36]
	push rax
// Line 117  0 
	.loc 1 117
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000048:
// Line 117 (<  5  (LVAR 36))
	.loc 1 117
// Line 117  5 
	.loc 1 117
	push 5
// Line 117 (LVAR 36)
	.loc 1 117
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
	je   .L000047
// Line 117 (CALL assert_expect ((CAST int   117 ):(CAST int  (+ (LVAR 36)  1 )):(CAST int  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))):) )
	.loc 1 117
// Line 117 (CAST int  (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36))))
	.loc 1 117
// Line 117 (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))
	.loc 1 117
// Line 117 (] (ADDR (GVAR ary_int)) (LVAR 36))
	.loc 1 117
// Line 117 (ADDR (GVAR ary_int))
	.loc 1 117
	lea  rax, ary_int[rip]
	push rax
// Line 117 (LVAR 36)
	.loc 1 117
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
// Line 117 (CAST int  (+ (LVAR 36)  1 ))
	.loc 1 117
// Line 117 (+ (LVAR 36)  1 )
	.loc 1 117
// Line 117 (LVAR 36)
	.loc 1 117
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 117  1 
	.loc 1 117
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 117 (CAST int   117 )
	.loc 1 117
// Line 117  117 
	.loc 1 117
	push 117
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
.L000046:
// Line 117 (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 )
	.loc 1 117
// Line 117 (= (LVAR 36) (++ (LVAR 36)  1 ))
	.loc 1 117
	lea  rax, [rbp - 36]
	push rax
// Line 117 (++ (LVAR 36)  1 )
	.loc 1 117
// Line 117 (LVAR 36)
	.loc 1 117
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 117  1 
	.loc 1 117
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 117  1 
	.loc 1 117
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000048
.L000047:
// Line 118 (CALL assert_expect ((CAST int   118 ):(CAST int   105 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))):) )
	.loc 1 118
// Line 118 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )))
	.loc 1 118
// Line 118 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))
	.loc 1 118
// Line 118 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )
	.loc 1 118
// Line 118 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))
	.loc 1 118
// Line 118 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )
	.loc 1 118
// Line 118 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 118
// Line 118 (] (ADDR (GVAR reg))  2 )
	.loc 1 118
// Line 118 (ADDR (GVAR reg))
	.loc 1 118
	lea  rax, reg[rip]
	push rax
// Line 118  2 
	.loc 1 118
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 118  1 
	.loc 1 118
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 118  1 
	.loc 1 118
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
// Line 118 (CAST int   105 )
	.loc 1 118
// Line 118  105 
	.loc 1 118
	push 105
// Line 118 (CAST int   118 )
	.loc 1 118
// Line 118  118 
	.loc 1 118
	push 118
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
// Line 119 (CALL assert_expect ((CAST int   119 ):(CAST int   119 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))):) )
	.loc 1 119
// Line 119 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )))
	.loc 1 119
// Line 119 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))
	.loc 1 119
// Line 119 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )
	.loc 1 119
// Line 119 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))
	.loc 1 119
// Line 119 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )
	.loc 1 119
// Line 119 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 119
// Line 119 (] (ADDR (GVAR reg))  2 )
	.loc 1 119
// Line 119 (ADDR (GVAR reg))
	.loc 1 119
	lea  rax, reg[rip]
	push rax
// Line 119  2 
	.loc 1 119
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 119  4 
	.loc 1 119
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 119  2 
	.loc 1 119
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
// Line 119 (CAST int   119 )
	.loc 1 119
// Line 119  119 
	.loc 1 119
	push 119
// Line 119 (CAST int   119 )
	.loc 1 119
// Line 119  119 
	.loc 1 119
	push 119
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
// Line 121 (= (GVAR i)  0 )
	.loc 1 121
	lea  rax, i[rip]
	push rax
// Line 121  0 
	.loc 1 121
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 130 (WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):))
	.loc 1 130
.L000055:
// Line 122 (<=  9  (GVAR i))
	.loc 1 122
// Line 122  9 
	.loc 1 122
	push 9
// Line 122 (GVAR i)
	.loc 1 122
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
	je   .L000056
// Line 130 (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)
	.loc 1 130
// Line 123 (= (GVAR j)  0 )
	.loc 1 123
	lea  rax, j[rip]
	push rax
// Line 123  0 
	.loc 1 123
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 128 (WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):))
	.loc 1 128
.L000057:
// Line 124 (<=  7  (GVAR j))
	.loc 1 124
// Line 124  7 
	.loc 1 124
	push 7
// Line 124 (GVAR j)
	.loc 1 124
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
	je   .L000058
// Line 128 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)
	.loc 1 128
// Line 125 (= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j)))
	.loc 1 125
// Line 125 (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))
	.loc 1 125
// Line 125 (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i))))
	.loc 1 125
// Line 125 (] (ADDR (GVAR a)) (GVAR i))
	.loc 1 125
// Line 125 (ADDR (GVAR a))
	.loc 1 125
	lea  rax, a[rip]
	push rax
// Line 125 (GVAR i)
	.loc 1 125
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
// Line 125 (GVAR j)
	.loc 1 125
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 125 (+ (* (GVAR i)  10 ) (GVAR j))
	.loc 1 125
// Line 125 (* (GVAR i)  10 )
	.loc 1 125
// Line 125 (GVAR i)
	.loc 1 125
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 125  10 
	.loc 1 125
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 125 (GVAR j)
	.loc 1 125
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
// Line 126 (++ (= (GVAR j) (++ (GVAR j)  1 ))  1 )
	.loc 1 126
// Line 126 (= (GVAR j) (++ (GVAR j)  1 ))
	.loc 1 126
	lea  rax, j[rip]
	push rax
// Line 126 (++ (GVAR j)  1 )
	.loc 1 126
// Line 126 (GVAR j)
	.loc 1 126
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 126  1 
	.loc 1 126
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
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
	jmp  .L000057
.L000058:
// Line 128 (++ (= (GVAR i) (++ (GVAR i)  1 ))  1 )
	.loc 1 128
// Line 128 (= (GVAR i) (++ (GVAR i)  1 ))
	.loc 1 128
	lea  rax, i[rip]
	push rax
// Line 128 (++ (GVAR i)  1 )
	.loc 1 128
// Line 128 (GVAR i)
	.loc 1 128
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 128  1 
	.loc 1 128
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 128  1 
	.loc 1 128
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000055
.L000056:
// Line 130 (CALL assert_expect ((CAST int   130 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))):(CAST int   1 ):) )
	.loc 1 130
// Line 130 (CAST int   1 )
	.loc 1 130
// Line 130  1 
	.loc 1 130
	push 1
// Line 130 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )))
	.loc 1 130
// Line 130 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))
	.loc 1 130
// Line 130 (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )
	.loc 1 130
// Line 130 (ADDR (DEREF (] (ADDR (GVAR a))  0 )))
	.loc 1 130
// Line 130 (] (ADDR (GVAR a))  0 )
	.loc 1 130
// Line 130 (ADDR (GVAR a))
	.loc 1 130
	lea  rax, a[rip]
	push rax
// Line 130  0 
	.loc 1 130
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 130  1 
	.loc 1 130
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 130 (CAST int   130 )
	.loc 1 130
// Line 130  130 
	.loc 1 130
	push 130
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
// Line 131 (CALL assert_expect ((CAST int   131 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))):(CAST int   97 ):) )
	.loc 1 131
// Line 131 (CAST int   97 )
	.loc 1 131
// Line 131  97 
	.loc 1 131
	push 97
// Line 131 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )))
	.loc 1 131
// Line 131 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))
	.loc 1 131
// Line 131 (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )
	.loc 1 131
// Line 131 (ADDR (DEREF (] (ADDR (GVAR a))  9 )))
	.loc 1 131
// Line 131 (] (ADDR (GVAR a))  9 )
	.loc 1 131
// Line 131 (ADDR (GVAR a))
	.loc 1 131
	lea  rax, a[rip]
	push rax
// Line 131  9 
	.loc 1 131
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 131  7 
	.loc 1 131
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 131 (CAST int   131 )
	.loc 1 131
// Line 131  131 
	.loc 1 131
	push 131
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
// Line 132 (CALL assert_expect ((CAST int   132 ):(CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))):(CAST int   84 ):) )
	.loc 1 132
// Line 132 (CAST int   84 )
	.loc 1 132
// Line 132  84 
	.loc 1 132
	push 84
// Line 132 (CAST int  (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )))
	.loc 1 132
// Line 132 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))
	.loc 1 132
// Line 132 (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )
	.loc 1 132
// Line 132 (ADDR (DEREF (] (ADDR (GVAR a))  8 )))
	.loc 1 132
// Line 132 (] (ADDR (GVAR a))  8 )
	.loc 1 132
// Line 132 (ADDR (GVAR a))
	.loc 1 132
	lea  rax, a[rip]
	push rax
// Line 132  8 
	.loc 1 132
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 132  4 
	.loc 1 132
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 132 (CAST int   132 )
	.loc 1 132
// Line 132  132 
	.loc 1 132
	push 132
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000063
	mov  rax, 0
	call assert_expect
	jmp  .L000064
.L000063:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000064:
	push rax
	pop  rax
// Line 133 (RETURN  0 )
	.loc 1 133
// Line 133  0 
	.loc 1 133
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
// Line 136 FDECL string func ( ) int  max_offset:63
//    
//    (BLOCK(= (LVAR 40) (ADDR  "Hello world!\n" )):(CALL printf ((CAST * char  (ADDR  "%s" )):(LVAR 40):) ):(= (LVAR 63)  "\tHello---" ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (LVAR 63)):) ):(CALL assert_expect ((CAST int   143 ):(CAST int   9 ):(CAST int  (DEREF (] (ADDR (LVAR 63))  15 ))):) ):(CALL assert_expect ((CAST int   145 ):(CAST int   119 ):(CAST int   119 ):) ):(CALL assert_expect ((CAST int   146 ):(CAST int   119 ):(CAST int  (DEREF (] (LVAR 40)  6 ))):) ):))
	.loc 1 136
string:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 137 (= (LVAR 40) (ADDR  "Hello world!\n" ))
	.loc 1 137
	lea  rax, [rbp - 40]
	push rax
// Line 137 (ADDR  "Hello world!\n" )
	.loc 1 137
	lea  rax, .LS000024[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 138 (CALL printf ((CAST * char  (ADDR  "%s" )):(LVAR 40):) )
	.loc 1 138
// Line 138 (LVAR 40)
	.loc 1 138
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 138 (CAST * char  (ADDR  "%s" ))
	.loc 1 138
// Line 138 (ADDR  "%s" )
	.loc 1 138
	lea  rax, .LS000025[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000065
	mov  rax, 0
	call printf
	jmp  .L000066
.L000065:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000066:
	push rax
	pop  rax
// Line 139 (= (LVAR 63)  "\tHello---" )
	.loc 1 139
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
// Line 142 (CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (LVAR 63)):) )
	.loc 1 142
// Line 142 (ADDR (LVAR 63))
	.loc 1 142
	lea  rax, [rbp - 63]
	push rax
// Line 142 (CAST * char  (ADDR  "%s" ))
	.loc 1 142
// Line 142 (ADDR  "%s" )
	.loc 1 142
	lea  rax, .LS000027[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000067
	mov  rax, 0
	call printf
	jmp  .L000068
.L000067:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000068:
	push rax
	pop  rax
// Line 143 (CALL assert_expect ((CAST int   143 ):(CAST int   9 ):(CAST int  (DEREF (] (ADDR (LVAR 63))  15 ))):) )
	.loc 1 143
// Line 143 (CAST int  (DEREF (] (ADDR (LVAR 63))  15 )))
	.loc 1 143
// Line 143 (DEREF (] (ADDR (LVAR 63))  15 ))
	.loc 1 143
// Line 143 (] (ADDR (LVAR 63))  15 )
	.loc 1 143
// Line 143 (ADDR (LVAR 63))
	.loc 1 143
	lea  rax, [rbp - 63]
	push rax
// Line 143  15 
	.loc 1 143
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
// Line 143 (CAST int   9 )
	.loc 1 143
// Line 143  9 
	.loc 1 143
	push 9
// Line 143 (CAST int   143 )
	.loc 1 143
// Line 143  143 
	.loc 1 143
	push 143
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
// Line 145 (CALL assert_expect ((CAST int   145 ):(CAST int   119 ):(CAST int   119 ):) )
	.loc 1 145
// Line 145 (CAST int   119 )
	.loc 1 145
// Line 145  119 
	.loc 1 145
	push 119
// Line 145 (CAST int   119 )
	.loc 1 145
// Line 145  119 
	.loc 1 145
	push 119
// Line 145 (CAST int   145 )
	.loc 1 145
// Line 145  145 
	.loc 1 145
	push 145
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
// Line 146 (CALL assert_expect ((CAST int   146 ):(CAST int   119 ):(CAST int  (DEREF (] (LVAR 40)  6 ))):) )
	.loc 1 146
// Line 146 (CAST int  (DEREF (] (LVAR 40)  6 )))
	.loc 1 146
// Line 146 (DEREF (] (LVAR 40)  6 ))
	.loc 1 146
// Line 146 (] (LVAR 40)  6 )
	.loc 1 146
// Line 146 (LVAR 40)
	.loc 1 146
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 146  6 
	.loc 1 146
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
// Line 146 (CAST int   119 )
	.loc 1 146
// Line 146  119 
	.loc 1 146
	push 119
// Line 146 (CAST int   146 )
	.loc 1 146
// Line 146  146 
	.loc 1 146
	push 146
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000073
	mov  rax, 0
	call assert_expect
	jmp  .L000074
.L000073:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000074:
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
// Line 149 FDECL block_scope func ( ) void  max_offset:48
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ((CAST int   151 ):(CAST int   1 ):(CAST int  (GVAR i)):) ):(= (LVAR 36)  5 ):(CALL assert_expect ((CAST int   153 ):(CAST int   5 ):(CAST int  (LVAR 36)):) ):(BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   160 ):(CAST int   4 ):(CAST int  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   162 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):):(CALL assert_expect ((CAST int   164 ):(CAST int   2 ):(CAST int  (LVAR 40)):) ):):(CALL assert_expect ((CAST int   166 ):(CAST int   5 ):(CAST int  (LVAR 36)):) ):))
	.loc 1 149
block_scope:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 150 (= (GVAR i)  1 )
	.loc 1 150
	lea  rax, i[rip]
	push rax
// Line 150  1 
	.loc 1 150
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 151 (CALL assert_expect ((CAST int   151 ):(CAST int   1 ):(CAST int  (GVAR i)):) )
	.loc 1 151
// Line 151 (CAST int  (GVAR i))
	.loc 1 151
// Line 151 (GVAR i)
	.loc 1 151
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 151 (CAST int   1 )
	.loc 1 151
// Line 151  1 
	.loc 1 151
	push 1
// Line 151 (CAST int   151 )
	.loc 1 151
// Line 151  151 
	.loc 1 151
	push 151
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000075
	mov  rax, 0
	call assert_expect
	jmp  .L000076
.L000075:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000076:
	push rax
	pop  rax
// Line 152 (= (LVAR 36)  5 )
	.loc 1 152
	lea  rax, [rbp - 36]
	push rax
// Line 152  5 
	.loc 1 152
	push 5
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 153 (CALL assert_expect ((CAST int   153 ):(CAST int   5 ):(CAST int  (LVAR 36)):) )
	.loc 1 153
// Line 153 (CAST int  (LVAR 36))
	.loc 1 153
// Line 153 (LVAR 36)
	.loc 1 153
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 153 (CAST int   5 )
	.loc 1 153
// Line 153  5 
	.loc 1 153
	push 5
// Line 153 (CAST int   153 )
	.loc 1 153
// Line 153  153 
	.loc 1 153
	push 153
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
// Line 166 (BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   160 ):(CAST int   4 ):(CAST int  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   162 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):):(CALL assert_expect ((CAST int   164 ):(CAST int   2 ):(CAST int  (LVAR 40)):) ):)
	.loc 1 166
// Line 155 (= (LVAR 40)  2 )
	.loc 1 155
	lea  rax, [rbp - 40]
	push rax
// Line 155  2 
	.loc 1 155
	push 2
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 164 (BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   160 ):(CAST int   4 ):(CAST int  (LVAR 48)):) ):):(CALL assert_expect ((CAST int   162 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):)
	.loc 1 164
// Line 157 (= (LVAR 44)  3 )
	.loc 1 157
	lea  rax, [rbp - 44]
	push rax
// Line 157  3 
	.loc 1 157
	push 3
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 162 (BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ((CAST int   160 ):(CAST int   4 ):(CAST int  (LVAR 48)):) ):)
	.loc 1 162
// Line 159 (= (LVAR 48)  4 )
	.loc 1 159
	lea  rax, [rbp - 48]
	push rax
// Line 159  4 
	.loc 1 159
	push 4
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 160 (CALL assert_expect ((CAST int   160 ):(CAST int   4 ):(CAST int  (LVAR 48)):) )
	.loc 1 160
// Line 160 (CAST int  (LVAR 48))
	.loc 1 160
// Line 160 (LVAR 48)
	.loc 1 160
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 160 (CAST int   4 )
	.loc 1 160
// Line 160  4 
	.loc 1 160
	push 4
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
// Line 162 (CALL assert_expect ((CAST int   162 ):(CAST int   3 ):(CAST int  (LVAR 44)):) )
	.loc 1 162
// Line 162 (CAST int  (LVAR 44))
	.loc 1 162
// Line 162 (LVAR 44)
	.loc 1 162
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 162 (CAST int   3 )
	.loc 1 162
// Line 162  3 
	.loc 1 162
	push 3
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
// Line 164 (CALL assert_expect ((CAST int   164 ):(CAST int   2 ):(CAST int  (LVAR 40)):) )
	.loc 1 164
// Line 164 (CAST int  (LVAR 40))
	.loc 1 164
// Line 164 (LVAR 40)
	.loc 1 164
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 164 (CAST int   2 )
	.loc 1 164
// Line 164  2 
	.loc 1 164
	push 2
// Line 164 (CAST int   164 )
	.loc 1 164
// Line 164  164 
	.loc 1 164
	push 164
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
// Line 166 (CALL assert_expect ((CAST int   166 ):(CAST int   5 ):(CAST int  (LVAR 36)):) )
	.loc 1 166
// Line 166 (CAST int  (LVAR 36))
	.loc 1 166
// Line 166 (LVAR 36)
	.loc 1 166
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 166 (CAST int   5 )
	.loc 1 166
// Line 166  5 
	.loc 1 166
	push 5
// Line 166 (CAST int   166 )
	.loc 1 166
// Line 166  166 
	.loc 1 166
	push 166
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
.L.return.block_scope:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global for_
// Line 169 FDECL for_ func ( ) void  max_offset:44
//    
//    (BLOCK(= (LVAR 36)  100 ):(CALL assert_expect ((CAST int   171 ):(CAST int   100 ):(CAST int  (LVAR 36)):) ):(FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   174 ):(CAST int   12 ):(CAST int  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   176 ):(CAST int   9 ):(CAST int  (LVAR 44)):) ):)):(CALL assert_expect ((CAST int   178 ):(CAST int   100 ):(CAST int  (LVAR 36)):) ):(= (LVAR 36)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)):(CALL assert_expect ((CAST int   184 ):(CAST int   6 ):(CAST int  (LVAR 36)):) ):))
	.loc 1 169
for_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 170 (= (LVAR 36)  100 )
	.loc 1 170
	lea  rax, [rbp - 36]
	push rax
// Line 170  100 
	.loc 1 170
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 171 (CALL assert_expect ((CAST int   171 ):(CAST int   100 ):(CAST int  (LVAR 36)):) )
	.loc 1 171
// Line 171 (CAST int  (LVAR 36))
	.loc 1 171
// Line 171 (LVAR 36)
	.loc 1 171
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 171 (CAST int   100 )
	.loc 1 171
// Line 171  100 
	.loc 1 171
	push 100
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
// Line 172 (FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   174 ):(CAST int   12 ):(CAST int  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   176 ):(CAST int   9 ):(CAST int  (LVAR 44)):) ):))
	.loc 1 172
// Line 172 (= (LVAR 40)  10 )
	.loc 1 172
	lea  rax, [rbp - 40]
	push rax
// Line 172  10 
	.loc 1 172
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000091:
// Line 172 (<  100  (LVAR 40))
	.loc 1 172
// Line 172  100 
	.loc 1 172
	push 100
// Line 172 (LVAR 40)
	.loc 1 172
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
	je   .L000090
// Line 178 (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   174 ):(CAST int   12 ):(CAST int  (LVAR 40)):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ((CAST int   176 ):(CAST int   9 ):(CAST int  (LVAR 44)):) ):)
	.loc 1 178
// Line 174 (IF (== (LVAR 40)  15 ) BREAK  NULL )
	.loc 1 174
// Line 173 (== (LVAR 40)  15 )
	.loc 1 173
// Line 173 (LVAR 40)
	.loc 1 173
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 173  15 
	.loc 1 173
	push 15
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000092
// Line 173 BREAK 
	.loc 1 173
	jmp  .L000090
	jmp  .L000093
.L000092:
.L000093:
// Line 175 (IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ((CAST int   174 ):(CAST int   12 ):(CAST int  (LVAR 40)):) ) NULL )
	.loc 1 175
// Line 174 (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 ))
	.loc 1 174
// Line 174 (LVAR 40)
	.loc 1 174
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 174 (* (/ (LVAR 40)  3 )  3 )
	.loc 1 174
// Line 174 (/ (LVAR 40)  3 )
	.loc 1 174
// Line 174 (LVAR 40)
	.loc 1 174
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 174  3 
	.loc 1 174
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 174  3 
	.loc 1 174
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
	je   .L000094
// Line 174 (CALL assert_expect ((CAST int   174 ):(CAST int   12 ):(CAST int  (LVAR 40)):) )
	.loc 1 174
// Line 174 (CAST int  (LVAR 40))
	.loc 1 174
// Line 174 (LVAR 40)
	.loc 1 174
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 174 (CAST int   12 )
	.loc 1 174
// Line 174  12 
	.loc 1 174
	push 12
// Line 174 (CAST int   174 )
	.loc 1 174
// Line 174  174 
	.loc 1 174
	push 174
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
	jmp  .L000095
.L000094:
.L000095:
// Line 175 (= (LVAR 44)  9 )
	.loc 1 175
	lea  rax, [rbp - 44]
	push rax
// Line 175  9 
	.loc 1 175
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 176 (CALL assert_expect ((CAST int   176 ):(CAST int   9 ):(CAST int  (LVAR 44)):) )
	.loc 1 176
// Line 176 (CAST int  (LVAR 44))
	.loc 1 176
// Line 176 (LVAR 44)
	.loc 1 176
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 176 (CAST int   9 )
	.loc 1 176
// Line 176  9 
	.loc 1 176
	push 9
// Line 176 (CAST int   176 )
	.loc 1 176
// Line 176  176 
	.loc 1 176
	push 176
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
.L000089:
// Line 172 (= (LVAR 40) (+= (LVAR 40)  1 ))
	.loc 1 172
	lea  rax, [rbp - 40]
	push rax
// Line 172 (+= (LVAR 40)  1 )
	.loc 1 172
// Line 172 (LVAR 40)
	.loc 1 172
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 172  1 
	.loc 1 172
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
	jmp  .L000091
.L000090:
// Line 178 (CALL assert_expect ((CAST int   178 ):(CAST int   100 ):(CAST int  (LVAR 36)):) )
	.loc 1 178
// Line 178 (CAST int  (LVAR 36))
	.loc 1 178
// Line 178 (LVAR 36)
	.loc 1 178
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 178 (CAST int   100 )
	.loc 1 178
// Line 178  100 
	.loc 1 178
	push 100
// Line 178 (CAST int   178 )
	.loc 1 178
// Line 178  178 
	.loc 1 178
	push 178
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
// Line 179 (= (LVAR 36)  0 )
	.loc 1 179
	lea  rax, [rbp - 36]
	push rax
// Line 179  0 
	.loc 1 179
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 180 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):))
	.loc 1 180
.L000104:
// Line 180  1 
	.loc 1 180
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000103
// Line 184 (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)
	.loc 1 184
// Line 182 (IF (== (LVAR 36)  6 ) BREAK  NULL )
	.loc 1 182
// Line 181 (== (LVAR 36)  6 )
	.loc 1 181
// Line 181 (LVAR 36)
	.loc 1 181
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 181  6 
	.loc 1 181
	push 6
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000105
// Line 181 BREAK 
	.loc 1 181
	jmp  .L000103
	jmp  .L000106
.L000105:
.L000106:
// Line 182 (= (LVAR 36) (+ (LVAR 36)  1 ))
	.loc 1 182
	lea  rax, [rbp - 36]
	push rax
// Line 182 (+ (LVAR 36)  1 )
	.loc 1 182
// Line 182 (LVAR 36)
	.loc 1 182
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 182  1 
	.loc 1 182
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
.L000102:
	jmp  .L000104
.L000103:
// Line 184 (CALL assert_expect ((CAST int   184 ):(CAST int   6 ):(CAST int  (LVAR 36)):) )
	.loc 1 184
// Line 184 (CAST int  (LVAR 36))
	.loc 1 184
// Line 184 (LVAR 36)
	.loc 1 184
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 184 (CAST int   6 )
	.loc 1 184
// Line 184  6 
	.loc 1 184
	push 6
// Line 184 (CAST int   184 )
	.loc 1 184
// Line 184  184 
	.loc 1 184
	push 184
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000107
	mov  rax, 0
	call assert_expect
	jmp  .L000108
.L000107:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000108:
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
// Line 187 FDECL switch_ func ( int  s ) int  max_offset:44
//    (LVAR 36) 
//    (BLOCK(SWITCH cond: (LVAR 36) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):)):(RETURN (LVAR 40)):))
	.loc 1 187
switch_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 36], edi
// Line 189 (SWITCH cond: (LVAR 36) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):))
	.loc 1 189
	lea  rax, [rbp - 44]
	push rax
// Line 189 (LVAR 36)
	.loc 1 189
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 204 (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):)
	.loc 1 204
// Line 190 (CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :))
	.loc 1 190
// Line 190  1 
	.loc 1 190
	push 1
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000110
// Line 193 (CASE cond: 2  body:(BLOCK))
	.loc 1 193
// Line 193  2 
	.loc 1 193
	push 2
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000111
// Line 194 (CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):))
	.loc 1 194
// Line 194  3 
	.loc 1 194
	push 3
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000112
// Line 196 (CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):))
	.loc 1 196
// Line 196  4 
	.loc 1 196
	push 4
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000113
// Line 199 (CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):))
	.loc 1 199
// Line 199  5 
	.loc 1 199
	push 5
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000114
// Line 201 (DEFAULT body:(= (LVAR 40)  15 ))
	.loc 1 201
	jmp  .L000115
	jmp  .L000109
.L000110:
// Line 191 (BLOCK(= (LVAR 40)  11 ):BREAK :)
	.loc 1 191
// Line 191 (= (LVAR 40)  11 )
	.loc 1 191
	lea  rax, [rbp - 40]
	push rax
// Line 191  11 
	.loc 1 191
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 192 BREAK 
	.loc 1 192
	jmp  .L000109
.L000111:
// Line 194 (BLOCK)
	.loc 1 194
.L000112:
// Line 195 (BLOCK(= (LVAR 40)  12 ):)
	.loc 1 195
// Line 195 (= (LVAR 40)  12 )
	.loc 1 195
	lea  rax, [rbp - 40]
	push rax
// Line 195  12 
	.loc 1 195
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000113:
// Line 197 (BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)
	.loc 1 197
// Line 197 (= (LVAR 40)  13 )
	.loc 1 197
	lea  rax, [rbp - 40]
	push rax
// Line 197  13 
	.loc 1 197
	push 13
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 198 (RETURN (LVAR 40))
	.loc 1 198
// Line 198 (LVAR 40)
	.loc 1 198
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.switch_
.L000114:
// Line 200 (BLOCK(= (LVAR 40)  14 ):)
	.loc 1 200
// Line 200 (= (LVAR 40)  14 )
	.loc 1 200
	lea  rax, [rbp - 40]
	push rax
// Line 200  14 
	.loc 1 200
	push 14
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000115:
// Line 202 (= (LVAR 40)  15 )
	.loc 1 202
	lea  rax, [rbp - 40]
	push rax
// Line 202  15 
	.loc 1 202
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000109:
// Line 204 (RETURN (LVAR 40))
	.loc 1 204
// Line 204 (LVAR 40)
	.loc 1 204
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
// Line 207 FDECL switch2_ func ( char  s ) int  max_offset:41
//    (LVAR 33) 
//    (BLOCK(SWITCH cond: (LVAR 33) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):)):(RETURN (LVAR 37)):))
	.loc 1 207
switch2_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 33], dil
// Line 209 (SWITCH cond: (LVAR 33) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):))
	.loc 1 209
	lea  rax, [rbp - 41]
	push rax
// Line 209 (LVAR 33)
	.loc 1 209
	lea  rax, [rbp - 33]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 220 (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):)
	.loc 1 220
// Line 210 (CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :))
	.loc 1 210
// Line 210  97 
	.loc 1 210
	push 97
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000117
// Line 213 (CASE cond: 98  body:(BLOCK))
	.loc 1 213
// Line 213  98 
	.loc 1 213
	push 98
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000118
// Line 214 (CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :))
	.loc 1 214
// Line 214  99 
	.loc 1 214
	push 99
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000119
// Line 217 (DEFAULT body:(= (LVAR 37)  15 ))
	.loc 1 217
	jmp  .L000120
	jmp  .L000116
.L000117:
// Line 211 (BLOCK(= (LVAR 37)  11 ):BREAK :)
	.loc 1 211
// Line 211 (= (LVAR 37)  11 )
	.loc 1 211
	lea  rax, [rbp - 37]
	push rax
// Line 211  11 
	.loc 1 211
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 212 BREAK 
	.loc 1 212
	jmp  .L000116
.L000118:
// Line 214 (BLOCK)
	.loc 1 214
.L000119:
// Line 215 (BLOCK(= (LVAR 37)  12 ):BREAK :)
	.loc 1 215
// Line 215 (= (LVAR 37)  12 )
	.loc 1 215
	lea  rax, [rbp - 37]
	push rax
// Line 215  12 
	.loc 1 215
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 216 BREAK 
	.loc 1 216
	jmp  .L000116
.L000120:
// Line 218 (= (LVAR 37)  15 )
	.loc 1 218
	lea  rax, [rbp - 37]
	push rax
// Line 218  15 
	.loc 1 218
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000116:
// Line 220 (RETURN (LVAR 37))
	.loc 1 220
// Line 220 (LVAR 37)
	.loc 1 220
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
// Line 249 FDECL list_ func ( ) void  max_offset:56
//    
//    (BLOCK(= (LVAR 36)  16 ):(= (LVAR 44)  0 ):(FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)):(CALL assert_expect ((CAST int   258 ):(CAST int   5 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   260 ):(CAST int   4 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   262 ):(CAST int   3 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   264 ):(CAST int   2 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   266 ):(CAST int   1 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ((CAST int   268 ):(CAST int   0 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ((CAST int   271 ):(CAST int   777 ):(CAST int  (MEMBER (GVAR def) payload 0)):) ):))
	.loc 1 249
list_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 250 (= (LVAR 36)  16 )
	.loc 1 250
	lea  rax, [rbp - 36]
	push rax
// Line 250  16 
	.loc 1 250
	push 16
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 251 (= (LVAR 44)  0 )
	.loc 1 251
	lea  rax, [rbp - 44]
	push rax
// Line 251  0 
	.loc 1 251
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 252 (FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):))
	.loc 1 252
// Line 252 (= (LVAR 48)  0 )
	.loc 1 252
	lea  rax, [rbp - 48]
	push rax
// Line 252  0 
	.loc 1 252
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000123:
// Line 252 (<  6  (LVAR 48))
	.loc 1 252
// Line 252  6 
	.loc 1 252
	push 6
// Line 252 (LVAR 48)
	.loc 1 252
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
	je   .L000122
// Line 258 (BLOCK(= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)
	.loc 1 258
// Line 253 (= (LVAR 56) (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) ))
	.loc 1 253
	lea  rax, [rbp - 56]
	push rax
// Line 253 (CALL calloc ((CAST int   1 ):(CAST int  (LVAR 36)):) )
	.loc 1 253
// Line 253 (CAST int  (LVAR 36))
	.loc 1 253
// Line 253 (LVAR 36)
	.loc 1 253
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 253 (CAST int   1 )
	.loc 1 253
// Line 253  1 
	.loc 1 253
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000124
	mov  rax, 0
	call calloc
	jmp  .L000125
.L000124:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000125:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 254 (= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48))
	.loc 1 254
// Line 254 (LVAR 56)
	.loc 1 254
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	push rax
// Line 254 (LVAR 48)
	.loc 1 254
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 255 (= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44))
	.loc 1 255
// Line 255 (LVAR 56)
	.loc 1 255
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	push rax
// Line 255 (LVAR 44)
	.loc 1 255
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 256 (= (LVAR 44) (LVAR 56))
	.loc 1 256
	lea  rax, [rbp - 44]
	push rax
// Line 256 (LVAR 56)
	.loc 1 256
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000121:
// Line 252 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 252
// Line 252 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 252
	lea  rax, [rbp - 48]
	push rax
// Line 252 (++ (LVAR 48)  1 )
	.loc 1 252
// Line 252 (LVAR 48)
	.loc 1 252
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 252  1 
	.loc 1 252
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 252  1 
	.loc 1 252
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000123
.L000122:
// Line 258 (CALL assert_expect ((CAST int   258 ):(CAST int   5 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 258
// Line 258 (CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 258
// Line 258 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 258
// Line 258 (LVAR 44)
	.loc 1 258
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 258 (CAST int   5 )
	.loc 1 258
// Line 258  5 
	.loc 1 258
	push 5
// Line 258 (CAST int   258 )
	.loc 1 258
// Line 258  258 
	.loc 1 258
	push 258
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
// Line 259 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 259
	lea  rax, [rbp - 44]
	push rax
// Line 259 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 259
// Line 259 (LVAR 44)
	.loc 1 259
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 260 (CALL assert_expect ((CAST int   260 ):(CAST int   4 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 260
// Line 260 (CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 260
// Line 260 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 260
// Line 260 (LVAR 44)
	.loc 1 260
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 260 (CAST int   4 )
	.loc 1 260
// Line 260  4 
	.loc 1 260
	push 4
// Line 260 (CAST int   260 )
	.loc 1 260
// Line 260  260 
	.loc 1 260
	push 260
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
// Line 261 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 261
	lea  rax, [rbp - 44]
	push rax
// Line 261 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 261
// Line 261 (LVAR 44)
	.loc 1 261
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 262 (CALL assert_expect ((CAST int   262 ):(CAST int   3 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 262
// Line 262 (CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 262
// Line 262 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 262
// Line 262 (LVAR 44)
	.loc 1 262
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 262 (CAST int   3 )
	.loc 1 262
// Line 262  3 
	.loc 1 262
	push 3
// Line 262 (CAST int   262 )
	.loc 1 262
// Line 262  262 
	.loc 1 262
	push 262
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
// Line 263 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 263
	lea  rax, [rbp - 44]
	push rax
// Line 263 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 263
// Line 263 (LVAR 44)
	.loc 1 263
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 264 (CALL assert_expect ((CAST int   264 ):(CAST int   2 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 264
// Line 264 (CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 264
// Line 264 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 264
// Line 264 (LVAR 44)
	.loc 1 264
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 264 (CAST int   2 )
	.loc 1 264
// Line 264  2 
	.loc 1 264
	push 2
// Line 264 (CAST int   264 )
	.loc 1 264
// Line 264  264 
	.loc 1 264
	push 264
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
// Line 265 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 265
	lea  rax, [rbp - 44]
	push rax
// Line 265 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 265
// Line 265 (LVAR 44)
	.loc 1 265
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 266 (CALL assert_expect ((CAST int   266 ):(CAST int   1 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 266
// Line 266 (CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 266
// Line 266 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 266
// Line 266 (LVAR 44)
	.loc 1 266
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 266 (CAST int   1 )
	.loc 1 266
// Line 266  1 
	.loc 1 266
	push 1
// Line 266 (CAST int   266 )
	.loc 1 266
// Line 266  266 
	.loc 1 266
	push 266
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
// Line 267 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 267
	lea  rax, [rbp - 44]
	push rax
// Line 267 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 267
// Line 267 (LVAR 44)
	.loc 1 267
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 268 (CALL assert_expect ((CAST int   268 ):(CAST int   0 ):(CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8)):) )
	.loc 1 268
// Line 268 (CAST int  (MEMBER (DEREF (LVAR 44)) payloads 8))
	.loc 1 268
// Line 268 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 268
// Line 268 (LVAR 44)
	.loc 1 268
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 268 (CAST int   0 )
	.loc 1 268
// Line 268  0 
	.loc 1 268
	push 0
// Line 268 (CAST int   268 )
	.loc 1 268
// Line 268  268 
	.loc 1 268
	push 268
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
// Line 270 (= (MEMBER (GVAR def) payload 0)  777 )
	.loc 1 270
	lea  rax, def[rip]
	add  rax, 0
	push rax
// Line 270  777 
	.loc 1 270
	push 777
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 271 (CALL assert_expect ((CAST int   271 ):(CAST int   777 ):(CAST int  (MEMBER (GVAR def) payload 0)):) )
	.loc 1 271
// Line 271 (CAST int  (MEMBER (GVAR def) payload 0))
	.loc 1 271
// Line 271 (MEMBER (GVAR def) payload 0)
	.loc 1 271
	lea  rax, def[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 271 (CAST int   777 )
	.loc 1 271
// Line 271  777 
	.loc 1 271
	push 777
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
.L.return.list_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global struct_
// Line 274 FDECL struct_ func ( ) void  max_offset:832
//    
//    (BLOCK(CALL assert_expect ((CAST int   294 ):(CAST int   32 ):(CAST int   32 ):) ):(CALL assert_expect ((CAST int   295 ):(CAST int   8 ):(CAST int   8 ):) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ((CAST int   300 ):(CAST int   9 ):(CAST int  (MEMBER (GVAR pos) col 4)):) ):(CALL assert_expect ((CAST int   301 ):(CAST int   45 ):(CAST int  (MEMBER (GVAR pos) row 0)):) ):(CALL assert_expect ((CAST int   303 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   304 ):(CAST int   4 ):(CAST int   4 ):) ):(= (LVAR 368) (ADDR (LVAR 360))):(= (MEMBER (LVAR 360) size 136)  10 ):(= (MEMBER (LVAR 360) ch 140)  5 ):(= (MEMBER (LVAR 512) size 136)  195 ):(= (MEMBER (LVAR 512) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ((CAST int   315 ):(CAST int   10 ):(CAST int  (MEMBER (LVAR 360) size 136)):) ):(CALL assert_expect ((CAST int   316 ):(CAST int   5 ):(CAST int  (MEMBER (LVAR 360) ch 140)):) ):(= (MEMBER (LVAR 360) size 136)  110 ):(= (MEMBER (LVAR 360) ch 140)  79 ):(CALL assert_expect ((CAST int   319 ):(CAST int   110 ):(CAST int  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   320 ):(CAST int   79 ):(CAST int  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   321 ):(CAST int   110 ):(CAST int  (MEMBER (DEREF (LVAR 368)) size 136)):) ):(CALL assert_expect ((CAST int   322 ):(CAST int   79 ):(CAST int  (MEMBER (DEREF (LVAR 368)) ch 140)):) ):(CALL assert_expect ((CAST int   323 ):(CAST int   195 ):(CAST int  (MEMBER (LVAR 512) size 136)):) ):(CALL assert_expect ((CAST int   324 ):(CAST int   39 ):(CAST int  (MEMBER (LVAR 512) ch 140)):) ):(CALL assert_expect ((CAST int   325 ):(CAST int   184 ):(CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)):) ):(CALL assert_expect ((CAST int   326 ):(CAST int   984 ):(CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)):) ):(= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512))):(= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360))):(CALL assert_expect ((CAST int   330 ):(CAST int   195 ):(CAST int  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  100 ):(= (MEMBER (LVAR 816) size 136)  500 ):(= (LVAR 816) (LVAR 672)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ((CAST int   338 ):(CAST int   100 ):(CAST int  (MEMBER (LVAR 816) size 136)):) ):(= (LVAR 816) (GVAR leaf_global)):(CALL assert_expect ((CAST int   340 ):(CAST int   700 ):(CAST int  (MEMBER (LVAR 816) size 136)):) ):(= (GVAR leaf_global) (LVAR 672)):(CALL assert_expect ((CAST int   342 ):(CAST int   100 ):(CAST int  (MEMBER (GVAR leaf_global) size 136)):) ):(= (MEMBER (LVAR 672) size 136)  999 ):(= (LVAR 824) (ADDR (LVAR 672))):(= (LVAR 832) (ADDR (LVAR 816))):(= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))):(CALL assert_expect ((CAST int   347 ):(CAST int   999 ):(CAST int  (MEMBER (DEREF (LVAR 832)) size 136)):) ):(CALL assert_expect ((CAST int   348 ):(CAST int   999 ):(CAST int  (MEMBER (GVAR leaf_global) size 136)):) ):))
	.loc 1 274
struct_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 832
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 294 (CALL assert_expect ((CAST int   294 ):(CAST int   32 ):(CAST int   32 ):) )
	.loc 1 294
// Line 294 (CAST int   32 )
	.loc 1 294
// Line 294  32 
	.loc 1 294
	push 32
// Line 294 (CAST int   32 )
	.loc 1 294
// Line 294  32 
	.loc 1 294
	push 32
// Line 294 (CAST int   294 )
	.loc 1 294
// Line 294  294 
	.loc 1 294
	push 294
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
// Line 295 (CALL assert_expect ((CAST int   295 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 295
// Line 295 (CAST int   8 )
	.loc 1 295
// Line 295  8 
	.loc 1 295
	push 8
// Line 295 (CAST int   8 )
	.loc 1 295
// Line 295  8 
	.loc 1 295
	push 8
// Line 295 (CAST int   295 )
	.loc 1 295
// Line 295  295 
	.loc 1 295
	push 295
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
// Line 297 (= (MEMBER (GVAR pos) col 4)  9 )
	.loc 1 297
	lea  rax, pos[rip]
	add  rax, 4
	push rax
// Line 297  9 
	.loc 1 297
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 298 (= (MEMBER (GVAR pos) row 0)  45 )
	.loc 1 298
	lea  rax, pos[rip]
	add  rax, 0
	push rax
// Line 298  45 
	.loc 1 298
	push 45
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 300 (CALL assert_expect ((CAST int   300 ):(CAST int   9 ):(CAST int  (MEMBER (GVAR pos) col 4)):) )
	.loc 1 300
// Line 300 (CAST int  (MEMBER (GVAR pos) col 4))
	.loc 1 300
// Line 300 (MEMBER (GVAR pos) col 4)
	.loc 1 300
	lea  rax, pos[rip]
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 300 (CAST int   9 )
	.loc 1 300
// Line 300  9 
	.loc 1 300
	push 9
// Line 300 (CAST int   300 )
	.loc 1 300
// Line 300  300 
	.loc 1 300
	push 300
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
// Line 301 (CALL assert_expect ((CAST int   301 ):(CAST int   45 ):(CAST int  (MEMBER (GVAR pos) row 0)):) )
	.loc 1 301
// Line 301 (CAST int  (MEMBER (GVAR pos) row 0))
	.loc 1 301
// Line 301 (MEMBER (GVAR pos) row 0)
	.loc 1 301
	lea  rax, pos[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 301 (CAST int   45 )
	.loc 1 301
// Line 301  45 
	.loc 1 301
	push 45
// Line 301 (CAST int   301 )
	.loc 1 301
// Line 301  301 
	.loc 1 301
	push 301
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
// Line 303 (CALL assert_expect ((CAST int   303 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 303
// Line 303 (CAST int   4 )
	.loc 1 303
// Line 303  4 
	.loc 1 303
	push 4
// Line 303 (CAST int   4 )
	.loc 1 303
// Line 303  4 
	.loc 1 303
	push 4
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
// Line 304 (CALL assert_expect ((CAST int   304 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 304
// Line 304 (CAST int   4 )
	.loc 1 304
// Line 304  4 
	.loc 1 304
	push 4
// Line 304 (CAST int   4 )
	.loc 1 304
// Line 304  4 
	.loc 1 304
	push 4
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
// Line 307 (= (LVAR 368) (ADDR (LVAR 360)))
	.loc 1 307
	lea  rax, [rbp - 368]
	push rax
// Line 307 (ADDR (LVAR 360))
	.loc 1 307
	lea  rax, [rbp - 360]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 309 (= (MEMBER (LVAR 360) size 136)  10 )
	.loc 1 309
	lea  rax, [rbp - 360]
	add  rax, 136
	push rax
// Line 309  10 
	.loc 1 309
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 310 (= (MEMBER (LVAR 360) ch 140)  5 )
	.loc 1 310
	lea  rax, [rbp - 360]
	add  rax, 140
	push rax
// Line 310  5 
	.loc 1 310
	push 5
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 311 (= (MEMBER (LVAR 512) size 136)  195 )
	.loc 1 311
	lea  rax, [rbp - 512]
	add  rax, 136
	push rax
// Line 311  195 
	.loc 1 311
	push 195
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 312 (= (MEMBER (LVAR 512) ch 140)  39 )
	.loc 1 312
	lea  rax, [rbp - 512]
	add  rax, 140
	push rax
// Line 312  39 
	.loc 1 312
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 313 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 )
	.loc 1 313
// Line 313 (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )
	.loc 1 313
// Line 313 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 313
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 313  0 
	.loc 1 313
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	push rax
// Line 313  184 
	.loc 1 313
	push 184
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 314 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 )
	.loc 1 314
// Line 314 (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )
	.loc 1 314
// Line 314 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 314
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 314  16 
	.loc 1 314
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 4
	push rax
// Line 314  984 
	.loc 1 314
	push 984
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 315 (CALL assert_expect ((CAST int   315 ):(CAST int   10 ):(CAST int  (MEMBER (LVAR 360) size 136)):) )
	.loc 1 315
// Line 315 (CAST int  (MEMBER (LVAR 360) size 136))
	.loc 1 315
// Line 315 (MEMBER (LVAR 360) size 136)
	.loc 1 315
	lea  rax, [rbp - 360]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 315 (CAST int   10 )
	.loc 1 315
// Line 315  10 
	.loc 1 315
	push 10
// Line 315 (CAST int   315 )
	.loc 1 315
// Line 315  315 
	.loc 1 315
	push 315
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
// Line 316 (CALL assert_expect ((CAST int   316 ):(CAST int   5 ):(CAST int  (MEMBER (LVAR 360) ch 140)):) )
	.loc 1 316
// Line 316 (CAST int  (MEMBER (LVAR 360) ch 140))
	.loc 1 316
// Line 316 (MEMBER (LVAR 360) ch 140)
	.loc 1 316
	lea  rax, [rbp - 360]
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 316 (CAST int   5 )
	.loc 1 316
// Line 316  5 
	.loc 1 316
	push 5
// Line 316 (CAST int   316 )
	.loc 1 316
// Line 316  316 
	.loc 1 316
	push 316
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
// Line 317 (= (MEMBER (LVAR 360) size 136)  110 )
	.loc 1 317
	lea  rax, [rbp - 360]
	add  rax, 136
	push rax
// Line 317  110 
	.loc 1 317
	push 110
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 318 (= (MEMBER (LVAR 360) ch 140)  79 )
	.loc 1 318
	lea  rax, [rbp - 360]
	add  rax, 140
	push rax
// Line 318  79 
	.loc 1 318
	push 79
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 319 (CALL assert_expect ((CAST int   319 ):(CAST int   110 ):(CAST int  (MEMBER (DEREF (LVAR 368)) size 136)):) )
	.loc 1 319
// Line 319 (CAST int  (MEMBER (DEREF (LVAR 368)) size 136))
	.loc 1 319
// Line 319 (MEMBER (DEREF (LVAR 368)) size 136)
	.loc 1 319
// Line 319 (LVAR 368)
	.loc 1 319
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 319 (CAST int   110 )
	.loc 1 319
// Line 319  110 
	.loc 1 319
	push 110
// Line 319 (CAST int   319 )
	.loc 1 319
// Line 319  319 
	.loc 1 319
	push 319
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
// Line 320 (CALL assert_expect ((CAST int   320 ):(CAST int   79 ):(CAST int  (MEMBER (DEREF (LVAR 368)) ch 140)):) )
	.loc 1 320
// Line 320 (CAST int  (MEMBER (DEREF (LVAR 368)) ch 140))
	.loc 1 320
// Line 320 (MEMBER (DEREF (LVAR 368)) ch 140)
	.loc 1 320
// Line 320 (LVAR 368)
	.loc 1 320
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
// Line 320 (CAST int   79 )
	.loc 1 320
// Line 320  79 
	.loc 1 320
	push 79
// Line 320 (CAST int   320 )
	.loc 1 320
// Line 320  320 
	.loc 1 320
	push 320
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
// Line 321 (CALL assert_expect ((CAST int   321 ):(CAST int   110 ):(CAST int  (MEMBER (DEREF (LVAR 368)) size 136)):) )
	.loc 1 321
// Line 321 (CAST int  (MEMBER (DEREF (LVAR 368)) size 136))
	.loc 1 321
// Line 321 (MEMBER (DEREF (LVAR 368)) size 136)
	.loc 1 321
// Line 321 (LVAR 368)
	.loc 1 321
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 321 (CAST int   110 )
	.loc 1 321
// Line 321  110 
	.loc 1 321
	push 110
// Line 321 (CAST int   321 )
	.loc 1 321
// Line 321  321 
	.loc 1 321
	push 321
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
// Line 322 (CALL assert_expect ((CAST int   322 ):(CAST int   79 ):(CAST int  (MEMBER (DEREF (LVAR 368)) ch 140)):) )
	.loc 1 322
// Line 322 (CAST int  (MEMBER (DEREF (LVAR 368)) ch 140))
	.loc 1 322
// Line 322 (MEMBER (DEREF (LVAR 368)) ch 140)
	.loc 1 322
// Line 322 (LVAR 368)
	.loc 1 322
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
// Line 322 (CAST int   79 )
	.loc 1 322
// Line 322  79 
	.loc 1 322
	push 79
// Line 322 (CAST int   322 )
	.loc 1 322
// Line 322  322 
	.loc 1 322
	push 322
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
// Line 323 (CALL assert_expect ((CAST int   323 ):(CAST int   195 ):(CAST int  (MEMBER (LVAR 512) size 136)):) )
	.loc 1 323
// Line 323 (CAST int  (MEMBER (LVAR 512) size 136))
	.loc 1 323
// Line 323 (MEMBER (LVAR 512) size 136)
	.loc 1 323
	lea  rax, [rbp - 512]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 323 (CAST int   195 )
	.loc 1 323
// Line 323  195 
	.loc 1 323
	push 195
// Line 323 (CAST int   323 )
	.loc 1 323
// Line 323  323 
	.loc 1 323
	push 323
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
// Line 324 (CALL assert_expect ((CAST int   324 ):(CAST int   39 ):(CAST int  (MEMBER (LVAR 512) ch 140)):) )
	.loc 1 324
// Line 324 (CAST int  (MEMBER (LVAR 512) ch 140))
	.loc 1 324
// Line 324 (MEMBER (LVAR 512) ch 140)
	.loc 1 324
	lea  rax, [rbp - 512]
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 324 (CAST int   39 )
	.loc 1 324
// Line 324  39 
	.loc 1 324
	push 39
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
// Line 325 (CALL assert_expect ((CAST int   325 ):(CAST int   184 ):(CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)):) )
	.loc 1 325
// Line 325 (CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0))
	.loc 1 325
// Line 325 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)
	.loc 1 325
// Line 325 (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )
	.loc 1 325
// Line 325 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 325
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 325  0 
	.loc 1 325
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
// Line 325 (CAST int   184 )
	.loc 1 325
// Line 325  184 
	.loc 1 325
	push 184
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
// Line 326 (CALL assert_expect ((CAST int   326 ):(CAST int   984 ):(CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)):) )
	.loc 1 326
// Line 326 (CAST int  (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4))
	.loc 1 326
// Line 326 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)
	.loc 1 326
// Line 326 (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )
	.loc 1 326
// Line 326 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 326
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 326  16 
	.loc 1 326
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
// Line 326 (CAST int   984 )
	.loc 1 326
// Line 326  984 
	.loc 1 326
	push 984
// Line 326 (CAST int   326 )
	.loc 1 326
// Line 326  326 
	.loc 1 326
	push 326
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
// Line 328 (= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512)))
	.loc 1 328
	lea  rax, [rbp - 528]
	add  rax, 8
	push rax
// Line 328 (ADDR (LVAR 512))
	.loc 1 328
	lea  rax, [rbp - 512]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 329 (= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360)))
	.loc 1 329
	lea  rax, [rbp - 528]
	add  rax, 0
	push rax
// Line 329 (ADDR (LVAR 360))
	.loc 1 329
	lea  rax, [rbp - 360]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 330 (CALL assert_expect ((CAST int   330 ):(CAST int   195 ):(CAST int  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)):) )
	.loc 1 330
// Line 330 (CAST int  (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136))
	.loc 1 330
// Line 330 (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)
	.loc 1 330
// Line 330 (MEMBER (LVAR 528) right 8)
	.loc 1 330
	lea  rax, [rbp - 528]
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 330 (CAST int   195 )
	.loc 1 330
// Line 330  195 
	.loc 1 330
	push 195
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
// Line 334 (= (MEMBER (LVAR 672) size 136)  100 )
	.loc 1 334
	lea  rax, [rbp - 672]
	add  rax, 136
	push rax
// Line 334  100 
	.loc 1 334
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 335 (= (MEMBER (LVAR 816) size 136)  500 )
	.loc 1 335
	lea  rax, [rbp - 816]
	add  rax, 136
	push rax
// Line 335  500 
	.loc 1 335
	push 500
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 336 (= (LVAR 816) (LVAR 672))
	.loc 1 336
	lea  rax, [rbp - 816]
	push rax
// Line 336 (LVAR 672)
	.loc 1 336
	lea  rax, [rbp - 672]
	push rax
	pop  rax
	pop  rsi
	mov  rdi, QWORD PTR [rax + 0]
	mov  QWORD PTR [rsi + 0], rdi
	mov  rdi, QWORD PTR [rax + 8]
	mov  QWORD PTR [rsi + 8], rdi
	mov  rdi, QWORD PTR [rax + 16]
	mov  QWORD PTR [rsi + 16], rdi
	mov  rdi, QWORD PTR [rax + 24]
	mov  QWORD PTR [rsi + 24], rdi
	mov  rdi, QWORD PTR [rax + 32]
	mov  QWORD PTR [rsi + 32], rdi
	mov  rdi, QWORD PTR [rax + 40]
	mov  QWORD PTR [rsi + 40], rdi
	mov  rdi, QWORD PTR [rax + 48]
	mov  QWORD PTR [rsi + 48], rdi
	mov  rdi, QWORD PTR [rax + 56]
	mov  QWORD PTR [rsi + 56], rdi
	mov  rdi, QWORD PTR [rax + 64]
	mov  QWORD PTR [rsi + 64], rdi
	mov  rdi, QWORD PTR [rax + 72]
	mov  QWORD PTR [rsi + 72], rdi
	mov  rdi, QWORD PTR [rax + 80]
	mov  QWORD PTR [rsi + 80], rdi
	mov  rdi, QWORD PTR [rax + 88]
	mov  QWORD PTR [rsi + 88], rdi
	mov  rdi, QWORD PTR [rax + 96]
	mov  QWORD PTR [rsi + 96], rdi
	mov  rdi, QWORD PTR [rax + 104]
	mov  QWORD PTR [rsi + 104], rdi
	mov  rdi, QWORD PTR [rax + 112]
	mov  QWORD PTR [rsi + 112], rdi
	mov  rdi, QWORD PTR [rax + 120]
	mov  QWORD PTR [rsi + 120], rdi
	mov  rdi, QWORD PTR [rax + 128]
	mov  QWORD PTR [rsi + 128], rdi
	mov  rdi, QWORD PTR [rax + 136]
	mov  QWORD PTR [rsi + 136], rdi
	push rsi
	pop  rax
// Line 337 (= (MEMBER (GVAR leaf_global) size 136)  700 )
	.loc 1 337
	lea  rax, leaf_global[rip]
	add  rax, 136
	push rax
// Line 337  700 
	.loc 1 337
	push 700
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 338 (CALL assert_expect ((CAST int   338 ):(CAST int   100 ):(CAST int  (MEMBER (LVAR 816) size 136)):) )
	.loc 1 338
// Line 338 (CAST int  (MEMBER (LVAR 816) size 136))
	.loc 1 338
// Line 338 (MEMBER (LVAR 816) size 136)
	.loc 1 338
	lea  rax, [rbp - 816]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 338 (CAST int   100 )
	.loc 1 338
// Line 338  100 
	.loc 1 338
	push 100
// Line 338 (CAST int   338 )
	.loc 1 338
// Line 338  338 
	.loc 1 338
	push 338
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
// Line 339 (= (LVAR 816) (GVAR leaf_global))
	.loc 1 339
	lea  rax, [rbp - 816]
	push rax
// Line 339 (GVAR leaf_global)
	.loc 1 339
	lea  rax, leaf_global[rip]
	push rax
	pop  rax
	pop  rsi
	mov  rdi, QWORD PTR [rax + 0]
	mov  QWORD PTR [rsi + 0], rdi
	mov  rdi, QWORD PTR [rax + 8]
	mov  QWORD PTR [rsi + 8], rdi
	mov  rdi, QWORD PTR [rax + 16]
	mov  QWORD PTR [rsi + 16], rdi
	mov  rdi, QWORD PTR [rax + 24]
	mov  QWORD PTR [rsi + 24], rdi
	mov  rdi, QWORD PTR [rax + 32]
	mov  QWORD PTR [rsi + 32], rdi
	mov  rdi, QWORD PTR [rax + 40]
	mov  QWORD PTR [rsi + 40], rdi
	mov  rdi, QWORD PTR [rax + 48]
	mov  QWORD PTR [rsi + 48], rdi
	mov  rdi, QWORD PTR [rax + 56]
	mov  QWORD PTR [rsi + 56], rdi
	mov  rdi, QWORD PTR [rax + 64]
	mov  QWORD PTR [rsi + 64], rdi
	mov  rdi, QWORD PTR [rax + 72]
	mov  QWORD PTR [rsi + 72], rdi
	mov  rdi, QWORD PTR [rax + 80]
	mov  QWORD PTR [rsi + 80], rdi
	mov  rdi, QWORD PTR [rax + 88]
	mov  QWORD PTR [rsi + 88], rdi
	mov  rdi, QWORD PTR [rax + 96]
	mov  QWORD PTR [rsi + 96], rdi
	mov  rdi, QWORD PTR [rax + 104]
	mov  QWORD PTR [rsi + 104], rdi
	mov  rdi, QWORD PTR [rax + 112]
	mov  QWORD PTR [rsi + 112], rdi
	mov  rdi, QWORD PTR [rax + 120]
	mov  QWORD PTR [rsi + 120], rdi
	mov  rdi, QWORD PTR [rax + 128]
	mov  QWORD PTR [rsi + 128], rdi
	mov  rdi, QWORD PTR [rax + 136]
	mov  QWORD PTR [rsi + 136], rdi
	push rsi
	pop  rax
// Line 340 (CALL assert_expect ((CAST int   340 ):(CAST int   700 ):(CAST int  (MEMBER (LVAR 816) size 136)):) )
	.loc 1 340
// Line 340 (CAST int  (MEMBER (LVAR 816) size 136))
	.loc 1 340
// Line 340 (MEMBER (LVAR 816) size 136)
	.loc 1 340
	lea  rax, [rbp - 816]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 340 (CAST int   700 )
	.loc 1 340
// Line 340  700 
	.loc 1 340
	push 700
// Line 340 (CAST int   340 )
	.loc 1 340
// Line 340  340 
	.loc 1 340
	push 340
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
// Line 341 (= (GVAR leaf_global) (LVAR 672))
	.loc 1 341
	lea  rax, leaf_global[rip]
	push rax
// Line 341 (LVAR 672)
	.loc 1 341
	lea  rax, [rbp - 672]
	push rax
	pop  rax
	pop  rsi
	mov  rdi, QWORD PTR [rax + 0]
	mov  QWORD PTR [rsi + 0], rdi
	mov  rdi, QWORD PTR [rax + 8]
	mov  QWORD PTR [rsi + 8], rdi
	mov  rdi, QWORD PTR [rax + 16]
	mov  QWORD PTR [rsi + 16], rdi
	mov  rdi, QWORD PTR [rax + 24]
	mov  QWORD PTR [rsi + 24], rdi
	mov  rdi, QWORD PTR [rax + 32]
	mov  QWORD PTR [rsi + 32], rdi
	mov  rdi, QWORD PTR [rax + 40]
	mov  QWORD PTR [rsi + 40], rdi
	mov  rdi, QWORD PTR [rax + 48]
	mov  QWORD PTR [rsi + 48], rdi
	mov  rdi, QWORD PTR [rax + 56]
	mov  QWORD PTR [rsi + 56], rdi
	mov  rdi, QWORD PTR [rax + 64]
	mov  QWORD PTR [rsi + 64], rdi
	mov  rdi, QWORD PTR [rax + 72]
	mov  QWORD PTR [rsi + 72], rdi
	mov  rdi, QWORD PTR [rax + 80]
	mov  QWORD PTR [rsi + 80], rdi
	mov  rdi, QWORD PTR [rax + 88]
	mov  QWORD PTR [rsi + 88], rdi
	mov  rdi, QWORD PTR [rax + 96]
	mov  QWORD PTR [rsi + 96], rdi
	mov  rdi, QWORD PTR [rax + 104]
	mov  QWORD PTR [rsi + 104], rdi
	mov  rdi, QWORD PTR [rax + 112]
	mov  QWORD PTR [rsi + 112], rdi
	mov  rdi, QWORD PTR [rax + 120]
	mov  QWORD PTR [rsi + 120], rdi
	mov  rdi, QWORD PTR [rax + 128]
	mov  QWORD PTR [rsi + 128], rdi
	mov  rdi, QWORD PTR [rax + 136]
	mov  QWORD PTR [rsi + 136], rdi
	push rsi
	pop  rax
// Line 342 (CALL assert_expect ((CAST int   342 ):(CAST int   100 ):(CAST int  (MEMBER (GVAR leaf_global) size 136)):) )
	.loc 1 342
// Line 342 (CAST int  (MEMBER (GVAR leaf_global) size 136))
	.loc 1 342
// Line 342 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 342
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 342 (CAST int   100 )
	.loc 1 342
// Line 342  100 
	.loc 1 342
	push 100
// Line 342 (CAST int   342 )
	.loc 1 342
// Line 342  342 
	.loc 1 342
	push 342
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
// Line 343 (= (MEMBER (LVAR 672) size 136)  999 )
	.loc 1 343
	lea  rax, [rbp - 672]
	add  rax, 136
	push rax
// Line 343  999 
	.loc 1 343
	push 999
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 344 (= (LVAR 824) (ADDR (LVAR 672)))
	.loc 1 344
	lea  rax, [rbp - 824]
	push rax
// Line 344 (ADDR (LVAR 672))
	.loc 1 344
	lea  rax, [rbp - 672]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 345 (= (LVAR 832) (ADDR (LVAR 816)))
	.loc 1 345
	lea  rax, [rbp - 832]
	push rax
// Line 345 (ADDR (LVAR 816))
	.loc 1 345
	lea  rax, [rbp - 816]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 346 (= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824))))
	.loc 1 346
	lea  rax, leaf_global[rip]
	push rax
// Line 346 (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))
	.loc 1 346
// Line 346 (LVAR 832)
	.loc 1 346
	lea  rax, [rbp - 832]
	mov  rax, [rax]
	push rax
	pop  rax
	push rax
// Line 346 (DEREF (LVAR 824))
	.loc 1 346
// Line 346 (LVAR 824)
	.loc 1 346
	lea  rax, [rbp - 824]
	mov  rax, [rax]
	push rax
	pop  rax
	pop  rsi
	mov  rdi, QWORD PTR [rax + 0]
	mov  QWORD PTR [rsi + 0], rdi
	mov  rdi, QWORD PTR [rax + 8]
	mov  QWORD PTR [rsi + 8], rdi
	mov  rdi, QWORD PTR [rax + 16]
	mov  QWORD PTR [rsi + 16], rdi
	mov  rdi, QWORD PTR [rax + 24]
	mov  QWORD PTR [rsi + 24], rdi
	mov  rdi, QWORD PTR [rax + 32]
	mov  QWORD PTR [rsi + 32], rdi
	mov  rdi, QWORD PTR [rax + 40]
	mov  QWORD PTR [rsi + 40], rdi
	mov  rdi, QWORD PTR [rax + 48]
	mov  QWORD PTR [rsi + 48], rdi
	mov  rdi, QWORD PTR [rax + 56]
	mov  QWORD PTR [rsi + 56], rdi
	mov  rdi, QWORD PTR [rax + 64]
	mov  QWORD PTR [rsi + 64], rdi
	mov  rdi, QWORD PTR [rax + 72]
	mov  QWORD PTR [rsi + 72], rdi
	mov  rdi, QWORD PTR [rax + 80]
	mov  QWORD PTR [rsi + 80], rdi
	mov  rdi, QWORD PTR [rax + 88]
	mov  QWORD PTR [rsi + 88], rdi
	mov  rdi, QWORD PTR [rax + 96]
	mov  QWORD PTR [rsi + 96], rdi
	mov  rdi, QWORD PTR [rax + 104]
	mov  QWORD PTR [rsi + 104], rdi
	mov  rdi, QWORD PTR [rax + 112]
	mov  QWORD PTR [rsi + 112], rdi
	mov  rdi, QWORD PTR [rax + 120]
	mov  QWORD PTR [rsi + 120], rdi
	mov  rdi, QWORD PTR [rax + 128]
	mov  QWORD PTR [rsi + 128], rdi
	mov  rdi, QWORD PTR [rax + 136]
	mov  QWORD PTR [rsi + 136], rdi
	push rsi
	pop  rax
	pop  rsi
	mov  rdi, QWORD PTR [rax + 0]
	mov  QWORD PTR [rsi + 0], rdi
	mov  rdi, QWORD PTR [rax + 8]
	mov  QWORD PTR [rsi + 8], rdi
	mov  rdi, QWORD PTR [rax + 16]
	mov  QWORD PTR [rsi + 16], rdi
	mov  rdi, QWORD PTR [rax + 24]
	mov  QWORD PTR [rsi + 24], rdi
	mov  rdi, QWORD PTR [rax + 32]
	mov  QWORD PTR [rsi + 32], rdi
	mov  rdi, QWORD PTR [rax + 40]
	mov  QWORD PTR [rsi + 40], rdi
	mov  rdi, QWORD PTR [rax + 48]
	mov  QWORD PTR [rsi + 48], rdi
	mov  rdi, QWORD PTR [rax + 56]
	mov  QWORD PTR [rsi + 56], rdi
	mov  rdi, QWORD PTR [rax + 64]
	mov  QWORD PTR [rsi + 64], rdi
	mov  rdi, QWORD PTR [rax + 72]
	mov  QWORD PTR [rsi + 72], rdi
	mov  rdi, QWORD PTR [rax + 80]
	mov  QWORD PTR [rsi + 80], rdi
	mov  rdi, QWORD PTR [rax + 88]
	mov  QWORD PTR [rsi + 88], rdi
	mov  rdi, QWORD PTR [rax + 96]
	mov  QWORD PTR [rsi + 96], rdi
	mov  rdi, QWORD PTR [rax + 104]
	mov  QWORD PTR [rsi + 104], rdi
	mov  rdi, QWORD PTR [rax + 112]
	mov  QWORD PTR [rsi + 112], rdi
	mov  rdi, QWORD PTR [rax + 120]
	mov  QWORD PTR [rsi + 120], rdi
	mov  rdi, QWORD PTR [rax + 128]
	mov  QWORD PTR [rsi + 128], rdi
	mov  rdi, QWORD PTR [rax + 136]
	mov  QWORD PTR [rsi + 136], rdi
	push rsi
	pop  rax
// Line 347 (CALL assert_expect ((CAST int   347 ):(CAST int   999 ):(CAST int  (MEMBER (DEREF (LVAR 832)) size 136)):) )
	.loc 1 347
// Line 347 (CAST int  (MEMBER (DEREF (LVAR 832)) size 136))
	.loc 1 347
// Line 347 (MEMBER (DEREF (LVAR 832)) size 136)
	.loc 1 347
// Line 347 (LVAR 832)
	.loc 1 347
	lea  rax, [rbp - 832]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 347 (CAST int   999 )
	.loc 1 347
// Line 347  999 
	.loc 1 347
	push 999
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
// Line 348 (CALL assert_expect ((CAST int   348 ):(CAST int   999 ):(CAST int  (MEMBER (GVAR leaf_global) size 136)):) )
	.loc 1 348
// Line 348 (CAST int  (MEMBER (GVAR leaf_global) size 136))
	.loc 1 348
// Line 348 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 348
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 348 (CAST int   999 )
	.loc 1 348
// Line 348  999 
	.loc 1 348
	push 999
// Line 348 (CAST int   348 )
	.loc 1 348
// Line 348  348 
	.loc 1 348
	push 348
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
.L.return.struct_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_board
// Line 353 FDECL print_board func ( * [8] int  board ) void  max_offset:48
//    (LVAR 40) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n" )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n\n" )):) ):))
	.loc 1 353
print_board:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
// Line 354 (++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 )
	.loc 1 354
// Line 354 (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))
	.loc 1 354
	lea  rax, q8_count[rip]
	push rax
// Line 354 (++ (GVAR q8_count)  1 )
	.loc 1 354
// Line 354 (GVAR q8_count)
	.loc 1 354
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
// Line 354  1 
	.loc 1 354
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 354  1 
	.loc 1 354
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 355 (RETURN NULL )
	.loc 1 355
	jmp  .L.return.print_board
// Line 356 (FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n" )):) ):))
	.loc 1 356
// Line 356 (= (LVAR 44)  0 )
	.loc 1 356
	lea  rax, [rbp - 44]
	push rax
// Line 356  0 
	.loc 1 356
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000186:
// Line 356 (<  8  (LVAR 44))
	.loc 1 356
// Line 356  8 
	.loc 1 356
	push 8
// Line 356 (LVAR 44)
	.loc 1 356
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
	je   .L000185
// Line 363 (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)):(CALL printf ((CAST * char  (ADDR  "\n" )):) ):)
	.loc 1 363
// Line 357 (FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):))
	.loc 1 357
// Line 357 (= (LVAR 48)  0 )
	.loc 1 357
	lea  rax, [rbp - 48]
	push rax
// Line 357  0 
	.loc 1 357
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000189:
// Line 357 (<  8  (LVAR 48))
	.loc 1 357
// Line 357  8 
	.loc 1 357
	push 8
// Line 357 (LVAR 48)
	.loc 1 357
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
	je   .L000188
// Line 361 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL ):(CALL printf ((CAST * char  (ADDR  ". " )):) ):)
	.loc 1 361
// Line 359 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((CAST * char  (ADDR  "Q " )):) ) NULL )
	.loc 1 359
// Line 358 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))
	.loc 1 358
// Line 358 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 358
// Line 358 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 358
// Line 358 (] (LVAR 40) (LVAR 44))
	.loc 1 358
// Line 358 (LVAR 40)
	.loc 1 358
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 358 (LVAR 44)
	.loc 1 358
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
// Line 358 (LVAR 48)
	.loc 1 358
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
	je   .L000190
// Line 358 (CALL printf ((CAST * char  (ADDR  "Q " )):) )
	.loc 1 358
// Line 358 (CAST * char  (ADDR  "Q " ))
	.loc 1 358
// Line 358 (ADDR  "Q " )
	.loc 1 358
	lea  rax, .LS000028[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000192
	mov  rax, 0
	call printf
	jmp  .L000193
.L000192:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000193:
	push rax
	pop  rax
	jmp  .L000191
.L000190:
.L000191:
// Line 359 (CALL printf ((CAST * char  (ADDR  ". " )):) )
	.loc 1 359
// Line 359 (CAST * char  (ADDR  ". " ))
	.loc 1 359
// Line 359 (ADDR  ". " )
	.loc 1 359
	lea  rax, .LS000029[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000194
	mov  rax, 0
	call printf
	jmp  .L000195
.L000194:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000195:
	push rax
	pop  rax
.L000187:
// Line 357 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 357
// Line 357 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 357
	lea  rax, [rbp - 48]
	push rax
// Line 357 (++ (LVAR 48)  1 )
	.loc 1 357
// Line 357 (LVAR 48)
	.loc 1 357
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 357  1 
	.loc 1 357
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 357  1 
	.loc 1 357
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000189
.L000188:
// Line 361 (CALL printf ((CAST * char  (ADDR  "\n" )):) )
	.loc 1 361
// Line 361 (CAST * char  (ADDR  "\n" ))
	.loc 1 361
// Line 361 (ADDR  "\n" )
	.loc 1 361
	lea  rax, .LS000030[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000196
	mov  rax, 0
	call printf
	jmp  .L000197
.L000196:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000197:
	push rax
	pop  rax
.L000184:
// Line 356 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 356
// Line 356 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 356
	lea  rax, [rbp - 44]
	push rax
// Line 356 (++ (LVAR 44)  1 )
	.loc 1 356
// Line 356 (LVAR 44)
	.loc 1 356
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 356  1 
	.loc 1 356
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 356  1 
	.loc 1 356
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000186
.L000185:
// Line 363 (CALL printf ((CAST * char  (ADDR  "\n\n" )):) )
	.loc 1 363
// Line 363 (CAST * char  (ADDR  "\n\n" ))
	.loc 1 363
// Line 363 (ADDR  "\n\n" )
	.loc 1 363
	lea  rax, .LS000031[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000198
	mov  rax, 0
	call printf
	jmp  .L000199
.L000198:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000199:
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
// Line 366 FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int  max_offset:56
//    (LVAR 40) (LVAR 48) 
//    (BLOCK(FOR init: (= (LVAR 52)  0 )cond: (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
	.loc 1 366
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
// Line 367 (FOR init: (= (LVAR 52)  0 )cond: (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):))
	.loc 1 367
// Line 367 (= (LVAR 52)  0 )
	.loc 1 367
	lea  rax, [rbp - 52]
	push rax
// Line 367  0 
	.loc 1 367
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000202:
// Line 367 (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))
	.loc 1 367
// Line 367 (MEMBER (DEREF (LVAR 48)) row 0)
	.loc 1 367
// Line 367 (LVAR 48)
	.loc 1 367
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 367 (LVAR 52)
	.loc 1 367
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
	je   .L000201
// Line 375 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):)
	.loc 1 375
// Line 369 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL )
	.loc 1 369
// Line 368 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4)))
	.loc 1 368
// Line 368 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))
	.loc 1 368
// Line 368 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 368
// Line 368 (] (LVAR 40) (LVAR 52))
	.loc 1 368
// Line 368 (LVAR 40)
	.loc 1 368
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 368 (LVAR 52)
	.loc 1 368
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
// Line 368 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 368
// Line 368 (LVAR 48)
	.loc 1 368
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
	je   .L000203
// Line 368 (RETURN  1 )
	.loc 1 368
// Line 368  1 
	.loc 1 368
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000204
.L000203:
.L000204:
// Line 369 (= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)))
	.loc 1 369
	lea  rax, [rbp - 56]
	push rax
// Line 369 (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))
	.loc 1 369
// Line 369 (MEMBER (DEREF (LVAR 48)) row 0)
	.loc 1 369
// Line 369 (LVAR 48)
	.loc 1 369
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 369 (LVAR 52)
	.loc 1 369
	lea  rax, [rbp - 52]
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
// Line 372 (IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 372
// Line 370 (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 )
	.loc 1 370
// Line 370 (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )
	.loc 1 370
// Line 370 (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 370
// Line 370 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 370
// Line 370 (LVAR 48)
	.loc 1 370
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 370 (LVAR 56)
	.loc 1 370
	lea  rax, [rbp - 56]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 370  1 
	.loc 1 370
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 370  0 
	.loc 1 370
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000205
// Line 372 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL )
	.loc 1 372
// Line 371 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))))
	.loc 1 371
// Line 371 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 371
// Line 371 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 371
// Line 371 (] (LVAR 40) (LVAR 52))
	.loc 1 371
// Line 371 (LVAR 40)
	.loc 1 371
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 371 (LVAR 52)
	.loc 1 371
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
// Line 371 (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 371
// Line 371 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 371
// Line 371 (LVAR 48)
	.loc 1 371
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 371 (LVAR 56)
	.loc 1 371
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
	je   .L000207
// Line 371 (RETURN  1 )
	.loc 1 371
// Line 371  1 
	.loc 1 371
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000208
.L000207:
.L000208:
	jmp  .L000206
.L000205:
.L000206:
// Line 374 (IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 374
// Line 372 (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 372
// Line 372  8 
	.loc 1 372
	push 8
// Line 372 (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 372
// Line 372 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 372
// Line 372 (LVAR 48)
	.loc 1 372
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 372 (LVAR 56)
	.loc 1 372
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
	je   .L000209
// Line 374 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL )
	.loc 1 374
// Line 373 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))))
	.loc 1 373
// Line 373 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 373
// Line 373 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 373
// Line 373 (] (LVAR 40) (LVAR 52))
	.loc 1 373
// Line 373 (LVAR 40)
	.loc 1 373
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 373 (LVAR 52)
	.loc 1 373
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
// Line 373 (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 373
// Line 373 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 373
// Line 373 (LVAR 48)
	.loc 1 373
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 373 (LVAR 56)
	.loc 1 373
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
	je   .L000211
// Line 373 (RETURN  1 )
	.loc 1 373
// Line 373  1 
	.loc 1 373
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000212
.L000211:
.L000212:
	jmp  .L000210
.L000209:
.L000210:
.L000200:
// Line 367 (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )
	.loc 1 367
// Line 367 (= (LVAR 52) (++ (LVAR 52)  1 ))
	.loc 1 367
	lea  rax, [rbp - 52]
	push rax
// Line 367 (++ (LVAR 52)  1 )
	.loc 1 367
// Line 367 (LVAR 52)
	.loc 1 367
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
// Line 367  1 
	.loc 1 367
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 367  1 
	.loc 1 367
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000202
.L000201:
// Line 375 (RETURN  0 )
	.loc 1 375
// Line 375  0 
	.loc 1 375
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
// Line 378 FDECL solve func ( * [8] int  board , int  row ) void  max_offset:56
//    (LVAR 40) (LVAR 44) 
//    (BLOCK(IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((CAST * [8] int  (LVAR 40)):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)):))
	.loc 1 378
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
// Line 383 (IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((CAST * [8] int  (LVAR 40)):) ):(RETURN NULL ):) NULL )
	.loc 1 383
// Line 379 (== (LVAR 44)  8 )
	.loc 1 379
// Line 379 (LVAR 44)
	.loc 1 379
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 379  8 
	.loc 1 379
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000213
// Line 383 (BLOCK(CALL print_board ((CAST * [8] int  (LVAR 40)):) ):(RETURN NULL ):)
	.loc 1 383
// Line 380 (CALL print_board ((CAST * [8] int  (LVAR 40)):) )
	.loc 1 380
// Line 380 (CAST * [8] int  (LVAR 40))
	.loc 1 380
// Line 380 (LVAR 40)
	.loc 1 380
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000215
	mov  rax, 0
	call print_board
	jmp  .L000216
.L000215:
	sub  rsp, 8
	mov  rax, 0
	call print_board
	add  rsp, 8
.L000216:
	push rax
	pop  rax
// Line 381 (RETURN NULL )
	.loc 1 381
	jmp  .L.return.solve
	jmp  .L000214
.L000213:
.L000214:
// Line 383 (FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):))
	.loc 1 383
// Line 383 (= (LVAR 48)  0 )
	.loc 1 383
	lea  rax, [rbp - 48]
	push rax
// Line 383  0 
	.loc 1 383
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000219:
// Line 383 (<  8  (LVAR 48))
	.loc 1 383
// Line 383  8 
	.loc 1 383
	push 8
// Line 383 (LVAR 48)
	.loc 1 383
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
	je   .L000218
// Line 394 (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)
	.loc 1 394
// Line 385 (= (MEMBER (LVAR 56) row 0) (LVAR 44))
	.loc 1 385
	lea  rax, [rbp - 56]
	add  rax, 0
	push rax
// Line 385 (LVAR 44)
	.loc 1 385
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 386 (= (MEMBER (LVAR 56) col 4) (LVAR 48))
	.loc 1 386
	lea  rax, [rbp - 56]
	add  rax, 4
	push rax
// Line 386 (LVAR 48)
	.loc 1 386
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 393 (IF (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL )
	.loc 1 393
// Line 387 (== (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )  0 )
	.loc 1 387
// Line 387 (CALL conflict ((CAST * [8] int  (LVAR 40)):(CAST * struct <Pos>  (ADDR (LVAR 56))):) )
	.loc 1 387
// Line 387 (CAST * struct <Pos>  (ADDR (LVAR 56)))
	.loc 1 387
// Line 387 (ADDR (LVAR 56))
	.loc 1 387
	lea  rax, [rbp - 56]
	push rax
// Line 387 (CAST * [8] int  (LVAR 40))
	.loc 1 387
// Line 387 (LVAR 40)
	.loc 1 387
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000222
	mov  rax, 0
	call conflict
	jmp  .L000223
.L000222:
	sub  rsp, 8
	mov  rax, 0
	call conflict
	add  rsp, 8
.L000223:
	push rax
// Line 387  0 
	.loc 1 387
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000220
// Line 393 (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):)
	.loc 1 393
// Line 389 (= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 )
	.loc 1 389
// Line 389 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 389
// Line 389 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 389
// Line 389 (] (LVAR 40) (LVAR 44))
	.loc 1 389
// Line 389 (LVAR 40)
	.loc 1 389
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 389 (LVAR 44)
	.loc 1 389
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
// Line 389 (LVAR 48)
	.loc 1 389
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 389  1 
	.loc 1 389
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 390 (CALL solve ((CAST * [8] int  (LVAR 40)):(CAST int  (+ (LVAR 44)  1 )):) )
	.loc 1 390
// Line 390 (CAST int  (+ (LVAR 44)  1 ))
	.loc 1 390
// Line 390 (+ (LVAR 44)  1 )
	.loc 1 390
// Line 390 (LVAR 44)
	.loc 1 390
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 390  1 
	.loc 1 390
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 390 (CAST * [8] int  (LVAR 40))
	.loc 1 390
// Line 390 (LVAR 40)
	.loc 1 390
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000224
	mov  rax, 0
	call solve
	jmp  .L000225
.L000224:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000225:
	push rax
	pop  rax
// Line 391 (= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 )
	.loc 1 391
// Line 391 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 391
// Line 391 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 391
// Line 391 (] (LVAR 40) (LVAR 44))
	.loc 1 391
// Line 391 (LVAR 40)
	.loc 1 391
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 391 (LVAR 44)
	.loc 1 391
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
// Line 391 (LVAR 48)
	.loc 1 391
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 391  0 
	.loc 1 391
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000221
.L000220:
.L000221:
.L000217:
// Line 383 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 383
// Line 383 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 383
	lea  rax, [rbp - 48]
	push rax
// Line 383 (++ (LVAR 48)  1 )
	.loc 1 383
// Line 383 (LVAR 48)
	.loc 1 383
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 383  1 
	.loc 1 383
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 383  1 
	.loc 1 383
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000219
.L000218:
.L.return.solve:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global q8
// Line 396 FDECL q8 func ( ) int  max_offset:296
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))):(CALL solve ((CAST * [8] int  (ADDR (LVAR 288))):(CAST int   0 ):) ):(RETURN (GVAR q8_count)):))
	.loc 1 396
q8:
	push rbp
	mov  rbp, rsp
	sub  rsp, 304
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 398 (= (GVAR q8_count)  0 )
	.loc 1 398
	lea  rax, q8_count[rip]
	push rax
// Line 398  0 
	.loc 1 398
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 399 (FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 )))
	.loc 1 399
// Line 399 (= (LVAR 292)  0 )
	.loc 1 399
	lea  rax, [rbp - 292]
	push rax
// Line 399  0 
	.loc 1 399
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000228:
// Line 399 (<  8  (LVAR 292))
	.loc 1 399
// Line 399  8 
	.loc 1 399
	push 8
// Line 399 (LVAR 292)
	.loc 1 399
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
	je   .L000227
// Line 400 (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))
	.loc 1 400
// Line 400 (= (LVAR 296)  0 )
	.loc 1 400
	lea  rax, [rbp - 296]
	push rax
// Line 400  0 
	.loc 1 400
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000231:
// Line 400 (<  8  (LVAR 296))
	.loc 1 400
// Line 400  8 
	.loc 1 400
	push 8
// Line 400 (LVAR 296)
	.loc 1 400
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
	je   .L000230
// Line 400 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 )
	.loc 1 400
// Line 400 (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296))
	.loc 1 400
// Line 400 (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292))))
	.loc 1 400
// Line 400 (] (ADDR (LVAR 288)) (LVAR 292))
	.loc 1 400
// Line 400 (ADDR (LVAR 288))
	.loc 1 400
	lea  rax, [rbp - 288]
	push rax
// Line 400 (LVAR 292)
	.loc 1 400
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
// Line 400 (LVAR 296)
	.loc 1 400
	lea  rax, [rbp - 296]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 400  0 
	.loc 1 400
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000229:
// Line 400 (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 )
	.loc 1 400
// Line 400 (= (LVAR 296) (++ (LVAR 296)  1 ))
	.loc 1 400
	lea  rax, [rbp - 296]
	push rax
// Line 400 (++ (LVAR 296)  1 )
	.loc 1 400
// Line 400 (LVAR 296)
	.loc 1 400
	lea  rax, [rbp - 296]
	mov  eax, [rax]
	push rax
// Line 400  1 
	.loc 1 400
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
	.loc 1 400
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000231
.L000230:
.L000226:
// Line 399 (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 )
	.loc 1 399
// Line 399 (= (LVAR 292) (++ (LVAR 292)  1 ))
	.loc 1 399
	lea  rax, [rbp - 292]
	push rax
// Line 399 (++ (LVAR 292)  1 )
	.loc 1 399
// Line 399 (LVAR 292)
	.loc 1 399
	lea  rax, [rbp - 292]
	mov  eax, [rax]
	push rax
// Line 399  1 
	.loc 1 399
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 399  1 
	.loc 1 399
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000228
.L000227:
// Line 401 (CALL solve ((CAST * [8] int  (ADDR (LVAR 288))):(CAST int   0 ):) )
	.loc 1 401
// Line 401 (CAST int   0 )
	.loc 1 401
// Line 401  0 
	.loc 1 401
	push 0
// Line 401 (CAST * [8] int  (ADDR (LVAR 288)))
	.loc 1 401
// Line 401 (ADDR (LVAR 288))
	.loc 1 401
	lea  rax, [rbp - 288]
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
// Line 402 (RETURN (GVAR q8_count))
	.loc 1 402
// Line 402 (GVAR q8_count)
	.loc 1 402
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
// Line 405 FDECL fun func ( * int  p ) int  max_offset:40
//    (LVAR 40) 
//    (BLOCK(RETURN (DEREF (LVAR 40))):))
	.loc 1 405
fun:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
// Line 405 (RETURN (DEREF (LVAR 40)))
	.loc 1 405
// Line 405 (DEREF (LVAR 40))
	.loc 1 405
// Line 405 (LVAR 40)
	.loc 1 405
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
	.global main
// Line 407 FDECL main func ( ) int  max_offset:93
//    
//    (BLOCK(= (LVAR 40) (CAST * void   0 )):(CALL assert_expect ((CAST int   412 ):(CAST int   1 ):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   413 ):(CAST int   0 ):(CAST int   0 ):) ):(CALL assert_expect ((CAST int   414 ):(CAST int   0 ):(CAST int  (CAST long  (CAST * void   0 ))):) ):(CALL assert_expect ((CAST int   416 ):(CAST int   70 ):(CAST int  (*  10  (+  2   5 ))):) ):(CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (GVAR str_ary)):) ):(CALL assert_expect ((CAST int   419 ):(CAST int   1979 ):(CAST int  (GVAR i)):) ):(CALL assert_expect ((CAST int   420 ):(CAST int   2015 ):(CAST int  (GVAR j)):) ):(CALL assert_expect ((CAST int   421 ):(CAST int   24 ):(CAST int  (GVAR s)):) ):(CALL assert_expect ((CAST int   423 ):(CAST int   9 ):(CAST int   9 ):) ):(CALL assert_expect ((CAST int   424 ):(CAST int   4 ):(CAST int  (+ (-  0   3 )  7 )):) ):(CALL assert_expect ((CAST int   425 ):(CAST int   21 ):(CAST int  (- (+  5   20 )  4 )):) ):(CALL assert_expect ((CAST int   426 ):(CAST int   21 ):(CAST int  (+  5  (*  4   4 ))):) ):(CALL assert_expect ((CAST int   427 ):(CAST int   24 ):(CAST int  (* (*  4  (-  5   2 )) (-  4   2 ))):) ):(CALL assert_expect ((CAST int   428 ):(CAST int   13 ):(CAST int  (- (+  6  (*  3   4 )) (/  15   3 ))):) ):(CALL assert_expect ((CAST int   429 ):(CAST int   33 ):(CAST int  (/ (* (+  6   3 ) (-  15   4 ))  3 )):) ):(CALL assert_expect ((CAST int   430 ):(CAST int   0 ):(CAST int  (==  3  (+  3   1 ))):) ):(CALL assert_expect ((CAST int   431 ):(CAST int   1 ):(CAST int  (!=  4  (*  4   2 ))):) ):(CALL assert_expect ((CAST int   432 ):(CAST int   0 ):(CAST int  (!=  3  (*  1   3 ))):) ):(CALL assert_expect ((CAST int   433 ):(CAST int   1 ):(CAST int  (>=  5  (-  8   4 ))):) ):(CALL assert_expect ((CAST int   434 ):(CAST int   1 ):(CAST int  (>=  5  (-  7   2 ))):) ):(CALL assert_expect ((CAST int   435 ):(CAST int   0 ):(CAST int  (>= (-  11   8 )  5 )):) ):(CALL assert_expect ((CAST int   436 ):(CAST int   1 ):(CAST int  (<= (*  2   30 )  3 )):) ):(CALL assert_expect ((CAST int   437 ):(CAST int   1 ):(CAST int  (<= (/  9   3 )  3 )):) ):(CALL assert_expect ((CAST int   438 ):(CAST int   0 ):(CAST int  (<= (-  20   18 )  3 )):) ):(CALL assert_expect ((CAST int   439 ):(CAST int   1 ):(CAST int  (== (+ (* (-  0   5 )  2 )  10 )  0 )):) ):(CALL assert_expect ((CAST int   440 ):(CAST int   1 ):(CAST int  (== (/  6   2 ) (/  9   3 ))):) ):(CALL assert_expect ((CAST int   441 ):(CAST int   1 ):(CAST int  (< (+  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   442 ):(CAST int   1 ):(CAST int  (> (+  1   4 )  4 )):) ):(CALL assert_expect ((CAST int   443 ):(CAST int   0 ):(CAST int  (< (-  4   1 )  4 )):) ):(CALL assert_expect ((CAST int   444 ):(CAST int   0 ):(CAST int  (> (-  1   4 )  4 )):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   446 ):(CAST int   0 ):(CAST int  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   447 ):(CAST int   0 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   448 ):(CAST int   0 ):(CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   449 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   450 ):(CAST int   1 ):(CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   451 ):(CAST int   2 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   452 ):(CAST int   1 ):(CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   453 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   454 ):(CAST int   1 ):(CAST int  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   455 ):(CAST int   3 ):(CAST int  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   457 ):(CAST int   0 ):(CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   458 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(= (LVAR 44)  0 ):(CALL assert_expect ((CAST int   460 ):(CAST int   0 ):(CAST int  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))):) ):(CALL assert_expect ((CAST int   461 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   462 ):(CAST int   1 ):(CAST int  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ((CAST int   463 ):(CAST int   1 ):(CAST int  (LVAR 44)):) ):(CALL assert_expect ((CAST int   464 ):(CAST int   1 ):(CAST int  (!  0 )):) ):(CALL assert_expect ((CAST int   465 ):(CAST int   0 ):(CAST int  (!  1 )):) ):(CALL assert_expect ((CAST int   466 ):(CAST int   0 ):(CAST int  (! (! (!  1 )))):) ):(CALL assert_expect ((CAST int   468 ):(CAST int   256 ):(CAST int  (<<  1   8 )):) ):(CALL assert_expect ((CAST int   469 ):(CAST int   32 ):(CAST int  (>>  512   4 )):) ):(CALL assert_expect ((CAST int   473 ):(CAST int   1 ):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   474 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   475 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   476 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   477 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   478 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   479 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   480 ):(CAST int   8 ):(CAST int   8 ):) ):(= (LVAR 45)  254 ):(CALL assert_expect ((CAST int   482 ):(CAST int  (-  0   2 )):(CAST int  (LVAR 45)):) ):(= (LVAR 49) (-  0   100 )):(CALL assert_expect ((CAST int   484 ):(CAST int  (-  0   100 )):(CAST int  (LVAR 49)):) ):(= (LVAR 53) (-  0   100 )):(CALL assert_expect ((CAST int   486 ):(CAST int  (-  0   100 )):(CAST int  (LVAR 53)):) ):(CALL assert_expect ((CAST int   490 ):(CAST int   131585 ):(CAST int  (CAST int   131585 )):) ):(CALL assert_expect ((CAST int   491 ):(CAST int   513 ):(CAST int  (CAST short   131585 )):) ):(CALL assert_expect ((CAST int   492 ):(CAST int   1 ):(CAST int  (CAST char   131585 )):) ):(CALL assert_expect ((CAST int   493 ):(CAST int   1 ):(CAST int  (CAST long   1 )):) ):(CALL assert_expect ((CAST int   495 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   496 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   497 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   498 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   500 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   501 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   502 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   503 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   504 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   505 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   506 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   507 ):(CAST int   8 ):(CAST int   8 ):) ):(CALL assert_expect ((CAST int   509 ):(CAST int  (CAST long  (-  0   5 ))):(CAST int  (+ (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   510 ):(CAST int  (CAST long  (-  0   15 ))):(CAST int  (- (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   511 ):(CAST int  (CAST long  (-  0   50 ))):(CAST int  (* (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   512 ):(CAST int  (CAST long  (-  0   2 ))):(CAST int  (/ (-  0   10 ) (CAST long   5 ))):) ):(CALL assert_expect ((CAST int   514 ):(CAST int   1 ):(CAST int  (< (CAST long  (-  0   1 )) (-  0   2 ))):) ):(CALL assert_expect ((CAST int   515 ):(CAST int   1 ):(CAST int  (<= (CAST long  (-  0   1 )) (-  0   2 ))):) ):(CALL assert_expect ((CAST int   516 ):(CAST int   0 ):(CAST int  (> (-  0   2 ) (CAST long  (-  0   1 )))):) ):(CALL assert_expect ((CAST int   517 ):(CAST int   0 ):(CAST int  (>= (-  0   2 ) (CAST long  (-  0   1 )))):) ):(CALL assert_expect ((CAST int   519 ):(CAST int   1 ):(CAST int  (< (-  0   1 ) (CAST long  (-  0   2 )))):) ):(CALL assert_expect ((CAST int   520 ):(CAST int   1 ):(CAST int  (<= (-  0   1 ) (CAST long  (-  0   2 )))):) ):(CALL assert_expect ((CAST int   521 ):(CAST int   0 ):(CAST int  (> (CAST long  (-  0   2 )) (-  0   1 ))):) ):(CALL assert_expect ((CAST int   522 ):(CAST int   0 ):(CAST int  (>= (CAST long  (-  0   2 )) (-  0   1 ))):) ):(CALL assert_expect ((CAST int   524 ):(CAST int   0 ):(CAST int  (+ (+  2147483647   2147483647 )  2 )):) ):(= (LVAR 77) (-  0   1 )):(CALL assert_expect ((CAST int   527 ):(CAST int  (CAST long  (-  0   1 ))):(CAST int  (LVAR 77)):) ):(= (LVAR 81)  10 ):(CALL assert_expect ((CAST int   532 ):(CAST int   15 ):(CAST int  (= (LVAR 81) (+= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   533 ):(CAST int   15 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   534 ):(CAST int   8 ):(CAST int  (= (LVAR 81) (-= (LVAR 81)  7 ))):) ):(CALL assert_expect ((CAST int   535 ):(CAST int   8 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   536 ):(CAST int   40 ):(CAST int  (= (LVAR 81) (*= (LVAR 81)  5 ))):) ):(CALL assert_expect ((CAST int   537 ):(CAST int   40 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   538 ):(CAST int   4 ):(CAST int  (= (LVAR 81) (/= (LVAR 81)  10 ))):) ):(CALL assert_expect ((CAST int   539 ):(CAST int   4 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   542 ):(CAST int   4 ):(CAST int  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   543 ):(CAST int   5 ):(CAST int  (LVAR 81)):) ):(CALL assert_expect ((CAST int   544 ):(CAST int   5 ):(CAST int  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )):) ):(CALL assert_expect ((CAST int   545 ):(CAST int   4 ):(CAST int  (LVAR 81)):) ):(= (LVAR 85) (/  100  (LVAR 81))):(CALL assert_expect ((CAST int   550 ):(CAST int   25 ):(CAST int  (LVAR 85)):) ):(= (LVAR 89)  77 ):(IF (== (LVAR 89)  77 ) (= (LVAR 89)  55 ) (= (LVAR 89)  66 )):(CALL assert_expect ((CAST int   558 ):(CAST int   55 ):(CAST int  (LVAR 89)):) ):(CALL assert_expect ((CAST int   559 ):(CAST int   1346269 ):(CAST int  (CALL fibo ((CAST int   30 ):) )):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ((CAST int   581 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   582 ):(CAST int   4 ):(CAST int   4 ):) ):(CALL assert_expect ((CAST int   583 ):(CAST int   10 ):(CAST int   10 ):) ):(CALL assert_expect ((CAST int   584 ):(CAST int   12 ):(CAST int   12 ):) ):(CALL assert_expect ((CAST int   586 ):(CAST int   11 ):(CAST int  (CALL switch_ ((CAST int   1 ):) )):) ):(CALL assert_expect ((CAST int   587 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   2 ):) )):) ):(CALL assert_expect ((CAST int   588 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   3 ):) )):) ):(CALL assert_expect ((CAST int   589 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   4 ):) )):) ):(CALL assert_expect ((CAST int   590 ):(CAST int   15 ):(CAST int  (CALL switch_ ((CAST int   5 ):) )):) ):(CALL assert_expect ((CAST int   591 ):(CAST int   15 ):(CAST int  (CALL switch_ ((CAST int   6 ):) )):) ):(CALL assert_expect ((CAST int   594 ):(CAST int   11 ):(CAST int  (CALL switch2_ ((CAST char   97 ):) )):) ):(CALL assert_expect ((CAST int   595 ):(CAST int   12 ):(CAST int  (CALL switch2_ ((CAST char   98 ):) )):) ):(CALL assert_expect ((CAST int   596 ):(CAST int   12 ):(CAST int  (CALL switch2_ ((CAST char   99 ):) )):) ):(CALL assert_expect ((CAST int   597 ):(CAST int   15 ):(CAST int  (CALL switch2_ ((CAST char   122 ):) )):) ):(CALL assert_expect ((CAST int   600 ):(CAST int   92 ):(CAST int  (CALL q8 () )):) ):(CALL assert_expect ((CAST int   603 ):(CAST int   0 ):(CAST int   0 ):) ):(CALL assert_expect ((CAST int   604 ):(CAST int   1 ):(CAST int   1 ):) ):(CALL assert_expect ((CAST int   605 ):(CAST int   2 ):(CAST int   2 ):) ):(CALL assert_expect ((CAST int   606 ):(CAST int   3 ):(CAST int   3 ):) ):(CALL assert_expect ((CAST int   608 ):(CAST int   15 ):(CAST int  (|  13   7 )):) ):(CALL assert_expect ((CAST int   609 ):(CAST int   5115 ):(CAST int  (|  938   5073 )):) ):(CALL assert_expect ((CAST int   610 ):(CAST int   5 ):(CAST int  (&  13   7 )):) ):(CALL assert_expect ((CAST int   611 ):(CAST int   896 ):(CAST int  (&  938   5073 )):) ):(CALL assert_expect ((CAST int   612 ):(CAST int   10 ):(CAST int  (^  13   7 )):) ):(CALL assert_expect ((CAST int   613 ):(CAST int   4219 ):(CAST int  (^  938   5073 )):) ):(CALL assert_expect ((CAST int   615 ):(CAST int   29 ):(CAST int  (>>  938   5 )):) ):(CALL assert_expect ((CAST int   616 ):(CAST int   1664 ):(CAST int  (<<  13   7 )):) ):(CALL printf ((CAST * char  (ADDR  "passed tests.\n" )):) ):(RETURN  0 ):))
	.loc 1 407
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 96
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 411 (= (LVAR 40) (CAST * void   0 ))
	.loc 1 411
	lea  rax, [rbp - 40]
	push rax
// Line 410 (CAST * void   0 )
	.loc 1 410
// Line 410  0 
	.loc 1 410
	push 0
	pop  rax
	mov  eax, eax
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 412 (CALL assert_expect ((CAST int   412 ):(CAST int   1 ):(CAST int   1 ):) )
	.loc 1 412
// Line 408 (CAST int   1 )
	.loc 1 408
// Line 408  1 
	.loc 1 408
	push 1
// Line 412 (CAST int   1 )
	.loc 1 412
// Line 412  1 
	.loc 1 412
	push 1
// Line 412 (CAST int   412 )
	.loc 1 412
// Line 412  412 
	.loc 1 412
	push 412
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
// Line 413 (CALL assert_expect ((CAST int   413 ):(CAST int   0 ):(CAST int   0 ):) )
	.loc 1 413
// Line 409 (CAST int   0 )
	.loc 1 409
// Line 409  0 
	.loc 1 409
	push 0
// Line 413 (CAST int   0 )
	.loc 1 413
// Line 413  0 
	.loc 1 413
	push 0
// Line 413 (CAST int   413 )
	.loc 1 413
// Line 413  413 
	.loc 1 413
	push 413
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
// Line 414 (CALL assert_expect ((CAST int   414 ):(CAST int   0 ):(CAST int  (CAST long  (CAST * void   0 ))):) )
	.loc 1 414
// Line 414 (CAST int  (CAST long  (CAST * void   0 )))
	.loc 1 414
// Line 414 (CAST long  (CAST * void   0 ))
	.loc 1 414
// Line 410 (CAST * void   0 )
	.loc 1 410
// Line 410  0 
	.loc 1 410
	push 0
	pop  rax
	mov  eax, eax
	push rax
// Line 414 (CAST int   0 )
	.loc 1 414
// Line 414  0 
	.loc 1 414
	push 0
// Line 414 (CAST int   414 )
	.loc 1 414
// Line 414  414 
	.loc 1 414
	push 414
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
// Line 416 (CALL assert_expect ((CAST int   416 ):(CAST int   70 ):(CAST int  (*  10  (+  2   5 ))):) )
	.loc 1 416
// Line 415 (CAST int  (*  10  (+  2   5 )))
	.loc 1 415
// Line 415 (*  10  (+  2   5 ))
	.loc 1 415
// Line 416  10 
	.loc 1 416
	push 10
// Line 415 (+  2   5 )
	.loc 1 415
// Line 416  2 
	.loc 1 416
	push 2
// Line 416  5 
	.loc 1 416
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 416 (CAST int   70 )
	.loc 1 416
// Line 416  70 
	.loc 1 416
	push 70
// Line 416 (CAST int   416 )
	.loc 1 416
// Line 416  416 
	.loc 1 416
	push 416
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
// Line 417 (CALL printf ((CAST * char  (ADDR  "%s" )):(ADDR (GVAR str_ary)):) )
	.loc 1 417
// Line 417 (ADDR (GVAR str_ary))
	.loc 1 417
	lea  rax, str_ary[rip]
	push rax
// Line 417 (CAST * char  (ADDR  "%s" ))
	.loc 1 417
// Line 417 (ADDR  "%s" )
	.loc 1 417
	lea  rax, .LS000032[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000242
	mov  rax, 0
	call printf
	jmp  .L000243
.L000242:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000243:
	push rax
	pop  rax
// Line 419 (CALL assert_expect ((CAST int   419 ):(CAST int   1979 ):(CAST int  (GVAR i)):) )
	.loc 1 419
// Line 419 (CAST int  (GVAR i))
	.loc 1 419
// Line 419 (GVAR i)
	.loc 1 419
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 419 (CAST int   1979 )
	.loc 1 419
// Line 419  1979 
	.loc 1 419
	push 1979
// Line 419 (CAST int   419 )
	.loc 1 419
// Line 419  419 
	.loc 1 419
	push 419
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
// Line 420 (CALL assert_expect ((CAST int   420 ):(CAST int   2015 ):(CAST int  (GVAR j)):) )
	.loc 1 420
// Line 420 (CAST int  (GVAR j))
	.loc 1 420
// Line 420 (GVAR j)
	.loc 1 420
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 420 (CAST int   2015 )
	.loc 1 420
// Line 420  2015 
	.loc 1 420
	push 2015
// Line 420 (CAST int   420 )
	.loc 1 420
// Line 420  420 
	.loc 1 420
	push 420
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
// Line 421 (CALL assert_expect ((CAST int   421 ):(CAST int   24 ):(CAST int  (GVAR s)):) )
	.loc 1 421
// Line 421 (CAST int  (GVAR s))
	.loc 1 421
// Line 421 (GVAR s)
	.loc 1 421
	lea  rax, s[rip]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 421 (CAST int   24 )
	.loc 1 421
// Line 421  24 
	.loc 1 421
	push 24
// Line 421 (CAST int   421 )
	.loc 1 421
// Line 421  421 
	.loc 1 421
	push 421
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
// Line 423 (CALL assert_expect ((CAST int   423 ):(CAST int   9 ):(CAST int   9 ):) )
	.loc 1 423
// Line 423 (CAST int   9 )
	.loc 1 423
// Line 423  9 
	.loc 1 423
	push 9
// Line 423 (CAST int   9 )
	.loc 1 423
// Line 423  9 
	.loc 1 423
	push 9
// Line 423 (CAST int   423 )
	.loc 1 423
// Line 423  423 
	.loc 1 423
	push 423
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
// Line 424 (CALL assert_expect ((CAST int   424 ):(CAST int   4 ):(CAST int  (+ (-  0   3 )  7 )):) )
	.loc 1 424
// Line 424 (CAST int  (+ (-  0   3 )  7 ))
	.loc 1 424
// Line 424 (+ (-  0   3 )  7 )
	.loc 1 424
// Line 424 (-  0   3 )
	.loc 1 424
// Line 424  0 
	.loc 1 424
	push 0
// Line 424  3 
	.loc 1 424
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 424  7 
	.loc 1 424
	push 7
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 424 (CAST int   4 )
	.loc 1 424
// Line 424  4 
	.loc 1 424
	push 4
// Line 424 (CAST int   424 )
	.loc 1 424
// Line 424  424 
	.loc 1 424
	push 424
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
// Line 425 (CALL assert_expect ((CAST int   425 ):(CAST int   21 ):(CAST int  (- (+  5   20 )  4 )):) )
	.loc 1 425
// Line 425 (CAST int  (- (+  5   20 )  4 ))
	.loc 1 425
// Line 425 (- (+  5   20 )  4 )
	.loc 1 425
// Line 425 (+  5   20 )
	.loc 1 425
// Line 425  5 
	.loc 1 425
	push 5
// Line 425  20 
	.loc 1 425
	push 20
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 425  4 
	.loc 1 425
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 425 (CAST int   21 )
	.loc 1 425
// Line 425  21 
	.loc 1 425
	push 21
// Line 425 (CAST int   425 )
	.loc 1 425
// Line 425  425 
	.loc 1 425
	push 425
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
// Line 426 (CALL assert_expect ((CAST int   426 ):(CAST int   21 ):(CAST int  (+  5  (*  4   4 ))):) )
	.loc 1 426
// Line 426 (CAST int  (+  5  (*  4   4 )))
	.loc 1 426
// Line 426 (+  5  (*  4   4 ))
	.loc 1 426
// Line 426  5 
	.loc 1 426
	push 5
// Line 426 (*  4   4 )
	.loc 1 426
// Line 426  4 
	.loc 1 426
	push 4
// Line 426  4 
	.loc 1 426
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 426 (CAST int   21 )
	.loc 1 426
// Line 426  21 
	.loc 1 426
	push 21
// Line 426 (CAST int   426 )
	.loc 1 426
// Line 426  426 
	.loc 1 426
	push 426
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
// Line 427 (CALL assert_expect ((CAST int   427 ):(CAST int   24 ):(CAST int  (* (*  4  (-  5   2 )) (-  4   2 ))):) )
	.loc 1 427
// Line 427 (CAST int  (* (*  4  (-  5   2 )) (-  4   2 )))
	.loc 1 427
// Line 427 (* (*  4  (-  5   2 )) (-  4   2 ))
	.loc 1 427
// Line 427 (*  4  (-  5   2 ))
	.loc 1 427
// Line 427  4 
	.loc 1 427
	push 4
// Line 427 (-  5   2 )
	.loc 1 427
// Line 427  5 
	.loc 1 427
	push 5
// Line 427  2 
	.loc 1 427
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 427 (-  4   2 )
	.loc 1 427
// Line 427  4 
	.loc 1 427
	push 4
// Line 427  2 
	.loc 1 427
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 427 (CAST int   24 )
	.loc 1 427
// Line 427  24 
	.loc 1 427
	push 24
// Line 427 (CAST int   427 )
	.loc 1 427
// Line 427  427 
	.loc 1 427
	push 427
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
// Line 428 (CALL assert_expect ((CAST int   428 ):(CAST int   13 ):(CAST int  (- (+  6  (*  3   4 )) (/  15   3 ))):) )
	.loc 1 428
// Line 428 (CAST int  (- (+  6  (*  3   4 )) (/  15   3 )))
	.loc 1 428
// Line 428 (- (+  6  (*  3   4 )) (/  15   3 ))
	.loc 1 428
// Line 428 (+  6  (*  3   4 ))
	.loc 1 428
// Line 428  6 
	.loc 1 428
	push 6
// Line 428 (*  3   4 )
	.loc 1 428
// Line 428  3 
	.loc 1 428
	push 3
// Line 428  4 
	.loc 1 428
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 428 (/  15   3 )
	.loc 1 428
// Line 428  15 
	.loc 1 428
	push 15
// Line 428  3 
	.loc 1 428
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
// Line 428 (CAST int   13 )
	.loc 1 428
// Line 428  13 
	.loc 1 428
	push 13
// Line 428 (CAST int   428 )
	.loc 1 428
// Line 428  428 
	.loc 1 428
	push 428
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
// Line 429 (CALL assert_expect ((CAST int   429 ):(CAST int   33 ):(CAST int  (/ (* (+  6   3 ) (-  15   4 ))  3 )):) )
	.loc 1 429
// Line 429 (CAST int  (/ (* (+  6   3 ) (-  15   4 ))  3 ))
	.loc 1 429
// Line 429 (/ (* (+  6   3 ) (-  15   4 ))  3 )
	.loc 1 429
// Line 429 (* (+  6   3 ) (-  15   4 ))
	.loc 1 429
// Line 429 (+  6   3 )
	.loc 1 429
// Line 429  6 
	.loc 1 429
	push 6
// Line 429  3 
	.loc 1 429
	push 3
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 429 (-  15   4 )
	.loc 1 429
// Line 429  15 
	.loc 1 429
	push 15
// Line 429  4 
	.loc 1 429
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 429  3 
	.loc 1 429
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 429 (CAST int   33 )
	.loc 1 429
// Line 429  33 
	.loc 1 429
	push 33
// Line 429 (CAST int   429 )
	.loc 1 429
// Line 429  429 
	.loc 1 429
	push 429
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
// Line 430 (CALL assert_expect ((CAST int   430 ):(CAST int   0 ):(CAST int  (==  3  (+  3   1 ))):) )
	.loc 1 430
// Line 430 (CAST int  (==  3  (+  3   1 )))
	.loc 1 430
// Line 430 (==  3  (+  3   1 ))
	.loc 1 430
// Line 430  3 
	.loc 1 430
	push 3
// Line 430 (+  3   1 )
	.loc 1 430
// Line 430  3 
	.loc 1 430
	push 3
// Line 430  1 
	.loc 1 430
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
// Line 430 (CAST int   0 )
	.loc 1 430
// Line 430  0 
	.loc 1 430
	push 0
// Line 430 (CAST int   430 )
	.loc 1 430
// Line 430  430 
	.loc 1 430
	push 430
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
// Line 431 (CALL assert_expect ((CAST int   431 ):(CAST int   1 ):(CAST int  (!=  4  (*  4   2 ))):) )
	.loc 1 431
// Line 431 (CAST int  (!=  4  (*  4   2 )))
	.loc 1 431
// Line 431 (!=  4  (*  4   2 ))
	.loc 1 431
// Line 431  4 
	.loc 1 431
	push 4
// Line 431 (*  4   2 )
	.loc 1 431
// Line 431  4 
	.loc 1 431
	push 4
// Line 431  2 
	.loc 1 431
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
// Line 431 (CAST int   1 )
	.loc 1 431
// Line 431  1 
	.loc 1 431
	push 1
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
// Line 432 (CALL assert_expect ((CAST int   432 ):(CAST int   0 ):(CAST int  (!=  3  (*  1   3 ))):) )
	.loc 1 432
// Line 432 (CAST int  (!=  3  (*  1   3 )))
	.loc 1 432
// Line 432 (!=  3  (*  1   3 ))
	.loc 1 432
// Line 432  3 
	.loc 1 432
	push 3
// Line 432 (*  1   3 )
	.loc 1 432
// Line 432  1 
	.loc 1 432
	push 1
// Line 432  3 
	.loc 1 432
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
// Line 432 (CAST int   0 )
	.loc 1 432
// Line 432  0 
	.loc 1 432
	push 0
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
// Line 433 (CALL assert_expect ((CAST int   433 ):(CAST int   1 ):(CAST int  (>=  5  (-  8   4 ))):) )
	.loc 1 433
// Line 433 (CAST int  (>=  5  (-  8   4 )))
	.loc 1 433
// Line 433 (>=  5  (-  8   4 ))
	.loc 1 433
// Line 433  5 
	.loc 1 433
	push 5
// Line 433 (-  8   4 )
	.loc 1 433
// Line 433  8 
	.loc 1 433
	push 8
// Line 433  4 
	.loc 1 433
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
// Line 433 (CAST int   1 )
	.loc 1 433
// Line 433  1 
	.loc 1 433
	push 1
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
// Line 434 (CALL assert_expect ((CAST int   434 ):(CAST int   1 ):(CAST int  (>=  5  (-  7   2 ))):) )
	.loc 1 434
// Line 434 (CAST int  (>=  5  (-  7   2 )))
	.loc 1 434
// Line 434 (>=  5  (-  7   2 ))
	.loc 1 434
// Line 434  5 
	.loc 1 434
	push 5
// Line 434 (-  7   2 )
	.loc 1 434
// Line 434  7 
	.loc 1 434
	push 7
// Line 434  2 
	.loc 1 434
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
// Line 434 (CAST int   1 )
	.loc 1 434
// Line 434  1 
	.loc 1 434
	push 1
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
// Line 435 (CALL assert_expect ((CAST int   435 ):(CAST int   0 ):(CAST int  (>= (-  11   8 )  5 )):) )
	.loc 1 435
// Line 435 (CAST int  (>= (-  11   8 )  5 ))
	.loc 1 435
// Line 435 (>= (-  11   8 )  5 )
	.loc 1 435
// Line 435 (-  11   8 )
	.loc 1 435
// Line 435  11 
	.loc 1 435
	push 11
// Line 435  8 
	.loc 1 435
	push 8
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 435  5 
	.loc 1 435
	push 5
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 435 (CAST int   0 )
	.loc 1 435
// Line 435  0 
	.loc 1 435
	push 0
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
// Line 436 (CALL assert_expect ((CAST int   436 ):(CAST int   1 ):(CAST int  (<= (*  2   30 )  3 )):) )
	.loc 1 436
// Line 436 (CAST int  (<= (*  2   30 )  3 ))
	.loc 1 436
// Line 436 (<= (*  2   30 )  3 )
	.loc 1 436
// Line 436 (*  2   30 )
	.loc 1 436
// Line 436  2 
	.loc 1 436
	push 2
// Line 436  30 
	.loc 1 436
	push 30
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 436  3 
	.loc 1 436
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 436 (CAST int   1 )
	.loc 1 436
// Line 436  1 
	.loc 1 436
	push 1
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
// Line 437 (CALL assert_expect ((CAST int   437 ):(CAST int   1 ):(CAST int  (<= (/  9   3 )  3 )):) )
	.loc 1 437
// Line 437 (CAST int  (<= (/  9   3 )  3 ))
	.loc 1 437
// Line 437 (<= (/  9   3 )  3 )
	.loc 1 437
// Line 437 (/  9   3 )
	.loc 1 437
// Line 437  9 
	.loc 1 437
	push 9
// Line 437  3 
	.loc 1 437
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 437  3 
	.loc 1 437
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 437 (CAST int   1 )
	.loc 1 437
// Line 437  1 
	.loc 1 437
	push 1
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
// Line 438 (CALL assert_expect ((CAST int   438 ):(CAST int   0 ):(CAST int  (<= (-  20   18 )  3 )):) )
	.loc 1 438
// Line 438 (CAST int  (<= (-  20   18 )  3 ))
	.loc 1 438
// Line 438 (<= (-  20   18 )  3 )
	.loc 1 438
// Line 438 (-  20   18 )
	.loc 1 438
// Line 438  20 
	.loc 1 438
	push 20
// Line 438  18 
	.loc 1 438
	push 18
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 438  3 
	.loc 1 438
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 438 (CAST int   0 )
	.loc 1 438
// Line 438  0 
	.loc 1 438
	push 0
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
// Line 439 (CALL assert_expect ((CAST int   439 ):(CAST int   1 ):(CAST int  (== (+ (* (-  0   5 )  2 )  10 )  0 )):) )
	.loc 1 439
// Line 439 (CAST int  (== (+ (* (-  0   5 )  2 )  10 )  0 ))
	.loc 1 439
// Line 439 (== (+ (* (-  0   5 )  2 )  10 )  0 )
	.loc 1 439
// Line 439 (+ (* (-  0   5 )  2 )  10 )
	.loc 1 439
// Line 439 (* (-  0   5 )  2 )
	.loc 1 439
// Line 439 (-  0   5 )
	.loc 1 439
// Line 439  0 
	.loc 1 439
	push 0
// Line 439  5 
	.loc 1 439
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 439  2 
	.loc 1 439
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 439  10 
	.loc 1 439
	push 10
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 439  0 
	.loc 1 439
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
// Line 439 (CAST int   1 )
	.loc 1 439
// Line 439  1 
	.loc 1 439
	push 1
// Line 439 (CAST int   439 )
	.loc 1 439
// Line 439  439 
	.loc 1 439
	push 439
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
// Line 440 (CALL assert_expect ((CAST int   440 ):(CAST int   1 ):(CAST int  (== (/  6   2 ) (/  9   3 ))):) )
	.loc 1 440
// Line 440 (CAST int  (== (/  6   2 ) (/  9   3 )))
	.loc 1 440
// Line 440 (== (/  6   2 ) (/  9   3 ))
	.loc 1 440
// Line 440 (/  6   2 )
	.loc 1 440
// Line 440  6 
	.loc 1 440
	push 6
// Line 440  2 
	.loc 1 440
	push 2
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 440 (/  9   3 )
	.loc 1 440
// Line 440  9 
	.loc 1 440
	push 9
// Line 440  3 
	.loc 1 440
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
// Line 440 (CAST int   1 )
	.loc 1 440
// Line 440  1 
	.loc 1 440
	push 1
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
// Line 441 (CALL assert_expect ((CAST int   441 ):(CAST int   1 ):(CAST int  (< (+  4   1 )  4 )):) )
	.loc 1 441
// Line 441 (CAST int  (< (+  4   1 )  4 ))
	.loc 1 441
// Line 441 (< (+  4   1 )  4 )
	.loc 1 441
// Line 441 (+  4   1 )
	.loc 1 441
// Line 441  4 
	.loc 1 441
	push 4
// Line 441  1 
	.loc 1 441
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 441  4 
	.loc 1 441
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 441 (CAST int   1 )
	.loc 1 441
// Line 441  1 
	.loc 1 441
	push 1
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
// Line 442 (CALL assert_expect ((CAST int   442 ):(CAST int   1 ):(CAST int  (> (+  1   4 )  4 )):) )
	.loc 1 442
// Line 442 (CAST int  (> (+  1   4 )  4 ))
	.loc 1 442
// Line 442 (> (+  1   4 )  4 )
	.loc 1 442
// Line 442 (+  1   4 )
	.loc 1 442
// Line 442  1 
	.loc 1 442
	push 1
// Line 442  4 
	.loc 1 442
	push 4
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 442  4 
	.loc 1 442
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 442 (CAST int   1 )
	.loc 1 442
// Line 442  1 
	.loc 1 442
	push 1
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
// Line 443 (CALL assert_expect ((CAST int   443 ):(CAST int   0 ):(CAST int  (< (-  4   1 )  4 )):) )
	.loc 1 443
// Line 443 (CAST int  (< (-  4   1 )  4 ))
	.loc 1 443
// Line 443 (< (-  4   1 )  4 )
	.loc 1 443
// Line 443 (-  4   1 )
	.loc 1 443
// Line 443  4 
	.loc 1 443
	push 4
// Line 443  1 
	.loc 1 443
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 443  4 
	.loc 1 443
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 443 (CAST int   0 )
	.loc 1 443
// Line 443  0 
	.loc 1 443
	push 0
// Line 443 (CAST int   443 )
	.loc 1 443
// Line 443  443 
	.loc 1 443
	push 443
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
// Line 444 (CALL assert_expect ((CAST int   444 ):(CAST int   0 ):(CAST int  (> (-  1   4 )  4 )):) )
	.loc 1 444
// Line 444 (CAST int  (> (-  1   4 )  4 ))
	.loc 1 444
// Line 444 (> (-  1   4 )  4 )
	.loc 1 444
// Line 444 (-  1   4 )
	.loc 1 444
// Line 444  1 
	.loc 1 444
	push 1
// Line 444  4 
	.loc 1 444
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 444  4 
	.loc 1 444
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 444 (CAST int   0 )
	.loc 1 444
// Line 444  0 
	.loc 1 444
	push 0
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
// Line 445 (= (LVAR 44)  0 )
	.loc 1 445
	lea  rax, [rbp - 44]
	push rax
// Line 445  0 
	.loc 1 445
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 446 (CALL assert_expect ((CAST int   446 ):(CAST int   0 ):(CAST int  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 446
// Line 446 (CAST int  (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 446
// Line 446 (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 446
// Line 446  0 
	.loc 1 446
	push 0
	pop  rax
	cmp  eax, 0
	je   .L000294
// Line 446 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 446
// Line 446 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 446
	lea  rax, [rbp - 44]
	push rax
// Line 446 (++ (LVAR 44)  1 )
	.loc 1 446
// Line 446 (LVAR 44)
	.loc 1 446
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 446  1 
	.loc 1 446
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 446  1 
	.loc 1 446
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
// Line 446 (CAST int   0 )
	.loc 1 446
// Line 446  0 
	.loc 1 446
	push 0
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
// Line 447 (CALL assert_expect ((CAST int   447 ):(CAST int   0 ):(CAST int  (LVAR 44)):) )
	.loc 1 447
// Line 447 (CAST int  (LVAR 44))
	.loc 1 447
// Line 447 (LVAR 44)
	.loc 1 447
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 447 (CAST int   0 )
	.loc 1 447
// Line 447  0 
	.loc 1 447
	push 0
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
// Line 448 (CALL assert_expect ((CAST int   448 ):(CAST int   0 ):(CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 448
// Line 448 (CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 448
// Line 448 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 448
// Line 448  1 
	.loc 1 448
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000300
// Line 448 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 448
// Line 448 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 448
	lea  rax, [rbp - 44]
	push rax
// Line 448 (++ (LVAR 44)  1 )
	.loc 1 448
// Line 448 (LVAR 44)
	.loc 1 448
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 448  1 
	.loc 1 448
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 448  1 
	.loc 1 448
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000300
	mov  rax, 1
	jmp  .L000301
.L000300:
	mov  rax, 0
.L000301:
	push  rax
// Line 448 (CAST int   0 )
	.loc 1 448
// Line 448  0 
	.loc 1 448
	push 0
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
// Line 449 (CALL assert_expect ((CAST int   449 ):(CAST int   1 ):(CAST int  (LVAR 44)):) )
	.loc 1 449
// Line 449 (CAST int  (LVAR 44))
	.loc 1 449
// Line 449 (LVAR 44)
	.loc 1 449
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 449 (CAST int   1 )
	.loc 1 449
// Line 449  1 
	.loc 1 449
	push 1
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
// Line 450 (CALL assert_expect ((CAST int   450 ):(CAST int   1 ):(CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 450
// Line 450 (CAST int  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 450
// Line 450 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 450
// Line 450  1 
	.loc 1 450
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000306
// Line 450 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 450
// Line 450 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 450
	lea  rax, [rbp - 44]
	push rax
// Line 450 (++ (LVAR 44)  1 )
	.loc 1 450
// Line 450 (LVAR 44)
	.loc 1 450
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 450  1 
	.loc 1 450
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 450  1 
	.loc 1 450
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000306
	mov  rax, 1
	jmp  .L000307
.L000306:
	mov  rax, 0
.L000307:
	push  rax
// Line 450 (CAST int   1 )
	.loc 1 450
// Line 450  1 
	.loc 1 450
	push 1
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
// Line 451 (CALL assert_expect ((CAST int   451 ):(CAST int   2 ):(CAST int  (LVAR 44)):) )
	.loc 1 451
// Line 451 (CAST int  (LVAR 44))
	.loc 1 451
// Line 451 (LVAR 44)
	.loc 1 451
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 451 (CAST int   2 )
	.loc 1 451
// Line 451  2 
	.loc 1 451
	push 2
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
// Line 452 (CALL assert_expect ((CAST int   452 ):(CAST int   1 ):(CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 452
// Line 452 (CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 452
// Line 452 (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 452
// Line 452  0 
	.loc 1 452
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000312
// Line 452 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 452
// Line 452 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 452
	lea  rax, [rbp - 44]
	push rax
// Line 452 (++ (LVAR 44)  1 )
	.loc 1 452
// Line 452 (LVAR 44)
	.loc 1 452
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 452  1 
	.loc 1 452
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 452  1 
	.loc 1 452
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000312
	mov  rax, 0
	jmp  .L000313
.L000312:
	mov  rax, 1
.L000313:
	push  rax
// Line 452 (CAST int   1 )
	.loc 1 452
// Line 452  1 
	.loc 1 452
	push 1
// Line 452 (CAST int   452 )
	.loc 1 452
// Line 452  452 
	.loc 1 452
	push 452
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
// Line 453 (CALL assert_expect ((CAST int   453 ):(CAST int   3 ):(CAST int  (LVAR 44)):) )
	.loc 1 453
// Line 453 (CAST int  (LVAR 44))
	.loc 1 453
// Line 453 (LVAR 44)
	.loc 1 453
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 453 (CAST int   3 )
	.loc 1 453
// Line 453  3 
	.loc 1 453
	push 3
// Line 453 (CAST int   453 )
	.loc 1 453
// Line 453  453 
	.loc 1 453
	push 453
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
// Line 454 (CALL assert_expect ((CAST int   454 ):(CAST int   1 ):(CAST int  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 454
// Line 454 (CAST int  (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 454
// Line 454 (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 454
// Line 454  1 
	.loc 1 454
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000318
// Line 454 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 454
// Line 454 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 454
	lea  rax, [rbp - 44]
	push rax
// Line 454 (++ (LVAR 44)  1 )
	.loc 1 454
// Line 454 (LVAR 44)
	.loc 1 454
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 454  1 
	.loc 1 454
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 454  1 
	.loc 1 454
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000318
	mov  rax, 0
	jmp  .L000319
.L000318:
	mov  rax, 1
.L000319:
	push  rax
// Line 454 (CAST int   1 )
	.loc 1 454
// Line 454  1 
	.loc 1 454
	push 1
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
// Line 455 (CALL assert_expect ((CAST int   455 ):(CAST int   3 ):(CAST int  (LVAR 44)):) )
	.loc 1 455
// Line 455 (CAST int  (LVAR 44))
	.loc 1 455
// Line 455 (LVAR 44)
	.loc 1 455
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 455 (CAST int   3 )
	.loc 1 455
// Line 455  3 
	.loc 1 455
	push 3
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
// Line 456 (= (LVAR 44)  0 )
	.loc 1 456
	lea  rax, [rbp - 44]
	push rax
// Line 456  0 
	.loc 1 456
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 457 (CALL assert_expect ((CAST int   457 ):(CAST int   0 ):(CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 457
// Line 457 (CAST int  (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 457
// Line 457 (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 457
// Line 457  0 
	.loc 1 457
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000324
// Line 457 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 457
// Line 457 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 457
	lea  rax, [rbp - 44]
	push rax
// Line 457 (++ (LVAR 44)  1 )
	.loc 1 457
// Line 457 (LVAR 44)
	.loc 1 457
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 457  1 
	.loc 1 457
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 457  1 
	.loc 1 457
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000324
	mov  rax, 0
	jmp  .L000325
.L000324:
	mov  rax, 1
.L000325:
	push  rax
// Line 457 (CAST int   0 )
	.loc 1 457
// Line 457  0 
	.loc 1 457
	push 0
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
// Line 458 (CALL assert_expect ((CAST int   458 ):(CAST int   1 ):(CAST int  (LVAR 44)):) )
	.loc 1 458
// Line 458 (CAST int  (LVAR 44))
	.loc 1 458
// Line 458 (LVAR 44)
	.loc 1 458
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 458 (CAST int   1 )
	.loc 1 458
// Line 458  1 
	.loc 1 458
	push 1
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
// Line 459 (= (LVAR 44)  0 )
	.loc 1 459
	lea  rax, [rbp - 44]
	push rax
// Line 459  0 
	.loc 1 459
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 460 (CALL assert_expect ((CAST int   460 ):(CAST int   0 ):(CAST int  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))):) )
	.loc 1 460
// Line 460 (CAST int  (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))))
	.loc 1 460
// Line 460 (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 460
// Line 460  0 
	.loc 1 460
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000330
// Line 460 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 460
// Line 460  1 
	.loc 1 460
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000332
// Line 460 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 460
// Line 460 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 460
	lea  rax, [rbp - 44]
	push rax
// Line 460 (++ (LVAR 44)  1 )
	.loc 1 460
// Line 460 (LVAR 44)
	.loc 1 460
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 460  1 
	.loc 1 460
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 460  1 
	.loc 1 460
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000332
	mov  rax, 1
	jmp  .L000333
.L000332:
	mov  rax, 0
.L000333:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000330
	mov  rax, 0
	jmp  .L000331
.L000330:
	mov  rax, 1
.L000331:
	push  rax
// Line 460 (CAST int   0 )
	.loc 1 460
// Line 460  0 
	.loc 1 460
	push 0
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
// Line 461 (CALL assert_expect ((CAST int   461 ):(CAST int   1 ):(CAST int  (LVAR 44)):) )
	.loc 1 461
// Line 461 (CAST int  (LVAR 44))
	.loc 1 461
// Line 461 (LVAR 44)
	.loc 1 461
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 461 (CAST int   1 )
	.loc 1 461
// Line 461  1 
	.loc 1 461
	push 1
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
// Line 462 (CALL assert_expect ((CAST int   462 ):(CAST int   1 ):(CAST int  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 462
// Line 462 (CAST int  (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 462
// Line 462 (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 462
// Line 462 (&&  1   1 )
	.loc 1 462
// Line 462  1 
	.loc 1 462
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000340
// Line 462  1 
	.loc 1 462
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000340
	mov  rax, 1
	jmp  .L000341
.L000340:
	mov  rax, 0
.L000341:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000338
// Line 462 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 462
// Line 462 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 462
	lea  rax, [rbp - 44]
	push rax
// Line 462 (++ (LVAR 44)  1 )
	.loc 1 462
// Line 462 (LVAR 44)
	.loc 1 462
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 462  1 
	.loc 1 462
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 462  1 
	.loc 1 462
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000338
	mov  rax, 0
	jmp  .L000339
.L000338:
	mov  rax, 1
.L000339:
	push  rax
// Line 462 (CAST int   1 )
	.loc 1 462
// Line 462  1 
	.loc 1 462
	push 1
// Line 462 (CAST int   462 )
	.loc 1 462
// Line 462  462 
	.loc 1 462
	push 462
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
// Line 463 (CALL assert_expect ((CAST int   463 ):(CAST int   1 ):(CAST int  (LVAR 44)):) )
	.loc 1 463
// Line 463 (CAST int  (LVAR 44))
	.loc 1 463
// Line 463 (LVAR 44)
	.loc 1 463
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 463 (CAST int   1 )
	.loc 1 463
// Line 463  1 
	.loc 1 463
	push 1
// Line 463 (CAST int   463 )
	.loc 1 463
// Line 463  463 
	.loc 1 463
	push 463
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
// Line 464 (CALL assert_expect ((CAST int   464 ):(CAST int   1 ):(CAST int  (!  0 )):) )
	.loc 1 464
// Line 464 (CAST int  (!  0 ))
	.loc 1 464
// Line 464 (!  0 )
	.loc 1 464
// Line 464  0 
	.loc 1 464
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000346
	mov  rax, 1
	jmp  .L000347
.L000346:
	mov  rax, 0
.L000347:
	push rax
// Line 464 (CAST int   1 )
	.loc 1 464
// Line 464  1 
	.loc 1 464
	push 1
// Line 464 (CAST int   464 )
	.loc 1 464
// Line 464  464 
	.loc 1 464
	push 464
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
// Line 465 (CALL assert_expect ((CAST int   465 ):(CAST int   0 ):(CAST int  (!  1 )):) )
	.loc 1 465
// Line 465 (CAST int  (!  1 ))
	.loc 1 465
// Line 465 (!  1 )
	.loc 1 465
// Line 465  1 
	.loc 1 465
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000350
	mov  rax, 1
	jmp  .L000351
.L000350:
	mov  rax, 0
.L000351:
	push rax
// Line 465 (CAST int   0 )
	.loc 1 465
// Line 465  0 
	.loc 1 465
	push 0
// Line 465 (CAST int   465 )
	.loc 1 465
// Line 465  465 
	.loc 1 465
	push 465
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
// Line 466 (CALL assert_expect ((CAST int   466 ):(CAST int   0 ):(CAST int  (! (! (!  1 )))):) )
	.loc 1 466
// Line 466 (CAST int  (! (! (!  1 ))))
	.loc 1 466
// Line 466 (! (! (!  1 )))
	.loc 1 466
// Line 466 (! (!  1 ))
	.loc 1 466
// Line 466 (!  1 )
	.loc 1 466
// Line 466  1 
	.loc 1 466
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000358
	mov  rax, 1
	jmp  .L000359
.L000358:
	mov  rax, 0
.L000359:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000356
	mov  rax, 1
	jmp  .L000357
.L000356:
	mov  rax, 0
.L000357:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000354
	mov  rax, 1
	jmp  .L000355
.L000354:
	mov  rax, 0
.L000355:
	push rax
// Line 466 (CAST int   0 )
	.loc 1 466
// Line 466  0 
	.loc 1 466
	push 0
// Line 466 (CAST int   466 )
	.loc 1 466
// Line 466  466 
	.loc 1 466
	push 466
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
// Line 468 (CALL assert_expect ((CAST int   468 ):(CAST int   256 ):(CAST int  (<<  1   8 )):) )
	.loc 1 468
// Line 468 (CAST int  (<<  1   8 ))
	.loc 1 468
// Line 468 (<<  1   8 )
	.loc 1 468
// Line 468  1 
	.loc 1 468
	push 1
// Line 468  8 
	.loc 1 468
	push 8
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 468 (CAST int   256 )
	.loc 1 468
// Line 468  256 
	.loc 1 468
	push 256
// Line 468 (CAST int   468 )
	.loc 1 468
// Line 468  468 
	.loc 1 468
	push 468
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000362
	mov  rax, 0
	call assert_expect
	jmp  .L000363
.L000362:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000363:
	push rax
	pop  rax
// Line 469 (CALL assert_expect ((CAST int   469 ):(CAST int   32 ):(CAST int  (>>  512   4 )):) )
	.loc 1 469
// Line 469 (CAST int  (>>  512   4 ))
	.loc 1 469
// Line 469 (>>  512   4 )
	.loc 1 469
// Line 469  512 
	.loc 1 469
	push 512
// Line 469  4 
	.loc 1 469
	push 4
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 469 (CAST int   32 )
	.loc 1 469
// Line 469  32 
	.loc 1 469
	push 32
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
// Line 473 (CALL assert_expect ((CAST int   473 ):(CAST int   1 ):(CAST int   1 ):) )
	.loc 1 473
// Line 473 (CAST int   1 )
	.loc 1 473
// Line 473  1 
	.loc 1 473
	push 1
// Line 473 (CAST int   1 )
	.loc 1 473
// Line 473  1 
	.loc 1 473
	push 1
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
// Line 474 (CALL assert_expect ((CAST int   474 ):(CAST int   2 ):(CAST int   2 ):) )
	.loc 1 474
// Line 474 (CAST int   2 )
	.loc 1 474
// Line 474  2 
	.loc 1 474
	push 2
// Line 474 (CAST int   2 )
	.loc 1 474
// Line 474  2 
	.loc 1 474
	push 2
// Line 474 (CAST int   474 )
	.loc 1 474
// Line 474  474 
	.loc 1 474
	push 474
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000368
	mov  rax, 0
	call assert_expect
	jmp  .L000369
.L000368:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000369:
	push rax
	pop  rax
// Line 475 (CALL assert_expect ((CAST int   475 ):(CAST int   2 ):(CAST int   2 ):) )
	.loc 1 475
// Line 475 (CAST int   2 )
	.loc 1 475
// Line 475  2 
	.loc 1 475
	push 2
// Line 475 (CAST int   2 )
	.loc 1 475
// Line 475  2 
	.loc 1 475
	push 2
// Line 475 (CAST int   475 )
	.loc 1 475
// Line 475  475 
	.loc 1 475
	push 475
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
// Line 476 (CALL assert_expect ((CAST int   476 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 476
// Line 476 (CAST int   4 )
	.loc 1 476
// Line 476  4 
	.loc 1 476
	push 4
// Line 476 (CAST int   4 )
	.loc 1 476
// Line 476  4 
	.loc 1 476
	push 4
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
// Line 477 (CALL assert_expect ((CAST int   477 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 477
// Line 477 (CAST int   4 )
	.loc 1 477
// Line 477  4 
	.loc 1 477
	push 4
// Line 477 (CAST int   4 )
	.loc 1 477
// Line 477  4 
	.loc 1 477
	push 4
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
	jnz  .L000374
	mov  rax, 0
	call assert_expect
	jmp  .L000375
.L000374:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000375:
	push rax
	pop  rax
// Line 478 (CALL assert_expect ((CAST int   478 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 478
// Line 478 (CAST int   8 )
	.loc 1 478
// Line 478  8 
	.loc 1 478
	push 8
// Line 478 (CAST int   8 )
	.loc 1 478
// Line 478  8 
	.loc 1 478
	push 8
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
// Line 479 (CALL assert_expect ((CAST int   479 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 479
// Line 479 (CAST int   8 )
	.loc 1 479
// Line 479  8 
	.loc 1 479
	push 8
// Line 479 (CAST int   8 )
	.loc 1 479
// Line 479  8 
	.loc 1 479
	push 8
// Line 479 (CAST int   479 )
	.loc 1 479
// Line 479  479 
	.loc 1 479
	push 479
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
// Line 480 (CALL assert_expect ((CAST int   480 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 480
// Line 480 (CAST int   8 )
	.loc 1 480
// Line 480  8 
	.loc 1 480
	push 8
// Line 480 (CAST int   8 )
	.loc 1 480
// Line 480  8 
	.loc 1 480
	push 8
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
	jnz  .L000380
	mov  rax, 0
	call assert_expect
	jmp  .L000381
.L000380:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000381:
	push rax
	pop  rax
// Line 481 (= (LVAR 45)  254 )
	.loc 1 481
	lea  rax, [rbp - 45]
	push rax
// Line 481  254 
	.loc 1 481
	push 254
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 482 (CALL assert_expect ((CAST int   482 ):(CAST int  (-  0   2 )):(CAST int  (LVAR 45)):) )
	.loc 1 482
// Line 482 (CAST int  (LVAR 45))
	.loc 1 482
// Line 482 (LVAR 45)
	.loc 1 482
	lea  rax, [rbp - 45]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rax
	movsx rax, al
	push rax
// Line 482 (CAST int  (-  0   2 ))
	.loc 1 482
// Line 482 (-  0   2 )
	.loc 1 482
// Line 482  0 
	.loc 1 482
	push 0
// Line 482  2 
	.loc 1 482
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 483 (= (LVAR 49) (-  0   100 ))
	.loc 1 483
	lea  rax, [rbp - 49]
	push rax
// Line 483 (-  0   100 )
	.loc 1 483
// Line 483  0 
	.loc 1 483
	push 0
// Line 483  100 
	.loc 1 483
	push 100
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 484 (CALL assert_expect ((CAST int   484 ):(CAST int  (-  0   100 )):(CAST int  (LVAR 49)):) )
	.loc 1 484
// Line 484 (CAST int  (LVAR 49))
	.loc 1 484
// Line 484 (LVAR 49)
	.loc 1 484
	lea  rax, [rbp - 49]
	mov  eax, [rax]
	push rax
// Line 484 (CAST int  (-  0   100 ))
	.loc 1 484
// Line 484 (-  0   100 )
	.loc 1 484
// Line 484  0 
	.loc 1 484
	push 0
// Line 484  100 
	.loc 1 484
	push 100
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 485 (= (LVAR 53) (-  0   100 ))
	.loc 1 485
	lea  rax, [rbp - 53]
	push rax
// Line 485 (-  0   100 )
	.loc 1 485
// Line 485  0 
	.loc 1 485
	push 0
// Line 485  100 
	.loc 1 485
	push 100
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 486 (CALL assert_expect ((CAST int   486 ):(CAST int  (-  0   100 )):(CAST int  (LVAR 53)):) )
	.loc 1 486
// Line 486 (CAST int  (LVAR 53))
	.loc 1 486
// Line 486 (LVAR 53)
	.loc 1 486
	lea  rax, [rbp - 53]
	mov  eax, [rax]
	push rax
// Line 486 (CAST int  (-  0   100 ))
	.loc 1 486
// Line 486 (-  0   100 )
	.loc 1 486
// Line 486  0 
	.loc 1 486
	push 0
// Line 486  100 
	.loc 1 486
	push 100
	pop  rdi
	pop  rax
	sub  rax, rdi
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
// Line 490 (CALL assert_expect ((CAST int   490 ):(CAST int   131585 ):(CAST int  (CAST int   131585 )):) )
	.loc 1 490
// Line 490 (CAST int  (CAST int   131585 ))
	.loc 1 490
// Line 490 (CAST int   131585 )
	.loc 1 490
// Line 490  131585 
	.loc 1 490
	push 131585
// Line 490 (CAST int   131585 )
	.loc 1 490
// Line 490  131585 
	.loc 1 490
	push 131585
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
// Line 491 (CALL assert_expect ((CAST int   491 ):(CAST int   513 ):(CAST int  (CAST short   131585 )):) )
	.loc 1 491
// Line 491 (CAST int  (CAST short   131585 ))
	.loc 1 491
// Line 491 (CAST short   131585 )
	.loc 1 491
// Line 491  131585 
	.loc 1 491
	push 131585
	pop  rax
	movsx rax, ax
	push rax
// Line 491 (CAST int   513 )
	.loc 1 491
// Line 491  513 
	.loc 1 491
	push 513
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
// Line 492 (CALL assert_expect ((CAST int   492 ):(CAST int   1 ):(CAST int  (CAST char   131585 )):) )
	.loc 1 492
// Line 492 (CAST int  (CAST char   131585 ))
	.loc 1 492
// Line 492 (CAST char   131585 )
	.loc 1 492
// Line 492  131585 
	.loc 1 492
	push 131585
	pop  rax
	movsx rax, al
	push rax
// Line 492 (CAST int   1 )
	.loc 1 492
// Line 492  1 
	.loc 1 492
	push 1
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
	jnz  .L000392
	mov  rax, 0
	call assert_expect
	jmp  .L000393
.L000392:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000393:
	push rax
	pop  rax
// Line 493 (CALL assert_expect ((CAST int   493 ):(CAST int   1 ):(CAST int  (CAST long   1 )):) )
	.loc 1 493
// Line 493 (CAST int  (CAST long   1 ))
	.loc 1 493
// Line 493 (CAST long   1 )
	.loc 1 493
// Line 493  1 
	.loc 1 493
	push 1
	pop  rax
	movsx rax, eax
	push rax
// Line 493 (CAST int   1 )
	.loc 1 493
// Line 493  1 
	.loc 1 493
	push 1
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
// Line 495 (CALL assert_expect ((CAST int   495 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 495
// Line 495 (CAST int   4 )
	.loc 1 495
// Line 495  4 
	.loc 1 495
	push 4
// Line 495 (CAST int   4 )
	.loc 1 495
// Line 495  4 
	.loc 1 495
	push 4
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
// Line 496 (CALL assert_expect ((CAST int   496 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 496
// Line 496 (CAST int   4 )
	.loc 1 496
// Line 496  4 
	.loc 1 496
	push 4
// Line 496 (CAST int   4 )
	.loc 1 496
// Line 496  4 
	.loc 1 496
	push 4
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
// Line 497 (CALL assert_expect ((CAST int   497 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 497
// Line 497 (CAST int   4 )
	.loc 1 497
// Line 497  4 
	.loc 1 497
	push 4
// Line 497 (CAST int   4 )
	.loc 1 497
// Line 497  4 
	.loc 1 497
	push 4
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
	jnz  .L000400
	mov  rax, 0
	call assert_expect
	jmp  .L000401
.L000400:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000401:
	push rax
	pop  rax
// Line 498 (CALL assert_expect ((CAST int   498 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 498
// Line 498 (CAST int   4 )
	.loc 1 498
// Line 498  4 
	.loc 1 498
	push 4
// Line 498 (CAST int   4 )
	.loc 1 498
// Line 498  4 
	.loc 1 498
	push 4
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
// Line 500 (CALL assert_expect ((CAST int   500 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 500
// Line 500 (CAST int   8 )
	.loc 1 500
// Line 500  8 
	.loc 1 500
	push 8
// Line 500 (CAST int   8 )
	.loc 1 500
// Line 500  8 
	.loc 1 500
	push 8
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
// Line 501 (CALL assert_expect ((CAST int   501 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 501
// Line 501 (CAST int   8 )
	.loc 1 501
// Line 501  8 
	.loc 1 501
	push 8
// Line 501 (CAST int   8 )
	.loc 1 501
// Line 501  8 
	.loc 1 501
	push 8
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
// Line 502 (CALL assert_expect ((CAST int   502 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 502
// Line 502 (CAST int   8 )
	.loc 1 502
// Line 502  8 
	.loc 1 502
	push 8
// Line 502 (CAST int   8 )
	.loc 1 502
// Line 502  8 
	.loc 1 502
	push 8
// Line 502 (CAST int   502 )
	.loc 1 502
// Line 502  502 
	.loc 1 502
	push 502
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000408
	mov  rax, 0
	call assert_expect
	jmp  .L000409
.L000408:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000409:
	push rax
	pop  rax
// Line 503 (CALL assert_expect ((CAST int   503 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 503
// Line 503 (CAST int   8 )
	.loc 1 503
// Line 503  8 
	.loc 1 503
	push 8
// Line 503 (CAST int   8 )
	.loc 1 503
// Line 503  8 
	.loc 1 503
	push 8
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
// Line 504 (CALL assert_expect ((CAST int   504 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 504
// Line 504 (CAST int   8 )
	.loc 1 504
// Line 504  8 
	.loc 1 504
	push 8
// Line 504 (CAST int   8 )
	.loc 1 504
// Line 504  8 
	.loc 1 504
	push 8
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
	jnz  .L000412
	mov  rax, 0
	call assert_expect
	jmp  .L000413
.L000412:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000413:
	push rax
	pop  rax
// Line 505 (CALL assert_expect ((CAST int   505 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 505
// Line 505 (CAST int   8 )
	.loc 1 505
// Line 505  8 
	.loc 1 505
	push 8
// Line 505 (CAST int   8 )
	.loc 1 505
// Line 505  8 
	.loc 1 505
	push 8
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
// Line 506 (CALL assert_expect ((CAST int   506 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 506
// Line 506 (CAST int   8 )
	.loc 1 506
// Line 506  8 
	.loc 1 506
	push 8
// Line 506 (CAST int   8 )
	.loc 1 506
// Line 506  8 
	.loc 1 506
	push 8
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
	jnz  .L000416
	mov  rax, 0
	call assert_expect
	jmp  .L000417
.L000416:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000417:
	push rax
	pop  rax
// Line 507 (CALL assert_expect ((CAST int   507 ):(CAST int   8 ):(CAST int   8 ):) )
	.loc 1 507
// Line 507 (CAST int   8 )
	.loc 1 507
// Line 507  8 
	.loc 1 507
	push 8
// Line 507 (CAST int   8 )
	.loc 1 507
// Line 507  8 
	.loc 1 507
	push 8
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
// Line 509 (CALL assert_expect ((CAST int   509 ):(CAST int  (CAST long  (-  0   5 ))):(CAST int  (+ (-  0   10 ) (CAST long   5 ))):) )
	.loc 1 509
// Line 509 (CAST int  (+ (-  0   10 ) (CAST long   5 )))
	.loc 1 509
// Line 509 (+ (-  0   10 ) (CAST long   5 ))
	.loc 1 509
// Line 509 (-  0   10 )
	.loc 1 509
// Line 509  0 
	.loc 1 509
	push 0
// Line 509  10 
	.loc 1 509
	push 10
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 509 (CAST long   5 )
	.loc 1 509
// Line 509  5 
	.loc 1 509
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 509 (CAST int  (CAST long  (-  0   5 )))
	.loc 1 509
// Line 509 (CAST long  (-  0   5 ))
	.loc 1 509
// Line 509 (-  0   5 )
	.loc 1 509
// Line 509  0 
	.loc 1 509
	push 0
// Line 509  5 
	.loc 1 509
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
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
// Line 510 (CALL assert_expect ((CAST int   510 ):(CAST int  (CAST long  (-  0   15 ))):(CAST int  (- (-  0   10 ) (CAST long   5 ))):) )
	.loc 1 510
// Line 510 (CAST int  (- (-  0   10 ) (CAST long   5 )))
	.loc 1 510
// Line 510 (- (-  0   10 ) (CAST long   5 ))
	.loc 1 510
// Line 510 (-  0   10 )
	.loc 1 510
// Line 510  0 
	.loc 1 510
	push 0
// Line 510  10 
	.loc 1 510
	push 10
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 510 (CAST long   5 )
	.loc 1 510
// Line 510  5 
	.loc 1 510
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 510 (CAST int  (CAST long  (-  0   15 )))
	.loc 1 510
// Line 510 (CAST long  (-  0   15 ))
	.loc 1 510
// Line 510 (-  0   15 )
	.loc 1 510
// Line 510  0 
	.loc 1 510
	push 0
// Line 510  15 
	.loc 1 510
	push 15
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
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
// Line 511 (CALL assert_expect ((CAST int   511 ):(CAST int  (CAST long  (-  0   50 ))):(CAST int  (* (-  0   10 ) (CAST long   5 ))):) )
	.loc 1 511
// Line 511 (CAST int  (* (-  0   10 ) (CAST long   5 )))
	.loc 1 511
// Line 511 (* (-  0   10 ) (CAST long   5 ))
	.loc 1 511
// Line 511 (-  0   10 )
	.loc 1 511
// Line 511  0 
	.loc 1 511
	push 0
// Line 511  10 
	.loc 1 511
	push 10
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 511 (CAST long   5 )
	.loc 1 511
// Line 511  5 
	.loc 1 511
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 511 (CAST int  (CAST long  (-  0   50 )))
	.loc 1 511
// Line 511 (CAST long  (-  0   50 ))
	.loc 1 511
// Line 511 (-  0   50 )
	.loc 1 511
// Line 511  0 
	.loc 1 511
	push 0
// Line 511  50 
	.loc 1 511
	push 50
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
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
// Line 512 (CALL assert_expect ((CAST int   512 ):(CAST int  (CAST long  (-  0   2 ))):(CAST int  (/ (-  0   10 ) (CAST long   5 ))):) )
	.loc 1 512
// Line 512 (CAST int  (/ (-  0   10 ) (CAST long   5 )))
	.loc 1 512
// Line 512 (/ (-  0   10 ) (CAST long   5 ))
	.loc 1 512
// Line 512 (-  0   10 )
	.loc 1 512
// Line 512  0 
	.loc 1 512
	push 0
// Line 512  10 
	.loc 1 512
	push 10
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 512 (CAST long   5 )
	.loc 1 512
// Line 512  5 
	.loc 1 512
	push 5
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 512 (CAST int  (CAST long  (-  0   2 )))
	.loc 1 512
// Line 512 (CAST long  (-  0   2 ))
	.loc 1 512
// Line 512 (-  0   2 )
	.loc 1 512
// Line 512  0 
	.loc 1 512
	push 0
// Line 512  2 
	.loc 1 512
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
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
// Line 514 (CALL assert_expect ((CAST int   514 ):(CAST int   1 ):(CAST int  (< (CAST long  (-  0   1 )) (-  0   2 ))):) )
	.loc 1 514
// Line 514 (CAST int  (< (CAST long  (-  0   1 )) (-  0   2 )))
	.loc 1 514
// Line 514 (< (CAST long  (-  0   1 )) (-  0   2 ))
	.loc 1 514
// Line 514 (CAST long  (-  0   1 ))
	.loc 1 514
// Line 514 (-  0   1 )
	.loc 1 514
// Line 514  0 
	.loc 1 514
	push 0
// Line 514  1 
	.loc 1 514
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 514 (-  0   2 )
	.loc 1 514
// Line 514  0 
	.loc 1 514
	push 0
// Line 514  2 
	.loc 1 514
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 514 (CAST int   1 )
	.loc 1 514
// Line 514  1 
	.loc 1 514
	push 1
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
// Line 515 (CALL assert_expect ((CAST int   515 ):(CAST int   1 ):(CAST int  (<= (CAST long  (-  0   1 )) (-  0   2 ))):) )
	.loc 1 515
// Line 515 (CAST int  (<= (CAST long  (-  0   1 )) (-  0   2 )))
	.loc 1 515
// Line 515 (<= (CAST long  (-  0   1 )) (-  0   2 ))
	.loc 1 515
// Line 515 (CAST long  (-  0   1 ))
	.loc 1 515
// Line 515 (-  0   1 )
	.loc 1 515
// Line 515  0 
	.loc 1 515
	push 0
// Line 515  1 
	.loc 1 515
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 515 (-  0   2 )
	.loc 1 515
// Line 515  0 
	.loc 1 515
	push 0
// Line 515  2 
	.loc 1 515
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
// Line 515 (CAST int   1 )
	.loc 1 515
// Line 515  1 
	.loc 1 515
	push 1
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
// Line 516 (CALL assert_expect ((CAST int   516 ):(CAST int   0 ):(CAST int  (> (-  0   2 ) (CAST long  (-  0   1 )))):) )
	.loc 1 516
// Line 516 (CAST int  (> (-  0   2 ) (CAST long  (-  0   1 ))))
	.loc 1 516
// Line 516 (> (-  0   2 ) (CAST long  (-  0   1 )))
	.loc 1 516
// Line 516 (-  0   2 )
	.loc 1 516
// Line 516  0 
	.loc 1 516
	push 0
// Line 516  2 
	.loc 1 516
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 516 (CAST long  (-  0   1 ))
	.loc 1 516
// Line 516 (-  0   1 )
	.loc 1 516
// Line 516  0 
	.loc 1 516
	push 0
// Line 516  1 
	.loc 1 516
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 516 (CAST int   0 )
	.loc 1 516
// Line 516  0 
	.loc 1 516
	push 0
// Line 516 (CAST int   516 )
	.loc 1 516
// Line 516  516 
	.loc 1 516
	push 516
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
// Line 517 (CALL assert_expect ((CAST int   517 ):(CAST int   0 ):(CAST int  (>= (-  0   2 ) (CAST long  (-  0   1 )))):) )
	.loc 1 517
// Line 517 (CAST int  (>= (-  0   2 ) (CAST long  (-  0   1 ))))
	.loc 1 517
// Line 517 (>= (-  0   2 ) (CAST long  (-  0   1 )))
	.loc 1 517
// Line 517 (-  0   2 )
	.loc 1 517
// Line 517  0 
	.loc 1 517
	push 0
// Line 517  2 
	.loc 1 517
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 517 (CAST long  (-  0   1 ))
	.loc 1 517
// Line 517 (-  0   1 )
	.loc 1 517
// Line 517  0 
	.loc 1 517
	push 0
// Line 517  1 
	.loc 1 517
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 517 (CAST int   0 )
	.loc 1 517
// Line 517  0 
	.loc 1 517
	push 0
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
// Line 519 (CALL assert_expect ((CAST int   519 ):(CAST int   1 ):(CAST int  (< (-  0   1 ) (CAST long  (-  0   2 )))):) )
	.loc 1 519
// Line 519 (CAST int  (< (-  0   1 ) (CAST long  (-  0   2 ))))
	.loc 1 519
// Line 519 (< (-  0   1 ) (CAST long  (-  0   2 )))
	.loc 1 519
// Line 519 (-  0   1 )
	.loc 1 519
// Line 519  0 
	.loc 1 519
	push 0
// Line 519  1 
	.loc 1 519
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 519 (CAST long  (-  0   2 ))
	.loc 1 519
// Line 519 (-  0   2 )
	.loc 1 519
// Line 519  0 
	.loc 1 519
	push 0
// Line 519  2 
	.loc 1 519
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 519 (CAST int   1 )
	.loc 1 519
// Line 519  1 
	.loc 1 519
	push 1
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
// Line 520 (CALL assert_expect ((CAST int   520 ):(CAST int   1 ):(CAST int  (<= (-  0   1 ) (CAST long  (-  0   2 )))):) )
	.loc 1 520
// Line 520 (CAST int  (<= (-  0   1 ) (CAST long  (-  0   2 ))))
	.loc 1 520
// Line 520 (<= (-  0   1 ) (CAST long  (-  0   2 )))
	.loc 1 520
// Line 520 (-  0   1 )
	.loc 1 520
// Line 520  0 
	.loc 1 520
	push 0
// Line 520  1 
	.loc 1 520
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 520 (CAST long  (-  0   2 ))
	.loc 1 520
// Line 520 (-  0   2 )
	.loc 1 520
// Line 520  0 
	.loc 1 520
	push 0
// Line 520  2 
	.loc 1 520
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 520 (CAST int   1 )
	.loc 1 520
// Line 520  1 
	.loc 1 520
	push 1
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
// Line 521 (CALL assert_expect ((CAST int   521 ):(CAST int   0 ):(CAST int  (> (CAST long  (-  0   2 )) (-  0   1 ))):) )
	.loc 1 521
// Line 521 (CAST int  (> (CAST long  (-  0   2 )) (-  0   1 )))
	.loc 1 521
// Line 521 (> (CAST long  (-  0   2 )) (-  0   1 ))
	.loc 1 521
// Line 521 (CAST long  (-  0   2 ))
	.loc 1 521
// Line 521 (-  0   2 )
	.loc 1 521
// Line 521  0 
	.loc 1 521
	push 0
// Line 521  2 
	.loc 1 521
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 521 (-  0   1 )
	.loc 1 521
// Line 521  0 
	.loc 1 521
	push 0
// Line 521  1 
	.loc 1 521
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 521 (CAST int   0 )
	.loc 1 521
// Line 521  0 
	.loc 1 521
	push 0
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
// Line 522 (CALL assert_expect ((CAST int   522 ):(CAST int   0 ):(CAST int  (>= (CAST long  (-  0   2 )) (-  0   1 ))):) )
	.loc 1 522
// Line 522 (CAST int  (>= (CAST long  (-  0   2 )) (-  0   1 )))
	.loc 1 522
// Line 522 (>= (CAST long  (-  0   2 )) (-  0   1 ))
	.loc 1 522
// Line 522 (CAST long  (-  0   2 ))
	.loc 1 522
// Line 522 (-  0   2 )
	.loc 1 522
// Line 522  0 
	.loc 1 522
	push 0
// Line 522  2 
	.loc 1 522
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 522 (-  0   1 )
	.loc 1 522
// Line 522  0 
	.loc 1 522
	push 0
// Line 522  1 
	.loc 1 522
	push 1
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
// Line 522 (CAST int   0 )
	.loc 1 522
// Line 522  0 
	.loc 1 522
	push 0
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
// Line 524 (CALL assert_expect ((CAST int   524 ):(CAST int   0 ):(CAST int  (+ (+  2147483647   2147483647 )  2 )):) )
	.loc 1 524
// Line 524 (CAST int  (+ (+  2147483647   2147483647 )  2 ))
	.loc 1 524
// Line 524 (+ (+  2147483647   2147483647 )  2 )
	.loc 1 524
// Line 524 (+  2147483647   2147483647 )
	.loc 1 524
// Line 524  2147483647 
	.loc 1 524
	push 2147483647
// Line 524  2147483647 
	.loc 1 524
	push 2147483647
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 524  2 
	.loc 1 524
	push 2
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 524 (CAST int   0 )
	.loc 1 524
// Line 524  0 
	.loc 1 524
	push 0
// Line 524 (CAST int   524 )
	.loc 1 524
// Line 524  524 
	.loc 1 524
	push 524
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
// Line 526 (= (LVAR 77) (-  0   1 ))
	.loc 1 526
	lea  rax, [rbp - 77]
	push rax
// Line 526 (-  0   1 )
	.loc 1 526
// Line 526  0 
	.loc 1 526
	push 0
// Line 526  1 
	.loc 1 526
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 527 (CALL assert_expect ((CAST int   527 ):(CAST int  (CAST long  (-  0   1 ))):(CAST int  (LVAR 77)):) )
	.loc 1 527
// Line 527 (CAST int  (LVAR 77))
	.loc 1 527
// Line 527 (LVAR 77)
	.loc 1 527
	lea  rax, [rbp - 77]
	mov  rax, [rax]
	push rax
// Line 527 (CAST int  (CAST long  (-  0   1 )))
	.loc 1 527
// Line 527 (CAST long  (-  0   1 ))
	.loc 1 527
// Line 527 (-  0   1 )
	.loc 1 527
// Line 527  0 
	.loc 1 527
	push 0
// Line 527  1 
	.loc 1 527
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	movsx rax, eax
	push rax
// Line 527 (CAST int   527 )
	.loc 1 527
// Line 527  527 
	.loc 1 527
	push 527
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
// Line 531 (= (LVAR 81)  10 )
	.loc 1 531
	lea  rax, [rbp - 81]
	push rax
// Line 531  10 
	.loc 1 531
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 532 (CALL assert_expect ((CAST int   532 ):(CAST int   15 ):(CAST int  (= (LVAR 81) (+= (LVAR 81)  5 ))):) )
	.loc 1 532
// Line 532 (CAST int  (= (LVAR 81) (+= (LVAR 81)  5 )))
	.loc 1 532
// Line 532 (= (LVAR 81) (+= (LVAR 81)  5 ))
	.loc 1 532
	lea  rax, [rbp - 81]
	push rax
// Line 532 (+= (LVAR 81)  5 )
	.loc 1 532
// Line 532 (LVAR 81)
	.loc 1 532
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 532  5 
	.loc 1 532
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 532 (CAST int   15 )
	.loc 1 532
// Line 532  15 
	.loc 1 532
	push 15
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
// Line 533 (CALL assert_expect ((CAST int   533 ):(CAST int   15 ):(CAST int  (LVAR 81)):) )
	.loc 1 533
// Line 533 (CAST int  (LVAR 81))
	.loc 1 533
// Line 533 (LVAR 81)
	.loc 1 533
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 533 (CAST int   15 )
	.loc 1 533
// Line 533  15 
	.loc 1 533
	push 15
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
// Line 534 (CALL assert_expect ((CAST int   534 ):(CAST int   8 ):(CAST int  (= (LVAR 81) (-= (LVAR 81)  7 ))):) )
	.loc 1 534
// Line 534 (CAST int  (= (LVAR 81) (-= (LVAR 81)  7 )))
	.loc 1 534
// Line 534 (= (LVAR 81) (-= (LVAR 81)  7 ))
	.loc 1 534
	lea  rax, [rbp - 81]
	push rax
// Line 534 (-= (LVAR 81)  7 )
	.loc 1 534
// Line 534 (LVAR 81)
	.loc 1 534
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 534  7 
	.loc 1 534
	push 7
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 534 (CAST int   8 )
	.loc 1 534
// Line 534  8 
	.loc 1 534
	push 8
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
// Line 535 (CALL assert_expect ((CAST int   535 ):(CAST int   8 ):(CAST int  (LVAR 81)):) )
	.loc 1 535
// Line 535 (CAST int  (LVAR 81))
	.loc 1 535
// Line 535 (LVAR 81)
	.loc 1 535
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 535 (CAST int   8 )
	.loc 1 535
// Line 535  8 
	.loc 1 535
	push 8
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
// Line 536 (CALL assert_expect ((CAST int   536 ):(CAST int   40 ):(CAST int  (= (LVAR 81) (*= (LVAR 81)  5 ))):) )
	.loc 1 536
// Line 536 (CAST int  (= (LVAR 81) (*= (LVAR 81)  5 )))
	.loc 1 536
// Line 536 (= (LVAR 81) (*= (LVAR 81)  5 ))
	.loc 1 536
	lea  rax, [rbp - 81]
	push rax
// Line 536 (*= (LVAR 81)  5 )
	.loc 1 536
// Line 536 (LVAR 81)
	.loc 1 536
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 536  5 
	.loc 1 536
	push 5
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 536 (CAST int   40 )
	.loc 1 536
// Line 536  40 
	.loc 1 536
	push 40
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
// Line 537 (CALL assert_expect ((CAST int   537 ):(CAST int   40 ):(CAST int  (LVAR 81)):) )
	.loc 1 537
// Line 537 (CAST int  (LVAR 81))
	.loc 1 537
// Line 537 (LVAR 81)
	.loc 1 537
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 537 (CAST int   40 )
	.loc 1 537
// Line 537  40 
	.loc 1 537
	push 40
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
// Line 538 (CALL assert_expect ((CAST int   538 ):(CAST int   4 ):(CAST int  (= (LVAR 81) (/= (LVAR 81)  10 ))):) )
	.loc 1 538
// Line 538 (CAST int  (= (LVAR 81) (/= (LVAR 81)  10 )))
	.loc 1 538
// Line 538 (= (LVAR 81) (/= (LVAR 81)  10 ))
	.loc 1 538
	lea  rax, [rbp - 81]
	push rax
// Line 538 (/= (LVAR 81)  10 )
	.loc 1 538
// Line 538 (LVAR 81)
	.loc 1 538
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 538  10 
	.loc 1 538
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
// Line 538 (CAST int   4 )
	.loc 1 538
// Line 538  4 
	.loc 1 538
	push 4
// Line 538 (CAST int   538 )
	.loc 1 538
// Line 538  538 
	.loc 1 538
	push 538
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
// Line 539 (CALL assert_expect ((CAST int   539 ):(CAST int   4 ):(CAST int  (LVAR 81)):) )
	.loc 1 539
// Line 539 (CAST int  (LVAR 81))
	.loc 1 539
// Line 539 (LVAR 81)
	.loc 1 539
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 539 (CAST int   4 )
	.loc 1 539
// Line 539  4 
	.loc 1 539
	push 4
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
// Line 542 (CALL assert_expect ((CAST int   542 ):(CAST int   4 ):(CAST int  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )):) )
	.loc 1 542
// Line 542 (CAST int  (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 ))
	.loc 1 542
// Line 542 (++ (= (LVAR 81) (++ (LVAR 81)  1 ))  1 )
	.loc 1 542
// Line 542 (= (LVAR 81) (++ (LVAR 81)  1 ))
	.loc 1 542
	lea  rax, [rbp - 81]
	push rax
// Line 542 (++ (LVAR 81)  1 )
	.loc 1 542
// Line 542 (LVAR 81)
	.loc 1 542
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 542  1 
	.loc 1 542
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 542  1 
	.loc 1 542
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 542 (CAST int   4 )
	.loc 1 542
// Line 542  4 
	.loc 1 542
	push 4
// Line 542 (CAST int   542 )
	.loc 1 542
// Line 542  542 
	.loc 1 542
	push 542
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
// Line 543 (CALL assert_expect ((CAST int   543 ):(CAST int   5 ):(CAST int  (LVAR 81)):) )
	.loc 1 543
// Line 543 (CAST int  (LVAR 81))
	.loc 1 543
// Line 543 (LVAR 81)
	.loc 1 543
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 543 (CAST int   5 )
	.loc 1 543
// Line 543  5 
	.loc 1 543
	push 5
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
// Line 544 (CALL assert_expect ((CAST int   544 ):(CAST int   5 ):(CAST int  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )):) )
	.loc 1 544
// Line 544 (CAST int  (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 ))
	.loc 1 544
// Line 544 (-- (= (LVAR 81) (-- (LVAR 81)  1 ))  1 )
	.loc 1 544
// Line 544 (= (LVAR 81) (-- (LVAR 81)  1 ))
	.loc 1 544
	lea  rax, [rbp - 81]
	push rax
// Line 544 (-- (LVAR 81)  1 )
	.loc 1 544
// Line 544 (LVAR 81)
	.loc 1 544
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 544  1 
	.loc 1 544
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 544  1 
	.loc 1 544
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 544 (CAST int   5 )
	.loc 1 544
// Line 544  5 
	.loc 1 544
	push 5
// Line 544 (CAST int   544 )
	.loc 1 544
// Line 544  544 
	.loc 1 544
	push 544
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
// Line 545 (CALL assert_expect ((CAST int   545 ):(CAST int   4 ):(CAST int  (LVAR 81)):) )
	.loc 1 545
// Line 545 (CAST int  (LVAR 81))
	.loc 1 545
// Line 545 (LVAR 81)
	.loc 1 545
	lea  rax, [rbp - 81]
	mov  eax, [rax]
	push rax
// Line 545 (CAST int   4 )
	.loc 1 545
// Line 545  4 
	.loc 1 545
	push 4
// Line 545 (CAST int   545 )
	.loc 1 545
// Line 545  545 
	.loc 1 545
	push 545
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
// Line 549 (= (LVAR 85) (/  100  (LVAR 81)))
	.loc 1 549
	lea  rax, [rbp - 85]
	push rax
// Line 549 (/  100  (LVAR 81))
	.loc 1 549
// Line 549  100 
	.loc 1 549
	push 100
// Line 549 (LVAR 81)
	.loc 1 549
	lea  rax, [rbp - 81]
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
// Line 550 (CALL assert_expect ((CAST int   550 ):(CAST int   25 ):(CAST int  (LVAR 85)):) )
	.loc 1 550
// Line 550 (CAST int  (LVAR 85))
	.loc 1 550
// Line 550 (LVAR 85)
	.loc 1 550
	lea  rax, [rbp - 85]
	mov  eax, [rax]
	push rax
// Line 550 (CAST int   25 )
	.loc 1 550
// Line 550  25 
	.loc 1 550
	push 25
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
// Line 553 (= (LVAR 89)  77 )
	.loc 1 553
	lea  rax, [rbp - 89]
	push rax
// Line 553  77 
	.loc 1 553
	push 77
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 558 (IF (== (LVAR 89)  77 ) (= (LVAR 89)  55 ) (= (LVAR 89)  66 ))
	.loc 1 558
// Line 554 (== (LVAR 89)  77 )
	.loc 1 554
// Line 554 (LVAR 89)
	.loc 1 554
	lea  rax, [rbp - 89]
	mov  eax, [rax]
	push rax
// Line 554  77 
	.loc 1 554
	push 77
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000474
// Line 555 (= (LVAR 89)  55 )
	.loc 1 555
	lea  rax, [rbp - 89]
	push rax
// Line 555  55 
	.loc 1 555
	push 55
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000475
.L000474:
// Line 557 (= (LVAR 89)  66 )
	.loc 1 557
	lea  rax, [rbp - 89]
	push rax
// Line 557  66 
	.loc 1 557
	push 66
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000475:
// Line 558 (CALL assert_expect ((CAST int   558 ):(CAST int   55 ):(CAST int  (LVAR 89)):) )
	.loc 1 558
// Line 558 (CAST int  (LVAR 89))
	.loc 1 558
// Line 558 (LVAR 89)
	.loc 1 558
	lea  rax, [rbp - 89]
	mov  eax, [rax]
	push rax
// Line 558 (CAST int   55 )
	.loc 1 558
// Line 558  55 
	.loc 1 558
	push 55
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
// Line 559 (CALL assert_expect ((CAST int   559 ):(CAST int   1346269 ):(CAST int  (CALL fibo ((CAST int   30 ):) )):) )
	.loc 1 559
// Line 559 (CAST int  (CALL fibo ((CAST int   30 ):) ))
	.loc 1 559
// Line 559 (CALL fibo ((CAST int   30 ):) )
	.loc 1 559
// Line 559 (CAST int   30 )
	.loc 1 559
// Line 559  30 
	.loc 1 559
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000478
	mov  rax, 0
	call fibo
	jmp  .L000479
.L000478:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000479:
	push rax
// Line 559 (CAST int   1346269 )
	.loc 1 559
// Line 559  1346269 
	.loc 1 559
	push 1346269
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
// Line 560 (CALL array_global () )
	.loc 1 560
	mov  rax, rsp
	and  rax, 15
	jnz  .L000482
	mov  rax, 0
	call array_global
	jmp  .L000483
.L000482:
	sub  rsp, 8
	mov  rax, 0
	call array_global
	add  rsp, 8
.L000483:
	push rax
	pop  rax
// Line 561 (CALL array_local () )
	.loc 1 561
	mov  rax, rsp
	and  rax, 15
	jnz  .L000484
	mov  rax, 0
	call array_local
	jmp  .L000485
.L000484:
	sub  rsp, 8
	mov  rax, 0
	call array_local
	add  rsp, 8
.L000485:
	push rax
	pop  rax
// Line 562 (CALL string () )
	.loc 1 562
	mov  rax, rsp
	and  rax, 15
	jnz  .L000486
	mov  rax, 0
	call string
	jmp  .L000487
.L000486:
	sub  rsp, 8
	mov  rax, 0
	call string
	add  rsp, 8
.L000487:
	push rax
	pop  rax
// Line 563 (CALL block_scope () )
	.loc 1 563
	mov  rax, rsp
	and  rax, 15
	jnz  .L000488
	mov  rax, 0
	call block_scope
	jmp  .L000489
.L000488:
	sub  rsp, 8
	mov  rax, 0
	call block_scope
	add  rsp, 8
.L000489:
	push rax
	pop  rax
// Line 564 (CALL for_ () )
	.loc 1 564
	mov  rax, rsp
	and  rax, 15
	jnz  .L000490
	mov  rax, 0
	call for_
	jmp  .L000491
.L000490:
	sub  rsp, 8
	mov  rax, 0
	call for_
	add  rsp, 8
.L000491:
	push rax
	pop  rax
// Line 565 (CALL list_ () )
	.loc 1 565
	mov  rax, rsp
	and  rax, 15
	jnz  .L000492
	mov  rax, 0
	call list_
	jmp  .L000493
.L000492:
	sub  rsp, 8
	mov  rax, 0
	call list_
	add  rsp, 8
.L000493:
	push rax
	pop  rax
// Line 566 (CALL struct_ () )
	.loc 1 566
	mov  rax, rsp
	and  rax, 15
	jnz  .L000494
	mov  rax, 0
	call struct_
	jmp  .L000495
.L000494:
	sub  rsp, 8
	mov  rax, 0
	call struct_
	add  rsp, 8
.L000495:
	push rax
	pop  rax
// Line 581 (CALL assert_expect ((CAST int   581 ):(CAST int   2 ):(CAST int   2 ):) )
	.loc 1 581
// Line 581 (CAST int   2 )
	.loc 1 581
// Line 581  2 
	.loc 1 581
	push 2
// Line 581 (CAST int   2 )
	.loc 1 581
// Line 581  2 
	.loc 1 581
	push 2
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
// Line 582 (CALL assert_expect ((CAST int   582 ):(CAST int   4 ):(CAST int   4 ):) )
	.loc 1 582
// Line 582 (CAST int   4 )
	.loc 1 582
// Line 582  4 
	.loc 1 582
	push 4
// Line 582 (CAST int   4 )
	.loc 1 582
// Line 582  4 
	.loc 1 582
	push 4
// Line 582 (CAST int   582 )
	.loc 1 582
// Line 582  582 
	.loc 1 582
	push 582
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
// Line 583 (CALL assert_expect ((CAST int   583 ):(CAST int   10 ):(CAST int   10 ):) )
	.loc 1 583
// Line 583 (CAST int   10 )
	.loc 1 583
// Line 583  10 
	.loc 1 583
	push 10
// Line 583 (CAST int   10 )
	.loc 1 583
// Line 583  10 
	.loc 1 583
	push 10
// Line 583 (CAST int   583 )
	.loc 1 583
// Line 583  583 
	.loc 1 583
	push 583
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
// Line 584 (CALL assert_expect ((CAST int   584 ):(CAST int   12 ):(CAST int   12 ):) )
	.loc 1 584
// Line 584 (CAST int   12 )
	.loc 1 584
// Line 584  12 
	.loc 1 584
	push 12
// Line 584 (CAST int   12 )
	.loc 1 584
// Line 584  12 
	.loc 1 584
	push 12
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
// Line 586 (CALL assert_expect ((CAST int   586 ):(CAST int   11 ):(CAST int  (CALL switch_ ((CAST int   1 ):) )):) )
	.loc 1 586
// Line 586 (CAST int  (CALL switch_ ((CAST int   1 ):) ))
	.loc 1 586
// Line 586 (CALL switch_ ((CAST int   1 ):) )
	.loc 1 586
// Line 586 (CAST int   1 )
	.loc 1 586
// Line 586  1 
	.loc 1 586
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000504
	mov  rax, 0
	call switch_
	jmp  .L000505
.L000504:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000505:
	push rax
// Line 586 (CAST int   11 )
	.loc 1 586
// Line 586  11 
	.loc 1 586
	push 11
// Line 586 (CAST int   586 )
	.loc 1 586
// Line 586  586 
	.loc 1 586
	push 586
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
// Line 587 (CALL assert_expect ((CAST int   587 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   2 ):) )):) )
	.loc 1 587
// Line 587 (CAST int  (CALL switch_ ((CAST int   2 ):) ))
	.loc 1 587
// Line 587 (CALL switch_ ((CAST int   2 ):) )
	.loc 1 587
// Line 587 (CAST int   2 )
	.loc 1 587
// Line 587  2 
	.loc 1 587
	push 2
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000508
	mov  rax, 0
	call switch_
	jmp  .L000509
.L000508:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000509:
	push rax
// Line 587 (CAST int   13 )
	.loc 1 587
// Line 587  13 
	.loc 1 587
	push 13
// Line 587 (CAST int   587 )
	.loc 1 587
// Line 587  587 
	.loc 1 587
	push 587
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
// Line 588 (CALL assert_expect ((CAST int   588 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   3 ):) )):) )
	.loc 1 588
// Line 588 (CAST int  (CALL switch_ ((CAST int   3 ):) ))
	.loc 1 588
// Line 588 (CALL switch_ ((CAST int   3 ):) )
	.loc 1 588
// Line 588 (CAST int   3 )
	.loc 1 588
// Line 588  3 
	.loc 1 588
	push 3
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000512
	mov  rax, 0
	call switch_
	jmp  .L000513
.L000512:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000513:
	push rax
// Line 588 (CAST int   13 )
	.loc 1 588
// Line 588  13 
	.loc 1 588
	push 13
// Line 588 (CAST int   588 )
	.loc 1 588
// Line 588  588 
	.loc 1 588
	push 588
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
// Line 589 (CALL assert_expect ((CAST int   589 ):(CAST int   13 ):(CAST int  (CALL switch_ ((CAST int   4 ):) )):) )
	.loc 1 589
// Line 589 (CAST int  (CALL switch_ ((CAST int   4 ):) ))
	.loc 1 589
// Line 589 (CALL switch_ ((CAST int   4 ):) )
	.loc 1 589
// Line 589 (CAST int   4 )
	.loc 1 589
// Line 589  4 
	.loc 1 589
	push 4
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000516
	mov  rax, 0
	call switch_
	jmp  .L000517
.L000516:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000517:
	push rax
// Line 589 (CAST int   13 )
	.loc 1 589
// Line 589  13 
	.loc 1 589
	push 13
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
// Line 590 (CALL assert_expect ((CAST int   590 ):(CAST int   15 ):(CAST int  (CALL switch_ ((CAST int   5 ):) )):) )
	.loc 1 590
// Line 590 (CAST int  (CALL switch_ ((CAST int   5 ):) ))
	.loc 1 590
// Line 590 (CALL switch_ ((CAST int   5 ):) )
	.loc 1 590
// Line 590 (CAST int   5 )
	.loc 1 590
// Line 590  5 
	.loc 1 590
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000520
	mov  rax, 0
	call switch_
	jmp  .L000521
.L000520:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000521:
	push rax
// Line 590 (CAST int   15 )
	.loc 1 590
// Line 590  15 
	.loc 1 590
	push 15
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
// Line 591 (CALL assert_expect ((CAST int   591 ):(CAST int   15 ):(CAST int  (CALL switch_ ((CAST int   6 ):) )):) )
	.loc 1 591
// Line 591 (CAST int  (CALL switch_ ((CAST int   6 ):) ))
	.loc 1 591
// Line 591 (CALL switch_ ((CAST int   6 ):) )
	.loc 1 591
// Line 591 (CAST int   6 )
	.loc 1 591
// Line 591  6 
	.loc 1 591
	push 6
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000524
	mov  rax, 0
	call switch_
	jmp  .L000525
.L000524:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000525:
	push rax
// Line 591 (CAST int   15 )
	.loc 1 591
// Line 591  15 
	.loc 1 591
	push 15
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
// Line 594 (CALL assert_expect ((CAST int   594 ):(CAST int   11 ):(CAST int  (CALL switch2_ ((CAST char   97 ):) )):) )
	.loc 1 594
// Line 594 (CAST int  (CALL switch2_ ((CAST char   97 ):) ))
	.loc 1 594
// Line 594 (CALL switch2_ ((CAST char   97 ):) )
	.loc 1 594
// Line 594 (CAST char   97 )
	.loc 1 594
// Line 594  97 
	.loc 1 594
	push 97
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000528
	mov  rax, 0
	call switch2_
	jmp  .L000529
.L000528:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000529:
	push rax
// Line 594 (CAST int   11 )
	.loc 1 594
// Line 594  11 
	.loc 1 594
	push 11
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
// Line 595 (CALL assert_expect ((CAST int   595 ):(CAST int   12 ):(CAST int  (CALL switch2_ ((CAST char   98 ):) )):) )
	.loc 1 595
// Line 595 (CAST int  (CALL switch2_ ((CAST char   98 ):) ))
	.loc 1 595
// Line 595 (CALL switch2_ ((CAST char   98 ):) )
	.loc 1 595
// Line 595 (CAST char   98 )
	.loc 1 595
// Line 595  98 
	.loc 1 595
	push 98
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000532
	mov  rax, 0
	call switch2_
	jmp  .L000533
.L000532:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000533:
	push rax
// Line 595 (CAST int   12 )
	.loc 1 595
// Line 595  12 
	.loc 1 595
	push 12
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
// Line 596 (CALL assert_expect ((CAST int   596 ):(CAST int   12 ):(CAST int  (CALL switch2_ ((CAST char   99 ):) )):) )
	.loc 1 596
// Line 596 (CAST int  (CALL switch2_ ((CAST char   99 ):) ))
	.loc 1 596
// Line 596 (CALL switch2_ ((CAST char   99 ):) )
	.loc 1 596
// Line 596 (CAST char   99 )
	.loc 1 596
// Line 596  99 
	.loc 1 596
	push 99
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000536
	mov  rax, 0
	call switch2_
	jmp  .L000537
.L000536:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000537:
	push rax
// Line 596 (CAST int   12 )
	.loc 1 596
// Line 596  12 
	.loc 1 596
	push 12
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
// Line 597 (CALL assert_expect ((CAST int   597 ):(CAST int   15 ):(CAST int  (CALL switch2_ ((CAST char   122 ):) )):) )
	.loc 1 597
// Line 597 (CAST int  (CALL switch2_ ((CAST char   122 ):) ))
	.loc 1 597
// Line 597 (CALL switch2_ ((CAST char   122 ):) )
	.loc 1 597
// Line 597 (CAST char   122 )
	.loc 1 597
// Line 597  122 
	.loc 1 597
	push 122
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000540
	mov  rax, 0
	call switch2_
	jmp  .L000541
.L000540:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000541:
	push rax
// Line 597 (CAST int   15 )
	.loc 1 597
// Line 597  15 
	.loc 1 597
	push 15
// Line 597 (CAST int   597 )
	.loc 1 597
// Line 597  597 
	.loc 1 597
	push 597
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
// Line 600 (CALL assert_expect ((CAST int   600 ):(CAST int   92 ):(CAST int  (CALL q8 () )):) )
	.loc 1 600
// Line 600 (CAST int  (CALL q8 () ))
	.loc 1 600
// Line 600 (CALL q8 () )
	.loc 1 600
	mov  rax, rsp
	and  rax, 15
	jnz  .L000544
	mov  rax, 0
	call q8
	jmp  .L000545
.L000544:
	sub  rsp, 8
	mov  rax, 0
	call q8
	add  rsp, 8
.L000545:
	push rax
// Line 600 (CAST int   92 )
	.loc 1 600
// Line 600  92 
	.loc 1 600
	push 92
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
	jnz  .L000546
	mov  rax, 0
	call assert_expect
	jmp  .L000547
.L000546:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000547:
	push rax
	pop  rax
// Line 603 (CALL assert_expect ((CAST int   603 ):(CAST int   0 ):(CAST int   0 ):) )
	.loc 1 603
// Line 603 (CAST int   0 )
	.loc 1 603
// Line 603  0 
	.loc 1 603
	push 0
// Line 603 (CAST int   0 )
	.loc 1 603
// Line 603  0 
	.loc 1 603
	push 0
// Line 603 (CAST int   603 )
	.loc 1 603
// Line 603  603 
	.loc 1 603
	push 603
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000548
	mov  rax, 0
	call assert_expect
	jmp  .L000549
.L000548:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000549:
	push rax
	pop  rax
// Line 604 (CALL assert_expect ((CAST int   604 ):(CAST int   1 ):(CAST int   1 ):) )
	.loc 1 604
// Line 604 (CAST int   1 )
	.loc 1 604
// Line 604  1 
	.loc 1 604
	push 1
// Line 604 (CAST int   1 )
	.loc 1 604
// Line 604  1 
	.loc 1 604
	push 1
// Line 604 (CAST int   604 )
	.loc 1 604
// Line 604  604 
	.loc 1 604
	push 604
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000550
	mov  rax, 0
	call assert_expect
	jmp  .L000551
.L000550:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000551:
	push rax
	pop  rax
// Line 605 (CALL assert_expect ((CAST int   605 ):(CAST int   2 ):(CAST int   2 ):) )
	.loc 1 605
// Line 605 (CAST int   2 )
	.loc 1 605
// Line 605  2 
	.loc 1 605
	push 2
// Line 605 (CAST int   2 )
	.loc 1 605
// Line 605  2 
	.loc 1 605
	push 2
// Line 605 (CAST int   605 )
	.loc 1 605
// Line 605  605 
	.loc 1 605
	push 605
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000552
	mov  rax, 0
	call assert_expect
	jmp  .L000553
.L000552:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000553:
	push rax
	pop  rax
// Line 606 (CALL assert_expect ((CAST int   606 ):(CAST int   3 ):(CAST int   3 ):) )
	.loc 1 606
// Line 606 (CAST int   3 )
	.loc 1 606
// Line 606  3 
	.loc 1 606
	push 3
// Line 606 (CAST int   3 )
	.loc 1 606
// Line 606  3 
	.loc 1 606
	push 3
// Line 606 (CAST int   606 )
	.loc 1 606
// Line 606  606 
	.loc 1 606
	push 606
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000554
	mov  rax, 0
	call assert_expect
	jmp  .L000555
.L000554:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000555:
	push rax
	pop  rax
// Line 608 (CALL assert_expect ((CAST int   608 ):(CAST int   15 ):(CAST int  (|  13   7 )):) )
	.loc 1 608
// Line 608 (CAST int  (|  13   7 ))
	.loc 1 608
// Line 608 (|  13   7 )
	.loc 1 608
// Line 608  13 
	.loc 1 608
	push 13
// Line 608  7 
	.loc 1 608
	push 7
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 608 (CAST int   15 )
	.loc 1 608
// Line 608  15 
	.loc 1 608
	push 15
// Line 608 (CAST int   608 )
	.loc 1 608
// Line 608  608 
	.loc 1 608
	push 608
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000556
	mov  rax, 0
	call assert_expect
	jmp  .L000557
.L000556:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000557:
	push rax
	pop  rax
// Line 609 (CALL assert_expect ((CAST int   609 ):(CAST int   5115 ):(CAST int  (|  938   5073 )):) )
	.loc 1 609
// Line 609 (CAST int  (|  938   5073 ))
	.loc 1 609
// Line 609 (|  938   5073 )
	.loc 1 609
// Line 609  938 
	.loc 1 609
	push 938
// Line 609  5073 
	.loc 1 609
	push 5073
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 609 (CAST int   5115 )
	.loc 1 609
// Line 609  5115 
	.loc 1 609
	push 5115
// Line 609 (CAST int   609 )
	.loc 1 609
// Line 609  609 
	.loc 1 609
	push 609
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000558
	mov  rax, 0
	call assert_expect
	jmp  .L000559
.L000558:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000559:
	push rax
	pop  rax
// Line 610 (CALL assert_expect ((CAST int   610 ):(CAST int   5 ):(CAST int  (&  13   7 )):) )
	.loc 1 610
// Line 610 (CAST int  (&  13   7 ))
	.loc 1 610
// Line 610 (&  13   7 )
	.loc 1 610
// Line 610  13 
	.loc 1 610
	push 13
// Line 610  7 
	.loc 1 610
	push 7
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 610 (CAST int   5 )
	.loc 1 610
// Line 610  5 
	.loc 1 610
	push 5
// Line 610 (CAST int   610 )
	.loc 1 610
// Line 610  610 
	.loc 1 610
	push 610
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
// Line 611 (CALL assert_expect ((CAST int   611 ):(CAST int   896 ):(CAST int  (&  938   5073 )):) )
	.loc 1 611
// Line 611 (CAST int  (&  938   5073 ))
	.loc 1 611
// Line 611 (&  938   5073 )
	.loc 1 611
// Line 611  938 
	.loc 1 611
	push 938
// Line 611  5073 
	.loc 1 611
	push 5073
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 611 (CAST int   896 )
	.loc 1 611
// Line 611  896 
	.loc 1 611
	push 896
// Line 611 (CAST int   611 )
	.loc 1 611
// Line 611  611 
	.loc 1 611
	push 611
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
// Line 612 (CALL assert_expect ((CAST int   612 ):(CAST int   10 ):(CAST int  (^  13   7 )):) )
	.loc 1 612
// Line 612 (CAST int  (^  13   7 ))
	.loc 1 612
// Line 612 (^  13   7 )
	.loc 1 612
// Line 612  13 
	.loc 1 612
	push 13
// Line 612  7 
	.loc 1 612
	push 7
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 612 (CAST int   10 )
	.loc 1 612
// Line 612  10 
	.loc 1 612
	push 10
// Line 612 (CAST int   612 )
	.loc 1 612
// Line 612  612 
	.loc 1 612
	push 612
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
// Line 613 (CALL assert_expect ((CAST int   613 ):(CAST int   4219 ):(CAST int  (^  938   5073 )):) )
	.loc 1 613
// Line 613 (CAST int  (^  938   5073 ))
	.loc 1 613
// Line 613 (^  938   5073 )
	.loc 1 613
// Line 613  938 
	.loc 1 613
	push 938
// Line 613  5073 
	.loc 1 613
	push 5073
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 613 (CAST int   4219 )
	.loc 1 613
// Line 613  4219 
	.loc 1 613
	push 4219
// Line 613 (CAST int   613 )
	.loc 1 613
// Line 613  613 
	.loc 1 613
	push 613
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
// Line 615 (CALL assert_expect ((CAST int   615 ):(CAST int   29 ):(CAST int  (>>  938   5 )):) )
	.loc 1 615
// Line 615 (CAST int  (>>  938   5 ))
	.loc 1 615
// Line 615 (>>  938   5 )
	.loc 1 615
// Line 615  938 
	.loc 1 615
	push 938
// Line 615  5 
	.loc 1 615
	push 5
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 615 (CAST int   29 )
	.loc 1 615
// Line 615  29 
	.loc 1 615
	push 29
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
	jnz  .L000568
	mov  rax, 0
	call assert_expect
	jmp  .L000569
.L000568:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000569:
	push rax
	pop  rax
// Line 616 (CALL assert_expect ((CAST int   616 ):(CAST int   1664 ):(CAST int  (<<  13   7 )):) )
	.loc 1 616
// Line 616 (CAST int  (<<  13   7 ))
	.loc 1 616
// Line 616 (<<  13   7 )
	.loc 1 616
// Line 616  13 
	.loc 1 616
	push 13
// Line 616  7 
	.loc 1 616
	push 7
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 616 (CAST int   1664 )
	.loc 1 616
// Line 616  1664 
	.loc 1 616
	push 1664
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
// Line 618 (CALL printf ((CAST * char  (ADDR  "passed tests.\n" )):) )
	.loc 1 618
// Line 618 (CAST * char  (ADDR  "passed tests.\n" ))
	.loc 1 618
// Line 618 (ADDR  "passed tests.\n" )
	.loc 1 618
	lea  rax, .LS000033[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000572
	mov  rax, 0
	call printf
	jmp  .L000573
.L000572:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000573:
	push rax
	pop  rax
// Line 619 (RETURN  0 )
	.loc 1 619
// Line 619  0 
	.loc 1 619
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

// FDECL assert_expect func ( int  line , int  expected , int  actual ) void  max_offset:44
//    (LVAR 36) (LVAR 40) (LVAR 44) 
//    (BLOCK(IF (== (LVAR 40) (LVAR 44)) (RETURN NULL ) NULL ):(CALL fprintf ((GVAR stderr):(ADDR  "%d: %d expected, but got %d\n" ):(LVAR 36):(LVAR 40):(LVAR 44):) ):(CALL exit ( 1 :) ):))
//    actual  offset:44  int 
//    expected  offset:40  int 
//    line  offset:36  int 

// FDECL fibo func ( int  x ) int  max_offset:36
//    (LVAR 36) 
//    (BLOCK(IF (<  2  (LVAR 36)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((- (LVAR 36)  1 ):) ) (CALL fibo ((- (LVAR 36)  2 ):) ))):))
//    x  offset:36  int 

// FDECL array_local func ( ) int  max_offset:360
//    
//    (BLOCK(= (LVAR 356)  0 ):(= (LVAR 360)  0 ):(WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)):(CALL assert_expect ( 71 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 )):) ):(CALL assert_expect ( 72 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 )):) ):(CALL assert_expect ( 73 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 )):) ):(RETURN  0 ):))
//    j  offset:360  int 
//    i  offset:356  int 
//    a  offset:352  [10] [8] int 

// FDECL array_global func ( ) int  max_offset:36
//    
//    (BLOCK(FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ( 99 :(+ (LVAR 36)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 36))):) )):(CALL assert_expect ( 100 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 101 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 112 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 113 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 114 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
//    i  offset:36  int 

// FDECL string func ( ) int  max_offset:63
//    
//    (BLOCK(= (LVAR 40) (ADDR  "Hello world!\n" )):(CALL printf ((ADDR  "%s" ):(LVAR 40):) ):(= (LVAR 63)  "\tHello---" ):(CALL printf ((ADDR  "%s" ):(ADDR (LVAR 63)):) ):(CALL assert_expect ( 125 : 9 :(DEREF (] (ADDR (LVAR 63))  15 )):) ):(CALL assert_expect ( 127 : 119 : 119 :) ):(CALL assert_expect ( 128 : 119 :(DEREF (] (LVAR 40)  6 )):) ):))
//    str_ary9  offset:63  [23] char 
//    str  offset:40  * char 

// FDECL block_scope func ( ) void  max_offset:48
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 133 : 1 :(GVAR i):) ):(= (LVAR 36)  5 ):(CALL assert_expect ( 135 : 5 :(LVAR 36):) ):(BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ( 142 : 4 :(LVAR 48):) ):):(CALL assert_expect ( 144 : 3 :(LVAR 44):) ):):(CALL assert_expect ( 146 : 2 :(LVAR 40):) ):):(CALL assert_expect ( 148 : 5 :(LVAR 36):) ):))
//    i  offset:48  int 
//    i  offset:44  int 
//    i  offset:40  int 
//    i  offset:36  int 

// FDECL for_ func ( ) void  max_offset:44
//    
//    (BLOCK(= (LVAR 36)  100 ):(CALL assert_expect ( 153 : 100 :(LVAR 36):) ):(FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ( 156 : 12 :(LVAR 40):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ( 158 : 9 :(LVAR 44):) ):)):(CALL assert_expect ( 160 : 100 :(LVAR 36):) ):(= (LVAR 36)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)):(CALL assert_expect ( 166 : 6 :(LVAR 36):) ):))
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
//    (BLOCK(= (LVAR 36)  16 ):(= (LVAR 44)  0 ):(FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ( 1 :(LVAR 36):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)):(CALL assert_expect ( 240 : 5 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 242 : 4 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 244 : 3 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 246 : 2 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 248 : 1 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 250 : 0 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 253 : 777 :(MEMBER (GVAR def) payload 0):) ):))
//    new  offset:56  * struct <List> 
//    i  offset:48  int 
//    cursor  offset:44  * struct <List> 
//    size  offset:36  int 

// FDECL struct_ func ( ) void  max_offset:832
//    
//    (BLOCK(CALL assert_expect ( 276 : 32 : 32 :) ):(CALL assert_expect ( 277 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 282 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 283 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 285 : 4 : 4 :) ):(CALL assert_expect ( 286 : 4 : 4 :) ):(= (LVAR 368) (ADDR (LVAR 360))):(= (MEMBER (LVAR 360) size 136)  10 ):(= (MEMBER (LVAR 360) ch 140)  5 ):(= (MEMBER (LVAR 512) size 136)  195 ):(= (MEMBER (LVAR 512) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 297 : 10 :(MEMBER (LVAR 360) size 136):) ):(CALL assert_expect ( 298 : 5 :(MEMBER (LVAR 360) ch 140):) ):(= (MEMBER (LVAR 360) size 136)  110 ):(= (MEMBER (LVAR 360) ch 140)  79 ):(CALL assert_expect ( 301 : 110 :(MEMBER (DEREF (LVAR 368)) size 136):) ):(CALL assert_expect ( 302 : 79 :(MEMBER (DEREF (LVAR 368)) ch 140):) ):(CALL assert_expect ( 303 : 110 :(MEMBER (DEREF (LVAR 368)) size 136):) ):(CALL assert_expect ( 304 : 79 :(MEMBER (DEREF (LVAR 368)) ch 140):) ):(CALL assert_expect ( 305 : 195 :(MEMBER (LVAR 512) size 136):) ):(CALL assert_expect ( 306 : 39 :(MEMBER (LVAR 512) ch 140):) ):(CALL assert_expect ( 307 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 308 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512))):(= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360))):(CALL assert_expect ( 312 : 195 :(MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136):) ):(= (MEMBER (LVAR 672) size 136)  100 ):(= (MEMBER (LVAR 816) size 136)  500 ):(= (LVAR 816) (LVAR 672)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ( 320 : 100 :(MEMBER (LVAR 816) size 136):) ):(= (LVAR 816) (GVAR leaf_global)):(CALL assert_expect ( 322 : 700 :(MEMBER (LVAR 816) size 136):) ):(= (GVAR leaf_global) (LVAR 672)):(CALL assert_expect ( 324 : 100 :(MEMBER (GVAR leaf_global) size 136):) ):(= (MEMBER (LVAR 672) size 136)  999 ):(= (LVAR 824) (ADDR (LVAR 672))):(= (LVAR 832) (ADDR (LVAR 816))):(= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))):(CALL assert_expect ( 329 : 999 :(MEMBER (DEREF (LVAR 832)) size 136):) ):(CALL assert_expect ( 330 : 999 :(MEMBER (GVAR leaf_global) size 136):) ):))
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
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((ADDR  "Q " ):) ) NULL ):(CALL printf ((ADDR  ". " ):) ):)):(CALL printf ((ADDR  "\n" ):) ):)):(CALL printf ((ADDR  "\n\n" ):) ):))
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
//    (BLOCK(IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((LVAR 40):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((LVAR 40):(ADDR (LVAR 56)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((LVAR 40):(+ (LVAR 44)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)):))
//    p  offset:56  struct <Pos> 
//    i  offset:48  int 
//    row  offset:44  int 
//    board  offset:40  * [8] int 

// FDECL q8 func ( ) int  max_offset:296
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))):(CALL solve ((ADDR (LVAR 288)): 0 :) ):(RETURN (GVAR q8_count)):))
//    j  offset:296  int 
//    i  offset:292  int 
//    board  offset:288  [8] [8] int 

// FDECL fun func ( * int  p ) int  max_offset:40
//    (LVAR 40) 
//    (BLOCK(RETURN (DEREF (LVAR 40))):))
//    p  offset:40  * int 

// FDECL main func ( ) int  max_offset:60
//    
//    (BLOCK(= (LVAR 40) (CAST * void   0 )):(CALL assert_expect ( 394 : 1 : 1 :) ):(CALL assert_expect ( 395 : 0 : 0 :) ):(CALL assert_expect ( 396 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 398 : 70 :(*  10  (+  2   5 )):) ):(CALL printf ((ADDR  "%s" ):(ADDR (GVAR str_ary)):) ):(CALL assert_expect ( 401 : 1979 :(GVAR i):) ):(CALL assert_expect ( 402 : 2015 :(GVAR j):) ):(CALL assert_expect ( 403 : 24 :(GVAR s):) ):(CALL assert_expect ( 405 : 9 : 9 :) ):(CALL assert_expect ( 406 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 407 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 408 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 409 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 410 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 411 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 412 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 413 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 414 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 415 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 416 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 417 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 418 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 419 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 420 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 421 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 422 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 423 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 424 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 425 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 426 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 44)  0 ):(CALL assert_expect ( 428 : 0 :(&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 429 : 0 :(LVAR 44):) ):(CALL assert_expect ( 430 : 0 :(&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 431 : 1 :(LVAR 44):) ):(CALL assert_expect ( 432 : 1 :(&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 433 : 2 :(LVAR 44):) ):(CALL assert_expect ( 434 : 1 :(||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 435 : 3 :(LVAR 44):) ):(CALL assert_expect ( 436 : 1 :(||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 437 : 3 :(LVAR 44):) ):(= (LVAR 44)  0 ):(CALL assert_expect ( 439 : 0 :(||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 440 : 1 :(LVAR 44):) ):(= (LVAR 44)  0 ):(CALL assert_expect ( 442 : 0 :(||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ( 443 : 1 :(LVAR 44):) ):(CALL assert_expect ( 444 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 445 : 1 :(LVAR 44):) ):(CALL assert_expect ( 446 : 1 :(!  0 ):) ):(CALL assert_expect ( 447 : 0 :(!  1 ):) ):(CALL assert_expect ( 448 : 0 :(! (! (!  1 ))):) ):(CALL assert_expect ( 450 : 256 :(<<  1   8 ):) ):(CALL assert_expect ( 451 : 32 :(>>  512   4 ):) ):(= (LVAR 48)  10 ):(CALL assert_expect ( 456 : 15 :(= (LVAR 48) (+= (LVAR 48)  5 )):) ):(CALL assert_expect ( 457 : 15 :(LVAR 48):) ):(CALL assert_expect ( 458 : 8 :(= (LVAR 48) (-= (LVAR 48)  7 )):) ):(CALL assert_expect ( 459 : 8 :(LVAR 48):) ):(CALL assert_expect ( 460 : 40 :(= (LVAR 48) (*= (LVAR 48)  5 )):) ):(CALL assert_expect ( 461 : 40 :(LVAR 48):) ):(CALL assert_expect ( 462 : 4 :(= (LVAR 48) (/= (LVAR 48)  10 )):) ):(CALL assert_expect ( 463 : 4 :(LVAR 48):) ):(CALL assert_expect ( 466 : 4 :(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):) ):(CALL assert_expect ( 467 : 5 :(LVAR 48):) ):(CALL assert_expect ( 468 : 5 :(-- (= (LVAR 48) (-- (LVAR 48)  1 ))  1 ):) ):(CALL assert_expect ( 469 : 4 :(LVAR 48):) ):(= (LVAR 52) (/  100  (LVAR 48))):(CALL assert_expect ( 474 : 25 :(LVAR 52):) ):(= (LVAR 56)  77 ):(IF (== (LVAR 56)  77 ) (= (LVAR 56)  55 ) (= (LVAR 56)  66 )):(CALL assert_expect ( 482 : 55 :(LVAR 56):) ):(CALL assert_expect ( 483 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 506 : 2 : 2 :) ):(CALL assert_expect ( 507 : 4 : 4 :) ):(CALL assert_expect ( 508 : 10 : 10 :) ):(CALL assert_expect ( 509 : 12 : 12 :) ):(CALL assert_expect ( 511 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 512 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 513 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 514 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 515 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 516 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 519 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 520 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 521 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 522 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 525 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 528 : 0 : 0 :) ):(CALL assert_expect ( 529 : 1 : 1 :) ):(CALL assert_expect ( 530 : 2 : 2 :) ):(CALL assert_expect ( 531 : 3 : 3 :) ):(CALL assert_expect ( 533 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 534 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 535 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 536 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 537 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 538 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 540 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 541 : 1664 :(<<  13   7 ):) ):(CALL printf ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
//    MONTH  offset:60  enum 
//    i  offset:56  int 
//    init  offset:52  int 
//    z  offset:48  int 
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
// quick [15] char  "QuickBrownFox" 
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
	.zero 1
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
//    (BLOCK(IF (== (LVAR 40) (LVAR 44)) (RETURN NULL ) NULL ):(CALL fprintf ((GVAR stderr):(ADDR  "%d: %d expected, but got %d\n" ):(LVAR 36):(LVAR 40):(LVAR 44):) ):(CALL exit ( 1 :) ):))
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
// Line 21 (CALL fprintf ((GVAR stderr):(ADDR  "%d: %d expected, but got %d\n" ):(LVAR 36):(LVAR 40):(LVAR 44):) )
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
// Line 21 (ADDR  "%d: %d expected, but got %d\n" )
	.loc 1 21
	lea  rax, .LS000000[rip]
	push rax
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
// Line 22 (CALL exit ( 1 :) )
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
//    (BLOCK(IF (<  2  (LVAR 36)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((- (LVAR 36)  1 ):) ) (CALL fibo ((- (LVAR 36)  2 ):) ))):))
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
// Line 56 (RETURN (+ (CALL fibo ((- (LVAR 36)  1 ):) ) (CALL fibo ((- (LVAR 36)  2 ):) )))
	.loc 1 56
// Line 56 (+ (CALL fibo ((- (LVAR 36)  1 ):) ) (CALL fibo ((- (LVAR 36)  2 ):) ))
	.loc 1 56
// Line 56 (CALL fibo ((- (LVAR 36)  1 ):) )
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
// Line 56 (CALL fibo ((- (LVAR 36)  2 ):) )
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
// Line 59 FDECL array_local func ( ) int  max_offset:360
//    
//    (BLOCK(= (LVAR 356)  0 ):(= (LVAR 360)  0 ):(WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)):(CALL assert_expect ( 71 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 )):) ):(CALL assert_expect ( 72 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 )):) ):(CALL assert_expect ( 73 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 )):) ):(RETURN  0 ):))
	.loc 1 59
array_local:
	push rbp
	mov  rbp, rsp
	sub  rsp, 368
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
// Line 71 (WHILE cond:(<=  9  (LVAR 356))body: (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):))
	.loc 1 71
.L000012:
// Line 63 (<=  9  (LVAR 356))
	.loc 1 63
// Line 63  9 
	.loc 1 63
	push 9
// Line 63 (LVAR 356)
	.loc 1 63
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
// Line 71 (BLOCK(= (LVAR 360)  0 ):(WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)):(= (LVAR 356) (+= (LVAR 356)  1 )):)
	.loc 1 71
// Line 64 (= (LVAR 360)  0 )
	.loc 1 64
	lea  rax, [rbp - 360]
	push rax
// Line 64  0 
	.loc 1 64
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 69 (WHILE cond:(<=  7  (LVAR 360))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):))
	.loc 1 69
.L000014:
// Line 65 (<=  7  (LVAR 360))
	.loc 1 65
// Line 65  7 
	.loc 1 65
	push 7
// Line 65 (LVAR 360)
	.loc 1 65
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
// Line 69 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360))):(++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 ):)
	.loc 1 69
// Line 66 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))) (+ (* (LVAR 356)  10 ) (LVAR 360)))
	.loc 1 66
// Line 66 (] (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356)))) (LVAR 360))
	.loc 1 66
// Line 66 (ADDR (DEREF (] (ADDR (LVAR 352)) (LVAR 356))))
	.loc 1 66
// Line 66 (] (ADDR (LVAR 352)) (LVAR 356))
	.loc 1 66
// Line 66 (ADDR (LVAR 352))
	.loc 1 66
	lea  rax, [rbp - 352]
	push rax
// Line 66 (LVAR 356)
	.loc 1 66
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
// Line 66 (LVAR 360)
	.loc 1 66
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
// Line 66 (+ (* (LVAR 356)  10 ) (LVAR 360))
	.loc 1 66
// Line 66 (* (LVAR 356)  10 )
	.loc 1 66
// Line 66 (LVAR 356)
	.loc 1 66
	lea  rax, [rbp - 356]
	mov  eax, [rax]
	push rax
// Line 66  10 
	.loc 1 66
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 66 (LVAR 360)
	.loc 1 66
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
// Line 67 (++ (= (LVAR 360) (++ (LVAR 360)  1 ))  1 )
	.loc 1 67
// Line 67 (= (LVAR 360) (++ (LVAR 360)  1 ))
	.loc 1 67
	lea  rax, [rbp - 360]
	push rax
// Line 67 (++ (LVAR 360)  1 )
	.loc 1 67
// Line 67 (LVAR 360)
	.loc 1 67
	lea  rax, [rbp - 360]
	mov  eax, [rax]
	push rax
// Line 67  1 
	.loc 1 67
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 67  1 
	.loc 1 67
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000014
.L000015:
// Line 69 (= (LVAR 356) (+= (LVAR 356)  1 ))
	.loc 1 69
	lea  rax, [rbp - 356]
	push rax
// Line 69 (+= (LVAR 356)  1 )
	.loc 1 69
// Line 69 (LVAR 356)
	.loc 1 69
	lea  rax, [rbp - 356]
	mov  eax, [rax]
	push rax
// Line 69  1 
	.loc 1 69
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
// Line 71 (CALL assert_expect ( 71 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 )):) )
	.loc 1 71
// Line 71 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 ))
	.loc 1 71
// Line 71 (] (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))  1 )
	.loc 1 71
// Line 71 (ADDR (DEREF (] (ADDR (LVAR 352))  0 )))
	.loc 1 71
// Line 71 (] (ADDR (LVAR 352))  0 )
	.loc 1 71
// Line 71 (ADDR (LVAR 352))
	.loc 1 71
	lea  rax, [rbp - 352]
	push rax
// Line 71  0 
	.loc 1 71
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 71  1 
	.loc 1 71
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 71  1 
	.loc 1 71
	push 1
// Line 71  71 
	.loc 1 71
	push 71
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
// Line 72 (CALL assert_expect ( 72 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 )):) )
	.loc 1 72
// Line 72 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 ))
	.loc 1 72
// Line 72 (] (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))  7 )
	.loc 1 72
// Line 72 (ADDR (DEREF (] (ADDR (LVAR 352))  9 )))
	.loc 1 72
// Line 72 (] (ADDR (LVAR 352))  9 )
	.loc 1 72
// Line 72 (ADDR (LVAR 352))
	.loc 1 72
	lea  rax, [rbp - 352]
	push rax
// Line 72  9 
	.loc 1 72
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 72  7 
	.loc 1 72
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 72  97 
	.loc 1 72
	push 97
// Line 72  72 
	.loc 1 72
	push 72
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
// Line 73 (CALL assert_expect ( 73 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 )):) )
	.loc 1 73
// Line 73 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 ))
	.loc 1 73
// Line 73 (] (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))  4 )
	.loc 1 73
// Line 73 (ADDR (DEREF (] (ADDR (LVAR 352))  8 )))
	.loc 1 73
// Line 73 (] (ADDR (LVAR 352))  8 )
	.loc 1 73
// Line 73 (ADDR (LVAR 352))
	.loc 1 73
	lea  rax, [rbp - 352]
	push rax
// Line 73  8 
	.loc 1 73
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 73  4 
	.loc 1 73
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 73  84 
	.loc 1 73
	push 84
// Line 73  73 
	.loc 1 73
	push 73
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
// Line 74 (RETURN  0 )
	.loc 1 74
// Line 74  0 
	.loc 1 74
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
// Line 98 FDECL array_global func ( ) int  max_offset:36
//    
//    (BLOCK(FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ( 99 :(+ (LVAR 36)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 36))):) )):(CALL assert_expect ( 100 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 101 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 112 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 113 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 114 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
	.loc 1 98
array_global:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 99 (FOR init: (= (LVAR 36)  0 )cond: (<  5  (LVAR 36)) post: (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 ) body (CALL assert_expect ( 99 :(+ (LVAR 36)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 36))):) ))
	.loc 1 99
// Line 99 (= (LVAR 36)  0 )
	.loc 1 99
	lea  rax, [rbp - 36]
	push rax
// Line 99  0 
	.loc 1 99
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000024:
// Line 99 (<  5  (LVAR 36))
	.loc 1 99
// Line 99  5 
	.loc 1 99
	push 5
// Line 99 (LVAR 36)
	.loc 1 99
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
	je   .L000023
// Line 99 (CALL assert_expect ( 99 :(+ (LVAR 36)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 36))):) )
	.loc 1 99
// Line 99 (DEREF (] (ADDR (GVAR ary_int)) (LVAR 36)))
	.loc 1 99
// Line 99 (] (ADDR (GVAR ary_int)) (LVAR 36))
	.loc 1 99
// Line 99 (ADDR (GVAR ary_int))
	.loc 1 99
	lea  rax, ary_int[rip]
	push rax
// Line 99 (LVAR 36)
	.loc 1 99
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
// Line 99 (+ (LVAR 36)  1 )
	.loc 1 99
// Line 99 (LVAR 36)
	.loc 1 99
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 99  1 
	.loc 1 99
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 99  99 
	.loc 1 99
	push 99
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
.L000022:
// Line 99 (++ (= (LVAR 36) (++ (LVAR 36)  1 ))  1 )
	.loc 1 99
// Line 99 (= (LVAR 36) (++ (LVAR 36)  1 ))
	.loc 1 99
	lea  rax, [rbp - 36]
	push rax
// Line 99 (++ (LVAR 36)  1 )
	.loc 1 99
// Line 99 (LVAR 36)
	.loc 1 99
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 99  1 
	.loc 1 99
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 99  1 
	.loc 1 99
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000024
.L000023:
// Line 100 (CALL assert_expect ( 100 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) )
	.loc 1 100
// Line 100 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))
	.loc 1 100
// Line 100 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )
	.loc 1 100
// Line 100 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))
	.loc 1 100
// Line 100 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )
	.loc 1 100
// Line 100 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 100
// Line 100 (] (ADDR (GVAR reg))  2 )
	.loc 1 100
// Line 100 (ADDR (GVAR reg))
	.loc 1 100
	lea  rax, reg[rip]
	push rax
// Line 100  2 
	.loc 1 100
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 100  1 
	.loc 1 100
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 100  1 
	.loc 1 100
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movzx eax, BYTE PTR [rax]
	push rax
// Line 100  105 
	.loc 1 100
	push 105
// Line 100  100 
	.loc 1 100
	push 100
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000027
	mov  rax, 0
	call assert_expect
	jmp  .L000028
.L000027:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000028:
	push rax
	pop  rax
// Line 101 (CALL assert_expect ( 101 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) )
	.loc 1 101
// Line 101 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))
	.loc 1 101
// Line 101 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )
	.loc 1 101
// Line 101 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))
	.loc 1 101
// Line 101 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )
	.loc 1 101
// Line 101 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 101
// Line 101 (] (ADDR (GVAR reg))  2 )
	.loc 1 101
// Line 101 (ADDR (GVAR reg))
	.loc 1 101
	lea  rax, reg[rip]
	push rax
// Line 101  2 
	.loc 1 101
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 101  4 
	.loc 1 101
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 101  2 
	.loc 1 101
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movzx eax, BYTE PTR [rax]
	push rax
// Line 101  119 
	.loc 1 101
	push 119
// Line 101  101 
	.loc 1 101
	push 101
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
// Line 103 (= (GVAR i)  0 )
	.loc 1 103
	lea  rax, i[rip]
	push rax
// Line 103  0 
	.loc 1 103
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 112 (WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):))
	.loc 1 112
.L000031:
// Line 104 (<=  9  (GVAR i))
	.loc 1 104
// Line 104  9 
	.loc 1 104
	push 9
// Line 104 (GVAR i)
	.loc 1 104
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
	je   .L000032
// Line 112 (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)
	.loc 1 112
// Line 105 (= (GVAR j)  0 )
	.loc 1 105
	lea  rax, j[rip]
	push rax
// Line 105  0 
	.loc 1 105
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 110 (WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):))
	.loc 1 110
.L000033:
// Line 106 (<=  7  (GVAR j))
	.loc 1 106
// Line 106  7 
	.loc 1 106
	push 7
// Line 106 (GVAR j)
	.loc 1 106
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
	je   .L000034
// Line 110 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)
	.loc 1 110
// Line 107 (= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j)))
	.loc 1 107
// Line 107 (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))
	.loc 1 107
// Line 107 (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i))))
	.loc 1 107
// Line 107 (] (ADDR (GVAR a)) (GVAR i))
	.loc 1 107
// Line 107 (ADDR (GVAR a))
	.loc 1 107
	lea  rax, a[rip]
	push rax
// Line 107 (GVAR i)
	.loc 1 107
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
// Line 107 (GVAR j)
	.loc 1 107
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
// Line 107 (+ (* (GVAR i)  10 ) (GVAR j))
	.loc 1 107
// Line 107 (* (GVAR i)  10 )
	.loc 1 107
// Line 107 (GVAR i)
	.loc 1 107
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 107  10 
	.loc 1 107
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 107 (GVAR j)
	.loc 1 107
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
// Line 108 (++ (= (GVAR j) (++ (GVAR j)  1 ))  1 )
	.loc 1 108
// Line 108 (= (GVAR j) (++ (GVAR j)  1 ))
	.loc 1 108
	lea  rax, j[rip]
	push rax
// Line 108 (++ (GVAR j)  1 )
	.loc 1 108
// Line 108 (GVAR j)
	.loc 1 108
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 108  1 
	.loc 1 108
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 108  1 
	.loc 1 108
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000033
.L000034:
// Line 110 (++ (= (GVAR i) (++ (GVAR i)  1 ))  1 )
	.loc 1 110
// Line 110 (= (GVAR i) (++ (GVAR i)  1 ))
	.loc 1 110
	lea  rax, i[rip]
	push rax
// Line 110 (++ (GVAR i)  1 )
	.loc 1 110
// Line 110 (GVAR i)
	.loc 1 110
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 110  1 
	.loc 1 110
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 110  1 
	.loc 1 110
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000031
.L000032:
// Line 112 (CALL assert_expect ( 112 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) )
	.loc 1 112
// Line 112  1 
	.loc 1 112
	push 1
// Line 112 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))
	.loc 1 112
// Line 112 (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )
	.loc 1 112
// Line 112 (ADDR (DEREF (] (ADDR (GVAR a))  0 )))
	.loc 1 112
// Line 112 (] (ADDR (GVAR a))  0 )
	.loc 1 112
// Line 112 (ADDR (GVAR a))
	.loc 1 112
	lea  rax, a[rip]
	push rax
// Line 112  0 
	.loc 1 112
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 112  1 
	.loc 1 112
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 112  112 
	.loc 1 112
	push 112
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000035
	mov  rax, 0
	call assert_expect
	jmp  .L000036
.L000035:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000036:
	push rax
	pop  rax
// Line 113 (CALL assert_expect ( 113 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) )
	.loc 1 113
// Line 113  97 
	.loc 1 113
	push 97
// Line 113 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))
	.loc 1 113
// Line 113 (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )
	.loc 1 113
// Line 113 (ADDR (DEREF (] (ADDR (GVAR a))  9 )))
	.loc 1 113
// Line 113 (] (ADDR (GVAR a))  9 )
	.loc 1 113
// Line 113 (ADDR (GVAR a))
	.loc 1 113
	lea  rax, a[rip]
	push rax
// Line 113  9 
	.loc 1 113
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 113  7 
	.loc 1 113
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 113  113 
	.loc 1 113
	push 113
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000037
	mov  rax, 0
	call assert_expect
	jmp  .L000038
.L000037:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000038:
	push rax
	pop  rax
// Line 114 (CALL assert_expect ( 114 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) )
	.loc 1 114
// Line 114  84 
	.loc 1 114
	push 84
// Line 114 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))
	.loc 1 114
// Line 114 (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )
	.loc 1 114
// Line 114 (ADDR (DEREF (] (ADDR (GVAR a))  8 )))
	.loc 1 114
// Line 114 (] (ADDR (GVAR a))  8 )
	.loc 1 114
// Line 114 (ADDR (GVAR a))
	.loc 1 114
	lea  rax, a[rip]
	push rax
// Line 114  8 
	.loc 1 114
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 114  4 
	.loc 1 114
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 114  114 
	.loc 1 114
	push 114
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
// Line 115 (RETURN  0 )
	.loc 1 115
// Line 115  0 
	.loc 1 115
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
// Line 118 FDECL string func ( ) int  max_offset:63
//    
//    (BLOCK(= (LVAR 40) (ADDR  "Hello world!\n" )):(CALL printf ((ADDR  "%s" ):(LVAR 40):) ):(= (LVAR 63)  "\tHello---" ):(CALL printf ((ADDR  "%s" ):(ADDR (LVAR 63)):) ):(CALL assert_expect ( 125 : 9 :(DEREF (] (ADDR (LVAR 63))  15 )):) ):(CALL assert_expect ( 127 : 119 : 119 :) ):(CALL assert_expect ( 128 : 119 :(DEREF (] (LVAR 40)  6 )):) ):))
	.loc 1 118
string:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 119 (= (LVAR 40) (ADDR  "Hello world!\n" ))
	.loc 1 119
	lea  rax, [rbp - 40]
	push rax
// Line 119 (ADDR  "Hello world!\n" )
	.loc 1 119
	lea  rax, .LS000024[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 120 (CALL printf ((ADDR  "%s" ):(LVAR 40):) )
	.loc 1 120
// Line 120 (LVAR 40)
	.loc 1 120
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 120 (ADDR  "%s" )
	.loc 1 120
	lea  rax, .LS000025[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000041
	mov  rax, 0
	call printf
	jmp  .L000042
.L000041:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000042:
	push rax
	pop  rax
// Line 121 (= (LVAR 63)  "\tHello---" )
	.loc 1 121
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
// Line 124 (CALL printf ((ADDR  "%s" ):(ADDR (LVAR 63)):) )
	.loc 1 124
// Line 124 (ADDR (LVAR 63))
	.loc 1 124
	lea  rax, [rbp - 63]
	push rax
// Line 124 (ADDR  "%s" )
	.loc 1 124
	lea  rax, .LS000027[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000043
	mov  rax, 0
	call printf
	jmp  .L000044
.L000043:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000044:
	push rax
	pop  rax
// Line 125 (CALL assert_expect ( 125 : 9 :(DEREF (] (ADDR (LVAR 63))  15 )):) )
	.loc 1 125
// Line 125 (DEREF (] (ADDR (LVAR 63))  15 ))
	.loc 1 125
// Line 125 (] (ADDR (LVAR 63))  15 )
	.loc 1 125
// Line 125 (ADDR (LVAR 63))
	.loc 1 125
	lea  rax, [rbp - 63]
	push rax
// Line 125  15 
	.loc 1 125
	push 15
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movzx eax, BYTE PTR [rax]
	push rax
// Line 125  9 
	.loc 1 125
	push 9
// Line 125  125 
	.loc 1 125
	push 125
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
// Line 127 (CALL assert_expect ( 127 : 119 : 119 :) )
	.loc 1 127
// Line 127  119 
	.loc 1 127
	push 119
// Line 127  119 
	.loc 1 127
	push 119
// Line 127  127 
	.loc 1 127
	push 127
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
// Line 128 (CALL assert_expect ( 128 : 119 :(DEREF (] (LVAR 40)  6 )):) )
	.loc 1 128
// Line 128 (DEREF (] (LVAR 40)  6 ))
	.loc 1 128
// Line 128 (] (LVAR 40)  6 )
	.loc 1 128
// Line 128 (LVAR 40)
	.loc 1 128
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 128  6 
	.loc 1 128
	push 6
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movzx eax, BYTE PTR [rax]
	push rax
// Line 128  119 
	.loc 1 128
	push 119
// Line 128  128 
	.loc 1 128
	push 128
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
.L.return.string:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global block_scope
// Line 131 FDECL block_scope func ( ) void  max_offset:48
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 133 : 1 :(GVAR i):) ):(= (LVAR 36)  5 ):(CALL assert_expect ( 135 : 5 :(LVAR 36):) ):(BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ( 142 : 4 :(LVAR 48):) ):):(CALL assert_expect ( 144 : 3 :(LVAR 44):) ):):(CALL assert_expect ( 146 : 2 :(LVAR 40):) ):):(CALL assert_expect ( 148 : 5 :(LVAR 36):) ):))
	.loc 1 131
block_scope:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 132 (= (GVAR i)  1 )
	.loc 1 132
	lea  rax, i[rip]
	push rax
// Line 132  1 
	.loc 1 132
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 133 (CALL assert_expect ( 133 : 1 :(GVAR i):) )
	.loc 1 133
// Line 133 (GVAR i)
	.loc 1 133
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 133  1 
	.loc 1 133
	push 1
// Line 133  133 
	.loc 1 133
	push 133
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
// Line 134 (= (LVAR 36)  5 )
	.loc 1 134
	lea  rax, [rbp - 36]
	push rax
// Line 134  5 
	.loc 1 134
	push 5
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 135 (CALL assert_expect ( 135 : 5 :(LVAR 36):) )
	.loc 1 135
// Line 135 (LVAR 36)
	.loc 1 135
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 135  5 
	.loc 1 135
	push 5
// Line 135  135 
	.loc 1 135
	push 135
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
// Line 148 (BLOCK(= (LVAR 40)  2 ):(BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ( 142 : 4 :(LVAR 48):) ):):(CALL assert_expect ( 144 : 3 :(LVAR 44):) ):):(CALL assert_expect ( 146 : 2 :(LVAR 40):) ):)
	.loc 1 148
// Line 137 (= (LVAR 40)  2 )
	.loc 1 137
	lea  rax, [rbp - 40]
	push rax
// Line 137  2 
	.loc 1 137
	push 2
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 146 (BLOCK(= (LVAR 44)  3 ):(BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ( 142 : 4 :(LVAR 48):) ):):(CALL assert_expect ( 144 : 3 :(LVAR 44):) ):)
	.loc 1 146
// Line 139 (= (LVAR 44)  3 )
	.loc 1 139
	lea  rax, [rbp - 44]
	push rax
// Line 139  3 
	.loc 1 139
	push 3
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 144 (BLOCK(= (LVAR 48)  4 ):(CALL assert_expect ( 142 : 4 :(LVAR 48):) ):)
	.loc 1 144
// Line 141 (= (LVAR 48)  4 )
	.loc 1 141
	lea  rax, [rbp - 48]
	push rax
// Line 141  4 
	.loc 1 141
	push 4
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 142 (CALL assert_expect ( 142 : 4 :(LVAR 48):) )
	.loc 1 142
// Line 142 (LVAR 48)
	.loc 1 142
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 142  4 
	.loc 1 142
	push 4
// Line 142  142 
	.loc 1 142
	push 142
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
// Line 144 (CALL assert_expect ( 144 : 3 :(LVAR 44):) )
	.loc 1 144
// Line 144 (LVAR 44)
	.loc 1 144
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 144  3 
	.loc 1 144
	push 3
// Line 144  144 
	.loc 1 144
	push 144
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
// Line 146 (CALL assert_expect ( 146 : 2 :(LVAR 40):) )
	.loc 1 146
// Line 146 (LVAR 40)
	.loc 1 146
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 146  2 
	.loc 1 146
	push 2
// Line 146  146 
	.loc 1 146
	push 146
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
// Line 148 (CALL assert_expect ( 148 : 5 :(LVAR 36):) )
	.loc 1 148
// Line 148 (LVAR 36)
	.loc 1 148
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 148  5 
	.loc 1 148
	push 5
// Line 148  148 
	.loc 1 148
	push 148
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
.L.return.block_scope:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global for_
// Line 151 FDECL for_ func ( ) void  max_offset:44
//    
//    (BLOCK(= (LVAR 36)  100 ):(CALL assert_expect ( 153 : 100 :(LVAR 36):) ):(FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ( 156 : 12 :(LVAR 40):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ( 158 : 9 :(LVAR 44):) ):)):(CALL assert_expect ( 160 : 100 :(LVAR 36):) ):(= (LVAR 36)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)):(CALL assert_expect ( 166 : 6 :(LVAR 36):) ):))
	.loc 1 151
for_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 152 (= (LVAR 36)  100 )
	.loc 1 152
	lea  rax, [rbp - 36]
	push rax
// Line 152  100 
	.loc 1 152
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 153 (CALL assert_expect ( 153 : 100 :(LVAR 36):) )
	.loc 1 153
// Line 153 (LVAR 36)
	.loc 1 153
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 153  100 
	.loc 1 153
	push 100
// Line 153  153 
	.loc 1 153
	push 153
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
// Line 154 (FOR init: (= (LVAR 40)  10 )cond: (<  100  (LVAR 40)) post: (= (LVAR 40) (+= (LVAR 40)  1 )) body (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ( 156 : 12 :(LVAR 40):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ( 158 : 9 :(LVAR 44):) ):))
	.loc 1 154
// Line 154 (= (LVAR 40)  10 )
	.loc 1 154
	lea  rax, [rbp - 40]
	push rax
// Line 154  10 
	.loc 1 154
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000067:
// Line 154 (<  100  (LVAR 40))
	.loc 1 154
// Line 154  100 
	.loc 1 154
	push 100
// Line 154 (LVAR 40)
	.loc 1 154
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
	je   .L000066
// Line 160 (BLOCK(IF (== (LVAR 40)  15 ) BREAK  NULL ):(IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ( 156 : 12 :(LVAR 40):) ) NULL ):(= (LVAR 44)  9 ):(CALL assert_expect ( 158 : 9 :(LVAR 44):) ):)
	.loc 1 160
// Line 156 (IF (== (LVAR 40)  15 ) BREAK  NULL )
	.loc 1 156
// Line 155 (== (LVAR 40)  15 )
	.loc 1 155
// Line 155 (LVAR 40)
	.loc 1 155
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 155  15 
	.loc 1 155
	push 15
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000068
// Line 155 BREAK 
	.loc 1 155
	jmp  .L000066
	jmp  .L000069
.L000068:
.L000069:
// Line 157 (IF (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 )) (CALL assert_expect ( 156 : 12 :(LVAR 40):) ) NULL )
	.loc 1 157
// Line 156 (== (LVAR 40) (* (/ (LVAR 40)  3 )  3 ))
	.loc 1 156
// Line 156 (LVAR 40)
	.loc 1 156
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 156 (* (/ (LVAR 40)  3 )  3 )
	.loc 1 156
// Line 156 (/ (LVAR 40)  3 )
	.loc 1 156
// Line 156 (LVAR 40)
	.loc 1 156
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 156  3 
	.loc 1 156
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 156  3 
	.loc 1 156
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
	je   .L000070
// Line 156 (CALL assert_expect ( 156 : 12 :(LVAR 40):) )
	.loc 1 156
// Line 156 (LVAR 40)
	.loc 1 156
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 156  12 
	.loc 1 156
	push 12
// Line 156  156 
	.loc 1 156
	push 156
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000072
	mov  rax, 0
	call assert_expect
	jmp  .L000073
.L000072:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000073:
	push rax
	pop  rax
	jmp  .L000071
.L000070:
.L000071:
// Line 157 (= (LVAR 44)  9 )
	.loc 1 157
	lea  rax, [rbp - 44]
	push rax
// Line 157  9 
	.loc 1 157
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 158 (CALL assert_expect ( 158 : 9 :(LVAR 44):) )
	.loc 1 158
// Line 158 (LVAR 44)
	.loc 1 158
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 158  9 
	.loc 1 158
	push 9
// Line 158  158 
	.loc 1 158
	push 158
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000074
	mov  rax, 0
	call assert_expect
	jmp  .L000075
.L000074:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000075:
	push rax
	pop  rax
.L000065:
// Line 154 (= (LVAR 40) (+= (LVAR 40)  1 ))
	.loc 1 154
	lea  rax, [rbp - 40]
	push rax
// Line 154 (+= (LVAR 40)  1 )
	.loc 1 154
// Line 154 (LVAR 40)
	.loc 1 154
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
// Line 154  1 
	.loc 1 154
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
	jmp  .L000067
.L000066:
// Line 160 (CALL assert_expect ( 160 : 100 :(LVAR 36):) )
	.loc 1 160
// Line 160 (LVAR 36)
	.loc 1 160
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 160  100 
	.loc 1 160
	push 100
// Line 160  160 
	.loc 1 160
	push 160
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000076
	mov  rax, 0
	call assert_expect
	jmp  .L000077
.L000076:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000077:
	push rax
	pop  rax
// Line 161 (= (LVAR 36)  0 )
	.loc 1 161
	lea  rax, [rbp - 36]
	push rax
// Line 161  0 
	.loc 1 161
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 162 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):))
	.loc 1 162
.L000080:
// Line 162  1 
	.loc 1 162
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000079
// Line 166 (BLOCK(IF (== (LVAR 36)  6 ) BREAK  NULL ):(= (LVAR 36) (+ (LVAR 36)  1 )):)
	.loc 1 166
// Line 164 (IF (== (LVAR 36)  6 ) BREAK  NULL )
	.loc 1 164
// Line 163 (== (LVAR 36)  6 )
	.loc 1 163
// Line 163 (LVAR 36)
	.loc 1 163
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 163  6 
	.loc 1 163
	push 6
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000081
// Line 163 BREAK 
	.loc 1 163
	jmp  .L000079
	jmp  .L000082
.L000081:
.L000082:
// Line 164 (= (LVAR 36) (+ (LVAR 36)  1 ))
	.loc 1 164
	lea  rax, [rbp - 36]
	push rax
// Line 164 (+ (LVAR 36)  1 )
	.loc 1 164
// Line 164 (LVAR 36)
	.loc 1 164
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 164  1 
	.loc 1 164
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
.L000078:
	jmp  .L000080
.L000079:
// Line 166 (CALL assert_expect ( 166 : 6 :(LVAR 36):) )
	.loc 1 166
// Line 166 (LVAR 36)
	.loc 1 166
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 166  6 
	.loc 1 166
	push 6
// Line 166  166 
	.loc 1 166
	push 166
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
.L.return.for_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global switch_
// Line 169 FDECL switch_ func ( int  s ) int  max_offset:44
//    (LVAR 36) 
//    (BLOCK(SWITCH cond: (LVAR 36) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):)):(RETURN (LVAR 40)):))
	.loc 1 169
switch_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 36], edi
// Line 171 (SWITCH cond: (LVAR 36) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):))
	.loc 1 171
	lea  rax, [rbp - 44]
	push rax
// Line 171 (LVAR 36)
	.loc 1 171
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 186 (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):)):(DEFAULT body:(= (LVAR 40)  15 )):)
	.loc 1 186
// Line 172 (CASE cond: 1  body:(BLOCK(= (LVAR 40)  11 ):BREAK :))
	.loc 1 172
// Line 172  1 
	.loc 1 172
	push 1
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000086
// Line 175 (CASE cond: 2  body:(BLOCK))
	.loc 1 175
// Line 175  2 
	.loc 1 175
	push 2
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000087
// Line 176 (CASE cond: 3  body:(BLOCK(= (LVAR 40)  12 ):))
	.loc 1 176
// Line 176  3 
	.loc 1 176
	push 3
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000088
// Line 178 (CASE cond: 4  body:(BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):))
	.loc 1 178
// Line 178  4 
	.loc 1 178
	push 4
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000089
// Line 181 (CASE cond: 5  body:(BLOCK(= (LVAR 40)  14 ):))
	.loc 1 181
// Line 181  5 
	.loc 1 181
	push 5
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000090
// Line 183 (DEFAULT body:(= (LVAR 40)  15 ))
	.loc 1 183
	jmp  .L000091
	jmp  .L000085
.L000086:
// Line 173 (BLOCK(= (LVAR 40)  11 ):BREAK :)
	.loc 1 173
// Line 173 (= (LVAR 40)  11 )
	.loc 1 173
	lea  rax, [rbp - 40]
	push rax
// Line 173  11 
	.loc 1 173
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 174 BREAK 
	.loc 1 174
	jmp  .L000085
.L000087:
// Line 176 (BLOCK)
	.loc 1 176
.L000088:
// Line 177 (BLOCK(= (LVAR 40)  12 ):)
	.loc 1 177
// Line 177 (= (LVAR 40)  12 )
	.loc 1 177
	lea  rax, [rbp - 40]
	push rax
// Line 177  12 
	.loc 1 177
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000089:
// Line 179 (BLOCK(= (LVAR 40)  13 ):(RETURN (LVAR 40)):)
	.loc 1 179
// Line 179 (= (LVAR 40)  13 )
	.loc 1 179
	lea  rax, [rbp - 40]
	push rax
// Line 179  13 
	.loc 1 179
	push 13
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 180 (RETURN (LVAR 40))
	.loc 1 180
// Line 180 (LVAR 40)
	.loc 1 180
	lea  rax, [rbp - 40]
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.switch_
.L000090:
// Line 182 (BLOCK(= (LVAR 40)  14 ):)
	.loc 1 182
// Line 182 (= (LVAR 40)  14 )
	.loc 1 182
	lea  rax, [rbp - 40]
	push rax
// Line 182  14 
	.loc 1 182
	push 14
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000091:
// Line 184 (= (LVAR 40)  15 )
	.loc 1 184
	lea  rax, [rbp - 40]
	push rax
// Line 184  15 
	.loc 1 184
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000085:
// Line 186 (RETURN (LVAR 40))
	.loc 1 186
// Line 186 (LVAR 40)
	.loc 1 186
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
// Line 189 FDECL switch2_ func ( char  s ) int  max_offset:41
//    (LVAR 33) 
//    (BLOCK(SWITCH cond: (LVAR 33) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):)):(RETURN (LVAR 37)):))
	.loc 1 189
switch2_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 33], dil
// Line 191 (SWITCH cond: (LVAR 33) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):))
	.loc 1 191
	lea  rax, [rbp - 41]
	push rax
// Line 191 (LVAR 33)
	.loc 1 191
	lea  rax, [rbp - 33]
	movzx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 202 (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 37)  15 )):)
	.loc 1 202
// Line 192 (CASE cond: 97  body:(BLOCK(= (LVAR 37)  11 ):BREAK :))
	.loc 1 192
// Line 192  97 
	.loc 1 192
	push 97
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000093
// Line 195 (CASE cond: 98  body:(BLOCK))
	.loc 1 195
// Line 195  98 
	.loc 1 195
	push 98
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000094
// Line 196 (CASE cond: 99  body:(BLOCK(= (LVAR 37)  12 ):BREAK :))
	.loc 1 196
// Line 196  99 
	.loc 1 196
	push 99
	lea  rax, [rbp - 41]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000095
// Line 199 (DEFAULT body:(= (LVAR 37)  15 ))
	.loc 1 199
	jmp  .L000096
	jmp  .L000092
.L000093:
// Line 193 (BLOCK(= (LVAR 37)  11 ):BREAK :)
	.loc 1 193
// Line 193 (= (LVAR 37)  11 )
	.loc 1 193
	lea  rax, [rbp - 37]
	push rax
// Line 193  11 
	.loc 1 193
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 194 BREAK 
	.loc 1 194
	jmp  .L000092
.L000094:
// Line 196 (BLOCK)
	.loc 1 196
.L000095:
// Line 197 (BLOCK(= (LVAR 37)  12 ):BREAK :)
	.loc 1 197
// Line 197 (= (LVAR 37)  12 )
	.loc 1 197
	lea  rax, [rbp - 37]
	push rax
// Line 197  12 
	.loc 1 197
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 198 BREAK 
	.loc 1 198
	jmp  .L000092
.L000096:
// Line 200 (= (LVAR 37)  15 )
	.loc 1 200
	lea  rax, [rbp - 37]
	push rax
// Line 200  15 
	.loc 1 200
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000092:
// Line 202 (RETURN (LVAR 37))
	.loc 1 202
// Line 202 (LVAR 37)
	.loc 1 202
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
// Line 231 FDECL list_ func ( ) void  max_offset:56
//    
//    (BLOCK(= (LVAR 36)  16 ):(= (LVAR 44)  0 ):(FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ( 1 :(LVAR 36):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)):(CALL assert_expect ( 240 : 5 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 242 : 4 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 244 : 3 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 246 : 2 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 248 : 1 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0)):(CALL assert_expect ( 250 : 0 :(MEMBER (DEREF (LVAR 44)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 253 : 777 :(MEMBER (GVAR def) payload 0):) ):))
	.loc 1 231
list_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 232 (= (LVAR 36)  16 )
	.loc 1 232
	lea  rax, [rbp - 36]
	push rax
// Line 232  16 
	.loc 1 232
	push 16
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 233 (= (LVAR 44)  0 )
	.loc 1 233
	lea  rax, [rbp - 44]
	push rax
// Line 233  0 
	.loc 1 233
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 234 (FOR init: (= (LVAR 48)  0 )cond: (<  6  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (LVAR 56) (CALL calloc ( 1 :(LVAR 36):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):))
	.loc 1 234
// Line 234 (= (LVAR 48)  0 )
	.loc 1 234
	lea  rax, [rbp - 48]
	push rax
// Line 234  0 
	.loc 1 234
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000099:
// Line 234 (<  6  (LVAR 48))
	.loc 1 234
// Line 234  6 
	.loc 1 234
	push 6
// Line 234 (LVAR 48)
	.loc 1 234
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
	je   .L000098
// Line 240 (BLOCK(= (LVAR 56) (CALL calloc ( 1 :(LVAR 36):) )):(= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48)):(= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44)):(= (LVAR 44) (LVAR 56)):)
	.loc 1 240
// Line 235 (= (LVAR 56) (CALL calloc ( 1 :(LVAR 36):) ))
	.loc 1 235
	lea  rax, [rbp - 56]
	push rax
// Line 235 (CALL calloc ( 1 :(LVAR 36):) )
	.loc 1 235
// Line 235 (LVAR 36)
	.loc 1 235
	lea  rax, [rbp - 36]
	mov  eax, [rax]
	push rax
// Line 235  1 
	.loc 1 235
	push 1
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000100
	mov  rax, 0
	call calloc
	jmp  .L000101
.L000100:
	sub  rsp, 8
	mov  rax, 0
	call calloc
	add  rsp, 8
.L000101:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 236 (= (MEMBER (DEREF (LVAR 56)) payloads 8) (LVAR 48))
	.loc 1 236
// Line 236 (LVAR 56)
	.loc 1 236
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	push rax
// Line 236 (LVAR 48)
	.loc 1 236
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 237 (= (MEMBER (DEREF (LVAR 56)) next 0) (LVAR 44))
	.loc 1 237
// Line 237 (LVAR 56)
	.loc 1 237
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	push rax
// Line 237 (LVAR 44)
	.loc 1 237
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 238 (= (LVAR 44) (LVAR 56))
	.loc 1 238
	lea  rax, [rbp - 44]
	push rax
// Line 238 (LVAR 56)
	.loc 1 238
	lea  rax, [rbp - 56]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000097:
// Line 234 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 234
// Line 234 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 234
	lea  rax, [rbp - 48]
	push rax
// Line 234 (++ (LVAR 48)  1 )
	.loc 1 234
// Line 234 (LVAR 48)
	.loc 1 234
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 234  1 
	.loc 1 234
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 234  1 
	.loc 1 234
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000099
.L000098:
// Line 240 (CALL assert_expect ( 240 : 5 :(MEMBER (DEREF (LVAR 44)) payloads 8):) )
	.loc 1 240
// Line 240 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 240
// Line 240 (LVAR 44)
	.loc 1 240
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 240  5 
	.loc 1 240
	push 5
// Line 240  240 
	.loc 1 240
	push 240
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
// Line 241 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 241
	lea  rax, [rbp - 44]
	push rax
// Line 241 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 241
// Line 241 (LVAR 44)
	.loc 1 241
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
// Line 242 (CALL assert_expect ( 242 : 4 :(MEMBER (DEREF (LVAR 44)) payloads 8):) )
	.loc 1 242
// Line 242 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 242
// Line 242 (LVAR 44)
	.loc 1 242
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 242  4 
	.loc 1 242
	push 4
// Line 242  242 
	.loc 1 242
	push 242
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
// Line 243 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 243
	lea  rax, [rbp - 44]
	push rax
// Line 243 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 243
// Line 243 (LVAR 44)
	.loc 1 243
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
// Line 244 (CALL assert_expect ( 244 : 3 :(MEMBER (DEREF (LVAR 44)) payloads 8):) )
	.loc 1 244
// Line 244 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 244
// Line 244 (LVAR 44)
	.loc 1 244
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 244  3 
	.loc 1 244
	push 3
// Line 244  244 
	.loc 1 244
	push 244
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
// Line 245 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 245
	lea  rax, [rbp - 44]
	push rax
// Line 245 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 245
// Line 245 (LVAR 44)
	.loc 1 245
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
// Line 246 (CALL assert_expect ( 246 : 2 :(MEMBER (DEREF (LVAR 44)) payloads 8):) )
	.loc 1 246
// Line 246 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 246
// Line 246 (LVAR 44)
	.loc 1 246
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 246  2 
	.loc 1 246
	push 2
// Line 246  246 
	.loc 1 246
	push 246
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
// Line 247 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 247
	lea  rax, [rbp - 44]
	push rax
// Line 247 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 247
// Line 247 (LVAR 44)
	.loc 1 247
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
// Line 248 (CALL assert_expect ( 248 : 1 :(MEMBER (DEREF (LVAR 44)) payloads 8):) )
	.loc 1 248
// Line 248 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 248
// Line 248 (LVAR 44)
	.loc 1 248
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 248  1 
	.loc 1 248
	push 1
// Line 248  248 
	.loc 1 248
	push 248
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
// Line 249 (= (LVAR 44) (MEMBER (DEREF (LVAR 44)) next 0))
	.loc 1 249
	lea  rax, [rbp - 44]
	push rax
// Line 249 (MEMBER (DEREF (LVAR 44)) next 0)
	.loc 1 249
// Line 249 (LVAR 44)
	.loc 1 249
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
// Line 250 (CALL assert_expect ( 250 : 0 :(MEMBER (DEREF (LVAR 44)) payloads 8):) )
	.loc 1 250
// Line 250 (MEMBER (DEREF (LVAR 44)) payloads 8)
	.loc 1 250
// Line 250 (LVAR 44)
	.loc 1 250
	lea  rax, [rbp - 44]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 250  0 
	.loc 1 250
	push 0
// Line 250  250 
	.loc 1 250
	push 250
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
// Line 252 (= (MEMBER (GVAR def) payload 0)  777 )
	.loc 1 252
	lea  rax, def[rip]
	add  rax, 0
	push rax
// Line 252  777 
	.loc 1 252
	push 777
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 253 (CALL assert_expect ( 253 : 777 :(MEMBER (GVAR def) payload 0):) )
	.loc 1 253
// Line 253 (MEMBER (GVAR def) payload 0)
	.loc 1 253
	lea  rax, def[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 253  777 
	.loc 1 253
	push 777
// Line 253  253 
	.loc 1 253
	push 253
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
.L.return.list_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global struct_
// Line 256 FDECL struct_ func ( ) void  max_offset:832
//    
//    (BLOCK(CALL assert_expect ( 276 : 32 : 32 :) ):(CALL assert_expect ( 277 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 282 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 283 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 285 : 4 : 4 :) ):(CALL assert_expect ( 286 : 4 : 4 :) ):(= (LVAR 368) (ADDR (LVAR 360))):(= (MEMBER (LVAR 360) size 136)  10 ):(= (MEMBER (LVAR 360) ch 140)  5 ):(= (MEMBER (LVAR 512) size 136)  195 ):(= (MEMBER (LVAR 512) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 297 : 10 :(MEMBER (LVAR 360) size 136):) ):(CALL assert_expect ( 298 : 5 :(MEMBER (LVAR 360) ch 140):) ):(= (MEMBER (LVAR 360) size 136)  110 ):(= (MEMBER (LVAR 360) ch 140)  79 ):(CALL assert_expect ( 301 : 110 :(MEMBER (DEREF (LVAR 368)) size 136):) ):(CALL assert_expect ( 302 : 79 :(MEMBER (DEREF (LVAR 368)) ch 140):) ):(CALL assert_expect ( 303 : 110 :(MEMBER (DEREF (LVAR 368)) size 136):) ):(CALL assert_expect ( 304 : 79 :(MEMBER (DEREF (LVAR 368)) ch 140):) ):(CALL assert_expect ( 305 : 195 :(MEMBER (LVAR 512) size 136):) ):(CALL assert_expect ( 306 : 39 :(MEMBER (LVAR 512) ch 140):) ):(CALL assert_expect ( 307 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 308 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512))):(= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360))):(CALL assert_expect ( 312 : 195 :(MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136):) ):(= (MEMBER (LVAR 672) size 136)  100 ):(= (MEMBER (LVAR 816) size 136)  500 ):(= (LVAR 816) (LVAR 672)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ( 320 : 100 :(MEMBER (LVAR 816) size 136):) ):(= (LVAR 816) (GVAR leaf_global)):(CALL assert_expect ( 322 : 700 :(MEMBER (LVAR 816) size 136):) ):(= (GVAR leaf_global) (LVAR 672)):(CALL assert_expect ( 324 : 100 :(MEMBER (GVAR leaf_global) size 136):) ):(= (MEMBER (LVAR 672) size 136)  999 ):(= (LVAR 824) (ADDR (LVAR 672))):(= (LVAR 832) (ADDR (LVAR 816))):(= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))):(CALL assert_expect ( 329 : 999 :(MEMBER (DEREF (LVAR 832)) size 136):) ):(CALL assert_expect ( 330 : 999 :(MEMBER (GVAR leaf_global) size 136):) ):))
	.loc 1 256
struct_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 832
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 276 (CALL assert_expect ( 276 : 32 : 32 :) )
	.loc 1 276
// Line 276  32 
	.loc 1 276
	push 32
// Line 276  32 
	.loc 1 276
	push 32
// Line 276  276 
	.loc 1 276
	push 276
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
// Line 277 (CALL assert_expect ( 277 : 8 : 8 :) )
	.loc 1 277
// Line 277  8 
	.loc 1 277
	push 8
// Line 277  8 
	.loc 1 277
	push 8
// Line 277  277 
	.loc 1 277
	push 277
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
// Line 279 (= (MEMBER (GVAR pos) col 4)  9 )
	.loc 1 279
	lea  rax, pos[rip]
	add  rax, 4
	push rax
// Line 279  9 
	.loc 1 279
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 280 (= (MEMBER (GVAR pos) row 0)  45 )
	.loc 1 280
	lea  rax, pos[rip]
	add  rax, 0
	push rax
// Line 280  45 
	.loc 1 280
	push 45
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 282 (CALL assert_expect ( 282 : 9 :(MEMBER (GVAR pos) col 4):) )
	.loc 1 282
// Line 282 (MEMBER (GVAR pos) col 4)
	.loc 1 282
	lea  rax, pos[rip]
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 282  9 
	.loc 1 282
	push 9
// Line 282  282 
	.loc 1 282
	push 282
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
// Line 283 (CALL assert_expect ( 283 : 45 :(MEMBER (GVAR pos) row 0):) )
	.loc 1 283
// Line 283 (MEMBER (GVAR pos) row 0)
	.loc 1 283
	lea  rax, pos[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 283  45 
	.loc 1 283
	push 45
// Line 283  283 
	.loc 1 283
	push 283
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
// Line 285 (CALL assert_expect ( 285 : 4 : 4 :) )
	.loc 1 285
// Line 285  4 
	.loc 1 285
	push 4
// Line 285  4 
	.loc 1 285
	push 4
// Line 285  285 
	.loc 1 285
	push 285
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
// Line 286 (CALL assert_expect ( 286 : 4 : 4 :) )
	.loc 1 286
// Line 286  4 
	.loc 1 286
	push 4
// Line 286  4 
	.loc 1 286
	push 4
// Line 286  286 
	.loc 1 286
	push 286
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
// Line 289 (= (LVAR 368) (ADDR (LVAR 360)))
	.loc 1 289
	lea  rax, [rbp - 368]
	push rax
// Line 289 (ADDR (LVAR 360))
	.loc 1 289
	lea  rax, [rbp - 360]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 291 (= (MEMBER (LVAR 360) size 136)  10 )
	.loc 1 291
	lea  rax, [rbp - 360]
	add  rax, 136
	push rax
// Line 291  10 
	.loc 1 291
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 292 (= (MEMBER (LVAR 360) ch 140)  5 )
	.loc 1 292
	lea  rax, [rbp - 360]
	add  rax, 140
	push rax
// Line 292  5 
	.loc 1 292
	push 5
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 293 (= (MEMBER (LVAR 512) size 136)  195 )
	.loc 1 293
	lea  rax, [rbp - 512]
	add  rax, 136
	push rax
// Line 293  195 
	.loc 1 293
	push 195
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 294 (= (MEMBER (LVAR 512) ch 140)  39 )
	.loc 1 294
	lea  rax, [rbp - 512]
	add  rax, 140
	push rax
// Line 294  39 
	.loc 1 294
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 295 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)  184 )
	.loc 1 295
// Line 295 (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )
	.loc 1 295
// Line 295 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 295
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 295  0 
	.loc 1 295
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	push rax
// Line 295  184 
	.loc 1 295
	push 184
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 296 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)  984 )
	.loc 1 296
// Line 296 (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )
	.loc 1 296
// Line 296 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 296
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 296  16 
	.loc 1 296
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 4
	push rax
// Line 296  984 
	.loc 1 296
	push 984
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 297 (CALL assert_expect ( 297 : 10 :(MEMBER (LVAR 360) size 136):) )
	.loc 1 297
// Line 297 (MEMBER (LVAR 360) size 136)
	.loc 1 297
	lea  rax, [rbp - 360]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 297  10 
	.loc 1 297
	push 10
// Line 297  297 
	.loc 1 297
	push 297
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
// Line 298 (CALL assert_expect ( 298 : 5 :(MEMBER (LVAR 360) ch 140):) )
	.loc 1 298
// Line 298 (MEMBER (LVAR 360) ch 140)
	.loc 1 298
	lea  rax, [rbp - 360]
	add  rax, 140
	movzx eax, BYTE PTR [rax]
	push rax
// Line 298  5 
	.loc 1 298
	push 5
// Line 298  298 
	.loc 1 298
	push 298
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
// Line 299 (= (MEMBER (LVAR 360) size 136)  110 )
	.loc 1 299
	lea  rax, [rbp - 360]
	add  rax, 136
	push rax
// Line 299  110 
	.loc 1 299
	push 110
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 300 (= (MEMBER (LVAR 360) ch 140)  79 )
	.loc 1 300
	lea  rax, [rbp - 360]
	add  rax, 140
	push rax
// Line 300  79 
	.loc 1 300
	push 79
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 301 (CALL assert_expect ( 301 : 110 :(MEMBER (DEREF (LVAR 368)) size 136):) )
	.loc 1 301
// Line 301 (MEMBER (DEREF (LVAR 368)) size 136)
	.loc 1 301
// Line 301 (LVAR 368)
	.loc 1 301
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 301  110 
	.loc 1 301
	push 110
// Line 301  301 
	.loc 1 301
	push 301
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
// Line 302 (CALL assert_expect ( 302 : 79 :(MEMBER (DEREF (LVAR 368)) ch 140):) )
	.loc 1 302
// Line 302 (MEMBER (DEREF (LVAR 368)) ch 140)
	.loc 1 302
// Line 302 (LVAR 368)
	.loc 1 302
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 140
	movzx eax, BYTE PTR [rax]
	push rax
// Line 302  79 
	.loc 1 302
	push 79
// Line 302  302 
	.loc 1 302
	push 302
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
// Line 303 (CALL assert_expect ( 303 : 110 :(MEMBER (DEREF (LVAR 368)) size 136):) )
	.loc 1 303
// Line 303 (MEMBER (DEREF (LVAR 368)) size 136)
	.loc 1 303
// Line 303 (LVAR 368)
	.loc 1 303
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 303  110 
	.loc 1 303
	push 110
// Line 303  303 
	.loc 1 303
	push 303
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
// Line 304 (CALL assert_expect ( 304 : 79 :(MEMBER (DEREF (LVAR 368)) ch 140):) )
	.loc 1 304
// Line 304 (MEMBER (DEREF (LVAR 368)) ch 140)
	.loc 1 304
// Line 304 (LVAR 368)
	.loc 1 304
	lea  rax, [rbp - 368]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 140
	movzx eax, BYTE PTR [rax]
	push rax
// Line 304  79 
	.loc 1 304
	push 79
// Line 304  304 
	.loc 1 304
	push 304
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
// Line 305 (CALL assert_expect ( 305 : 195 :(MEMBER (LVAR 512) size 136):) )
	.loc 1 305
// Line 305 (MEMBER (LVAR 512) size 136)
	.loc 1 305
	lea  rax, [rbp - 512]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 305  195 
	.loc 1 305
	push 195
// Line 305  305 
	.loc 1 305
	push 305
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
// Line 306 (CALL assert_expect ( 306 : 39 :(MEMBER (LVAR 512) ch 140):) )
	.loc 1 306
// Line 306 (MEMBER (LVAR 512) ch 140)
	.loc 1 306
	lea  rax, [rbp - 512]
	add  rax, 140
	movzx eax, BYTE PTR [rax]
	push rax
// Line 306  39 
	.loc 1 306
	push 39
// Line 306  306 
	.loc 1 306
	push 306
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
// Line 307 (CALL assert_expect ( 307 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0):) )
	.loc 1 307
// Line 307 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )) row 0)
	.loc 1 307
// Line 307 (] (ADDR (MEMBER (LVAR 512) ary 0))  0 )
	.loc 1 307
// Line 307 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 307
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 307  0 
	.loc 1 307
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
// Line 307  184 
	.loc 1 307
	push 184
// Line 307  307 
	.loc 1 307
	push 307
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
// Line 308 (CALL assert_expect ( 308 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4):) )
	.loc 1 308
// Line 308 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )) col 4)
	.loc 1 308
// Line 308 (] (ADDR (MEMBER (LVAR 512) ary 0))  16 )
	.loc 1 308
// Line 308 (ADDR (MEMBER (LVAR 512) ary 0))
	.loc 1 308
	lea  rax, [rbp - 512]
	add  rax, 0
	push rax
// Line 308  16 
	.loc 1 308
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
// Line 308  984 
	.loc 1 308
	push 984
// Line 308  308 
	.loc 1 308
	push 308
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
// Line 310 (= (MEMBER (LVAR 528) right 8) (ADDR (LVAR 512)))
	.loc 1 310
	lea  rax, [rbp - 528]
	add  rax, 8
	push rax
// Line 310 (ADDR (LVAR 512))
	.loc 1 310
	lea  rax, [rbp - 512]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 311 (= (MEMBER (LVAR 528) left 0) (ADDR (LVAR 360)))
	.loc 1 311
	lea  rax, [rbp - 528]
	add  rax, 0
	push rax
// Line 311 (ADDR (LVAR 360))
	.loc 1 311
	lea  rax, [rbp - 360]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 312 (CALL assert_expect ( 312 : 195 :(MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136):) )
	.loc 1 312
// Line 312 (MEMBER (DEREF (MEMBER (LVAR 528) right 8)) size 136)
	.loc 1 312
// Line 312 (MEMBER (LVAR 528) right 8)
	.loc 1 312
	lea  rax, [rbp - 528]
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 312  195 
	.loc 1 312
	push 195
// Line 312  312 
	.loc 1 312
	push 312
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
// Line 316 (= (MEMBER (LVAR 672) size 136)  100 )
	.loc 1 316
	lea  rax, [rbp - 672]
	add  rax, 136
	push rax
// Line 316  100 
	.loc 1 316
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 317 (= (MEMBER (LVAR 816) size 136)  500 )
	.loc 1 317
	lea  rax, [rbp - 816]
	add  rax, 136
	push rax
// Line 317  500 
	.loc 1 317
	push 500
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 318 (= (LVAR 816) (LVAR 672))
	.loc 1 318
	lea  rax, [rbp - 816]
	push rax
// Line 318 (LVAR 672)
	.loc 1 318
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
// Line 319 (= (MEMBER (GVAR leaf_global) size 136)  700 )
	.loc 1 319
	lea  rax, leaf_global[rip]
	add  rax, 136
	push rax
// Line 319  700 
	.loc 1 319
	push 700
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 320 (CALL assert_expect ( 320 : 100 :(MEMBER (LVAR 816) size 136):) )
	.loc 1 320
// Line 320 (MEMBER (LVAR 816) size 136)
	.loc 1 320
	lea  rax, [rbp - 816]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 320  100 
	.loc 1 320
	push 100
// Line 320  320 
	.loc 1 320
	push 320
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
// Line 321 (= (LVAR 816) (GVAR leaf_global))
	.loc 1 321
	lea  rax, [rbp - 816]
	push rax
// Line 321 (GVAR leaf_global)
	.loc 1 321
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
// Line 322 (CALL assert_expect ( 322 : 700 :(MEMBER (LVAR 816) size 136):) )
	.loc 1 322
// Line 322 (MEMBER (LVAR 816) size 136)
	.loc 1 322
	lea  rax, [rbp - 816]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 322  700 
	.loc 1 322
	push 700
// Line 322  322 
	.loc 1 322
	push 322
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
// Line 323 (= (GVAR leaf_global) (LVAR 672))
	.loc 1 323
	lea  rax, leaf_global[rip]
	push rax
// Line 323 (LVAR 672)
	.loc 1 323
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
// Line 324 (CALL assert_expect ( 324 : 100 :(MEMBER (GVAR leaf_global) size 136):) )
	.loc 1 324
// Line 324 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 324
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 324  100 
	.loc 1 324
	push 100
// Line 324  324 
	.loc 1 324
	push 324
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
// Line 325 (= (MEMBER (LVAR 672) size 136)  999 )
	.loc 1 325
	lea  rax, [rbp - 672]
	add  rax, 136
	push rax
// Line 325  999 
	.loc 1 325
	push 999
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 326 (= (LVAR 824) (ADDR (LVAR 672)))
	.loc 1 326
	lea  rax, [rbp - 824]
	push rax
// Line 326 (ADDR (LVAR 672))
	.loc 1 326
	lea  rax, [rbp - 672]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 327 (= (LVAR 832) (ADDR (LVAR 816)))
	.loc 1 327
	lea  rax, [rbp - 832]
	push rax
// Line 327 (ADDR (LVAR 816))
	.loc 1 327
	lea  rax, [rbp - 816]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 328 (= (GVAR leaf_global) (= (DEREF (LVAR 832)) (DEREF (LVAR 824))))
	.loc 1 328
	lea  rax, leaf_global[rip]
	push rax
// Line 328 (= (DEREF (LVAR 832)) (DEREF (LVAR 824)))
	.loc 1 328
// Line 328 (LVAR 832)
	.loc 1 328
	lea  rax, [rbp - 832]
	mov  rax, [rax]
	push rax
	pop  rax
	push rax
// Line 328 (DEREF (LVAR 824))
	.loc 1 328
// Line 328 (LVAR 824)
	.loc 1 328
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
// Line 329 (CALL assert_expect ( 329 : 999 :(MEMBER (DEREF (LVAR 832)) size 136):) )
	.loc 1 329
// Line 329 (MEMBER (DEREF (LVAR 832)) size 136)
	.loc 1 329
// Line 329 (LVAR 832)
	.loc 1 329
	lea  rax, [rbp - 832]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 329  999 
	.loc 1 329
	push 999
// Line 329  329 
	.loc 1 329
	push 329
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
// Line 330 (CALL assert_expect ( 330 : 999 :(MEMBER (GVAR leaf_global) size 136):) )
	.loc 1 330
// Line 330 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 330
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 330  999 
	.loc 1 330
	push 999
// Line 330  330 
	.loc 1 330
	push 330
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
.L.return.struct_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_board
// Line 335 FDECL print_board func ( * [8] int  board ) void  max_offset:48
//    (LVAR 40) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((ADDR  "Q " ):) ) NULL ):(CALL printf ((ADDR  ". " ):) ):)):(CALL printf ((ADDR  "\n" ):) ):)):(CALL printf ((ADDR  "\n\n" ):) ):))
	.loc 1 335
print_board:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
// Line 336 (++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 )
	.loc 1 336
// Line 336 (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))
	.loc 1 336
	lea  rax, q8_count[rip]
	push rax
// Line 336 (++ (GVAR q8_count)  1 )
	.loc 1 336
// Line 336 (GVAR q8_count)
	.loc 1 336
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
// Line 336  1 
	.loc 1 336
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 336  1 
	.loc 1 336
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 337 (RETURN NULL )
	.loc 1 337
	jmp  .L.return.print_board
// Line 338 (FOR init: (= (LVAR 44)  0 )cond: (<  8  (LVAR 44)) post: (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((ADDR  "Q " ):) ) NULL ):(CALL printf ((ADDR  ". " ):) ):)):(CALL printf ((ADDR  "\n" ):) ):))
	.loc 1 338
// Line 338 (= (LVAR 44)  0 )
	.loc 1 338
	lea  rax, [rbp - 44]
	push rax
// Line 338  0 
	.loc 1 338
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000162:
// Line 338 (<  8  (LVAR 44))
	.loc 1 338
// Line 338  8 
	.loc 1 338
	push 8
// Line 338 (LVAR 44)
	.loc 1 338
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
	je   .L000161
// Line 345 (BLOCK(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((ADDR  "Q " ):) ) NULL ):(CALL printf ((ADDR  ". " ):) ):)):(CALL printf ((ADDR  "\n" ):) ):)
	.loc 1 345
// Line 339 (FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((ADDR  "Q " ):) ) NULL ):(CALL printf ((ADDR  ". " ):) ):))
	.loc 1 339
// Line 339 (= (LVAR 48)  0 )
	.loc 1 339
	lea  rax, [rbp - 48]
	push rax
// Line 339  0 
	.loc 1 339
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000165:
// Line 339 (<  8  (LVAR 48))
	.loc 1 339
// Line 339  8 
	.loc 1 339
	push 8
// Line 339 (LVAR 48)
	.loc 1 339
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
	je   .L000164
// Line 343 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((ADDR  "Q " ):) ) NULL ):(CALL printf ((ADDR  ". " ):) ):)
	.loc 1 343
// Line 341 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))) (CALL printf ((ADDR  "Q " ):) ) NULL )
	.loc 1 341
// Line 340 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))
	.loc 1 340
// Line 340 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 340
// Line 340 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 340
// Line 340 (] (LVAR 40) (LVAR 44))
	.loc 1 340
// Line 340 (LVAR 40)
	.loc 1 340
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 340 (LVAR 44)
	.loc 1 340
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
// Line 340 (LVAR 48)
	.loc 1 340
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
	je   .L000166
// Line 340 (CALL printf ((ADDR  "Q " ):) )
	.loc 1 340
// Line 340 (ADDR  "Q " )
	.loc 1 340
	lea  rax, .LS000028[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000168
	mov  rax, 0
	call printf
	jmp  .L000169
.L000168:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000169:
	push rax
	pop  rax
	jmp  .L000167
.L000166:
.L000167:
// Line 341 (CALL printf ((ADDR  ". " ):) )
	.loc 1 341
// Line 341 (ADDR  ". " )
	.loc 1 341
	lea  rax, .LS000029[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000170
	mov  rax, 0
	call printf
	jmp  .L000171
.L000170:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000171:
	push rax
	pop  rax
.L000163:
// Line 339 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 339
// Line 339 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 339
	lea  rax, [rbp - 48]
	push rax
// Line 339 (++ (LVAR 48)  1 )
	.loc 1 339
// Line 339 (LVAR 48)
	.loc 1 339
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 339  1 
	.loc 1 339
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 339  1 
	.loc 1 339
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000165
.L000164:
// Line 343 (CALL printf ((ADDR  "\n" ):) )
	.loc 1 343
// Line 343 (ADDR  "\n" )
	.loc 1 343
	lea  rax, .LS000030[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000172
	mov  rax, 0
	call printf
	jmp  .L000173
.L000172:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000173:
	push rax
	pop  rax
.L000160:
// Line 338 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 338
// Line 338 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 338
	lea  rax, [rbp - 44]
	push rax
// Line 338 (++ (LVAR 44)  1 )
	.loc 1 338
// Line 338 (LVAR 44)
	.loc 1 338
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 338  1 
	.loc 1 338
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 338  1 
	.loc 1 338
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000162
.L000161:
// Line 345 (CALL printf ((ADDR  "\n\n" ):) )
	.loc 1 345
// Line 345 (ADDR  "\n\n" )
	.loc 1 345
	lea  rax, .LS000031[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000174
	mov  rax, 0
	call printf
	jmp  .L000175
.L000174:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000175:
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
// Line 348 FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int  max_offset:56
//    (LVAR 40) (LVAR 48) 
//    (BLOCK(FOR init: (= (LVAR 52)  0 )cond: (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
	.loc 1 348
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
// Line 349 (FOR init: (= (LVAR 52)  0 )cond: (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)) post: (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):))
	.loc 1 349
// Line 349 (= (LVAR 52)  0 )
	.loc 1 349
	lea  rax, [rbp - 52]
	push rax
// Line 349  0 
	.loc 1 349
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000178:
// Line 349 (< (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))
	.loc 1 349
// Line 349 (MEMBER (DEREF (LVAR 48)) row 0)
	.loc 1 349
// Line 349 (LVAR 48)
	.loc 1 349
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 349 (LVAR 52)
	.loc 1 349
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
	je   .L000177
// Line 357 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))):(IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL ):)
	.loc 1 357
// Line 351 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))) (RETURN  1 ) NULL )
	.loc 1 351
// Line 350 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4)))
	.loc 1 350
// Line 350 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (MEMBER (DEREF (LVAR 48)) col 4))
	.loc 1 350
// Line 350 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 350
// Line 350 (] (LVAR 40) (LVAR 52))
	.loc 1 350
// Line 350 (LVAR 40)
	.loc 1 350
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 350 (LVAR 52)
	.loc 1 350
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
// Line 350 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 350
// Line 350 (LVAR 48)
	.loc 1 350
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
	je   .L000179
// Line 350 (RETURN  1 )
	.loc 1 350
// Line 350  1 
	.loc 1 350
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000180
.L000179:
.L000180:
// Line 351 (= (LVAR 56) (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52)))
	.loc 1 351
	lea  rax, [rbp - 56]
	push rax
// Line 351 (- (MEMBER (DEREF (LVAR 48)) row 0) (LVAR 52))
	.loc 1 351
// Line 351 (MEMBER (DEREF (LVAR 48)) row 0)
	.loc 1 351
// Line 351 (LVAR 48)
	.loc 1 351
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 351 (LVAR 52)
	.loc 1 351
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
// Line 354 (IF (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 354
// Line 352 (< (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )  0 )
	.loc 1 352
// Line 352 (+ (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))  1 )
	.loc 1 352
// Line 352 (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 352
// Line 352 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 352
// Line 352 (LVAR 48)
	.loc 1 352
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 352 (LVAR 56)
	.loc 1 352
	lea  rax, [rbp - 56]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 352  1 
	.loc 1 352
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 352  0 
	.loc 1 352
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000181
// Line 354 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL )
	.loc 1 354
// Line 353 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))))
	.loc 1 353
// Line 353 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 353
// Line 353 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 353
// Line 353 (] (LVAR 40) (LVAR 52))
	.loc 1 353
// Line 353 (LVAR 40)
	.loc 1 353
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 353 (LVAR 52)
	.loc 1 353
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
// Line 353 (- (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 353
// Line 353 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 353
// Line 353 (LVAR 48)
	.loc 1 353
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 353 (LVAR 56)
	.loc 1 353
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
	je   .L000183
// Line 353 (RETURN  1 )
	.loc 1 353
// Line 353  1 
	.loc 1 353
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000184
.L000183:
.L000184:
	jmp  .L000182
.L000181:
.L000182:
// Line 356 (IF (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 356
// Line 354 (<  8  (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 354
// Line 354  8 
	.loc 1 354
	push 8
// Line 354 (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 354
// Line 354 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 354
// Line 354 (LVAR 48)
	.loc 1 354
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 354 (LVAR 56)
	.loc 1 354
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
	je   .L000185
// Line 356 (IF (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))) (RETURN  1 ) NULL )
	.loc 1 356
// Line 355 (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))))
	.loc 1 355
// Line 355 (] (ADDR (DEREF (] (LVAR 40) (LVAR 52)))) (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56)))
	.loc 1 355
// Line 355 (ADDR (DEREF (] (LVAR 40) (LVAR 52))))
	.loc 1 355
// Line 355 (] (LVAR 40) (LVAR 52))
	.loc 1 355
// Line 355 (LVAR 40)
	.loc 1 355
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 355 (LVAR 52)
	.loc 1 355
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
// Line 355 (+ (MEMBER (DEREF (LVAR 48)) col 4) (LVAR 56))
	.loc 1 355
// Line 355 (MEMBER (DEREF (LVAR 48)) col 4)
	.loc 1 355
// Line 355 (LVAR 48)
	.loc 1 355
	lea  rax, [rbp - 48]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 355 (LVAR 56)
	.loc 1 355
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
	je   .L000187
// Line 355 (RETURN  1 )
	.loc 1 355
// Line 355  1 
	.loc 1 355
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000188
.L000187:
.L000188:
	jmp  .L000186
.L000185:
.L000186:
.L000176:
// Line 349 (++ (= (LVAR 52) (++ (LVAR 52)  1 ))  1 )
	.loc 1 349
// Line 349 (= (LVAR 52) (++ (LVAR 52)  1 ))
	.loc 1 349
	lea  rax, [rbp - 52]
	push rax
// Line 349 (++ (LVAR 52)  1 )
	.loc 1 349
// Line 349 (LVAR 52)
	.loc 1 349
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
// Line 349  1 
	.loc 1 349
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 349  1 
	.loc 1 349
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000178
.L000177:
// Line 357 (RETURN  0 )
	.loc 1 357
// Line 357  0 
	.loc 1 357
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
// Line 360 FDECL solve func ( * [8] int  board , int  row ) void  max_offset:56
//    (LVAR 40) (LVAR 44) 
//    (BLOCK(IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((LVAR 40):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((LVAR 40):(ADDR (LVAR 56)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((LVAR 40):(+ (LVAR 44)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)):))
	.loc 1 360
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
// Line 365 (IF (== (LVAR 44)  8 ) (BLOCK(CALL print_board ((LVAR 40):) ):(RETURN NULL ):) NULL )
	.loc 1 365
// Line 361 (== (LVAR 44)  8 )
	.loc 1 361
// Line 361 (LVAR 44)
	.loc 1 361
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 361  8 
	.loc 1 361
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000189
// Line 365 (BLOCK(CALL print_board ((LVAR 40):) ):(RETURN NULL ):)
	.loc 1 365
// Line 362 (CALL print_board ((LVAR 40):) )
	.loc 1 362
// Line 362 (LVAR 40)
	.loc 1 362
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000191
	mov  rax, 0
	call print_board
	jmp  .L000192
.L000191:
	sub  rsp, 8
	mov  rax, 0
	call print_board
	add  rsp, 8
.L000192:
	push rax
	pop  rax
// Line 363 (RETURN NULL )
	.loc 1 363
	jmp  .L.return.solve
	jmp  .L000190
.L000189:
.L000190:
// Line 365 (FOR init: (= (LVAR 48)  0 )cond: (<  8  (LVAR 48)) post: (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((LVAR 40):(ADDR (LVAR 56)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((LVAR 40):(+ (LVAR 44)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):))
	.loc 1 365
// Line 365 (= (LVAR 48)  0 )
	.loc 1 365
	lea  rax, [rbp - 48]
	push rax
// Line 365  0 
	.loc 1 365
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000195:
// Line 365 (<  8  (LVAR 48))
	.loc 1 365
// Line 365  8 
	.loc 1 365
	push 8
// Line 365 (LVAR 48)
	.loc 1 365
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
	je   .L000194
// Line 376 (BLOCK(= (MEMBER (LVAR 56) row 0) (LVAR 44)):(= (MEMBER (LVAR 56) col 4) (LVAR 48)):(IF (== (CALL conflict ((LVAR 40):(ADDR (LVAR 56)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((LVAR 40):(+ (LVAR 44)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL ):)
	.loc 1 376
// Line 367 (= (MEMBER (LVAR 56) row 0) (LVAR 44))
	.loc 1 367
	lea  rax, [rbp - 56]
	add  rax, 0
	push rax
// Line 367 (LVAR 44)
	.loc 1 367
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 368 (= (MEMBER (LVAR 56) col 4) (LVAR 48))
	.loc 1 368
	lea  rax, [rbp - 56]
	add  rax, 4
	push rax
// Line 368 (LVAR 48)
	.loc 1 368
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 375 (IF (== (CALL conflict ((LVAR 40):(ADDR (LVAR 56)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((LVAR 40):(+ (LVAR 44)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):) NULL )
	.loc 1 375
// Line 369 (== (CALL conflict ((LVAR 40):(ADDR (LVAR 56)):) )  0 )
	.loc 1 369
// Line 369 (CALL conflict ((LVAR 40):(ADDR (LVAR 56)):) )
	.loc 1 369
// Line 369 (ADDR (LVAR 56))
	.loc 1 369
	lea  rax, [rbp - 56]
	push rax
// Line 369 (LVAR 40)
	.loc 1 369
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000198
	mov  rax, 0
	call conflict
	jmp  .L000199
.L000198:
	sub  rsp, 8
	mov  rax, 0
	call conflict
	add  rsp, 8
.L000199:
	push rax
// Line 369  0 
	.loc 1 369
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000196
// Line 375 (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 ):(CALL solve ((LVAR 40):(+ (LVAR 44)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 ):)
	.loc 1 375
// Line 371 (= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  1 )
	.loc 1 371
// Line 371 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 371
// Line 371 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 371
// Line 371 (] (LVAR 40) (LVAR 44))
	.loc 1 371
// Line 371 (LVAR 40)
	.loc 1 371
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 371 (LVAR 44)
	.loc 1 371
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
// Line 371 (LVAR 48)
	.loc 1 371
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
// Line 371  1 
	.loc 1 371
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 372 (CALL solve ((LVAR 40):(+ (LVAR 44)  1 ):) )
	.loc 1 372
// Line 372 (+ (LVAR 44)  1 )
	.loc 1 372
// Line 372 (LVAR 44)
	.loc 1 372
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 372  1 
	.loc 1 372
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 372 (LVAR 40)
	.loc 1 372
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000200
	mov  rax, 0
	call solve
	jmp  .L000201
.L000200:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000201:
	push rax
	pop  rax
// Line 373 (= (DEREF (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48)))  0 )
	.loc 1 373
// Line 373 (] (ADDR (DEREF (] (LVAR 40) (LVAR 44)))) (LVAR 48))
	.loc 1 373
// Line 373 (ADDR (DEREF (] (LVAR 40) (LVAR 44))))
	.loc 1 373
// Line 373 (] (LVAR 40) (LVAR 44))
	.loc 1 373
// Line 373 (LVAR 40)
	.loc 1 373
	lea  rax, [rbp - 40]
	mov  rax, [rax]
	push rax
// Line 373 (LVAR 44)
	.loc 1 373
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
// Line 373 (LVAR 48)
	.loc 1 373
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
// Line 373  0 
	.loc 1 373
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000197
.L000196:
.L000197:
.L000193:
// Line 365 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 365
// Line 365 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 365
	lea  rax, [rbp - 48]
	push rax
// Line 365 (++ (LVAR 48)  1 )
	.loc 1 365
// Line 365 (LVAR 48)
	.loc 1 365
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 365  1 
	.loc 1 365
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
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
	jmp  .L000195
.L000194:
.L.return.solve:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global q8
// Line 378 FDECL q8 func ( ) int  max_offset:296
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))):(CALL solve ((ADDR (LVAR 288)): 0 :) ):(RETURN (GVAR q8_count)):))
	.loc 1 378
q8:
	push rbp
	mov  rbp, rsp
	sub  rsp, 304
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 380 (= (GVAR q8_count)  0 )
	.loc 1 380
	lea  rax, q8_count[rip]
	push rax
// Line 380  0 
	.loc 1 380
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 381 (FOR init: (= (LVAR 292)  0 )cond: (<  8  (LVAR 292)) post: (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 ) body (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 )))
	.loc 1 381
// Line 381 (= (LVAR 292)  0 )
	.loc 1 381
	lea  rax, [rbp - 292]
	push rax
// Line 381  0 
	.loc 1 381
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000204:
// Line 381 (<  8  (LVAR 292))
	.loc 1 381
// Line 381  8 
	.loc 1 381
	push 8
// Line 381 (LVAR 292)
	.loc 1 381
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
	je   .L000203
// Line 382 (FOR init: (= (LVAR 296)  0 )cond: (<  8  (LVAR 296)) post: (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 ))
	.loc 1 382
// Line 382 (= (LVAR 296)  0 )
	.loc 1 382
	lea  rax, [rbp - 296]
	push rax
// Line 382  0 
	.loc 1 382
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000207:
// Line 382 (<  8  (LVAR 296))
	.loc 1 382
// Line 382  8 
	.loc 1 382
	push 8
// Line 382 (LVAR 296)
	.loc 1 382
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
	je   .L000206
// Line 382 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296)))  0 )
	.loc 1 382
// Line 382 (] (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292)))) (LVAR 296))
	.loc 1 382
// Line 382 (ADDR (DEREF (] (ADDR (LVAR 288)) (LVAR 292))))
	.loc 1 382
// Line 382 (] (ADDR (LVAR 288)) (LVAR 292))
	.loc 1 382
// Line 382 (ADDR (LVAR 288))
	.loc 1 382
	lea  rax, [rbp - 288]
	push rax
// Line 382 (LVAR 292)
	.loc 1 382
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
// Line 382 (LVAR 296)
	.loc 1 382
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
// Line 382  0 
	.loc 1 382
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000205:
// Line 382 (++ (= (LVAR 296) (++ (LVAR 296)  1 ))  1 )
	.loc 1 382
// Line 382 (= (LVAR 296) (++ (LVAR 296)  1 ))
	.loc 1 382
	lea  rax, [rbp - 296]
	push rax
// Line 382 (++ (LVAR 296)  1 )
	.loc 1 382
// Line 382 (LVAR 296)
	.loc 1 382
	lea  rax, [rbp - 296]
	mov  eax, [rax]
	push rax
// Line 382  1 
	.loc 1 382
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 382  1 
	.loc 1 382
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000207
.L000206:
.L000202:
// Line 381 (++ (= (LVAR 292) (++ (LVAR 292)  1 ))  1 )
	.loc 1 381
// Line 381 (= (LVAR 292) (++ (LVAR 292)  1 ))
	.loc 1 381
	lea  rax, [rbp - 292]
	push rax
// Line 381 (++ (LVAR 292)  1 )
	.loc 1 381
// Line 381 (LVAR 292)
	.loc 1 381
	lea  rax, [rbp - 292]
	mov  eax, [rax]
	push rax
// Line 381  1 
	.loc 1 381
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 381  1 
	.loc 1 381
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000204
.L000203:
// Line 383 (CALL solve ((ADDR (LVAR 288)): 0 :) )
	.loc 1 383
// Line 383  0 
	.loc 1 383
	push 0
// Line 383 (ADDR (LVAR 288))
	.loc 1 383
	lea  rax, [rbp - 288]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000208
	mov  rax, 0
	call solve
	jmp  .L000209
.L000208:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000209:
	push rax
	pop  rax
// Line 384 (RETURN (GVAR q8_count))
	.loc 1 384
// Line 384 (GVAR q8_count)
	.loc 1 384
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
// Line 387 FDECL fun func ( * int  p ) int  max_offset:40
//    (LVAR 40) 
//    (BLOCK(RETURN (DEREF (LVAR 40))):))
	.loc 1 387
fun:
	push rbp
	mov  rbp, rsp
	sub  rsp, 48
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 40], rdi
// Line 387 (RETURN (DEREF (LVAR 40)))
	.loc 1 387
// Line 387 (DEREF (LVAR 40))
	.loc 1 387
// Line 387 (LVAR 40)
	.loc 1 387
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
// Line 389 FDECL main func ( ) int  max_offset:60
//    
//    (BLOCK(= (LVAR 40) (CAST * void   0 )):(CALL assert_expect ( 394 : 1 : 1 :) ):(CALL assert_expect ( 395 : 0 : 0 :) ):(CALL assert_expect ( 396 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 398 : 70 :(*  10  (+  2   5 )):) ):(CALL printf ((ADDR  "%s" ):(ADDR (GVAR str_ary)):) ):(CALL assert_expect ( 401 : 1979 :(GVAR i):) ):(CALL assert_expect ( 402 : 2015 :(GVAR j):) ):(CALL assert_expect ( 403 : 24 :(GVAR s):) ):(CALL assert_expect ( 405 : 9 : 9 :) ):(CALL assert_expect ( 406 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 407 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 408 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 409 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 410 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 411 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 412 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 413 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 414 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 415 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 416 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 417 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 418 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 419 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 420 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 421 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 422 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 423 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 424 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 425 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 426 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 44)  0 ):(CALL assert_expect ( 428 : 0 :(&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 429 : 0 :(LVAR 44):) ):(CALL assert_expect ( 430 : 0 :(&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 431 : 1 :(LVAR 44):) ):(CALL assert_expect ( 432 : 1 :(&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 433 : 2 :(LVAR 44):) ):(CALL assert_expect ( 434 : 1 :(||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 435 : 3 :(LVAR 44):) ):(CALL assert_expect ( 436 : 1 :(||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 437 : 3 :(LVAR 44):) ):(= (LVAR 44)  0 ):(CALL assert_expect ( 439 : 0 :(||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 440 : 1 :(LVAR 44):) ):(= (LVAR 44)  0 ):(CALL assert_expect ( 442 : 0 :(||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) ):(CALL assert_expect ( 443 : 1 :(LVAR 44):) ):(CALL assert_expect ( 444 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) ):(CALL assert_expect ( 445 : 1 :(LVAR 44):) ):(CALL assert_expect ( 446 : 1 :(!  0 ):) ):(CALL assert_expect ( 447 : 0 :(!  1 ):) ):(CALL assert_expect ( 448 : 0 :(! (! (!  1 ))):) ):(CALL assert_expect ( 450 : 256 :(<<  1   8 ):) ):(CALL assert_expect ( 451 : 32 :(>>  512   4 ):) ):(= (LVAR 48)  10 ):(CALL assert_expect ( 456 : 15 :(= (LVAR 48) (+= (LVAR 48)  5 )):) ):(CALL assert_expect ( 457 : 15 :(LVAR 48):) ):(CALL assert_expect ( 458 : 8 :(= (LVAR 48) (-= (LVAR 48)  7 )):) ):(CALL assert_expect ( 459 : 8 :(LVAR 48):) ):(CALL assert_expect ( 460 : 40 :(= (LVAR 48) (*= (LVAR 48)  5 )):) ):(CALL assert_expect ( 461 : 40 :(LVAR 48):) ):(CALL assert_expect ( 462 : 4 :(= (LVAR 48) (/= (LVAR 48)  10 )):) ):(CALL assert_expect ( 463 : 4 :(LVAR 48):) ):(CALL assert_expect ( 466 : 4 :(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):) ):(CALL assert_expect ( 467 : 5 :(LVAR 48):) ):(CALL assert_expect ( 468 : 5 :(-- (= (LVAR 48) (-- (LVAR 48)  1 ))  1 ):) ):(CALL assert_expect ( 469 : 4 :(LVAR 48):) ):(= (LVAR 52) (/  100  (LVAR 48))):(CALL assert_expect ( 474 : 25 :(LVAR 52):) ):(= (LVAR 56)  77 ):(IF (== (LVAR 56)  77 ) (= (LVAR 56)  55 ) (= (LVAR 56)  66 )):(CALL assert_expect ( 482 : 55 :(LVAR 56):) ):(CALL assert_expect ( 483 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 506 : 2 : 2 :) ):(CALL assert_expect ( 507 : 4 : 4 :) ):(CALL assert_expect ( 508 : 10 : 10 :) ):(CALL assert_expect ( 509 : 12 : 12 :) ):(CALL assert_expect ( 511 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 512 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 513 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 514 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 515 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 516 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 519 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 520 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 521 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 522 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 525 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 528 : 0 : 0 :) ):(CALL assert_expect ( 529 : 1 : 1 :) ):(CALL assert_expect ( 530 : 2 : 2 :) ):(CALL assert_expect ( 531 : 3 : 3 :) ):(CALL assert_expect ( 533 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 534 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 535 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 536 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 537 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 538 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 540 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 541 : 1664 :(<<  13   7 ):) ):(CALL printf ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
	.loc 1 389
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 64
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 393 (= (LVAR 40) (CAST * void   0 ))
	.loc 1 393
	lea  rax, [rbp - 40]
	push rax
// Line 392 (CAST * void   0 )
	.loc 1 392
// Line 392  0 
	.loc 1 392
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 394 (CALL assert_expect ( 394 : 1 : 1 :) )
	.loc 1 394
// Line 390  1 
	.loc 1 390
	push 1
// Line 394  1 
	.loc 1 394
	push 1
// Line 394  394 
	.loc 1 394
	push 394
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
// Line 395 (CALL assert_expect ( 395 : 0 : 0 :) )
	.loc 1 395
// Line 391  0 
	.loc 1 391
	push 0
// Line 395  0 
	.loc 1 395
	push 0
// Line 395  395 
	.loc 1 395
	push 395
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
// Line 396 (CALL assert_expect ( 396 : 0 :(CAST int  (CAST * void   0 )):) )
	.loc 1 396
// Line 396 (CAST int  (CAST * void   0 ))
	.loc 1 396
// Line 392 (CAST * void   0 )
	.loc 1 392
// Line 392  0 
	.loc 1 392
	push 0
// Line 396  0 
	.loc 1 396
	push 0
// Line 396  396 
	.loc 1 396
	push 396
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
// Line 398 (CALL assert_expect ( 398 : 70 :(*  10  (+  2   5 )):) )
	.loc 1 398
// Line 397 (*  10  (+  2   5 ))
	.loc 1 397
// Line 398  10 
	.loc 1 398
	push 10
// Line 397 (+  2   5 )
	.loc 1 397
// Line 398  2 
	.loc 1 398
	push 2
// Line 398  5 
	.loc 1 398
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 398  70 
	.loc 1 398
	push 70
// Line 398  398 
	.loc 1 398
	push 398
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
// Line 399 (CALL printf ((ADDR  "%s" ):(ADDR (GVAR str_ary)):) )
	.loc 1 399
// Line 399 (ADDR (GVAR str_ary))
	.loc 1 399
	lea  rax, str_ary[rip]
	push rax
// Line 399 (ADDR  "%s" )
	.loc 1 399
	lea  rax, .LS000032[rip]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000218
	mov  rax, 0
	call printf
	jmp  .L000219
.L000218:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000219:
	push rax
	pop  rax
// Line 401 (CALL assert_expect ( 401 : 1979 :(GVAR i):) )
	.loc 1 401
// Line 401 (GVAR i)
	.loc 1 401
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 401  1979 
	.loc 1 401
	push 1979
// Line 401  401 
	.loc 1 401
	push 401
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
// Line 402 (CALL assert_expect ( 402 : 2015 :(GVAR j):) )
	.loc 1 402
// Line 402 (GVAR j)
	.loc 1 402
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 402  2015 
	.loc 1 402
	push 2015
// Line 402  402 
	.loc 1 402
	push 402
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
// Line 403 (CALL assert_expect ( 403 : 24 :(GVAR s):) )
	.loc 1 403
// Line 403 (GVAR s)
	.loc 1 403
	lea  rax, s[rip]
	movzx eax, BYTE PTR [rax]
	push rax
// Line 403  24 
	.loc 1 403
	push 24
// Line 403  403 
	.loc 1 403
	push 403
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
// Line 405 (CALL assert_expect ( 405 : 9 : 9 :) )
	.loc 1 405
// Line 405  9 
	.loc 1 405
	push 9
// Line 405  9 
	.loc 1 405
	push 9
// Line 405  405 
	.loc 1 405
	push 405
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
// Line 406 (CALL assert_expect ( 406 : 4 :(+ (-  0   3 )  7 ):) )
	.loc 1 406
// Line 406 (+ (-  0   3 )  7 )
	.loc 1 406
// Line 406 (-  0   3 )
	.loc 1 406
// Line 406  0 
	.loc 1 406
	push 0
// Line 406  3 
	.loc 1 406
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 406  7 
	.loc 1 406
	push 7
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 406  4 
	.loc 1 406
	push 4
// Line 406  406 
	.loc 1 406
	push 406
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
// Line 407 (CALL assert_expect ( 407 : 21 :(- (+  5   20 )  4 ):) )
	.loc 1 407
// Line 407 (- (+  5   20 )  4 )
	.loc 1 407
// Line 407 (+  5   20 )
	.loc 1 407
// Line 407  5 
	.loc 1 407
	push 5
// Line 407  20 
	.loc 1 407
	push 20
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 407  4 
	.loc 1 407
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 407  21 
	.loc 1 407
	push 21
// Line 407  407 
	.loc 1 407
	push 407
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
// Line 408 (CALL assert_expect ( 408 : 21 :(+  5  (*  4   4 )):) )
	.loc 1 408
// Line 408 (+  5  (*  4   4 ))
	.loc 1 408
// Line 408  5 
	.loc 1 408
	push 5
// Line 408 (*  4   4 )
	.loc 1 408
// Line 408  4 
	.loc 1 408
	push 4
// Line 408  4 
	.loc 1 408
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 408  21 
	.loc 1 408
	push 21
// Line 408  408 
	.loc 1 408
	push 408
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
// Line 409 (CALL assert_expect ( 409 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) )
	.loc 1 409
// Line 409 (* (*  4  (-  5   2 )) (-  4   2 ))
	.loc 1 409
// Line 409 (*  4  (-  5   2 ))
	.loc 1 409
// Line 409  4 
	.loc 1 409
	push 4
// Line 409 (-  5   2 )
	.loc 1 409
// Line 409  5 
	.loc 1 409
	push 5
// Line 409  2 
	.loc 1 409
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 409 (-  4   2 )
	.loc 1 409
// Line 409  4 
	.loc 1 409
	push 4
// Line 409  2 
	.loc 1 409
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 409  24 
	.loc 1 409
	push 24
// Line 409  409 
	.loc 1 409
	push 409
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
// Line 410 (CALL assert_expect ( 410 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) )
	.loc 1 410
// Line 410 (- (+  6  (*  3   4 )) (/  15   3 ))
	.loc 1 410
// Line 410 (+  6  (*  3   4 ))
	.loc 1 410
// Line 410  6 
	.loc 1 410
	push 6
// Line 410 (*  3   4 )
	.loc 1 410
// Line 410  3 
	.loc 1 410
	push 3
// Line 410  4 
	.loc 1 410
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 410 (/  15   3 )
	.loc 1 410
// Line 410  15 
	.loc 1 410
	push 15
// Line 410  3 
	.loc 1 410
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
// Line 410  13 
	.loc 1 410
	push 13
// Line 410  410 
	.loc 1 410
	push 410
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
// Line 411 (CALL assert_expect ( 411 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) )
	.loc 1 411
// Line 411 (/ (* (+  6   3 ) (-  15   4 ))  3 )
	.loc 1 411
// Line 411 (* (+  6   3 ) (-  15   4 ))
	.loc 1 411
// Line 411 (+  6   3 )
	.loc 1 411
// Line 411  6 
	.loc 1 411
	push 6
// Line 411  3 
	.loc 1 411
	push 3
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 411 (-  15   4 )
	.loc 1 411
// Line 411  15 
	.loc 1 411
	push 15
// Line 411  4 
	.loc 1 411
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 411  3 
	.loc 1 411
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 411  33 
	.loc 1 411
	push 33
// Line 411  411 
	.loc 1 411
	push 411
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
// Line 412 (CALL assert_expect ( 412 : 0 :(==  3  (+  3   1 )):) )
	.loc 1 412
// Line 412 (==  3  (+  3   1 ))
	.loc 1 412
// Line 412  3 
	.loc 1 412
	push 3
// Line 412 (+  3   1 )
	.loc 1 412
// Line 412  3 
	.loc 1 412
	push 3
// Line 412  1 
	.loc 1 412
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
// Line 412  0 
	.loc 1 412
	push 0
// Line 412  412 
	.loc 1 412
	push 412
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
// Line 413 (CALL assert_expect ( 413 : 1 :(!=  4  (*  4   2 )):) )
	.loc 1 413
// Line 413 (!=  4  (*  4   2 ))
	.loc 1 413
// Line 413  4 
	.loc 1 413
	push 4
// Line 413 (*  4   2 )
	.loc 1 413
// Line 413  4 
	.loc 1 413
	push 4
// Line 413  2 
	.loc 1 413
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
// Line 413  1 
	.loc 1 413
	push 1
// Line 413  413 
	.loc 1 413
	push 413
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
// Line 414 (CALL assert_expect ( 414 : 0 :(!=  3  (*  1   3 )):) )
	.loc 1 414
// Line 414 (!=  3  (*  1   3 ))
	.loc 1 414
// Line 414  3 
	.loc 1 414
	push 3
// Line 414 (*  1   3 )
	.loc 1 414
// Line 414  1 
	.loc 1 414
	push 1
// Line 414  3 
	.loc 1 414
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
// Line 414  0 
	.loc 1 414
	push 0
// Line 414  414 
	.loc 1 414
	push 414
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
// Line 415 (CALL assert_expect ( 415 : 1 :(>=  5  (-  8   4 )):) )
	.loc 1 415
// Line 415 (>=  5  (-  8   4 ))
	.loc 1 415
// Line 415  5 
	.loc 1 415
	push 5
// Line 415 (-  8   4 )
	.loc 1 415
// Line 415  8 
	.loc 1 415
	push 8
// Line 415  4 
	.loc 1 415
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
// Line 415  1 
	.loc 1 415
	push 1
// Line 415  415 
	.loc 1 415
	push 415
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
// Line 416 (CALL assert_expect ( 416 : 1 :(>=  5  (-  7   2 )):) )
	.loc 1 416
// Line 416 (>=  5  (-  7   2 ))
	.loc 1 416
// Line 416  5 
	.loc 1 416
	push 5
// Line 416 (-  7   2 )
	.loc 1 416
// Line 416  7 
	.loc 1 416
	push 7
// Line 416  2 
	.loc 1 416
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
// Line 416  1 
	.loc 1 416
	push 1
// Line 416  416 
	.loc 1 416
	push 416
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
// Line 417 (CALL assert_expect ( 417 : 0 :(>= (-  11   8 )  5 ):) )
	.loc 1 417
// Line 417 (>= (-  11   8 )  5 )
	.loc 1 417
// Line 417 (-  11   8 )
	.loc 1 417
// Line 417  11 
	.loc 1 417
	push 11
// Line 417  8 
	.loc 1 417
	push 8
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 417  5 
	.loc 1 417
	push 5
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 417  0 
	.loc 1 417
	push 0
// Line 417  417 
	.loc 1 417
	push 417
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
// Line 418 (CALL assert_expect ( 418 : 1 :(<= (*  2   30 )  3 ):) )
	.loc 1 418
// Line 418 (<= (*  2   30 )  3 )
	.loc 1 418
// Line 418 (*  2   30 )
	.loc 1 418
// Line 418  2 
	.loc 1 418
	push 2
// Line 418  30 
	.loc 1 418
	push 30
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 418  3 
	.loc 1 418
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 418  1 
	.loc 1 418
	push 1
// Line 418  418 
	.loc 1 418
	push 418
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
// Line 419 (CALL assert_expect ( 419 : 1 :(<= (/  9   3 )  3 ):) )
	.loc 1 419
// Line 419 (<= (/  9   3 )  3 )
	.loc 1 419
// Line 419 (/  9   3 )
	.loc 1 419
// Line 419  9 
	.loc 1 419
	push 9
// Line 419  3 
	.loc 1 419
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 419  3 
	.loc 1 419
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 419  1 
	.loc 1 419
	push 1
// Line 419  419 
	.loc 1 419
	push 419
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
// Line 420 (CALL assert_expect ( 420 : 0 :(<= (-  20   18 )  3 ):) )
	.loc 1 420
// Line 420 (<= (-  20   18 )  3 )
	.loc 1 420
// Line 420 (-  20   18 )
	.loc 1 420
// Line 420  20 
	.loc 1 420
	push 20
// Line 420  18 
	.loc 1 420
	push 18
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 420  3 
	.loc 1 420
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 420  0 
	.loc 1 420
	push 0
// Line 420  420 
	.loc 1 420
	push 420
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
// Line 421 (CALL assert_expect ( 421 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) )
	.loc 1 421
// Line 421 (== (+ (* (-  0   5 )  2 )  10 )  0 )
	.loc 1 421
// Line 421 (+ (* (-  0   5 )  2 )  10 )
	.loc 1 421
// Line 421 (* (-  0   5 )  2 )
	.loc 1 421
// Line 421 (-  0   5 )
	.loc 1 421
// Line 421  0 
	.loc 1 421
	push 0
// Line 421  5 
	.loc 1 421
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 421  2 
	.loc 1 421
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 421  10 
	.loc 1 421
	push 10
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 421  0 
	.loc 1 421
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
// Line 421  1 
	.loc 1 421
	push 1
// Line 421  421 
	.loc 1 421
	push 421
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
// Line 422 (CALL assert_expect ( 422 : 1 :(== (/  6   2 ) (/  9   3 )):) )
	.loc 1 422
// Line 422 (== (/  6   2 ) (/  9   3 ))
	.loc 1 422
// Line 422 (/  6   2 )
	.loc 1 422
// Line 422  6 
	.loc 1 422
	push 6
// Line 422  2 
	.loc 1 422
	push 2
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 422 (/  9   3 )
	.loc 1 422
// Line 422  9 
	.loc 1 422
	push 9
// Line 422  3 
	.loc 1 422
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
// Line 422  1 
	.loc 1 422
	push 1
// Line 422  422 
	.loc 1 422
	push 422
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
// Line 423 (CALL assert_expect ( 423 : 1 :(< (+  4   1 )  4 ):) )
	.loc 1 423
// Line 423 (< (+  4   1 )  4 )
	.loc 1 423
// Line 423 (+  4   1 )
	.loc 1 423
// Line 423  4 
	.loc 1 423
	push 4
// Line 423  1 
	.loc 1 423
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 423  4 
	.loc 1 423
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 423  1 
	.loc 1 423
	push 1
// Line 423  423 
	.loc 1 423
	push 423
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
// Line 424 (CALL assert_expect ( 424 : 1 :(> (+  1   4 )  4 ):) )
	.loc 1 424
// Line 424 (> (+  1   4 )  4 )
	.loc 1 424
// Line 424 (+  1   4 )
	.loc 1 424
// Line 424  1 
	.loc 1 424
	push 1
// Line 424  4 
	.loc 1 424
	push 4
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 424  4 
	.loc 1 424
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 424  1 
	.loc 1 424
	push 1
// Line 424  424 
	.loc 1 424
	push 424
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
// Line 425 (CALL assert_expect ( 425 : 0 :(< (-  4   1 )  4 ):) )
	.loc 1 425
// Line 425 (< (-  4   1 )  4 )
	.loc 1 425
// Line 425 (-  4   1 )
	.loc 1 425
// Line 425  4 
	.loc 1 425
	push 4
// Line 425  1 
	.loc 1 425
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 425  4 
	.loc 1 425
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 425  0 
	.loc 1 425
	push 0
// Line 425  425 
	.loc 1 425
	push 425
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
// Line 426 (CALL assert_expect ( 426 : 0 :(> (-  1   4 )  4 ):) )
	.loc 1 426
// Line 426 (> (-  1   4 )  4 )
	.loc 1 426
// Line 426 (-  1   4 )
	.loc 1 426
// Line 426  1 
	.loc 1 426
	push 1
// Line 426  4 
	.loc 1 426
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 426  4 
	.loc 1 426
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 426  0 
	.loc 1 426
	push 0
// Line 426  426 
	.loc 1 426
	push 426
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
// Line 427 (= (LVAR 44)  0 )
	.loc 1 427
	lea  rax, [rbp - 44]
	push rax
// Line 427  0 
	.loc 1 427
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 428 (CALL assert_expect ( 428 : 0 :(&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) )
	.loc 1 428
// Line 428 (&&  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 428
// Line 428  0 
	.loc 1 428
	push 0
	pop  rax
	cmp  eax, 0
	je   .L000270
// Line 428 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 428
// Line 428 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 428
	lea  rax, [rbp - 44]
	push rax
// Line 428 (++ (LVAR 44)  1 )
	.loc 1 428
// Line 428 (LVAR 44)
	.loc 1 428
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 428  1 
	.loc 1 428
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 428  1 
	.loc 1 428
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000270
	mov  rax, 1
	jmp  .L000271
.L000270:
	mov  rax, 0
.L000271:
	push  rax
// Line 428  0 
	.loc 1 428
	push 0
// Line 428  428 
	.loc 1 428
	push 428
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
// Line 429 (CALL assert_expect ( 429 : 0 :(LVAR 44):) )
	.loc 1 429
// Line 429 (LVAR 44)
	.loc 1 429
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 429  0 
	.loc 1 429
	push 0
// Line 429  429 
	.loc 1 429
	push 429
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
// Line 430 (CALL assert_expect ( 430 : 0 :(&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) )
	.loc 1 430
// Line 430 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 430
// Line 430  1 
	.loc 1 430
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000276
// Line 430 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 430
// Line 430 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 430
	lea  rax, [rbp - 44]
	push rax
// Line 430 (++ (LVAR 44)  1 )
	.loc 1 430
// Line 430 (LVAR 44)
	.loc 1 430
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 430  1 
	.loc 1 430
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 430  1 
	.loc 1 430
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000276
	mov  rax, 1
	jmp  .L000277
.L000276:
	mov  rax, 0
.L000277:
	push  rax
// Line 430  0 
	.loc 1 430
	push 0
// Line 430  430 
	.loc 1 430
	push 430
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
// Line 431 (CALL assert_expect ( 431 : 1 :(LVAR 44):) )
	.loc 1 431
// Line 431 (LVAR 44)
	.loc 1 431
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 431  1 
	.loc 1 431
	push 1
// Line 431  431 
	.loc 1 431
	push 431
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
// Line 432 (CALL assert_expect ( 432 : 1 :(&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) )
	.loc 1 432
// Line 432 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 432
// Line 432  1 
	.loc 1 432
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000282
// Line 432 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 432
// Line 432 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 432
	lea  rax, [rbp - 44]
	push rax
// Line 432 (++ (LVAR 44)  1 )
	.loc 1 432
// Line 432 (LVAR 44)
	.loc 1 432
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 432  1 
	.loc 1 432
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 432  1 
	.loc 1 432
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000282
	mov  rax, 1
	jmp  .L000283
.L000282:
	mov  rax, 0
.L000283:
	push  rax
// Line 432  1 
	.loc 1 432
	push 1
// Line 432  432 
	.loc 1 432
	push 432
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
// Line 433 (CALL assert_expect ( 433 : 2 :(LVAR 44):) )
	.loc 1 433
// Line 433 (LVAR 44)
	.loc 1 433
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 433  2 
	.loc 1 433
	push 2
// Line 433  433 
	.loc 1 433
	push 433
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
// Line 434 (CALL assert_expect ( 434 : 1 :(||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) )
	.loc 1 434
// Line 434 (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 434
// Line 434  0 
	.loc 1 434
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000288
// Line 434 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 434
// Line 434 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 434
	lea  rax, [rbp - 44]
	push rax
// Line 434 (++ (LVAR 44)  1 )
	.loc 1 434
// Line 434 (LVAR 44)
	.loc 1 434
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 434  1 
	.loc 1 434
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 434  1 
	.loc 1 434
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000288
	mov  rax, 0
	jmp  .L000289
.L000288:
	mov  rax, 1
.L000289:
	push  rax
// Line 434  1 
	.loc 1 434
	push 1
// Line 434  434 
	.loc 1 434
	push 434
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
// Line 435 (CALL assert_expect ( 435 : 3 :(LVAR 44):) )
	.loc 1 435
// Line 435 (LVAR 44)
	.loc 1 435
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 435  3 
	.loc 1 435
	push 3
// Line 435  435 
	.loc 1 435
	push 435
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
// Line 436 (CALL assert_expect ( 436 : 1 :(||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) )
	.loc 1 436
// Line 436 (||  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 436
// Line 436  1 
	.loc 1 436
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000294
// Line 436 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 436
// Line 436 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 436
	lea  rax, [rbp - 44]
	push rax
// Line 436 (++ (LVAR 44)  1 )
	.loc 1 436
// Line 436 (LVAR 44)
	.loc 1 436
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 436  1 
	.loc 1 436
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
	.loc 1 436
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000294
	mov  rax, 0
	jmp  .L000295
.L000294:
	mov  rax, 1
.L000295:
	push  rax
// Line 436  1 
	.loc 1 436
	push 1
// Line 436  436 
	.loc 1 436
	push 436
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
// Line 437 (CALL assert_expect ( 437 : 3 :(LVAR 44):) )
	.loc 1 437
// Line 437 (LVAR 44)
	.loc 1 437
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 437  3 
	.loc 1 437
	push 3
// Line 437  437 
	.loc 1 437
	push 437
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
// Line 438 (= (LVAR 44)  0 )
	.loc 1 438
	lea  rax, [rbp - 44]
	push rax
// Line 438  0 
	.loc 1 438
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 439 (CALL assert_expect ( 439 : 0 :(||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) )
	.loc 1 439
// Line 439 (||  0  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 439
// Line 439  0 
	.loc 1 439
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000300
// Line 439 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 439
// Line 439 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 439
	lea  rax, [rbp - 44]
	push rax
// Line 439 (++ (LVAR 44)  1 )
	.loc 1 439
// Line 439 (LVAR 44)
	.loc 1 439
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 439  1 
	.loc 1 439
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 439  1 
	.loc 1 439
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
// Line 439  0 
	.loc 1 439
	push 0
// Line 439  439 
	.loc 1 439
	push 439
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
// Line 440 (CALL assert_expect ( 440 : 1 :(LVAR 44):) )
	.loc 1 440
// Line 440 (LVAR 44)
	.loc 1 440
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 440  1 
	.loc 1 440
	push 1
// Line 440  440 
	.loc 1 440
	push 440
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
// Line 441 (= (LVAR 44)  0 )
	.loc 1 441
	lea  rax, [rbp - 44]
	push rax
// Line 441  0 
	.loc 1 441
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 442 (CALL assert_expect ( 442 : 0 :(||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))):) )
	.loc 1 442
// Line 442 (||  0  (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )))
	.loc 1 442
// Line 442  0 
	.loc 1 442
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000306
// Line 442 (&&  1  (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 442
// Line 442  1 
	.loc 1 442
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000308
// Line 442 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 442
// Line 442 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 442
	lea  rax, [rbp - 44]
	push rax
// Line 442 (++ (LVAR 44)  1 )
	.loc 1 442
// Line 442 (LVAR 44)
	.loc 1 442
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 442  1 
	.loc 1 442
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 442  1 
	.loc 1 442
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000308
	mov  rax, 1
	jmp  .L000309
.L000308:
	mov  rax, 0
.L000309:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000306
	mov  rax, 0
	jmp  .L000307
.L000306:
	mov  rax, 1
.L000307:
	push  rax
// Line 442  0 
	.loc 1 442
	push 0
// Line 442  442 
	.loc 1 442
	push 442
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
// Line 443 (CALL assert_expect ( 443 : 1 :(LVAR 44):) )
	.loc 1 443
// Line 443 (LVAR 44)
	.loc 1 443
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 443  1 
	.loc 1 443
	push 1
// Line 443  443 
	.loc 1 443
	push 443
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
// Line 444 (CALL assert_expect ( 444 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )):) )
	.loc 1 444
// Line 444 (|| (&&  1   1 ) (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 ))
	.loc 1 444
// Line 444 (&&  1   1 )
	.loc 1 444
// Line 444  1 
	.loc 1 444
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000316
// Line 444  1 
	.loc 1 444
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000316
	mov  rax, 1
	jmp  .L000317
.L000316:
	mov  rax, 0
.L000317:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000314
// Line 444 (++ (= (LVAR 44) (++ (LVAR 44)  1 ))  1 )
	.loc 1 444
// Line 444 (= (LVAR 44) (++ (LVAR 44)  1 ))
	.loc 1 444
	lea  rax, [rbp - 44]
	push rax
// Line 444 (++ (LVAR 44)  1 )
	.loc 1 444
// Line 444 (LVAR 44)
	.loc 1 444
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 444  1 
	.loc 1 444
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 444  1 
	.loc 1 444
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000314
	mov  rax, 0
	jmp  .L000315
.L000314:
	mov  rax, 1
.L000315:
	push  rax
// Line 444  1 
	.loc 1 444
	push 1
// Line 444  444 
	.loc 1 444
	push 444
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
// Line 445 (CALL assert_expect ( 445 : 1 :(LVAR 44):) )
	.loc 1 445
// Line 445 (LVAR 44)
	.loc 1 445
	lea  rax, [rbp - 44]
	mov  eax, [rax]
	push rax
// Line 445  1 
	.loc 1 445
	push 1
// Line 445  445 
	.loc 1 445
	push 445
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
// Line 446 (CALL assert_expect ( 446 : 1 :(!  0 ):) )
	.loc 1 446
// Line 446 (!  0 )
	.loc 1 446
// Line 446  0 
	.loc 1 446
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000322
	mov  rax, 1
	jmp  .L000323
.L000322:
	mov  rax, 0
.L000323:
	push rax
// Line 446  1 
	.loc 1 446
	push 1
// Line 446  446 
	.loc 1 446
	push 446
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
// Line 447 (CALL assert_expect ( 447 : 0 :(!  1 ):) )
	.loc 1 447
// Line 447 (!  1 )
	.loc 1 447
// Line 447  1 
	.loc 1 447
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000326
	mov  rax, 1
	jmp  .L000327
.L000326:
	mov  rax, 0
.L000327:
	push rax
// Line 447  0 
	.loc 1 447
	push 0
// Line 447  447 
	.loc 1 447
	push 447
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
// Line 448 (CALL assert_expect ( 448 : 0 :(! (! (!  1 ))):) )
	.loc 1 448
// Line 448 (! (! (!  1 )))
	.loc 1 448
// Line 448 (! (!  1 ))
	.loc 1 448
// Line 448 (!  1 )
	.loc 1 448
// Line 448  1 
	.loc 1 448
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000334
	mov  rax, 1
	jmp  .L000335
.L000334:
	mov  rax, 0
.L000335:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000332
	mov  rax, 1
	jmp  .L000333
.L000332:
	mov  rax, 0
.L000333:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000330
	mov  rax, 1
	jmp  .L000331
.L000330:
	mov  rax, 0
.L000331:
	push rax
// Line 448  0 
	.loc 1 448
	push 0
// Line 448  448 
	.loc 1 448
	push 448
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
// Line 450 (CALL assert_expect ( 450 : 256 :(<<  1   8 ):) )
	.loc 1 450
// Line 450 (<<  1   8 )
	.loc 1 450
// Line 450  1 
	.loc 1 450
	push 1
// Line 450  8 
	.loc 1 450
	push 8
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 450  256 
	.loc 1 450
	push 256
// Line 450  450 
	.loc 1 450
	push 450
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
// Line 451 (CALL assert_expect ( 451 : 32 :(>>  512   4 ):) )
	.loc 1 451
// Line 451 (>>  512   4 )
	.loc 1 451
// Line 451  512 
	.loc 1 451
	push 512
// Line 451  4 
	.loc 1 451
	push 4
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 451  32 
	.loc 1 451
	push 32
// Line 451  451 
	.loc 1 451
	push 451
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
// Line 455 (= (LVAR 48)  10 )
	.loc 1 455
	lea  rax, [rbp - 48]
	push rax
// Line 455  10 
	.loc 1 455
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 456 (CALL assert_expect ( 456 : 15 :(= (LVAR 48) (+= (LVAR 48)  5 )):) )
	.loc 1 456
// Line 456 (= (LVAR 48) (+= (LVAR 48)  5 ))
	.loc 1 456
	lea  rax, [rbp - 48]
	push rax
// Line 456 (+= (LVAR 48)  5 )
	.loc 1 456
// Line 456 (LVAR 48)
	.loc 1 456
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 456  5 
	.loc 1 456
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 456  15 
	.loc 1 456
	push 15
// Line 456  456 
	.loc 1 456
	push 456
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
// Line 457 (CALL assert_expect ( 457 : 15 :(LVAR 48):) )
	.loc 1 457
// Line 457 (LVAR 48)
	.loc 1 457
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 457  15 
	.loc 1 457
	push 15
// Line 457  457 
	.loc 1 457
	push 457
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
// Line 458 (CALL assert_expect ( 458 : 8 :(= (LVAR 48) (-= (LVAR 48)  7 )):) )
	.loc 1 458
// Line 458 (= (LVAR 48) (-= (LVAR 48)  7 ))
	.loc 1 458
	lea  rax, [rbp - 48]
	push rax
// Line 458 (-= (LVAR 48)  7 )
	.loc 1 458
// Line 458 (LVAR 48)
	.loc 1 458
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 458  7 
	.loc 1 458
	push 7
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 458  8 
	.loc 1 458
	push 8
// Line 458  458 
	.loc 1 458
	push 458
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
// Line 459 (CALL assert_expect ( 459 : 8 :(LVAR 48):) )
	.loc 1 459
// Line 459 (LVAR 48)
	.loc 1 459
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 459  8 
	.loc 1 459
	push 8
// Line 459  459 
	.loc 1 459
	push 459
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
// Line 460 (CALL assert_expect ( 460 : 40 :(= (LVAR 48) (*= (LVAR 48)  5 )):) )
	.loc 1 460
// Line 460 (= (LVAR 48) (*= (LVAR 48)  5 ))
	.loc 1 460
	lea  rax, [rbp - 48]
	push rax
// Line 460 (*= (LVAR 48)  5 )
	.loc 1 460
// Line 460 (LVAR 48)
	.loc 1 460
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 460  5 
	.loc 1 460
	push 5
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 460  40 
	.loc 1 460
	push 40
// Line 460  460 
	.loc 1 460
	push 460
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
// Line 461 (CALL assert_expect ( 461 : 40 :(LVAR 48):) )
	.loc 1 461
// Line 461 (LVAR 48)
	.loc 1 461
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 461  40 
	.loc 1 461
	push 40
// Line 461  461 
	.loc 1 461
	push 461
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
// Line 462 (CALL assert_expect ( 462 : 4 :(= (LVAR 48) (/= (LVAR 48)  10 )):) )
	.loc 1 462
// Line 462 (= (LVAR 48) (/= (LVAR 48)  10 ))
	.loc 1 462
	lea  rax, [rbp - 48]
	push rax
// Line 462 (/= (LVAR 48)  10 )
	.loc 1 462
// Line 462 (LVAR 48)
	.loc 1 462
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 462  10 
	.loc 1 462
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
// Line 462  4 
	.loc 1 462
	push 4
// Line 462  462 
	.loc 1 462
	push 462
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
// Line 463 (CALL assert_expect ( 463 : 4 :(LVAR 48):) )
	.loc 1 463
// Line 463 (LVAR 48)
	.loc 1 463
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 463  4 
	.loc 1 463
	push 4
// Line 463  463 
	.loc 1 463
	push 463
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
// Line 466 (CALL assert_expect ( 466 : 4 :(++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 ):) )
	.loc 1 466
// Line 466 (++ (= (LVAR 48) (++ (LVAR 48)  1 ))  1 )
	.loc 1 466
// Line 466 (= (LVAR 48) (++ (LVAR 48)  1 ))
	.loc 1 466
	lea  rax, [rbp - 48]
	push rax
// Line 466 (++ (LVAR 48)  1 )
	.loc 1 466
// Line 466 (LVAR 48)
	.loc 1 466
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 466  1 
	.loc 1 466
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 466  1 
	.loc 1 466
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 466  4 
	.loc 1 466
	push 4
// Line 466  466 
	.loc 1 466
	push 466
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
// Line 467 (CALL assert_expect ( 467 : 5 :(LVAR 48):) )
	.loc 1 467
// Line 467 (LVAR 48)
	.loc 1 467
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 467  5 
	.loc 1 467
	push 5
// Line 467  467 
	.loc 1 467
	push 467
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
// Line 468 (CALL assert_expect ( 468 : 5 :(-- (= (LVAR 48) (-- (LVAR 48)  1 ))  1 ):) )
	.loc 1 468
// Line 468 (-- (= (LVAR 48) (-- (LVAR 48)  1 ))  1 )
	.loc 1 468
// Line 468 (= (LVAR 48) (-- (LVAR 48)  1 ))
	.loc 1 468
	lea  rax, [rbp - 48]
	push rax
// Line 468 (-- (LVAR 48)  1 )
	.loc 1 468
// Line 468 (LVAR 48)
	.loc 1 468
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 468  1 
	.loc 1 468
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 468  1 
	.loc 1 468
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 468  5 
	.loc 1 468
	push 5
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
// Line 469 (CALL assert_expect ( 469 : 4 :(LVAR 48):) )
	.loc 1 469
// Line 469 (LVAR 48)
	.loc 1 469
	lea  rax, [rbp - 48]
	mov  eax, [rax]
	push rax
// Line 469  4 
	.loc 1 469
	push 4
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
// Line 473 (= (LVAR 52) (/  100  (LVAR 48)))
	.loc 1 473
	lea  rax, [rbp - 52]
	push rax
// Line 473 (/  100  (LVAR 48))
	.loc 1 473
// Line 473  100 
	.loc 1 473
	push 100
// Line 473 (LVAR 48)
	.loc 1 473
	lea  rax, [rbp - 48]
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
// Line 474 (CALL assert_expect ( 474 : 25 :(LVAR 52):) )
	.loc 1 474
// Line 474 (LVAR 52)
	.loc 1 474
	lea  rax, [rbp - 52]
	mov  eax, [rax]
	push rax
// Line 474  25 
	.loc 1 474
	push 25
// Line 474  474 
	.loc 1 474
	push 474
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
// Line 477 (= (LVAR 56)  77 )
	.loc 1 477
	lea  rax, [rbp - 56]
	push rax
// Line 477  77 
	.loc 1 477
	push 77
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 482 (IF (== (LVAR 56)  77 ) (= (LVAR 56)  55 ) (= (LVAR 56)  66 ))
	.loc 1 482
// Line 478 (== (LVAR 56)  77 )
	.loc 1 478
// Line 478 (LVAR 56)
	.loc 1 478
	lea  rax, [rbp - 56]
	mov  eax, [rax]
	push rax
// Line 478  77 
	.loc 1 478
	push 77
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000368
// Line 479 (= (LVAR 56)  55 )
	.loc 1 479
	lea  rax, [rbp - 56]
	push rax
// Line 479  55 
	.loc 1 479
	push 55
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000369
.L000368:
// Line 481 (= (LVAR 56)  66 )
	.loc 1 481
	lea  rax, [rbp - 56]
	push rax
// Line 481  66 
	.loc 1 481
	push 66
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000369:
// Line 482 (CALL assert_expect ( 482 : 55 :(LVAR 56):) )
	.loc 1 482
// Line 482 (LVAR 56)
	.loc 1 482
	lea  rax, [rbp - 56]
	mov  eax, [rax]
	push rax
// Line 482  55 
	.loc 1 482
	push 55
// Line 482  482 
	.loc 1 482
	push 482
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
// Line 483 (CALL assert_expect ( 483 : 1346269 :(CALL fibo ( 30 :) ):) )
	.loc 1 483
// Line 483 (CALL fibo ( 30 :) )
	.loc 1 483
// Line 483  30 
	.loc 1 483
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000372
	mov  rax, 0
	call fibo
	jmp  .L000373
.L000372:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000373:
	push rax
// Line 483  1346269 
	.loc 1 483
	push 1346269
// Line 483  483 
	.loc 1 483
	push 483
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
// Line 484 (CALL array_global () )
	.loc 1 484
	mov  rax, rsp
	and  rax, 15
	jnz  .L000376
	mov  rax, 0
	call array_global
	jmp  .L000377
.L000376:
	sub  rsp, 8
	mov  rax, 0
	call array_global
	add  rsp, 8
.L000377:
	push rax
	pop  rax
// Line 485 (CALL array_local () )
	.loc 1 485
	mov  rax, rsp
	and  rax, 15
	jnz  .L000378
	mov  rax, 0
	call array_local
	jmp  .L000379
.L000378:
	sub  rsp, 8
	mov  rax, 0
	call array_local
	add  rsp, 8
.L000379:
	push rax
	pop  rax
// Line 486 (CALL string () )
	.loc 1 486
	mov  rax, rsp
	and  rax, 15
	jnz  .L000380
	mov  rax, 0
	call string
	jmp  .L000381
.L000380:
	sub  rsp, 8
	mov  rax, 0
	call string
	add  rsp, 8
.L000381:
	push rax
	pop  rax
// Line 487 (CALL block_scope () )
	.loc 1 487
	mov  rax, rsp
	and  rax, 15
	jnz  .L000382
	mov  rax, 0
	call block_scope
	jmp  .L000383
.L000382:
	sub  rsp, 8
	mov  rax, 0
	call block_scope
	add  rsp, 8
.L000383:
	push rax
	pop  rax
// Line 488 (CALL for_ () )
	.loc 1 488
	mov  rax, rsp
	and  rax, 15
	jnz  .L000384
	mov  rax, 0
	call for_
	jmp  .L000385
.L000384:
	sub  rsp, 8
	mov  rax, 0
	call for_
	add  rsp, 8
.L000385:
	push rax
	pop  rax
// Line 489 (CALL list_ () )
	.loc 1 489
	mov  rax, rsp
	and  rax, 15
	jnz  .L000386
	mov  rax, 0
	call list_
	jmp  .L000387
.L000386:
	sub  rsp, 8
	mov  rax, 0
	call list_
	add  rsp, 8
.L000387:
	push rax
	pop  rax
// Line 490 (CALL struct_ () )
	.loc 1 490
	mov  rax, rsp
	and  rax, 15
	jnz  .L000388
	mov  rax, 0
	call struct_
	jmp  .L000389
.L000388:
	sub  rsp, 8
	mov  rax, 0
	call struct_
	add  rsp, 8
.L000389:
	push rax
	pop  rax
// Line 506 (CALL assert_expect ( 506 : 2 : 2 :) )
	.loc 1 506
// Line 506  2 
	.loc 1 506
	push 2
// Line 506  2 
	.loc 1 506
	push 2
// Line 506  506 
	.loc 1 506
	push 506
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
// Line 507 (CALL assert_expect ( 507 : 4 : 4 :) )
	.loc 1 507
// Line 507  4 
	.loc 1 507
	push 4
// Line 507  4 
	.loc 1 507
	push 4
// Line 507  507 
	.loc 1 507
	push 507
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
// Line 508 (CALL assert_expect ( 508 : 10 : 10 :) )
	.loc 1 508
// Line 508  10 
	.loc 1 508
	push 10
// Line 508  10 
	.loc 1 508
	push 10
// Line 508  508 
	.loc 1 508
	push 508
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
// Line 509 (CALL assert_expect ( 509 : 12 : 12 :) )
	.loc 1 509
// Line 509  12 
	.loc 1 509
	push 12
// Line 509  12 
	.loc 1 509
	push 12
// Line 509  509 
	.loc 1 509
	push 509
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
// Line 511 (CALL assert_expect ( 511 : 11 :(CALL switch_ ( 1 :) ):) )
	.loc 1 511
// Line 511 (CALL switch_ ( 1 :) )
	.loc 1 511
// Line 511  1 
	.loc 1 511
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000398
	mov  rax, 0
	call switch_
	jmp  .L000399
.L000398:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000399:
	push rax
// Line 511  11 
	.loc 1 511
	push 11
// Line 511  511 
	.loc 1 511
	push 511
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
// Line 512 (CALL assert_expect ( 512 : 13 :(CALL switch_ ( 2 :) ):) )
	.loc 1 512
// Line 512 (CALL switch_ ( 2 :) )
	.loc 1 512
// Line 512  2 
	.loc 1 512
	push 2
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000402
	mov  rax, 0
	call switch_
	jmp  .L000403
.L000402:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000403:
	push rax
// Line 512  13 
	.loc 1 512
	push 13
// Line 512  512 
	.loc 1 512
	push 512
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
// Line 513 (CALL assert_expect ( 513 : 13 :(CALL switch_ ( 3 :) ):) )
	.loc 1 513
// Line 513 (CALL switch_ ( 3 :) )
	.loc 1 513
// Line 513  3 
	.loc 1 513
	push 3
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000406
	mov  rax, 0
	call switch_
	jmp  .L000407
.L000406:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000407:
	push rax
// Line 513  13 
	.loc 1 513
	push 13
// Line 513  513 
	.loc 1 513
	push 513
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
// Line 514 (CALL assert_expect ( 514 : 13 :(CALL switch_ ( 4 :) ):) )
	.loc 1 514
// Line 514 (CALL switch_ ( 4 :) )
	.loc 1 514
// Line 514  4 
	.loc 1 514
	push 4
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000410
	mov  rax, 0
	call switch_
	jmp  .L000411
.L000410:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000411:
	push rax
// Line 514  13 
	.loc 1 514
	push 13
// Line 514  514 
	.loc 1 514
	push 514
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
// Line 515 (CALL assert_expect ( 515 : 15 :(CALL switch_ ( 5 :) ):) )
	.loc 1 515
// Line 515 (CALL switch_ ( 5 :) )
	.loc 1 515
// Line 515  5 
	.loc 1 515
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000414
	mov  rax, 0
	call switch_
	jmp  .L000415
.L000414:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000415:
	push rax
// Line 515  15 
	.loc 1 515
	push 15
// Line 515  515 
	.loc 1 515
	push 515
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
// Line 516 (CALL assert_expect ( 516 : 15 :(CALL switch_ ( 6 :) ):) )
	.loc 1 516
// Line 516 (CALL switch_ ( 6 :) )
	.loc 1 516
// Line 516  6 
	.loc 1 516
	push 6
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000418
	mov  rax, 0
	call switch_
	jmp  .L000419
.L000418:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000419:
	push rax
// Line 516  15 
	.loc 1 516
	push 15
// Line 516  516 
	.loc 1 516
	push 516
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
// Line 519 (CALL assert_expect ( 519 : 11 :(CALL switch2_ ( 97 :) ):) )
	.loc 1 519
// Line 519 (CALL switch2_ ( 97 :) )
	.loc 1 519
// Line 519  97 
	.loc 1 519
	push 97
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000422
	mov  rax, 0
	call switch2_
	jmp  .L000423
.L000422:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000423:
	push rax
// Line 519  11 
	.loc 1 519
	push 11
// Line 519  519 
	.loc 1 519
	push 519
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
// Line 520 (CALL assert_expect ( 520 : 12 :(CALL switch2_ ( 98 :) ):) )
	.loc 1 520
// Line 520 (CALL switch2_ ( 98 :) )
	.loc 1 520
// Line 520  98 
	.loc 1 520
	push 98
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000426
	mov  rax, 0
	call switch2_
	jmp  .L000427
.L000426:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000427:
	push rax
// Line 520  12 
	.loc 1 520
	push 12
// Line 520  520 
	.loc 1 520
	push 520
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
// Line 521 (CALL assert_expect ( 521 : 12 :(CALL switch2_ ( 99 :) ):) )
	.loc 1 521
// Line 521 (CALL switch2_ ( 99 :) )
	.loc 1 521
// Line 521  99 
	.loc 1 521
	push 99
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000430
	mov  rax, 0
	call switch2_
	jmp  .L000431
.L000430:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000431:
	push rax
// Line 521  12 
	.loc 1 521
	push 12
// Line 521  521 
	.loc 1 521
	push 521
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
// Line 522 (CALL assert_expect ( 522 : 15 :(CALL switch2_ ( 122 :) ):) )
	.loc 1 522
// Line 522 (CALL switch2_ ( 122 :) )
	.loc 1 522
// Line 522  122 
	.loc 1 522
	push 122
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000434
	mov  rax, 0
	call switch2_
	jmp  .L000435
.L000434:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000435:
	push rax
// Line 522  15 
	.loc 1 522
	push 15
// Line 522  522 
	.loc 1 522
	push 522
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
// Line 525 (CALL assert_expect ( 525 : 92 :(CALL q8 () ):) )
	.loc 1 525
// Line 525 (CALL q8 () )
	.loc 1 525
	mov  rax, rsp
	and  rax, 15
	jnz  .L000438
	mov  rax, 0
	call q8
	jmp  .L000439
.L000438:
	sub  rsp, 8
	mov  rax, 0
	call q8
	add  rsp, 8
.L000439:
	push rax
// Line 525  92 
	.loc 1 525
	push 92
// Line 525  525 
	.loc 1 525
	push 525
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
// Line 528 (CALL assert_expect ( 528 : 0 : 0 :) )
	.loc 1 528
// Line 528  0 
	.loc 1 528
	push 0
// Line 528  0 
	.loc 1 528
	push 0
// Line 528  528 
	.loc 1 528
	push 528
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
// Line 529 (CALL assert_expect ( 529 : 1 : 1 :) )
	.loc 1 529
// Line 529  1 
	.loc 1 529
	push 1
// Line 529  1 
	.loc 1 529
	push 1
// Line 529  529 
	.loc 1 529
	push 529
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
// Line 530 (CALL assert_expect ( 530 : 2 : 2 :) )
	.loc 1 530
// Line 530  2 
	.loc 1 530
	push 2
// Line 530  2 
	.loc 1 530
	push 2
// Line 530  530 
	.loc 1 530
	push 530
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
// Line 531 (CALL assert_expect ( 531 : 3 : 3 :) )
	.loc 1 531
// Line 531  3 
	.loc 1 531
	push 3
// Line 531  3 
	.loc 1 531
	push 3
// Line 531  531 
	.loc 1 531
	push 531
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
// Line 533 (CALL assert_expect ( 533 : 15 :(|  13   7 ):) )
	.loc 1 533
// Line 533 (|  13   7 )
	.loc 1 533
// Line 533  13 
	.loc 1 533
	push 13
// Line 533  7 
	.loc 1 533
	push 7
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 533  15 
	.loc 1 533
	push 15
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
// Line 534 (CALL assert_expect ( 534 : 5115 :(|  938   5073 ):) )
	.loc 1 534
// Line 534 (|  938   5073 )
	.loc 1 534
// Line 534  938 
	.loc 1 534
	push 938
// Line 534  5073 
	.loc 1 534
	push 5073
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 534  5115 
	.loc 1 534
	push 5115
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
// Line 535 (CALL assert_expect ( 535 : 5 :(&  13   7 ):) )
	.loc 1 535
// Line 535 (&  13   7 )
	.loc 1 535
// Line 535  13 
	.loc 1 535
	push 13
// Line 535  7 
	.loc 1 535
	push 7
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 535  5 
	.loc 1 535
	push 5
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
// Line 536 (CALL assert_expect ( 536 : 896 :(&  938   5073 ):) )
	.loc 1 536
// Line 536 (&  938   5073 )
	.loc 1 536
// Line 536  938 
	.loc 1 536
	push 938
// Line 536  5073 
	.loc 1 536
	push 5073
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 536  896 
	.loc 1 536
	push 896
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
// Line 537 (CALL assert_expect ( 537 : 10 :(^  13   7 ):) )
	.loc 1 537
// Line 537 (^  13   7 )
	.loc 1 537
// Line 537  13 
	.loc 1 537
	push 13
// Line 537  7 
	.loc 1 537
	push 7
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 537  10 
	.loc 1 537
	push 10
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
// Line 538 (CALL assert_expect ( 538 : 4219 :(^  938   5073 ):) )
	.loc 1 538
// Line 538 (^  938   5073 )
	.loc 1 538
// Line 538  938 
	.loc 1 538
	push 938
// Line 538  5073 
	.loc 1 538
	push 5073
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 538  4219 
	.loc 1 538
	push 4219
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
// Line 540 (CALL assert_expect ( 540 : 29 :(>>  938   5 ):) )
	.loc 1 540
// Line 540 (>>  938   5 )
	.loc 1 540
// Line 540  938 
	.loc 1 540
	push 938
// Line 540  5 
	.loc 1 540
	push 5
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 540  29 
	.loc 1 540
	push 29
// Line 540  540 
	.loc 1 540
	push 540
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
// Line 541 (CALL assert_expect ( 541 : 1664 :(<<  13   7 ):) )
	.loc 1 541
// Line 541 (<<  13   7 )
	.loc 1 541
// Line 541  13 
	.loc 1 541
	push 13
// Line 541  7 
	.loc 1 541
	push 7
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 541  1664 
	.loc 1 541
	push 1664
// Line 541  541 
	.loc 1 541
	push 541
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
// Line 543 (CALL printf ((ADDR  "passed tests.\n" ):) )
	.loc 1 543
// Line 543 (ADDR  "passed tests.\n" )
	.loc 1 543
	lea  rax, .LS000033[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000466
	mov  rax, 0
	call printf
	jmp  .L000467
.L000466:
	sub  rsp, 8
	mov  rax, 0
	call printf
	add  rsp, 8
.L000467:
	push rax
	pop  rax
// Line 544 (RETURN  0 )
	.loc 1 544
// Line 544  0 
	.loc 1 544
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

// FDECL fibo func ( int  x ) int 
//    (LVAR 4) 
//    (BLOCK(IF (<  2  (LVAR 4)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))):))
//    x  offset:4  int 

// FDECL array_local func ( ) int 
//    
//    (BLOCK(= (LVAR 324)  0 ):(= (LVAR 328)  0 ):(WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)):(CALL assert_expect ( 52 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) ):(CALL assert_expect ( 53 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) ):(CALL assert_expect ( 54 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) ):(RETURN  0 ):))
//    j  offset:328  int 
//    i  offset:324  int 
//    a  offset:320  [10] [8] int 

// FDECL array_global func ( ) int 
//    
//    (BLOCK(FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 80 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )):(CALL assert_expect ( 81 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 82 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 93 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 94 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 95 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
//    i  offset:4  int 

// FDECL string func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (ADDR  "Hello world!\n" )):(CALL printf_ ((LVAR 8):) ):(= (LVAR 31)  "\tHello---" ):(CALL printf_ ((ADDR (LVAR 31)):) ):(CALL assert_expect ( 106 : 9 :(DEREF (] (ADDR (LVAR 31))  15 )):) ):(CALL assert_expect ( 108 : 119 : 119 :) ):(CALL assert_expect ( 109 : 119 :(DEREF (] (LVAR 8)  6 )):) ):))
//    str_ary9  offset:31  [23] char 
//    str  offset:8  * char 

// FDECL block_scope func ( ) void 
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 114 : 1 :(GVAR i):) ):(= (LVAR 4)  5 ):(CALL assert_expect ( 116 : 5 :(LVAR 4):) ):(BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 123 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 125 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 127 : 2 :(LVAR 8):) ):):(CALL assert_expect ( 129 : 5 :(LVAR 4):) ):))
//    i  offset:16  int 
//    i  offset:12  int 
//    i  offset:8  int 
//    i  offset:4  int 

// FDECL for_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  100 ):(CALL assert_expect ( 134 : 100 :(LVAR 4):) ):(FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 137 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 139 : 9 :(LVAR 12):) ):)):(CALL assert_expect ( 141 : 100 :(LVAR 4):) ):(= (LVAR 4)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)):(CALL assert_expect ( 147 : 6 :(LVAR 4):) ):))
//    x  offset:12  int 
//    x  offset:8  int 
//    x  offset:4  int 

// FDECL switch_ func ( int  s ) int 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)):(RETURN (LVAR 8)):))
//    switch  offset:12  int 
//    i  offset:8  int 
//    s  offset:4  int 

// FDECL switch2_ func ( char  s ) int 
//    (LVAR 1) 
//    (BLOCK(SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)):(RETURN (LVAR 5)):))
//    switch  offset:9  int 
//    i  offset:5  int 
//    s  offset:1  char 

// FDECL list_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  16 ):(= (LVAR 12)  0 ):(FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)):(CALL assert_expect ( 221 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 223 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 225 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 227 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 229 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 231 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 234 : 777 :(MEMBER (GVAR def) payload 0):) ):))
//    new  offset:24  * struct <List> 
//    i  offset:16  int 
//    cursor  offset:12  * struct <List> 
//    size  offset:4  int 

// FDECL struct_ func ( ) void 
//    
//    (BLOCK(CALL assert_expect ( 257 : 32 : 32 :) ):(CALL assert_expect ( 258 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 263 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 264 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 266 : 4 : 4 :) ):(CALL assert_expect ( 267 : 4 : 4 :) ):(= (LVAR 336) (ADDR (LVAR 328))):(= (MEMBER (LVAR 328) size 136)  10 ):(= (MEMBER (LVAR 328) ch 140)  5 ):(= (MEMBER (LVAR 480) size 136)  195 ):(= (MEMBER (LVAR 480) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 278 : 10 :(MEMBER (LVAR 328) size 136):) ):(CALL assert_expect ( 279 : 5 :(MEMBER (LVAR 328) ch 140):) ):(= (MEMBER (LVAR 328) size 136)  110 ):(= (MEMBER (LVAR 328) ch 140)  79 ):(CALL assert_expect ( 282 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 283 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 284 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 285 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 286 : 195 :(MEMBER (LVAR 480) size 136):) ):(CALL assert_expect ( 287 : 39 :(MEMBER (LVAR 480) ch 140):) ):(CALL assert_expect ( 288 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 289 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480))):(= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328))):(CALL assert_expect ( 293 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) ):(= (MEMBER (LVAR 640) size 136)  100 ):(= (MEMBER (LVAR 784) size 136)  500 ):(= (LVAR 784) (LVAR 640)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ( 301 : 100 :(MEMBER (LVAR 784) size 136):) ):(= (LVAR 784) (GVAR leaf_global)):(CALL assert_expect ( 303 : 700 :(MEMBER (LVAR 784) size 136):) ):(= (GVAR leaf_global) (LVAR 640)):(CALL assert_expect ( 305 : 100 :(MEMBER (GVAR leaf_global) size 136):) ):(= (MEMBER (LVAR 640) size 136)  999 ):(= (LVAR 792) (ADDR (LVAR 640))):(= (LVAR 800) (ADDR (LVAR 784))):(= (GVAR leaf_global) (= (DEREF (LVAR 800)) (DEREF (LVAR 792)))):(CALL assert_expect ( 310 : 999 :(MEMBER (DEREF (LVAR 800)) size 136):) ):(CALL assert_expect ( 311 : 999 :(MEMBER (GVAR leaf_global) size 136):) ):))
//    l2p  offset:800  * struct <Leaf> 
//    l1p  offset:792  * struct <Leaf> 
//    l2  offset:784  struct <Leaf> 
//    l1  offset:640  struct <Leaf> 
//    tree  offset:496  struct <Tree> 
//    node_new  offset:480  struct <Leaf> 
//    node_ptr  offset:336  * struct <Leaf> 
//    node  offset:328  struct <Leaf> 
//    s1  offset:184  struct <S1> 
//    s2  offset:152  struct <S2> 
//    leaf  offset:144  struct <Leaf> 

// FDECL print_board func ( * [8] int  board ) void 
//    (LVAR 8) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)):(CALL printf_ ((ADDR  "\n\n" ):) ):))
//    j  offset:16  int 
//    i  offset:12  int 
//    board  offset:8  * [8] int 

// FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
//    j  offset:24  int 
//    i  offset:20  int 
//    p  offset:16  * struct <Pos> 
//    board  offset:8  * [8] int 

// FDECL solve func ( * [8] int  board , int  row ) void 
//    (LVAR 8) (LVAR 12) 
//    (BLOCK(IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)):))
//    p  offset:24  struct <Pos> 
//    i  offset:16  int 
//    row  offset:12  int 
//    board  offset:8  * [8] int 

// FDECL q8 func ( ) int 
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))):(CALL solve ((ADDR (LVAR 256)): 0 :) ):(RETURN (GVAR q8_count)):))
//    j  offset:264  int 
//    i  offset:260  int 
//    board  offset:256  [8] [8] int 

// FDECL fun func ( * int  p ) int 
//    (LVAR 8) 
//    (BLOCK(RETURN (DEREF (LVAR 8))):))
//    p  offset:8  * int 

// FDECL main func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (CAST * void   0 )):(CALL assert_expect ( 375 : 1 : 1 :) ):(CALL assert_expect ( 376 : 0 : 0 :) ):(CALL assert_expect ( 377 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 379 : 70 :(*  10  (+  2   5 )):) ):(CALL printf_ ((ADDR (GVAR str_ary)):) ):(CALL assert_expect ( 382 : 1979 :(GVAR i):) ):(CALL assert_expect ( 383 : 2015 :(GVAR j):) ):(CALL assert_expect ( 384 : 24 :(GVAR s):) ):(CALL assert_expect ( 386 : 9 : 9 :) ):(CALL assert_expect ( 387 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 388 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 389 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 390 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 391 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 392 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 393 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 394 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 395 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 396 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 397 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 398 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 399 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 400 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 401 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 402 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 403 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 404 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 405 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 406 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 407 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 409 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 410 : 0 :(LVAR 12):) ):(CALL assert_expect ( 411 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 412 : 1 :(LVAR 12):) ):(CALL assert_expect ( 413 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 414 : 2 :(LVAR 12):) ):(CALL assert_expect ( 415 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 416 : 3 :(LVAR 12):) ):(CALL assert_expect ( 417 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 418 : 3 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 420 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 421 : 1 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 423 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) ):(CALL assert_expect ( 424 : 1 :(LVAR 12):) ):(CALL assert_expect ( 425 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 426 : 1 :(LVAR 12):) ):(CALL assert_expect ( 427 : 1 :(!  0 ):) ):(CALL assert_expect ( 428 : 0 :(!  1 ):) ):(CALL assert_expect ( 429 : 0 :(! (! (!  1 ))):) ):(CALL assert_expect ( 431 : 256 :(<<  1   8 ):) ):(CALL assert_expect ( 432 : 32 :(>>  512   4 ):) ):(= (LVAR 16)  10 ):(CALL assert_expect ( 437 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) ):(CALL assert_expect ( 438 : 15 :(LVAR 16):) ):(CALL assert_expect ( 439 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) ):(CALL assert_expect ( 440 : 8 :(LVAR 16):) ):(CALL assert_expect ( 441 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) ):(CALL assert_expect ( 442 : 40 :(LVAR 16):) ):(CALL assert_expect ( 443 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) ):(CALL assert_expect ( 444 : 4 :(LVAR 16):) ):(CALL assert_expect ( 447 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 448 : 5 :(LVAR 16):) ):(CALL assert_expect ( 449 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 450 : 4 :(LVAR 16):) ):(= (LVAR 20) (/  100  (LVAR 16))):(CALL assert_expect ( 455 : 25 :(LVAR 20):) ):(= (LVAR 24)  77 ):(IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 )):(CALL assert_expect ( 463 : 55 :(LVAR 24):) ):(CALL assert_expect ( 464 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 477 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 478 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 479 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 480 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 481 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 482 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 485 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 486 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 487 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 488 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 491 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 494 : 0 : 0 :) ):(CALL assert_expect ( 495 : 1 : 1 :) ):(CALL assert_expect ( 496 : 2 : 2 :) ):(CALL assert_expect ( 497 : 3 : 3 :) ):(CALL assert_expect ( 499 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 500 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 501 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 502 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 503 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 504 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 506 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 507 : 1664 :(<<  13   7 ):) ):(CALL printf_ ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
//    i  offset:24  int 
//    init  offset:20  int 
//    z  offset:16  int 
//    a  offset:12  int 
//    jum  offset:8  * int 

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
// calloc_ func ( int  size ) * void 
// printf_ func ( * char  str ) void 
// print func ( int  a ) void 
// assert_expect func ( int  line , int  expected , int  actual ) void 
// __builtin_va_start func ( ) void 
// Strings
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
// "\tHello---world,\tagain\n"
// "Q "
// ". "
// "\n"
// "\n\n"
// "passed tests.\n"

// Tagnames
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
	.quad .LS000000
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
	.string "Hi, guys.\tAre you hungry"
.LS000001:
	.string "Hey, girls.\nAre you angry?"
.LS000002:
	.string "QuickBrownFox"
.LS000003:
	.string "rdi"
.LS000004:
	.string "rsi"
.LS000005:
	.string "rdx"
.LS000006:
	.string "rcx"
.LS000007:
	.string "r8"
.LS000008:
	.string "edi"
.LS000009:
	.string "esi"
.LS000010:
	.string "edx"
.LS000011:
	.string "ecx"
.LS000012:
	.string "r8d"
.LS000013:
	.string "di"
.LS000014:
	.string "si"
.LS000015:
	.string "dx"
.LS000016:
	.string "cx"
.LS000017:
	.string "r8w"
.LS000018:
	.string "dil"
.LS000019:
	.string "sil"
.LS000020:
	.string "dl"
.LS000021:
	.string "cl"
.LS000022:
	.string "r8b"
.LS000023:
	.string "Hello world!\n"
.LS000024:
	.string "\tHello---world,\tagain\n"
.LS000025:
	.string "Q "
.LS000026:
	.string ". "
.LS000027:
	.string "\n"
.LS000028:
	.string "\n\n"
.LS000029:
	.string "passed tests.\n"

	.file 1 "./test/test.c"
	.text
	.global fibo
// Line 35 FDECL fibo func ( int  x ) int 
//    (LVAR 4) 
//    (BLOCK(IF (<  2  (LVAR 4)) (RETURN  1 ) NULL ):(RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))):))
	.loc 1 35
fibo:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 4], edi
// Line 37 (IF (<  2  (LVAR 4)) (RETURN  1 ) NULL )
	.loc 1 37
// Line 36 (<  2  (LVAR 4))
	.loc 1 36
// Line 36  2 
	.loc 1 36
	push 2
// Line 36 (LVAR 4)
	.loc 1 36
	lea  rax, [rbp - 4]
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
	je   .L000000
// Line 36 (RETURN  1 )
	.loc 1 36
// Line 36  1 
	.loc 1 36
	push 1
	pop  rax
	jmp  .L.return.fibo
	jmp  .L000001
.L000000:
.L000001:
// Line 37 (RETURN (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) )))
	.loc 1 37
// Line 37 (+ (CALL fibo ((- (LVAR 4)  1 ):) ) (CALL fibo ((- (LVAR 4)  2 ):) ))
	.loc 1 37
// Line 37 (CALL fibo ((- (LVAR 4)  1 ):) )
	.loc 1 37
// Line 37 (- (LVAR 4)  1 )
	.loc 1 37
// Line 37 (LVAR 4)
	.loc 1 37
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 37  1 
	.loc 1 37
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000002
	mov  rax, 0
	call fibo
	jmp  .L000003
.L000002:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000003:
	push rax
// Line 37 (CALL fibo ((- (LVAR 4)  2 ):) )
	.loc 1 37
// Line 37 (- (LVAR 4)  2 )
	.loc 1 37
// Line 37 (LVAR 4)
	.loc 1 37
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 37  2 
	.loc 1 37
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000004
	mov  rax, 0
	call fibo
	jmp  .L000005
.L000004:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000005:
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
// Line 40 FDECL array_local func ( ) int 
//    
//    (BLOCK(= (LVAR 324)  0 ):(= (LVAR 328)  0 ):(WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)):(CALL assert_expect ( 52 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) ):(CALL assert_expect ( 53 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) ):(CALL assert_expect ( 54 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) ):(RETURN  0 ):))
	.loc 1 40
array_local:
	push rbp
	mov  rbp, rsp
	sub  rsp, 336
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 42 (= (LVAR 324)  0 )
	.loc 1 42
	lea  rax, [rbp - 324]
	push rax
// Line 42  0 
	.loc 1 42
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 43 (= (LVAR 328)  0 )
	.loc 1 43
	lea  rax, [rbp - 328]
	push rax
// Line 43  0 
	.loc 1 43
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 52 (WHILE cond:(<=  9  (LVAR 324))body: (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):))
	.loc 1 52
.L000006:
// Line 44 (<=  9  (LVAR 324))
	.loc 1 44
// Line 44  9 
	.loc 1 44
	push 9
// Line 44 (LVAR 324)
	.loc 1 44
	lea  rax, [rbp - 324]
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
	je   .L000007
// Line 52 (BLOCK(= (LVAR 328)  0 ):(WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)):(= (LVAR 324) (+= (LVAR 324)  1 )):)
	.loc 1 52
// Line 45 (= (LVAR 328)  0 )
	.loc 1 45
	lea  rax, [rbp - 328]
	push rax
// Line 45  0 
	.loc 1 45
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 50 (WHILE cond:(<=  7  (LVAR 328))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):))
	.loc 1 50
.L000008:
// Line 46 (<=  7  (LVAR 328))
	.loc 1 46
// Line 46  7 
	.loc 1 46
	push 7
// Line 46 (LVAR 328)
	.loc 1 46
	lea  rax, [rbp - 328]
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
	je   .L000009
// Line 50 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328))):(++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 ):)
	.loc 1 50
// Line 47 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))) (+ (* (LVAR 324)  10 ) (LVAR 328)))
	.loc 1 47
// Line 47 (] (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324)))) (LVAR 328))
	.loc 1 47
// Line 47 (ADDR (DEREF (] (ADDR (LVAR 320)) (LVAR 324))))
	.loc 1 47
// Line 47 (] (ADDR (LVAR 320)) (LVAR 324))
	.loc 1 47
// Line 47 (ADDR (LVAR 320))
	.loc 1 47
	lea  rax, [rbp - 320]
	push rax
// Line 47 (LVAR 324)
	.loc 1 47
	lea  rax, [rbp - 324]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 47 (LVAR 328)
	.loc 1 47
	lea  rax, [rbp - 328]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 47 (+ (* (LVAR 324)  10 ) (LVAR 328))
	.loc 1 47
// Line 47 (* (LVAR 324)  10 )
	.loc 1 47
// Line 47 (LVAR 324)
	.loc 1 47
	lea  rax, [rbp - 324]
	mov  eax, [rax]
	push rax
// Line 47  10 
	.loc 1 47
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 47 (LVAR 328)
	.loc 1 47
	lea  rax, [rbp - 328]
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
// Line 48 (++ (= (LVAR 328) (++ (LVAR 328)  1 ))  1 )
	.loc 1 48
// Line 48 (= (LVAR 328) (++ (LVAR 328)  1 ))
	.loc 1 48
	lea  rax, [rbp - 328]
	push rax
// Line 48 (++ (LVAR 328)  1 )
	.loc 1 48
// Line 48 (LVAR 328)
	.loc 1 48
	lea  rax, [rbp - 328]
	mov  eax, [rax]
	push rax
// Line 48  1 
	.loc 1 48
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 48  1 
	.loc 1 48
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000008
.L000009:
// Line 50 (= (LVAR 324) (+= (LVAR 324)  1 ))
	.loc 1 50
	lea  rax, [rbp - 324]
	push rax
// Line 50 (+= (LVAR 324)  1 )
	.loc 1 50
// Line 50 (LVAR 324)
	.loc 1 50
	lea  rax, [rbp - 324]
	mov  eax, [rax]
	push rax
// Line 50  1 
	.loc 1 50
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
	jmp  .L000006
.L000007:
// Line 52 (CALL assert_expect ( 52 : 1 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )):) )
	.loc 1 52
// Line 52 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 ))
	.loc 1 52
// Line 52 (] (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))  1 )
	.loc 1 52
// Line 52 (ADDR (DEREF (] (ADDR (LVAR 320))  0 )))
	.loc 1 52
// Line 52 (] (ADDR (LVAR 320))  0 )
	.loc 1 52
// Line 52 (ADDR (LVAR 320))
	.loc 1 52
	lea  rax, [rbp - 320]
	push rax
// Line 52  0 
	.loc 1 52
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 52  1 
	.loc 1 52
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 52  1 
	.loc 1 52
	push 1
// Line 52  52 
	.loc 1 52
	push 52
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000010
	mov  rax, 0
	call assert_expect
	jmp  .L000011
.L000010:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000011:
	push rax
	pop  rax
// Line 53 (CALL assert_expect ( 53 : 97 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )):) )
	.loc 1 53
// Line 53 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 ))
	.loc 1 53
// Line 53 (] (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))  7 )
	.loc 1 53
// Line 53 (ADDR (DEREF (] (ADDR (LVAR 320))  9 )))
	.loc 1 53
// Line 53 (] (ADDR (LVAR 320))  9 )
	.loc 1 53
// Line 53 (ADDR (LVAR 320))
	.loc 1 53
	lea  rax, [rbp - 320]
	push rax
// Line 53  9 
	.loc 1 53
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 53  7 
	.loc 1 53
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 53  97 
	.loc 1 53
	push 97
// Line 53  53 
	.loc 1 53
	push 53
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000012
	mov  rax, 0
	call assert_expect
	jmp  .L000013
.L000012:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000013:
	push rax
	pop  rax
// Line 54 (CALL assert_expect ( 54 : 84 :(DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )):) )
	.loc 1 54
// Line 54 (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 ))
	.loc 1 54
// Line 54 (] (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))  4 )
	.loc 1 54
// Line 54 (ADDR (DEREF (] (ADDR (LVAR 320))  8 )))
	.loc 1 54
// Line 54 (] (ADDR (LVAR 320))  8 )
	.loc 1 54
// Line 54 (ADDR (LVAR 320))
	.loc 1 54
	lea  rax, [rbp - 320]
	push rax
// Line 54  8 
	.loc 1 54
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 54  4 
	.loc 1 54
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 54  84 
	.loc 1 54
	push 84
// Line 54  54 
	.loc 1 54
	push 54
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000014
	mov  rax, 0
	call assert_expect
	jmp  .L000015
.L000014:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000015:
	push rax
	pop  rax
// Line 55 (RETURN  0 )
	.loc 1 55
// Line 55  0 
	.loc 1 55
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
// Line 79 FDECL array_global func ( ) int 
//    
//    (BLOCK(FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 80 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )):(CALL assert_expect ( 81 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) ):(CALL assert_expect ( 82 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) ):(= (GVAR i)  0 ):(WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)):(CALL assert_expect ( 93 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) ):(CALL assert_expect ( 94 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) ):(CALL assert_expect ( 95 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) ):(RETURN  0 ):))
	.loc 1 79
array_global:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 80 (FOR init: (= (LVAR 4)  0 )cond: (<  5  (LVAR 4)) post: (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 ) body (CALL assert_expect ( 80 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) ))
	.loc 1 80
// Line 80 (= (LVAR 4)  0 )
	.loc 1 80
	lea  rax, [rbp - 4]
	push rax
// Line 80  0 
	.loc 1 80
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000018:
// Line 80 (<  5  (LVAR 4))
	.loc 1 80
// Line 80  5 
	.loc 1 80
	push 5
// Line 80 (LVAR 4)
	.loc 1 80
	lea  rax, [rbp - 4]
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
// Line 80 (CALL assert_expect ( 80 :(+ (LVAR 4)  1 ):(DEREF (] (ADDR (GVAR ary_int)) (LVAR 4))):) )
	.loc 1 80
// Line 80 (DEREF (] (ADDR (GVAR ary_int)) (LVAR 4)))
	.loc 1 80
// Line 80 (] (ADDR (GVAR ary_int)) (LVAR 4))
	.loc 1 80
// Line 80 (ADDR (GVAR ary_int))
	.loc 1 80
	lea  rax, ary_int[rip]
	push rax
// Line 80 (LVAR 4)
	.loc 1 80
	lea  rax, [rbp - 4]
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
// Line 80 (+ (LVAR 4)  1 )
	.loc 1 80
// Line 80 (LVAR 4)
	.loc 1 80
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 80  1 
	.loc 1 80
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 80  80 
	.loc 1 80
	push 80
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
.L000016:
// Line 80 (++ (= (LVAR 4) (++ (LVAR 4)  1 ))  1 )
	.loc 1 80
// Line 80 (= (LVAR 4) (++ (LVAR 4)  1 ))
	.loc 1 80
	lea  rax, [rbp - 4]
	push rax
// Line 80 (++ (LVAR 4)  1 )
	.loc 1 80
// Line 80 (LVAR 4)
	.loc 1 80
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 80  1 
	.loc 1 80
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 80  1 
	.loc 1 80
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000018
.L000017:
// Line 81 (CALL assert_expect ( 81 : 105 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )):) )
	.loc 1 81
// Line 81 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 ))
	.loc 1 81
// Line 81 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))  1 )
	.loc 1 81
// Line 81 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )))
	.loc 1 81
// Line 81 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  1 )
	.loc 1 81
// Line 81 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 81
// Line 81 (] (ADDR (GVAR reg))  2 )
	.loc 1 81
// Line 81 (ADDR (GVAR reg))
	.loc 1 81
	lea  rax, reg[rip]
	push rax
// Line 81  2 
	.loc 1 81
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 81  1 
	.loc 1 81
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 81  1 
	.loc 1 81
	push 1
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 81  105 
	.loc 1 81
	push 105
// Line 81  81 
	.loc 1 81
	push 81
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
// Line 82 (CALL assert_expect ( 82 : 119 :(DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )):) )
	.loc 1 82
// Line 82 (DEREF (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 ))
	.loc 1 82
// Line 82 (] (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))  2 )
	.loc 1 82
// Line 82 (ADDR (DEREF (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )))
	.loc 1 82
// Line 82 (] (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))  4 )
	.loc 1 82
// Line 82 (ADDR (DEREF (] (ADDR (GVAR reg))  2 )))
	.loc 1 82
// Line 82 (] (ADDR (GVAR reg))  2 )
	.loc 1 82
// Line 82 (ADDR (GVAR reg))
	.loc 1 82
	lea  rax, reg[rip]
	push rax
// Line 82  2 
	.loc 1 82
	push 2
	pop  rdi
	pop  rax
	imul rdi, 20
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 82  4 
	.loc 1 82
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 82  2 
	.loc 1 82
	push 2
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 82  119 
	.loc 1 82
	push 119
// Line 82  82 
	.loc 1 82
	push 82
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
// Line 84 (= (GVAR i)  0 )
	.loc 1 84
	lea  rax, i[rip]
	push rax
// Line 84  0 
	.loc 1 84
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 93 (WHILE cond:(<=  9  (GVAR i))body: (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):))
	.loc 1 93
.L000025:
// Line 85 (<=  9  (GVAR i))
	.loc 1 85
// Line 85  9 
	.loc 1 85
	push 9
// Line 85 (GVAR i)
	.loc 1 85
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
	je   .L000026
// Line 93 (BLOCK(= (GVAR j)  0 ):(WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)):(++ (= (GVAR i) (++ (GVAR i)  1 ))  1 ):)
	.loc 1 93
// Line 86 (= (GVAR j)  0 )
	.loc 1 86
	lea  rax, j[rip]
	push rax
// Line 86  0 
	.loc 1 86
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 91 (WHILE cond:(<=  7  (GVAR j))body: (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):))
	.loc 1 91
.L000027:
// Line 87 (<=  7  (GVAR j))
	.loc 1 87
// Line 87  7 
	.loc 1 87
	push 7
// Line 87 (GVAR j)
	.loc 1 87
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
	je   .L000028
// Line 91 (BLOCK(= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j))):(++ (= (GVAR j) (++ (GVAR j)  1 ))  1 ):)
	.loc 1 91
// Line 88 (= (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))) (+ (* (GVAR i)  10 ) (GVAR j)))
	.loc 1 88
// Line 88 (] (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i)))) (GVAR j))
	.loc 1 88
// Line 88 (ADDR (DEREF (] (ADDR (GVAR a)) (GVAR i))))
	.loc 1 88
// Line 88 (] (ADDR (GVAR a)) (GVAR i))
	.loc 1 88
// Line 88 (ADDR (GVAR a))
	.loc 1 88
	lea  rax, a[rip]
	push rax
// Line 88 (GVAR i)
	.loc 1 88
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
// Line 88 (GVAR j)
	.loc 1 88
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
// Line 88 (+ (* (GVAR i)  10 ) (GVAR j))
	.loc 1 88
// Line 88 (* (GVAR i)  10 )
	.loc 1 88
// Line 88 (GVAR i)
	.loc 1 88
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 88  10 
	.loc 1 88
	push 10
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 88 (GVAR j)
	.loc 1 88
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
// Line 89 (++ (= (GVAR j) (++ (GVAR j)  1 ))  1 )
	.loc 1 89
// Line 89 (= (GVAR j) (++ (GVAR j)  1 ))
	.loc 1 89
	lea  rax, j[rip]
	push rax
// Line 89 (++ (GVAR j)  1 )
	.loc 1 89
// Line 89 (GVAR j)
	.loc 1 89
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 89  1 
	.loc 1 89
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 89  1 
	.loc 1 89
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000027
.L000028:
// Line 91 (++ (= (GVAR i) (++ (GVAR i)  1 ))  1 )
	.loc 1 91
// Line 91 (= (GVAR i) (++ (GVAR i)  1 ))
	.loc 1 91
	lea  rax, i[rip]
	push rax
// Line 91 (++ (GVAR i)  1 )
	.loc 1 91
// Line 91 (GVAR i)
	.loc 1 91
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 91  1 
	.loc 1 91
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 91  1 
	.loc 1 91
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000025
.L000026:
// Line 93 (CALL assert_expect ( 93 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )): 1 :) )
	.loc 1 93
// Line 93  1 
	.loc 1 93
	push 1
// Line 93 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 ))
	.loc 1 93
// Line 93 (] (ADDR (DEREF (] (ADDR (GVAR a))  0 )))  1 )
	.loc 1 93
// Line 93 (ADDR (DEREF (] (ADDR (GVAR a))  0 )))
	.loc 1 93
// Line 93 (] (ADDR (GVAR a))  0 )
	.loc 1 93
// Line 93 (ADDR (GVAR a))
	.loc 1 93
	lea  rax, a[rip]
	push rax
// Line 93  0 
	.loc 1 93
	push 0
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 93  1 
	.loc 1 93
	push 1
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 93  93 
	.loc 1 93
	push 93
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
// Line 94 (CALL assert_expect ( 94 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )): 97 :) )
	.loc 1 94
// Line 94  97 
	.loc 1 94
	push 97
// Line 94 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 ))
	.loc 1 94
// Line 94 (] (ADDR (DEREF (] (ADDR (GVAR a))  9 )))  7 )
	.loc 1 94
// Line 94 (ADDR (DEREF (] (ADDR (GVAR a))  9 )))
	.loc 1 94
// Line 94 (] (ADDR (GVAR a))  9 )
	.loc 1 94
// Line 94 (ADDR (GVAR a))
	.loc 1 94
	lea  rax, a[rip]
	push rax
// Line 94  9 
	.loc 1 94
	push 9
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 94  7 
	.loc 1 94
	push 7
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 94  94 
	.loc 1 94
	push 94
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000031
	mov  rax, 0
	call assert_expect
	jmp  .L000032
.L000031:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000032:
	push rax
	pop  rax
// Line 95 (CALL assert_expect ( 95 :(DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )): 84 :) )
	.loc 1 95
// Line 95  84 
	.loc 1 95
	push 84
// Line 95 (DEREF (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 ))
	.loc 1 95
// Line 95 (] (ADDR (DEREF (] (ADDR (GVAR a))  8 )))  4 )
	.loc 1 95
// Line 95 (ADDR (DEREF (] (ADDR (GVAR a))  8 )))
	.loc 1 95
// Line 95 (] (ADDR (GVAR a))  8 )
	.loc 1 95
// Line 95 (ADDR (GVAR a))
	.loc 1 95
	lea  rax, a[rip]
	push rax
// Line 95  8 
	.loc 1 95
	push 8
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 95  4 
	.loc 1 95
	push 4
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	mov  eax, [rax]
	push rax
// Line 95  95 
	.loc 1 95
	push 95
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000033
	mov  rax, 0
	call assert_expect
	jmp  .L000034
.L000033:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000034:
	push rax
	pop  rax
// Line 96 (RETURN  0 )
	.loc 1 96
// Line 96  0 
	.loc 1 96
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
// Line 99 FDECL string func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (ADDR  "Hello world!\n" )):(CALL printf_ ((LVAR 8):) ):(= (LVAR 31)  "\tHello---" ):(CALL printf_ ((ADDR (LVAR 31)):) ):(CALL assert_expect ( 106 : 9 :(DEREF (] (ADDR (LVAR 31))  15 )):) ):(CALL assert_expect ( 108 : 119 : 119 :) ):(CALL assert_expect ( 109 : 119 :(DEREF (] (LVAR 8)  6 )):) ):))
	.loc 1 99
string:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 100 (= (LVAR 8) (ADDR  "Hello world!\n" ))
	.loc 1 100
	lea  rax, [rbp - 8]
	push rax
// Line 100 (ADDR  "Hello world!\n" )
	.loc 1 100
	lea  rax, .LS000023[rip]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 101 (CALL printf_ ((LVAR 8):) )
	.loc 1 101
// Line 101 (LVAR 8)
	.loc 1 101
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000035
	mov  rax, 0
	call printf_
	jmp  .L000036
.L000035:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000036:
	push rax
	pop  rax
// Line 102 (= (LVAR 31)  "\tHello---" )
	.loc 1 102
	mov  DWORD PTR [rbp - 31], 1818576905
	mov  DWORD PTR [rbp - 27], 757952364
	mov  DWORD PTR [rbp - 23], 1919907629
	mov  DWORD PTR [rbp - 19], 153904236
	mov  DWORD PTR [rbp - 15], 1767991137
	mov  BYTE PTR [rbp - 11], 110
	mov  BYTE PTR [rbp - 10], 10
	mov  BYTE PTR [rbp - 9], 0
	push rdi
	pop  rax
// Line 105 (CALL printf_ ((ADDR (LVAR 31)):) )
	.loc 1 105
// Line 105 (ADDR (LVAR 31))
	.loc 1 105
	lea  rax, [rbp - 31]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000037
	mov  rax, 0
	call printf_
	jmp  .L000038
.L000037:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000038:
	push rax
	pop  rax
// Line 106 (CALL assert_expect ( 106 : 9 :(DEREF (] (ADDR (LVAR 31))  15 )):) )
	.loc 1 106
// Line 106 (DEREF (] (ADDR (LVAR 31))  15 ))
	.loc 1 106
// Line 106 (] (ADDR (LVAR 31))  15 )
	.loc 1 106
// Line 106 (ADDR (LVAR 31))
	.loc 1 106
	lea  rax, [rbp - 31]
	push rax
// Line 106  15 
	.loc 1 106
	push 15
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 106  9 
	.loc 1 106
	push 9
// Line 106  106 
	.loc 1 106
	push 106
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
// Line 108 (CALL assert_expect ( 108 : 119 : 119 :) )
	.loc 1 108
// Line 108  119 
	.loc 1 108
	push 119
// Line 108  119 
	.loc 1 108
	push 119
// Line 108  108 
	.loc 1 108
	push 108
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000041
	mov  rax, 0
	call assert_expect
	jmp  .L000042
.L000041:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000042:
	push rax
	pop  rax
// Line 109 (CALL assert_expect ( 109 : 119 :(DEREF (] (LVAR 8)  6 )):) )
	.loc 1 109
// Line 109 (DEREF (] (LVAR 8)  6 ))
	.loc 1 109
// Line 109 (] (LVAR 8)  6 )
	.loc 1 109
// Line 109 (LVAR 8)
	.loc 1 109
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
// Line 109  6 
	.loc 1 109
	push 6
	pop  rdi
	pop  rax
	imul rdi, 1
	add  rax, rdi
	push rax
	pop  rax
	movsx eax, BYTE PTR [rax]
	push rax
// Line 109  119 
	.loc 1 109
	push 119
// Line 109  109 
	.loc 1 109
	push 109
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000043
	mov  rax, 0
	call assert_expect
	jmp  .L000044
.L000043:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000044:
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
// Line 112 FDECL block_scope func ( ) void 
//    
//    (BLOCK(= (GVAR i)  1 ):(CALL assert_expect ( 114 : 1 :(GVAR i):) ):(= (LVAR 4)  5 ):(CALL assert_expect ( 116 : 5 :(LVAR 4):) ):(BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 123 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 125 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 127 : 2 :(LVAR 8):) ):):(CALL assert_expect ( 129 : 5 :(LVAR 4):) ):))
	.loc 1 112
block_scope:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 113 (= (GVAR i)  1 )
	.loc 1 113
	lea  rax, i[rip]
	push rax
// Line 113  1 
	.loc 1 113
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 114 (CALL assert_expect ( 114 : 1 :(GVAR i):) )
	.loc 1 114
// Line 114 (GVAR i)
	.loc 1 114
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 114  1 
	.loc 1 114
	push 1
// Line 114  114 
	.loc 1 114
	push 114
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
// Line 115 (= (LVAR 4)  5 )
	.loc 1 115
	lea  rax, [rbp - 4]
	push rax
// Line 115  5 
	.loc 1 115
	push 5
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 116 (CALL assert_expect ( 116 : 5 :(LVAR 4):) )
	.loc 1 116
// Line 116 (LVAR 4)
	.loc 1 116
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 116  5 
	.loc 1 116
	push 5
// Line 116  116 
	.loc 1 116
	push 116
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
// Line 129 (BLOCK(= (LVAR 8)  2 ):(BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 123 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 125 : 3 :(LVAR 12):) ):):(CALL assert_expect ( 127 : 2 :(LVAR 8):) ):)
	.loc 1 129
// Line 118 (= (LVAR 8)  2 )
	.loc 1 118
	lea  rax, [rbp - 8]
	push rax
// Line 118  2 
	.loc 1 118
	push 2
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 127 (BLOCK(= (LVAR 12)  3 ):(BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 123 : 4 :(LVAR 16):) ):):(CALL assert_expect ( 125 : 3 :(LVAR 12):) ):)
	.loc 1 127
// Line 120 (= (LVAR 12)  3 )
	.loc 1 120
	lea  rax, [rbp - 12]
	push rax
// Line 120  3 
	.loc 1 120
	push 3
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 125 (BLOCK(= (LVAR 16)  4 ):(CALL assert_expect ( 123 : 4 :(LVAR 16):) ):)
	.loc 1 125
// Line 122 (= (LVAR 16)  4 )
	.loc 1 122
	lea  rax, [rbp - 16]
	push rax
// Line 122  4 
	.loc 1 122
	push 4
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 123 (CALL assert_expect ( 123 : 4 :(LVAR 16):) )
	.loc 1 123
// Line 123 (LVAR 16)
	.loc 1 123
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 123  4 
	.loc 1 123
	push 4
// Line 123  123 
	.loc 1 123
	push 123
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
// Line 125 (CALL assert_expect ( 125 : 3 :(LVAR 12):) )
	.loc 1 125
// Line 125 (LVAR 12)
	.loc 1 125
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 125  3 
	.loc 1 125
	push 3
// Line 125  125 
	.loc 1 125
	push 125
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
// Line 127 (CALL assert_expect ( 127 : 2 :(LVAR 8):) )
	.loc 1 127
// Line 127 (LVAR 8)
	.loc 1 127
	lea  rax, [rbp - 8]
	mov  eax, [rax]
	push rax
// Line 127  2 
	.loc 1 127
	push 2
// Line 127  127 
	.loc 1 127
	push 127
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
// Line 129 (CALL assert_expect ( 129 : 5 :(LVAR 4):) )
	.loc 1 129
// Line 129 (LVAR 4)
	.loc 1 129
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 129  5 
	.loc 1 129
	push 5
// Line 129  129 
	.loc 1 129
	push 129
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
.L.return.block_scope:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global for_
// Line 132 FDECL for_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  100 ):(CALL assert_expect ( 134 : 100 :(LVAR 4):) ):(FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 137 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 139 : 9 :(LVAR 12):) ):)):(CALL assert_expect ( 141 : 100 :(LVAR 4):) ):(= (LVAR 4)  0 ):(FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)):(CALL assert_expect ( 147 : 6 :(LVAR 4):) ):))
	.loc 1 132
for_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 133 (= (LVAR 4)  100 )
	.loc 1 133
	lea  rax, [rbp - 4]
	push rax
// Line 133  100 
	.loc 1 133
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 134 (CALL assert_expect ( 134 : 100 :(LVAR 4):) )
	.loc 1 134
// Line 134 (LVAR 4)
	.loc 1 134
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 134  100 
	.loc 1 134
	push 100
// Line 134  134 
	.loc 1 134
	push 134
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
// Line 135 (FOR init: (= (LVAR 8)  10 )cond: (<  100  (LVAR 8)) post: (= (LVAR 8) (+= (LVAR 8)  1 )) body (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 137 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 139 : 9 :(LVAR 12):) ):))
	.loc 1 135
// Line 135 (= (LVAR 8)  10 )
	.loc 1 135
	lea  rax, [rbp - 8]
	push rax
// Line 135  10 
	.loc 1 135
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000061:
// Line 135 (<  100  (LVAR 8))
	.loc 1 135
// Line 135  100 
	.loc 1 135
	push 100
// Line 135 (LVAR 8)
	.loc 1 135
	lea  rax, [rbp - 8]
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
// Line 141 (BLOCK(IF (== (LVAR 8)  15 ) BREAK  NULL ):(IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 137 : 12 :(LVAR 8):) ) NULL ):(= (LVAR 12)  9 ):(CALL assert_expect ( 139 : 9 :(LVAR 12):) ):)
	.loc 1 141
// Line 137 (IF (== (LVAR 8)  15 ) BREAK  NULL )
	.loc 1 137
// Line 136 (== (LVAR 8)  15 )
	.loc 1 136
// Line 136 (LVAR 8)
	.loc 1 136
	lea  rax, [rbp - 8]
	mov  eax, [rax]
	push rax
// Line 136  15 
	.loc 1 136
	push 15
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000062
// Line 136 BREAK 
	.loc 1 136
	jmp  .L000060
	jmp  .L000063
.L000062:
.L000063:
// Line 138 (IF (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 )) (CALL assert_expect ( 137 : 12 :(LVAR 8):) ) NULL )
	.loc 1 138
// Line 137 (== (LVAR 8) (* (/ (LVAR 8)  3 )  3 ))
	.loc 1 137
// Line 137 (LVAR 8)
	.loc 1 137
	lea  rax, [rbp - 8]
	mov  eax, [rax]
	push rax
// Line 137 (* (/ (LVAR 8)  3 )  3 )
	.loc 1 137
// Line 137 (/ (LVAR 8)  3 )
	.loc 1 137
// Line 137 (LVAR 8)
	.loc 1 137
	lea  rax, [rbp - 8]
	mov  eax, [rax]
	push rax
// Line 137  3 
	.loc 1 137
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 137  3 
	.loc 1 137
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
	je   .L000064
// Line 137 (CALL assert_expect ( 137 : 12 :(LVAR 8):) )
	.loc 1 137
// Line 137 (LVAR 8)
	.loc 1 137
	lea  rax, [rbp - 8]
	mov  eax, [rax]
	push rax
// Line 137  12 
	.loc 1 137
	push 12
// Line 137  137 
	.loc 1 137
	push 137
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000066
	mov  rax, 0
	call assert_expect
	jmp  .L000067
.L000066:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000067:
	push rax
	pop  rax
	jmp  .L000065
.L000064:
.L000065:
// Line 138 (= (LVAR 12)  9 )
	.loc 1 138
	lea  rax, [rbp - 12]
	push rax
// Line 138  9 
	.loc 1 138
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 139 (CALL assert_expect ( 139 : 9 :(LVAR 12):) )
	.loc 1 139
// Line 139 (LVAR 12)
	.loc 1 139
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 139  9 
	.loc 1 139
	push 9
// Line 139  139 
	.loc 1 139
	push 139
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000068
	mov  rax, 0
	call assert_expect
	jmp  .L000069
.L000068:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000069:
	push rax
	pop  rax
.L000059:
// Line 135 (= (LVAR 8) (+= (LVAR 8)  1 ))
	.loc 1 135
	lea  rax, [rbp - 8]
	push rax
// Line 135 (+= (LVAR 8)  1 )
	.loc 1 135
// Line 135 (LVAR 8)
	.loc 1 135
	lea  rax, [rbp - 8]
	mov  eax, [rax]
	push rax
// Line 135  1 
	.loc 1 135
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
	jmp  .L000061
.L000060:
// Line 141 (CALL assert_expect ( 141 : 100 :(LVAR 4):) )
	.loc 1 141
// Line 141 (LVAR 4)
	.loc 1 141
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 141  100 
	.loc 1 141
	push 100
// Line 141  141 
	.loc 1 141
	push 141
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000070
	mov  rax, 0
	call assert_expect
	jmp  .L000071
.L000070:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000071:
	push rax
	pop  rax
// Line 142 (= (LVAR 4)  0 )
	.loc 1 142
	lea  rax, [rbp - 4]
	push rax
// Line 142  0 
	.loc 1 142
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 143 (FOR init: NULL cond:  1  post: NULL  body (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):))
	.loc 1 143
.L000074:
// Line 143  1 
	.loc 1 143
	push 1
	pop  rax
	cmp  rax, 0
	je   .L000073
// Line 147 (BLOCK(IF (== (LVAR 4)  6 ) BREAK  NULL ):(= (LVAR 4) (+ (LVAR 4)  1 )):)
	.loc 1 147
// Line 145 (IF (== (LVAR 4)  6 ) BREAK  NULL )
	.loc 1 145
// Line 144 (== (LVAR 4)  6 )
	.loc 1 144
// Line 144 (LVAR 4)
	.loc 1 144
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 144  6 
	.loc 1 144
	push 6
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000075
// Line 144 BREAK 
	.loc 1 144
	jmp  .L000073
	jmp  .L000076
.L000075:
.L000076:
// Line 145 (= (LVAR 4) (+ (LVAR 4)  1 ))
	.loc 1 145
	lea  rax, [rbp - 4]
	push rax
// Line 145 (+ (LVAR 4)  1 )
	.loc 1 145
// Line 145 (LVAR 4)
	.loc 1 145
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 145  1 
	.loc 1 145
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
.L000072:
	jmp  .L000074
.L000073:
// Line 147 (CALL assert_expect ( 147 : 6 :(LVAR 4):) )
	.loc 1 147
// Line 147 (LVAR 4)
	.loc 1 147
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
// Line 147  6 
	.loc 1 147
	push 6
// Line 147  147 
	.loc 1 147
	push 147
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
.L.return.for_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global switch_
// Line 150 FDECL switch_ func ( int  s ) int 
//    (LVAR 4) 
//    (BLOCK(SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)):(RETURN (LVAR 8)):))
	.loc 1 150
switch_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 4], edi
// Line 152 (SWITCH cond: (LVAR 4) body: (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):))
	.loc 1 152
	lea  rax, [rbp - 12]
	push rax
// Line 152 (LVAR 4)
	.loc 1 152
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 167 (BLOCK(CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :)):(CASE cond: 2  body:(BLOCK)):(CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):)):(CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)):(CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):)):(DEFAULT body:(= (LVAR 8)  15 )):)
	.loc 1 167
// Line 153 (CASE cond: 1  body:(BLOCK(= (LVAR 8)  11 ):BREAK :))
	.loc 1 153
// Line 153  1 
	.loc 1 153
	push 1
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000080
// Line 156 (CASE cond: 2  body:(BLOCK))
	.loc 1 156
// Line 156  2 
	.loc 1 156
	push 2
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000081
// Line 157 (CASE cond: 3  body:(BLOCK(= (LVAR 8)  12 ):))
	.loc 1 157
// Line 157  3 
	.loc 1 157
	push 3
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000082
// Line 159 (CASE cond: 4  body:(BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):))
	.loc 1 159
// Line 159  4 
	.loc 1 159
	push 4
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000083
// Line 162 (CASE cond: 5  body:(BLOCK(= (LVAR 8)  14 ):))
	.loc 1 162
// Line 162  5 
	.loc 1 162
	push 5
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000084
// Line 164 (DEFAULT body:(= (LVAR 8)  15 ))
	.loc 1 164
	jmp  .L000085
	jmp  .L000079
.L000080:
// Line 154 (BLOCK(= (LVAR 8)  11 ):BREAK :)
	.loc 1 154
// Line 154 (= (LVAR 8)  11 )
	.loc 1 154
	lea  rax, [rbp - 8]
	push rax
// Line 154  11 
	.loc 1 154
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 155 BREAK 
	.loc 1 155
	jmp  .L000079
.L000081:
// Line 157 (BLOCK)
	.loc 1 157
.L000082:
// Line 158 (BLOCK(= (LVAR 8)  12 ):)
	.loc 1 158
// Line 158 (= (LVAR 8)  12 )
	.loc 1 158
	lea  rax, [rbp - 8]
	push rax
// Line 158  12 
	.loc 1 158
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000083:
// Line 160 (BLOCK(= (LVAR 8)  13 ):(RETURN (LVAR 8)):)
	.loc 1 160
// Line 160 (= (LVAR 8)  13 )
	.loc 1 160
	lea  rax, [rbp - 8]
	push rax
// Line 160  13 
	.loc 1 160
	push 13
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 161 (RETURN (LVAR 8))
	.loc 1 161
// Line 161 (LVAR 8)
	.loc 1 161
	lea  rax, [rbp - 8]
	mov  eax, [rax]
	push rax
	pop  rax
	jmp  .L.return.switch_
.L000084:
// Line 163 (BLOCK(= (LVAR 8)  14 ):)
	.loc 1 163
// Line 163 (= (LVAR 8)  14 )
	.loc 1 163
	lea  rax, [rbp - 8]
	push rax
// Line 163  14 
	.loc 1 163
	push 14
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000085:
// Line 165 (= (LVAR 8)  15 )
	.loc 1 165
	lea  rax, [rbp - 8]
	push rax
// Line 165  15 
	.loc 1 165
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000079:
// Line 167 (RETURN (LVAR 8))
	.loc 1 167
// Line 167 (LVAR 8)
	.loc 1 167
	lea  rax, [rbp - 8]
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
// Line 170 FDECL switch2_ func ( char  s ) int 
//    (LVAR 1) 
//    (BLOCK(SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)):(RETURN (LVAR 5)):))
	.loc 1 170
switch2_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 1], dil
// Line 172 (SWITCH cond: (LVAR 1) body: (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):))
	.loc 1 172
	lea  rax, [rbp - 9]
	push rax
// Line 172 (LVAR 1)
	.loc 1 172
	lea  rax, [rbp - 1]
	movsx eax, BYTE PTR [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
// Line 183 (BLOCK(CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :)):(CASE cond: 98  body:(BLOCK)):(CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :)):(DEFAULT body:(= (LVAR 5)  15 )):)
	.loc 1 183
// Line 173 (CASE cond: 97  body:(BLOCK(= (LVAR 5)  11 ):BREAK :))
	.loc 1 173
// Line 173  97 
	.loc 1 173
	push 97
	lea  rax, [rbp - 9]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000087
// Line 176 (CASE cond: 98  body:(BLOCK))
	.loc 1 176
// Line 176  98 
	.loc 1 176
	push 98
	lea  rax, [rbp - 9]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000088
// Line 177 (CASE cond: 99  body:(BLOCK(= (LVAR 5)  12 ):BREAK :))
	.loc 1 177
// Line 177  99 
	.loc 1 177
	push 99
	lea  rax, [rbp - 9]
	mov  eax, [rax]
	pop  rdi
	cmp  eax, edi
	je   .L000089
// Line 180 (DEFAULT body:(= (LVAR 5)  15 ))
	.loc 1 180
	jmp  .L000090
	jmp  .L000086
.L000087:
// Line 174 (BLOCK(= (LVAR 5)  11 ):BREAK :)
	.loc 1 174
// Line 174 (= (LVAR 5)  11 )
	.loc 1 174
	lea  rax, [rbp - 5]
	push rax
// Line 174  11 
	.loc 1 174
	push 11
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 175 BREAK 
	.loc 1 175
	jmp  .L000086
.L000088:
// Line 177 (BLOCK)
	.loc 1 177
.L000089:
// Line 178 (BLOCK(= (LVAR 5)  12 ):BREAK :)
	.loc 1 178
// Line 178 (= (LVAR 5)  12 )
	.loc 1 178
	lea  rax, [rbp - 5]
	push rax
// Line 178  12 
	.loc 1 178
	push 12
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 179 BREAK 
	.loc 1 179
	jmp  .L000086
.L000090:
// Line 181 (= (LVAR 5)  15 )
	.loc 1 181
	lea  rax, [rbp - 5]
	push rax
// Line 181  15 
	.loc 1 181
	push 15
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000086:
// Line 183 (RETURN (LVAR 5))
	.loc 1 183
// Line 183 (LVAR 5)
	.loc 1 183
	lea  rax, [rbp - 5]
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
// Line 212 FDECL list_ func ( ) void 
//    
//    (BLOCK(= (LVAR 4)  16 ):(= (LVAR 12)  0 ):(FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)):(CALL assert_expect ( 221 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 223 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 225 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 227 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 229 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0)):(CALL assert_expect ( 231 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) ):(= (MEMBER (GVAR def) payload 0)  777 ):(CALL assert_expect ( 234 : 777 :(MEMBER (GVAR def) payload 0):) ):))
	.loc 1 212
list_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 213 (= (LVAR 4)  16 )
	.loc 1 213
	lea  rax, [rbp - 4]
	push rax
// Line 213  16 
	.loc 1 213
	push 16
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 214 (= (LVAR 12)  0 )
	.loc 1 214
	lea  rax, [rbp - 12]
	push rax
// Line 214  0 
	.loc 1 214
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 215 (FOR init: (= (LVAR 16)  0 )cond: (<  6  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):))
	.loc 1 215
// Line 215 (= (LVAR 16)  0 )
	.loc 1 215
	lea  rax, [rbp - 16]
	push rax
// Line 215  0 
	.loc 1 215
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000093:
// Line 215 (<  6  (LVAR 16))
	.loc 1 215
// Line 215  6 
	.loc 1 215
	push 6
// Line 215 (LVAR 16)
	.loc 1 215
	lea  rax, [rbp - 16]
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
	je   .L000092
// Line 221 (BLOCK(= (LVAR 24) (CALL calloc_ ((LVAR 4):) )):(= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16)):(= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12)):(= (LVAR 12) (LVAR 24)):)
	.loc 1 221
// Line 216 (= (LVAR 24) (CALL calloc_ ((LVAR 4):) ))
	.loc 1 216
	lea  rax, [rbp - 24]
	push rax
// Line 216 (CALL calloc_ ((LVAR 4):) )
	.loc 1 216
// Line 216 (LVAR 4)
	.loc 1 216
	lea  rax, [rbp - 4]
	mov  eax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000094
	mov  rax, 0
	call calloc_
	jmp  .L000095
.L000094:
	sub  rsp, 8
	mov  rax, 0
	call calloc_
	add  rsp, 8
.L000095:
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 217 (= (MEMBER (DEREF (LVAR 24)) payloads 8) (LVAR 16))
	.loc 1 217
// Line 217 (LVAR 24)
	.loc 1 217
	lea  rax, [rbp - 24]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	push rax
// Line 217 (LVAR 16)
	.loc 1 217
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 218 (= (MEMBER (DEREF (LVAR 24)) next 0) (LVAR 12))
	.loc 1 218
// Line 218 (LVAR 24)
	.loc 1 218
	lea  rax, [rbp - 24]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	push rax
// Line 218 (LVAR 12)
	.loc 1 218
	lea  rax, [rbp - 12]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 219 (= (LVAR 12) (LVAR 24))
	.loc 1 219
	lea  rax, [rbp - 12]
	push rax
// Line 219 (LVAR 24)
	.loc 1 219
	lea  rax, [rbp - 24]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
.L000091:
// Line 215 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
	.loc 1 215
// Line 215 (= (LVAR 16) (++ (LVAR 16)  1 ))
	.loc 1 215
	lea  rax, [rbp - 16]
	push rax
// Line 215 (++ (LVAR 16)  1 )
	.loc 1 215
// Line 215 (LVAR 16)
	.loc 1 215
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 215  1 
	.loc 1 215
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 215  1 
	.loc 1 215
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000093
.L000092:
// Line 221 (CALL assert_expect ( 221 : 5 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
	.loc 1 221
// Line 221 (MEMBER (DEREF (LVAR 12)) payloads 8)
	.loc 1 221
// Line 221 (LVAR 12)
	.loc 1 221
	lea  rax, [rbp - 12]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 221  5 
	.loc 1 221
	push 5
// Line 221  221 
	.loc 1 221
	push 221
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
// Line 222 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	.loc 1 222
	lea  rax, [rbp - 12]
	push rax
// Line 222 (MEMBER (DEREF (LVAR 12)) next 0)
	.loc 1 222
// Line 222 (LVAR 12)
	.loc 1 222
	lea  rax, [rbp - 12]
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
// Line 223 (CALL assert_expect ( 223 : 4 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
	.loc 1 223
// Line 223 (MEMBER (DEREF (LVAR 12)) payloads 8)
	.loc 1 223
// Line 223 (LVAR 12)
	.loc 1 223
	lea  rax, [rbp - 12]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 223  4 
	.loc 1 223
	push 4
// Line 223  223 
	.loc 1 223
	push 223
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
// Line 224 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	.loc 1 224
	lea  rax, [rbp - 12]
	push rax
// Line 224 (MEMBER (DEREF (LVAR 12)) next 0)
	.loc 1 224
// Line 224 (LVAR 12)
	.loc 1 224
	lea  rax, [rbp - 12]
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
// Line 225 (CALL assert_expect ( 225 : 3 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
	.loc 1 225
// Line 225 (MEMBER (DEREF (LVAR 12)) payloads 8)
	.loc 1 225
// Line 225 (LVAR 12)
	.loc 1 225
	lea  rax, [rbp - 12]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 225  3 
	.loc 1 225
	push 3
// Line 225  225 
	.loc 1 225
	push 225
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
// Line 226 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	.loc 1 226
	lea  rax, [rbp - 12]
	push rax
// Line 226 (MEMBER (DEREF (LVAR 12)) next 0)
	.loc 1 226
// Line 226 (LVAR 12)
	.loc 1 226
	lea  rax, [rbp - 12]
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
// Line 227 (CALL assert_expect ( 227 : 2 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
	.loc 1 227
// Line 227 (MEMBER (DEREF (LVAR 12)) payloads 8)
	.loc 1 227
// Line 227 (LVAR 12)
	.loc 1 227
	lea  rax, [rbp - 12]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 227  2 
	.loc 1 227
	push 2
// Line 227  227 
	.loc 1 227
	push 227
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
// Line 228 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	.loc 1 228
	lea  rax, [rbp - 12]
	push rax
// Line 228 (MEMBER (DEREF (LVAR 12)) next 0)
	.loc 1 228
// Line 228 (LVAR 12)
	.loc 1 228
	lea  rax, [rbp - 12]
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
// Line 229 (CALL assert_expect ( 229 : 1 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
	.loc 1 229
// Line 229 (MEMBER (DEREF (LVAR 12)) payloads 8)
	.loc 1 229
// Line 229 (LVAR 12)
	.loc 1 229
	lea  rax, [rbp - 12]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 229  1 
	.loc 1 229
	push 1
// Line 229  229 
	.loc 1 229
	push 229
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
// Line 230 (= (LVAR 12) (MEMBER (DEREF (LVAR 12)) next 0))
	.loc 1 230
	lea  rax, [rbp - 12]
	push rax
// Line 230 (MEMBER (DEREF (LVAR 12)) next 0)
	.loc 1 230
// Line 230 (LVAR 12)
	.loc 1 230
	lea  rax, [rbp - 12]
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
// Line 231 (CALL assert_expect ( 231 : 0 :(MEMBER (DEREF (LVAR 12)) payloads 8):) )
	.loc 1 231
// Line 231 (MEMBER (DEREF (LVAR 12)) payloads 8)
	.loc 1 231
// Line 231 (LVAR 12)
	.loc 1 231
	lea  rax, [rbp - 12]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 8
	mov  eax, [rax]
	push rax
// Line 231  0 
	.loc 1 231
	push 0
// Line 231  231 
	.loc 1 231
	push 231
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
// Line 233 (= (MEMBER (GVAR def) payload 0)  777 )
	.loc 1 233
	lea  rax, def[rip]
	add  rax, 0
	push rax
// Line 233  777 
	.loc 1 233
	push 777
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 234 (CALL assert_expect ( 234 : 777 :(MEMBER (GVAR def) payload 0):) )
	.loc 1 234
// Line 234 (MEMBER (GVAR def) payload 0)
	.loc 1 234
	lea  rax, def[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 234  777 
	.loc 1 234
	push 777
// Line 234  234 
	.loc 1 234
	push 234
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
.L.return.list_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global struct_
// Line 237 FDECL struct_ func ( ) void 
//    
//    (BLOCK(CALL assert_expect ( 257 : 32 : 32 :) ):(CALL assert_expect ( 258 : 8 : 8 :) ):(= (MEMBER (GVAR pos) col 4)  9 ):(= (MEMBER (GVAR pos) row 0)  45 ):(CALL assert_expect ( 263 : 9 :(MEMBER (GVAR pos) col 4):) ):(CALL assert_expect ( 264 : 45 :(MEMBER (GVAR pos) row 0):) ):(CALL assert_expect ( 266 : 4 : 4 :) ):(CALL assert_expect ( 267 : 4 : 4 :) ):(= (LVAR 336) (ADDR (LVAR 328))):(= (MEMBER (LVAR 328) size 136)  10 ):(= (MEMBER (LVAR 328) ch 140)  5 ):(= (MEMBER (LVAR 480) size 136)  195 ):(= (MEMBER (LVAR 480) ch 140)  39 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 ):(= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 ):(CALL assert_expect ( 278 : 10 :(MEMBER (LVAR 328) size 136):) ):(CALL assert_expect ( 279 : 5 :(MEMBER (LVAR 328) ch 140):) ):(= (MEMBER (LVAR 328) size 136)  110 ):(= (MEMBER (LVAR 328) ch 140)  79 ):(CALL assert_expect ( 282 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 283 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 284 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) ):(CALL assert_expect ( 285 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) ):(CALL assert_expect ( 286 : 195 :(MEMBER (LVAR 480) size 136):) ):(CALL assert_expect ( 287 : 39 :(MEMBER (LVAR 480) ch 140):) ):(CALL assert_expect ( 288 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) ):(CALL assert_expect ( 289 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) ):(= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480))):(= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328))):(CALL assert_expect ( 293 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) ):(= (MEMBER (LVAR 640) size 136)  100 ):(= (MEMBER (LVAR 784) size 136)  500 ):(= (LVAR 784) (LVAR 640)):(= (MEMBER (GVAR leaf_global) size 136)  700 ):(CALL assert_expect ( 301 : 100 :(MEMBER (LVAR 784) size 136):) ):(= (LVAR 784) (GVAR leaf_global)):(CALL assert_expect ( 303 : 700 :(MEMBER (LVAR 784) size 136):) ):(= (GVAR leaf_global) (LVAR 640)):(CALL assert_expect ( 305 : 100 :(MEMBER (GVAR leaf_global) size 136):) ):(= (MEMBER (LVAR 640) size 136)  999 ):(= (LVAR 792) (ADDR (LVAR 640))):(= (LVAR 800) (ADDR (LVAR 784))):(= (GVAR leaf_global) (= (DEREF (LVAR 800)) (DEREF (LVAR 792)))):(CALL assert_expect ( 310 : 999 :(MEMBER (DEREF (LVAR 800)) size 136):) ):(CALL assert_expect ( 311 : 999 :(MEMBER (GVAR leaf_global) size 136):) ):))
	.loc 1 237
struct_:
	push rbp
	mov  rbp, rsp
	sub  rsp, 816
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 257 (CALL assert_expect ( 257 : 32 : 32 :) )
	.loc 1 257
// Line 257  32 
	.loc 1 257
	push 32
// Line 257  32 
	.loc 1 257
	push 32
// Line 257  257 
	.loc 1 257
	push 257
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
// Line 258 (CALL assert_expect ( 258 : 8 : 8 :) )
	.loc 1 258
// Line 258  8 
	.loc 1 258
	push 8
// Line 258  8 
	.loc 1 258
	push 8
// Line 258  258 
	.loc 1 258
	push 258
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
// Line 260 (= (MEMBER (GVAR pos) col 4)  9 )
	.loc 1 260
	lea  rax, pos[rip]
	add  rax, 4
	push rax
// Line 260  9 
	.loc 1 260
	push 9
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 261 (= (MEMBER (GVAR pos) row 0)  45 )
	.loc 1 261
	lea  rax, pos[rip]
	add  rax, 0
	push rax
// Line 261  45 
	.loc 1 261
	push 45
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 263 (CALL assert_expect ( 263 : 9 :(MEMBER (GVAR pos) col 4):) )
	.loc 1 263
// Line 263 (MEMBER (GVAR pos) col 4)
	.loc 1 263
	lea  rax, pos[rip]
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 263  9 
	.loc 1 263
	push 9
// Line 263  263 
	.loc 1 263
	push 263
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
// Line 264 (CALL assert_expect ( 264 : 45 :(MEMBER (GVAR pos) row 0):) )
	.loc 1 264
// Line 264 (MEMBER (GVAR pos) row 0)
	.loc 1 264
	lea  rax, pos[rip]
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 264  45 
	.loc 1 264
	push 45
// Line 264  264 
	.loc 1 264
	push 264
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
// Line 266 (CALL assert_expect ( 266 : 4 : 4 :) )
	.loc 1 266
// Line 266  4 
	.loc 1 266
	push 4
// Line 266  4 
	.loc 1 266
	push 4
// Line 266  266 
	.loc 1 266
	push 266
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
// Line 267 (CALL assert_expect ( 267 : 4 : 4 :) )
	.loc 1 267
// Line 267  4 
	.loc 1 267
	push 4
// Line 267  4 
	.loc 1 267
	push 4
// Line 267  267 
	.loc 1 267
	push 267
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
// Line 270 (= (LVAR 336) (ADDR (LVAR 328)))
	.loc 1 270
	lea  rax, [rbp - 336]
	push rax
// Line 270 (ADDR (LVAR 328))
	.loc 1 270
	lea  rax, [rbp - 328]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 272 (= (MEMBER (LVAR 328) size 136)  10 )
	.loc 1 272
	lea  rax, [rbp - 328]
	add  rax, 136
	push rax
// Line 272  10 
	.loc 1 272
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 273 (= (MEMBER (LVAR 328) ch 140)  5 )
	.loc 1 273
	lea  rax, [rbp - 328]
	add  rax, 140
	push rax
// Line 273  5 
	.loc 1 273
	push 5
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 274 (= (MEMBER (LVAR 480) size 136)  195 )
	.loc 1 274
	lea  rax, [rbp - 480]
	add  rax, 136
	push rax
// Line 274  195 
	.loc 1 274
	push 195
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 275 (= (MEMBER (LVAR 480) ch 140)  39 )
	.loc 1 275
	lea  rax, [rbp - 480]
	add  rax, 140
	push rax
// Line 275  39 
	.loc 1 275
	push 39
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 276 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)  184 )
	.loc 1 276
// Line 276 (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )
	.loc 1 276
// Line 276 (ADDR (MEMBER (LVAR 480) ary 0))
	.loc 1 276
	lea  rax, [rbp - 480]
	add  rax, 0
	push rax
// Line 276  0 
	.loc 1 276
	push 0
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 0
	push rax
// Line 276  184 
	.loc 1 276
	push 184
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 277 (= (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)  984 )
	.loc 1 277
// Line 277 (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )
	.loc 1 277
// Line 277 (ADDR (MEMBER (LVAR 480) ary 0))
	.loc 1 277
	lea  rax, [rbp - 480]
	add  rax, 0
	push rax
// Line 277  16 
	.loc 1 277
	push 16
	pop  rdi
	pop  rax
	imul rdi, 8
	add  rax, rdi
	push rax
	pop  rax
	add  rax, 4
	push rax
// Line 277  984 
	.loc 1 277
	push 984
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 278 (CALL assert_expect ( 278 : 10 :(MEMBER (LVAR 328) size 136):) )
	.loc 1 278
// Line 278 (MEMBER (LVAR 328) size 136)
	.loc 1 278
	lea  rax, [rbp - 328]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 278  10 
	.loc 1 278
	push 10
// Line 278  278 
	.loc 1 278
	push 278
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
// Line 279 (CALL assert_expect ( 279 : 5 :(MEMBER (LVAR 328) ch 140):) )
	.loc 1 279
// Line 279 (MEMBER (LVAR 328) ch 140)
	.loc 1 279
	lea  rax, [rbp - 328]
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 279  5 
	.loc 1 279
	push 5
// Line 279  279 
	.loc 1 279
	push 279
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
// Line 280 (= (MEMBER (LVAR 328) size 136)  110 )
	.loc 1 280
	lea  rax, [rbp - 328]
	add  rax, 136
	push rax
// Line 280  110 
	.loc 1 280
	push 110
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 281 (= (MEMBER (LVAR 328) ch 140)  79 )
	.loc 1 281
	lea  rax, [rbp - 328]
	add  rax, 140
	push rax
// Line 281  79 
	.loc 1 281
	push 79
	pop  rdi
	pop  rax
	mov  [rax], dil
	push rdi
	pop  rax
// Line 282 (CALL assert_expect ( 282 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) )
	.loc 1 282
// Line 282 (MEMBER (DEREF (LVAR 336)) size 136)
	.loc 1 282
// Line 282 (LVAR 336)
	.loc 1 282
	lea  rax, [rbp - 336]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 282  110 
	.loc 1 282
	push 110
// Line 282  282 
	.loc 1 282
	push 282
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
// Line 283 (CALL assert_expect ( 283 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) )
	.loc 1 283
// Line 283 (MEMBER (DEREF (LVAR 336)) ch 140)
	.loc 1 283
// Line 283 (LVAR 336)
	.loc 1 283
	lea  rax, [rbp - 336]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 283  79 
	.loc 1 283
	push 79
// Line 283  283 
	.loc 1 283
	push 283
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
// Line 284 (CALL assert_expect ( 284 : 110 :(MEMBER (DEREF (LVAR 336)) size 136):) )
	.loc 1 284
// Line 284 (MEMBER (DEREF (LVAR 336)) size 136)
	.loc 1 284
// Line 284 (LVAR 336)
	.loc 1 284
	lea  rax, [rbp - 336]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 284  110 
	.loc 1 284
	push 110
// Line 284  284 
	.loc 1 284
	push 284
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
// Line 285 (CALL assert_expect ( 285 : 79 :(MEMBER (DEREF (LVAR 336)) ch 140):) )
	.loc 1 285
// Line 285 (MEMBER (DEREF (LVAR 336)) ch 140)
	.loc 1 285
// Line 285 (LVAR 336)
	.loc 1 285
	lea  rax, [rbp - 336]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 285  79 
	.loc 1 285
	push 79
// Line 285  285 
	.loc 1 285
	push 285
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
// Line 286 (CALL assert_expect ( 286 : 195 :(MEMBER (LVAR 480) size 136):) )
	.loc 1 286
// Line 286 (MEMBER (LVAR 480) size 136)
	.loc 1 286
	lea  rax, [rbp - 480]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 286  195 
	.loc 1 286
	push 195
// Line 286  286 
	.loc 1 286
	push 286
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
// Line 287 (CALL assert_expect ( 287 : 39 :(MEMBER (LVAR 480) ch 140):) )
	.loc 1 287
// Line 287 (MEMBER (LVAR 480) ch 140)
	.loc 1 287
	lea  rax, [rbp - 480]
	add  rax, 140
	movsx eax, BYTE PTR [rax]
	push rax
// Line 287  39 
	.loc 1 287
	push 39
// Line 287  287 
	.loc 1 287
	push 287
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
// Line 288 (CALL assert_expect ( 288 : 184 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0):) )
	.loc 1 288
// Line 288 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )) row 0)
	.loc 1 288
// Line 288 (] (ADDR (MEMBER (LVAR 480) ary 0))  0 )
	.loc 1 288
// Line 288 (ADDR (MEMBER (LVAR 480) ary 0))
	.loc 1 288
	lea  rax, [rbp - 480]
	add  rax, 0
	push rax
// Line 288  0 
	.loc 1 288
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
// Line 288  184 
	.loc 1 288
	push 184
// Line 288  288 
	.loc 1 288
	push 288
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
// Line 289 (CALL assert_expect ( 289 : 984 :(MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4):) )
	.loc 1 289
// Line 289 (MEMBER (DEREF (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )) col 4)
	.loc 1 289
// Line 289 (] (ADDR (MEMBER (LVAR 480) ary 0))  16 )
	.loc 1 289
// Line 289 (ADDR (MEMBER (LVAR 480) ary 0))
	.loc 1 289
	lea  rax, [rbp - 480]
	add  rax, 0
	push rax
// Line 289  16 
	.loc 1 289
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
// Line 289  984 
	.loc 1 289
	push 984
// Line 289  289 
	.loc 1 289
	push 289
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
// Line 291 (= (MEMBER (LVAR 496) right 8) (ADDR (LVAR 480)))
	.loc 1 291
	lea  rax, [rbp - 496]
	add  rax, 8
	push rax
// Line 291 (ADDR (LVAR 480))
	.loc 1 291
	lea  rax, [rbp - 480]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 292 (= (MEMBER (LVAR 496) left 0) (ADDR (LVAR 328)))
	.loc 1 292
	lea  rax, [rbp - 496]
	add  rax, 0
	push rax
// Line 292 (ADDR (LVAR 328))
	.loc 1 292
	lea  rax, [rbp - 328]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 293 (CALL assert_expect ( 293 : 195 :(MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136):) )
	.loc 1 293
// Line 293 (MEMBER (DEREF (MEMBER (LVAR 496) right 8)) size 136)
	.loc 1 293
// Line 293 (MEMBER (LVAR 496) right 8)
	.loc 1 293
	lea  rax, [rbp - 496]
	add  rax, 8
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 293  195 
	.loc 1 293
	push 195
// Line 293  293 
	.loc 1 293
	push 293
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
// Line 297 (= (MEMBER (LVAR 640) size 136)  100 )
	.loc 1 297
	lea  rax, [rbp - 640]
	add  rax, 136
	push rax
// Line 297  100 
	.loc 1 297
	push 100
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 298 (= (MEMBER (LVAR 784) size 136)  500 )
	.loc 1 298
	lea  rax, [rbp - 784]
	add  rax, 136
	push rax
// Line 298  500 
	.loc 1 298
	push 500
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 299 (= (LVAR 784) (LVAR 640))
	.loc 1 299
	lea  rax, [rbp - 784]
	push rax
// Line 299 (LVAR 640)
	.loc 1 299
	lea  rax, [rbp - 640]
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
// Line 300 (= (MEMBER (GVAR leaf_global) size 136)  700 )
	.loc 1 300
	lea  rax, leaf_global[rip]
	add  rax, 136
	push rax
// Line 300  700 
	.loc 1 300
	push 700
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 301 (CALL assert_expect ( 301 : 100 :(MEMBER (LVAR 784) size 136):) )
	.loc 1 301
// Line 301 (MEMBER (LVAR 784) size 136)
	.loc 1 301
	lea  rax, [rbp - 784]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 301  100 
	.loc 1 301
	push 100
// Line 301  301 
	.loc 1 301
	push 301
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
// Line 302 (= (LVAR 784) (GVAR leaf_global))
	.loc 1 302
	lea  rax, [rbp - 784]
	push rax
// Line 302 (GVAR leaf_global)
	.loc 1 302
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
// Line 303 (CALL assert_expect ( 303 : 700 :(MEMBER (LVAR 784) size 136):) )
	.loc 1 303
// Line 303 (MEMBER (LVAR 784) size 136)
	.loc 1 303
	lea  rax, [rbp - 784]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 303  700 
	.loc 1 303
	push 700
// Line 303  303 
	.loc 1 303
	push 303
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
// Line 304 (= (GVAR leaf_global) (LVAR 640))
	.loc 1 304
	lea  rax, leaf_global[rip]
	push rax
// Line 304 (LVAR 640)
	.loc 1 304
	lea  rax, [rbp - 640]
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
// Line 305 (CALL assert_expect ( 305 : 100 :(MEMBER (GVAR leaf_global) size 136):) )
	.loc 1 305
// Line 305 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 305
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 305  100 
	.loc 1 305
	push 100
// Line 305  305 
	.loc 1 305
	push 305
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
// Line 306 (= (MEMBER (LVAR 640) size 136)  999 )
	.loc 1 306
	lea  rax, [rbp - 640]
	add  rax, 136
	push rax
// Line 306  999 
	.loc 1 306
	push 999
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 307 (= (LVAR 792) (ADDR (LVAR 640)))
	.loc 1 307
	lea  rax, [rbp - 792]
	push rax
// Line 307 (ADDR (LVAR 640))
	.loc 1 307
	lea  rax, [rbp - 640]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 308 (= (LVAR 800) (ADDR (LVAR 784)))
	.loc 1 308
	lea  rax, [rbp - 800]
	push rax
// Line 308 (ADDR (LVAR 784))
	.loc 1 308
	lea  rax, [rbp - 784]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 309 (= (GVAR leaf_global) (= (DEREF (LVAR 800)) (DEREF (LVAR 792))))
	.loc 1 309
	lea  rax, leaf_global[rip]
	push rax
// Line 309 (= (DEREF (LVAR 800)) (DEREF (LVAR 792)))
	.loc 1 309
// Line 309 (LVAR 800)
	.loc 1 309
	lea  rax, [rbp - 800]
	mov  rax, [rax]
	push rax
	pop  rax
	push rax
// Line 309 (DEREF (LVAR 792))
	.loc 1 309
// Line 309 (LVAR 792)
	.loc 1 309
	lea  rax, [rbp - 792]
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
// Line 310 (CALL assert_expect ( 310 : 999 :(MEMBER (DEREF (LVAR 800)) size 136):) )
	.loc 1 310
// Line 310 (MEMBER (DEREF (LVAR 800)) size 136)
	.loc 1 310
// Line 310 (LVAR 800)
	.loc 1 310
	lea  rax, [rbp - 800]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 310  999 
	.loc 1 310
	push 999
// Line 310  310 
	.loc 1 310
	push 310
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
// Line 311 (CALL assert_expect ( 311 : 999 :(MEMBER (GVAR leaf_global) size 136):) )
	.loc 1 311
// Line 311 (MEMBER (GVAR leaf_global) size 136)
	.loc 1 311
	lea  rax, leaf_global[rip]
	add  rax, 136
	mov  eax, [rax]
	push rax
// Line 311  999 
	.loc 1 311
	push 999
// Line 311  311 
	.loc 1 311
	push 311
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
.L.return.struct_:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global print_board
// Line 316 FDECL print_board func ( * [8] int  board ) void 
//    (LVAR 8) 
//    (BLOCK(++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 ):(RETURN NULL ):(FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)):(CALL printf_ ((ADDR  "\n\n" ):) ):))
	.loc 1 316
print_board:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 8], rdi
// Line 317 (++ (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))  1 )
	.loc 1 317
// Line 317 (= (GVAR q8_count) (++ (GVAR q8_count)  1 ))
	.loc 1 317
	lea  rax, q8_count[rip]
	push rax
// Line 317 (++ (GVAR q8_count)  1 )
	.loc 1 317
// Line 317 (GVAR q8_count)
	.loc 1 317
	lea  rax, q8_count[rip]
	mov  eax, [rax]
	push rax
// Line 317  1 
	.loc 1 317
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 317  1 
	.loc 1 317
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
// Line 318 (RETURN NULL )
	.loc 1 318
	jmp  .L.return.print_board
// Line 319 (FOR init: (= (LVAR 12)  0 )cond: (<  8  (LVAR 12)) post: (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ) body (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):))
	.loc 1 319
// Line 319 (= (LVAR 12)  0 )
	.loc 1 319
	lea  rax, [rbp - 12]
	push rax
// Line 319  0 
	.loc 1 319
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000156:
// Line 319 (<  8  (LVAR 12))
	.loc 1 319
// Line 319  8 
	.loc 1 319
	push 8
// Line 319 (LVAR 12)
	.loc 1 319
	lea  rax, [rbp - 12]
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
	je   .L000155
// Line 326 (BLOCK(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)):(CALL printf_ ((ADDR  "\n" ):) ):)
	.loc 1 326
// Line 320 (FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):))
	.loc 1 320
// Line 320 (= (LVAR 16)  0 )
	.loc 1 320
	lea  rax, [rbp - 16]
	push rax
// Line 320  0 
	.loc 1 320
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000159:
// Line 320 (<  8  (LVAR 16))
	.loc 1 320
// Line 320  8 
	.loc 1 320
	push 8
// Line 320 (LVAR 16)
	.loc 1 320
	lea  rax, [rbp - 16]
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
	je   .L000158
// Line 324 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL ):(CALL printf_ ((ADDR  ". " ):) ):)
	.loc 1 324
// Line 322 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))) (CALL printf_ ((ADDR  "Q " ):) ) NULL )
	.loc 1 322
// Line 321 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))
	.loc 1 321
// Line 321 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
	.loc 1 321
// Line 321 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
	.loc 1 321
// Line 321 (] (LVAR 8) (LVAR 12))
	.loc 1 321
// Line 321 (LVAR 8)
	.loc 1 321
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
// Line 321 (LVAR 12)
	.loc 1 321
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 321 (LVAR 16)
	.loc 1 321
	lea  rax, [rbp - 16]
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
	je   .L000160
// Line 321 (CALL printf_ ((ADDR  "Q " ):) )
	.loc 1 321
// Line 321 (ADDR  "Q " )
	.loc 1 321
	lea  rax, .LS000025[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000162
	mov  rax, 0
	call printf_
	jmp  .L000163
.L000162:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000163:
	push rax
	pop  rax
	jmp  .L000161
.L000160:
.L000161:
// Line 322 (CALL printf_ ((ADDR  ". " ):) )
	.loc 1 322
// Line 322 (ADDR  ". " )
	.loc 1 322
	lea  rax, .LS000026[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000164
	mov  rax, 0
	call printf_
	jmp  .L000165
.L000164:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000165:
	push rax
	pop  rax
.L000157:
// Line 320 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
	.loc 1 320
// Line 320 (= (LVAR 16) (++ (LVAR 16)  1 ))
	.loc 1 320
	lea  rax, [rbp - 16]
	push rax
// Line 320 (++ (LVAR 16)  1 )
	.loc 1 320
// Line 320 (LVAR 16)
	.loc 1 320
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 320  1 
	.loc 1 320
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 320  1 
	.loc 1 320
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000159
.L000158:
// Line 324 (CALL printf_ ((ADDR  "\n" ):) )
	.loc 1 324
// Line 324 (ADDR  "\n" )
	.loc 1 324
	lea  rax, .LS000027[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000166
	mov  rax, 0
	call printf_
	jmp  .L000167
.L000166:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000167:
	push rax
	pop  rax
.L000154:
// Line 319 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 319
// Line 319 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 319
	lea  rax, [rbp - 12]
	push rax
// Line 319 (++ (LVAR 12)  1 )
	.loc 1 319
// Line 319 (LVAR 12)
	.loc 1 319
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 319  1 
	.loc 1 319
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 319  1 
	.loc 1 319
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000156
.L000155:
// Line 326 (CALL printf_ ((ADDR  "\n\n" ):) )
	.loc 1 326
// Line 326 (ADDR  "\n\n" )
	.loc 1 326
	lea  rax, .LS000028[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000168
	mov  rax, 0
	call printf_
	jmp  .L000169
.L000168:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000169:
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
// Line 329 FDECL conflict func ( * [8] int  board , * struct <Pos>  p ) int 
//    (LVAR 8) (LVAR 16) 
//    (BLOCK(FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)):(RETURN  0 ):))
	.loc 1 329
conflict:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 8], rdi
	mov  [rbp - 16], rsi
// Line 330 (FOR init: (= (LVAR 20)  0 )cond: (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)) post: (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 ) body (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):))
	.loc 1 330
// Line 330 (= (LVAR 20)  0 )
	.loc 1 330
	lea  rax, [rbp - 20]
	push rax
// Line 330  0 
	.loc 1 330
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000172:
// Line 330 (< (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))
	.loc 1 330
// Line 330 (MEMBER (DEREF (LVAR 16)) row 0)
	.loc 1 330
// Line 330 (LVAR 16)
	.loc 1 330
	lea  rax, [rbp - 16]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 330 (LVAR 20)
	.loc 1 330
	lea  rax, [rbp - 20]
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
	je   .L000171
// Line 338 (BLOCK(IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL ):(= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))):(IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):(IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL ):)
	.loc 1 338
// Line 332 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))) (RETURN  1 ) NULL )
	.loc 1 332
// Line 331 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4)))
	.loc 1 331
// Line 331 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (MEMBER (DEREF (LVAR 16)) col 4))
	.loc 1 331
// Line 331 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
	.loc 1 331
// Line 331 (] (LVAR 8) (LVAR 20))
	.loc 1 331
// Line 331 (LVAR 8)
	.loc 1 331
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
// Line 331 (LVAR 20)
	.loc 1 331
	lea  rax, [rbp - 20]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 331 (MEMBER (DEREF (LVAR 16)) col 4)
	.loc 1 331
// Line 331 (LVAR 16)
	.loc 1 331
	lea  rax, [rbp - 16]
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
	je   .L000173
// Line 331 (RETURN  1 )
	.loc 1 331
// Line 331  1 
	.loc 1 331
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000174
.L000173:
.L000174:
// Line 332 (= (LVAR 24) (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20)))
	.loc 1 332
	lea  rax, [rbp - 24]
	push rax
// Line 332 (- (MEMBER (DEREF (LVAR 16)) row 0) (LVAR 20))
	.loc 1 332
// Line 332 (MEMBER (DEREF (LVAR 16)) row 0)
	.loc 1 332
// Line 332 (LVAR 16)
	.loc 1 332
	lea  rax, [rbp - 16]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 0
	mov  eax, [rax]
	push rax
// Line 332 (LVAR 20)
	.loc 1 332
	lea  rax, [rbp - 20]
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
// Line 335 (IF (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 ) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 335
// Line 333 (< (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )  0 )
	.loc 1 333
// Line 333 (+ (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))  1 )
	.loc 1 333
// Line 333 (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
	.loc 1 333
// Line 333 (MEMBER (DEREF (LVAR 16)) col 4)
	.loc 1 333
// Line 333 (LVAR 16)
	.loc 1 333
	lea  rax, [rbp - 16]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 333 (LVAR 24)
	.loc 1 333
	lea  rax, [rbp - 24]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 333  1 
	.loc 1 333
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 333  0 
	.loc 1 333
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000175
// Line 335 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL )
	.loc 1 335
// Line 334 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))))
	.loc 1 334
// Line 334 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
	.loc 1 334
// Line 334 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
	.loc 1 334
// Line 334 (] (LVAR 8) (LVAR 20))
	.loc 1 334
// Line 334 (LVAR 8)
	.loc 1 334
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
// Line 334 (LVAR 20)
	.loc 1 334
	lea  rax, [rbp - 20]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 334 (- (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
	.loc 1 334
// Line 334 (MEMBER (DEREF (LVAR 16)) col 4)
	.loc 1 334
// Line 334 (LVAR 16)
	.loc 1 334
	lea  rax, [rbp - 16]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 334 (LVAR 24)
	.loc 1 334
	lea  rax, [rbp - 24]
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
	je   .L000177
// Line 334 (RETURN  1 )
	.loc 1 334
// Line 334  1 
	.loc 1 334
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000178
.L000177:
.L000178:
	jmp  .L000176
.L000175:
.L000176:
// Line 337 (IF (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))) (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL ) NULL )
	.loc 1 337
// Line 335 (<  8  (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
	.loc 1 335
// Line 335  8 
	.loc 1 335
	push 8
// Line 335 (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
	.loc 1 335
// Line 335 (MEMBER (DEREF (LVAR 16)) col 4)
	.loc 1 335
// Line 335 (LVAR 16)
	.loc 1 335
	lea  rax, [rbp - 16]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 335 (LVAR 24)
	.loc 1 335
	lea  rax, [rbp - 24]
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
	je   .L000179
// Line 337 (IF (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))) (RETURN  1 ) NULL )
	.loc 1 337
// Line 336 (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))))
	.loc 1 336
// Line 336 (] (ADDR (DEREF (] (LVAR 8) (LVAR 20)))) (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24)))
	.loc 1 336
// Line 336 (ADDR (DEREF (] (LVAR 8) (LVAR 20))))
	.loc 1 336
// Line 336 (] (LVAR 8) (LVAR 20))
	.loc 1 336
// Line 336 (LVAR 8)
	.loc 1 336
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
// Line 336 (LVAR 20)
	.loc 1 336
	lea  rax, [rbp - 20]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 336 (+ (MEMBER (DEREF (LVAR 16)) col 4) (LVAR 24))
	.loc 1 336
// Line 336 (MEMBER (DEREF (LVAR 16)) col 4)
	.loc 1 336
// Line 336 (LVAR 16)
	.loc 1 336
	lea  rax, [rbp - 16]
	mov  rax, [rax]
	push rax
	pop  rax
	add  rax, 4
	mov  eax, [rax]
	push rax
// Line 336 (LVAR 24)
	.loc 1 336
	lea  rax, [rbp - 24]
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
	je   .L000181
// Line 336 (RETURN  1 )
	.loc 1 336
// Line 336  1 
	.loc 1 336
	push 1
	pop  rax
	jmp  .L.return.conflict
	jmp  .L000182
.L000181:
.L000182:
	jmp  .L000180
.L000179:
.L000180:
.L000170:
// Line 330 (++ (= (LVAR 20) (++ (LVAR 20)  1 ))  1 )
	.loc 1 330
// Line 330 (= (LVAR 20) (++ (LVAR 20)  1 ))
	.loc 1 330
	lea  rax, [rbp - 20]
	push rax
// Line 330 (++ (LVAR 20)  1 )
	.loc 1 330
// Line 330 (LVAR 20)
	.loc 1 330
	lea  rax, [rbp - 20]
	mov  eax, [rax]
	push rax
// Line 330  1 
	.loc 1 330
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 330  1 
	.loc 1 330
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000172
.L000171:
// Line 338 (RETURN  0 )
	.loc 1 338
// Line 338  0 
	.loc 1 338
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
// Line 341 FDECL solve func ( * [8] int  board , int  row ) void 
//    (LVAR 8) (LVAR 12) 
//    (BLOCK(IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL ):(FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)):))
	.loc 1 341
solve:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 8], rdi
	mov  [rbp - 12], esi
// Line 346 (IF (== (LVAR 12)  8 ) (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):) NULL )
	.loc 1 346
// Line 342 (== (LVAR 12)  8 )
	.loc 1 342
// Line 342 (LVAR 12)
	.loc 1 342
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 342  8 
	.loc 1 342
	push 8
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000183
// Line 346 (BLOCK(CALL print_board ((LVAR 8):) ):(RETURN NULL ):)
	.loc 1 346
// Line 343 (CALL print_board ((LVAR 8):) )
	.loc 1 343
// Line 343 (LVAR 8)
	.loc 1 343
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000185
	mov  rax, 0
	call print_board
	jmp  .L000186
.L000185:
	sub  rsp, 8
	mov  rax, 0
	call print_board
	add  rsp, 8
.L000186:
	push rax
	pop  rax
// Line 344 (RETURN NULL )
	.loc 1 344
	jmp  .L.return.solve
	jmp  .L000184
.L000183:
.L000184:
// Line 346 (FOR init: (= (LVAR 16)  0 )cond: (<  8  (LVAR 16)) post: (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ) body (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):))
	.loc 1 346
// Line 346 (= (LVAR 16)  0 )
	.loc 1 346
	lea  rax, [rbp - 16]
	push rax
// Line 346  0 
	.loc 1 346
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000189:
// Line 346 (<  8  (LVAR 16))
	.loc 1 346
// Line 346  8 
	.loc 1 346
	push 8
// Line 346 (LVAR 16)
	.loc 1 346
	lea  rax, [rbp - 16]
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
// Line 357 (BLOCK(= (MEMBER (LVAR 24) row 0) (LVAR 12)):(= (MEMBER (LVAR 24) col 4) (LVAR 16)):(IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL ):)
	.loc 1 357
// Line 348 (= (MEMBER (LVAR 24) row 0) (LVAR 12))
	.loc 1 348
	lea  rax, [rbp - 24]
	add  rax, 0
	push rax
// Line 348 (LVAR 12)
	.loc 1 348
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 349 (= (MEMBER (LVAR 24) col 4) (LVAR 16))
	.loc 1 349
	lea  rax, [rbp - 24]
	add  rax, 4
	push rax
// Line 349 (LVAR 16)
	.loc 1 349
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 356 (IF (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 ) (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):) NULL )
	.loc 1 356
// Line 350 (== (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )  0 )
	.loc 1 350
// Line 350 (CALL conflict ((LVAR 8):(ADDR (LVAR 24)):) )
	.loc 1 350
// Line 350 (ADDR (LVAR 24))
	.loc 1 350
	lea  rax, [rbp - 24]
	push rax
// Line 350 (LVAR 8)
	.loc 1 350
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000192
	mov  rax, 0
	call conflict
	jmp  .L000193
.L000192:
	sub  rsp, 8
	mov  rax, 0
	call conflict
	add  rsp, 8
.L000193:
	push rax
// Line 350  0 
	.loc 1 350
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000190
// Line 356 (BLOCK(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 ):(CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) ):(= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 ):)
	.loc 1 356
// Line 352 (= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  1 )
	.loc 1 352
// Line 352 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
	.loc 1 352
// Line 352 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
	.loc 1 352
// Line 352 (] (LVAR 8) (LVAR 12))
	.loc 1 352
// Line 352 (LVAR 8)
	.loc 1 352
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
// Line 352 (LVAR 12)
	.loc 1 352
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 352 (LVAR 16)
	.loc 1 352
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 352  1 
	.loc 1 352
	push 1
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 353 (CALL solve ((LVAR 8):(+ (LVAR 12)  1 ):) )
	.loc 1 353
// Line 353 (+ (LVAR 12)  1 )
	.loc 1 353
// Line 353 (LVAR 12)
	.loc 1 353
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 353  1 
	.loc 1 353
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 353 (LVAR 8)
	.loc 1 353
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000194
	mov  rax, 0
	call solve
	jmp  .L000195
.L000194:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000195:
	push rax
	pop  rax
// Line 354 (= (DEREF (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16)))  0 )
	.loc 1 354
// Line 354 (] (ADDR (DEREF (] (LVAR 8) (LVAR 12)))) (LVAR 16))
	.loc 1 354
// Line 354 (ADDR (DEREF (] (LVAR 8) (LVAR 12))))
	.loc 1 354
// Line 354 (] (LVAR 8) (LVAR 12))
	.loc 1 354
// Line 354 (LVAR 8)
	.loc 1 354
	lea  rax, [rbp - 8]
	mov  rax, [rax]
	push rax
// Line 354 (LVAR 12)
	.loc 1 354
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 354 (LVAR 16)
	.loc 1 354
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 354  0 
	.loc 1 354
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000191
.L000190:
.L000191:
.L000187:
// Line 346 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
	.loc 1 346
// Line 346 (= (LVAR 16) (++ (LVAR 16)  1 ))
	.loc 1 346
	lea  rax, [rbp - 16]
	push rax
// Line 346 (++ (LVAR 16)  1 )
	.loc 1 346
// Line 346 (LVAR 16)
	.loc 1 346
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 346  1 
	.loc 1 346
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 346  1 
	.loc 1 346
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000189
.L000188:
.L.return.solve:
	mov  r12, [rbp -  8]
	mov  r13, [rbp - 16]
	mov  r14, [rbp - 24]
	mov  r15, [rbp - 32]
	mov  rsp, rbp
	pop  rbp
	ret
	.global q8
// Line 359 FDECL q8 func ( ) int 
//    
//    (BLOCK(= (GVAR q8_count)  0 ):(FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))):(CALL solve ((ADDR (LVAR 256)): 0 :) ):(RETURN (GVAR q8_count)):))
	.loc 1 359
q8:
	push rbp
	mov  rbp, rsp
	sub  rsp, 272
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 361 (= (GVAR q8_count)  0 )
	.loc 1 361
	lea  rax, q8_count[rip]
	push rax
// Line 361  0 
	.loc 1 361
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 362 (FOR init: (= (LVAR 260)  0 )cond: (<  8  (LVAR 260)) post: (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 ) body (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 )))
	.loc 1 362
// Line 362 (= (LVAR 260)  0 )
	.loc 1 362
	lea  rax, [rbp - 260]
	push rax
// Line 362  0 
	.loc 1 362
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000198:
// Line 362 (<  8  (LVAR 260))
	.loc 1 362
// Line 362  8 
	.loc 1 362
	push 8
// Line 362 (LVAR 260)
	.loc 1 362
	lea  rax, [rbp - 260]
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
	je   .L000197
// Line 363 (FOR init: (= (LVAR 264)  0 )cond: (<  8  (LVAR 264)) post: (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 ) body (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 ))
	.loc 1 363
// Line 363 (= (LVAR 264)  0 )
	.loc 1 363
	lea  rax, [rbp - 264]
	push rax
// Line 363  0 
	.loc 1 363
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
.L000201:
// Line 363 (<  8  (LVAR 264))
	.loc 1 363
// Line 363  8 
	.loc 1 363
	push 8
// Line 363 (LVAR 264)
	.loc 1 363
	lea  rax, [rbp - 264]
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
	je   .L000200
// Line 363 (= (DEREF (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264)))  0 )
	.loc 1 363
// Line 363 (] (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260)))) (LVAR 264))
	.loc 1 363
// Line 363 (ADDR (DEREF (] (ADDR (LVAR 256)) (LVAR 260))))
	.loc 1 363
// Line 363 (] (ADDR (LVAR 256)) (LVAR 260))
	.loc 1 363
// Line 363 (ADDR (LVAR 256))
	.loc 1 363
	lea  rax, [rbp - 256]
	push rax
// Line 363 (LVAR 260)
	.loc 1 363
	lea  rax, [rbp - 260]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 32
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 363 (LVAR 264)
	.loc 1 363
	lea  rax, [rbp - 264]
	mov  eax, [rax]
	push rax
	pop  rdi
	pop  rax
	imul rdi, 4
	add  rax, rdi
	push rax
	pop  rax
	push rax
// Line 363  0 
	.loc 1 363
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000199:
// Line 363 (++ (= (LVAR 264) (++ (LVAR 264)  1 ))  1 )
	.loc 1 363
// Line 363 (= (LVAR 264) (++ (LVAR 264)  1 ))
	.loc 1 363
	lea  rax, [rbp - 264]
	push rax
// Line 363 (++ (LVAR 264)  1 )
	.loc 1 363
// Line 363 (LVAR 264)
	.loc 1 363
	lea  rax, [rbp - 264]
	mov  eax, [rax]
	push rax
// Line 363  1 
	.loc 1 363
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
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
	jmp  .L000201
.L000200:
.L000196:
// Line 362 (++ (= (LVAR 260) (++ (LVAR 260)  1 ))  1 )
	.loc 1 362
// Line 362 (= (LVAR 260) (++ (LVAR 260)  1 ))
	.loc 1 362
	lea  rax, [rbp - 260]
	push rax
// Line 362 (++ (LVAR 260)  1 )
	.loc 1 362
// Line 362 (LVAR 260)
	.loc 1 362
	lea  rax, [rbp - 260]
	mov  eax, [rax]
	push rax
// Line 362  1 
	.loc 1 362
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 362  1 
	.loc 1 362
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	jmp  .L000198
.L000197:
// Line 364 (CALL solve ((ADDR (LVAR 256)): 0 :) )
	.loc 1 364
// Line 364  0 
	.loc 1 364
	push 0
// Line 364 (ADDR (LVAR 256))
	.loc 1 364
	lea  rax, [rbp - 256]
	push rax
	pop  rdi
	pop  rsi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000202
	mov  rax, 0
	call solve
	jmp  .L000203
.L000202:
	sub  rsp, 8
	mov  rax, 0
	call solve
	add  rsp, 8
.L000203:
	push rax
	pop  rax
// Line 365 (RETURN (GVAR q8_count))
	.loc 1 365
// Line 365 (GVAR q8_count)
	.loc 1 365
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
// Line 368 FDECL fun func ( * int  p ) int 
//    (LVAR 8) 
//    (BLOCK(RETURN (DEREF (LVAR 8))):))
	.loc 1 368
fun:
	push rbp
	mov  rbp, rsp
	sub  rsp, 16
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
	mov  [rbp - 8], rdi
// Line 368 (RETURN (DEREF (LVAR 8)))
	.loc 1 368
// Line 368 (DEREF (LVAR 8))
	.loc 1 368
// Line 368 (LVAR 8)
	.loc 1 368
	lea  rax, [rbp - 8]
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
// Line 370 FDECL main func ( ) int 
//    
//    (BLOCK(= (LVAR 8) (CAST * void   0 )):(CALL assert_expect ( 375 : 1 : 1 :) ):(CALL assert_expect ( 376 : 0 : 0 :) ):(CALL assert_expect ( 377 : 0 :(CAST int  (CAST * void   0 )):) ):(CALL assert_expect ( 379 : 70 :(*  10  (+  2   5 )):) ):(CALL printf_ ((ADDR (GVAR str_ary)):) ):(CALL assert_expect ( 382 : 1979 :(GVAR i):) ):(CALL assert_expect ( 383 : 2015 :(GVAR j):) ):(CALL assert_expect ( 384 : 24 :(GVAR s):) ):(CALL assert_expect ( 386 : 9 : 9 :) ):(CALL assert_expect ( 387 : 4 :(+ (-  0   3 )  7 ):) ):(CALL assert_expect ( 388 : 21 :(- (+  5   20 )  4 ):) ):(CALL assert_expect ( 389 : 21 :(+  5  (*  4   4 )):) ):(CALL assert_expect ( 390 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) ):(CALL assert_expect ( 391 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) ):(CALL assert_expect ( 392 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) ):(CALL assert_expect ( 393 : 0 :(==  3  (+  3   1 )):) ):(CALL assert_expect ( 394 : 1 :(!=  4  (*  4   2 )):) ):(CALL assert_expect ( 395 : 0 :(!=  3  (*  1   3 )):) ):(CALL assert_expect ( 396 : 1 :(>=  5  (-  8   4 )):) ):(CALL assert_expect ( 397 : 1 :(>=  5  (-  7   2 )):) ):(CALL assert_expect ( 398 : 0 :(>= (-  11   8 )  5 ):) ):(CALL assert_expect ( 399 : 1 :(<= (*  2   30 )  3 ):) ):(CALL assert_expect ( 400 : 1 :(<= (/  9   3 )  3 ):) ):(CALL assert_expect ( 401 : 0 :(<= (-  20   18 )  3 ):) ):(CALL assert_expect ( 402 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) ):(CALL assert_expect ( 403 : 1 :(== (/  6   2 ) (/  9   3 )):) ):(CALL assert_expect ( 404 : 1 :(< (+  4   1 )  4 ):) ):(CALL assert_expect ( 405 : 1 :(> (+  1   4 )  4 ):) ):(CALL assert_expect ( 406 : 0 :(< (-  4   1 )  4 ):) ):(CALL assert_expect ( 407 : 0 :(> (-  1   4 )  4 ):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 409 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 410 : 0 :(LVAR 12):) ):(CALL assert_expect ( 411 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 412 : 1 :(LVAR 12):) ):(CALL assert_expect ( 413 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 414 : 2 :(LVAR 12):) ):(CALL assert_expect ( 415 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 416 : 3 :(LVAR 12):) ):(CALL assert_expect ( 417 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 418 : 3 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 420 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 421 : 1 :(LVAR 12):) ):(= (LVAR 12)  0 ):(CALL assert_expect ( 423 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) ):(CALL assert_expect ( 424 : 1 :(LVAR 12):) ):(CALL assert_expect ( 425 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) ):(CALL assert_expect ( 426 : 1 :(LVAR 12):) ):(CALL assert_expect ( 427 : 1 :(!  0 ):) ):(CALL assert_expect ( 428 : 0 :(!  1 ):) ):(CALL assert_expect ( 429 : 0 :(! (! (!  1 ))):) ):(CALL assert_expect ( 431 : 256 :(<<  1   8 ):) ):(CALL assert_expect ( 432 : 32 :(>>  512   4 ):) ):(= (LVAR 16)  10 ):(CALL assert_expect ( 437 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) ):(CALL assert_expect ( 438 : 15 :(LVAR 16):) ):(CALL assert_expect ( 439 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) ):(CALL assert_expect ( 440 : 8 :(LVAR 16):) ):(CALL assert_expect ( 441 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) ):(CALL assert_expect ( 442 : 40 :(LVAR 16):) ):(CALL assert_expect ( 443 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) ):(CALL assert_expect ( 444 : 4 :(LVAR 16):) ):(CALL assert_expect ( 447 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 448 : 5 :(LVAR 16):) ):(CALL assert_expect ( 449 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) ):(CALL assert_expect ( 450 : 4 :(LVAR 16):) ):(= (LVAR 20) (/  100  (LVAR 16))):(CALL assert_expect ( 455 : 25 :(LVAR 20):) ):(= (LVAR 24)  77 ):(IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 )):(CALL assert_expect ( 463 : 55 :(LVAR 24):) ):(CALL assert_expect ( 464 : 1346269 :(CALL fibo ( 30 :) ):) ):(CALL array_global () ):(CALL array_local () ):(CALL string () ):(CALL block_scope () ):(CALL for_ () ):(CALL list_ () ):(CALL struct_ () ):(CALL assert_expect ( 477 : 11 :(CALL switch_ ( 1 :) ):) ):(CALL assert_expect ( 478 : 13 :(CALL switch_ ( 2 :) ):) ):(CALL assert_expect ( 479 : 13 :(CALL switch_ ( 3 :) ):) ):(CALL assert_expect ( 480 : 13 :(CALL switch_ ( 4 :) ):) ):(CALL assert_expect ( 481 : 15 :(CALL switch_ ( 5 :) ):) ):(CALL assert_expect ( 482 : 15 :(CALL switch_ ( 6 :) ):) ):(CALL assert_expect ( 485 : 11 :(CALL switch2_ ( 97 :) ):) ):(CALL assert_expect ( 486 : 12 :(CALL switch2_ ( 98 :) ):) ):(CALL assert_expect ( 487 : 12 :(CALL switch2_ ( 99 :) ):) ):(CALL assert_expect ( 488 : 15 :(CALL switch2_ ( 122 :) ):) ):(CALL assert_expect ( 491 : 92 :(CALL q8 () ):) ):(CALL assert_expect ( 494 : 0 : 0 :) ):(CALL assert_expect ( 495 : 1 : 1 :) ):(CALL assert_expect ( 496 : 2 : 2 :) ):(CALL assert_expect ( 497 : 3 : 3 :) ):(CALL assert_expect ( 499 : 15 :(|  13   7 ):) ):(CALL assert_expect ( 500 : 5115 :(|  938   5073 ):) ):(CALL assert_expect ( 501 : 5 :(&  13   7 ):) ):(CALL assert_expect ( 502 : 896 :(&  938   5073 ):) ):(CALL assert_expect ( 503 : 10 :(^  13   7 ):) ):(CALL assert_expect ( 504 : 4219 :(^  938   5073 ):) ):(CALL assert_expect ( 506 : 29 :(>>  938   5 ):) ):(CALL assert_expect ( 507 : 1664 :(<<  13   7 ):) ):(CALL printf_ ((ADDR  "passed tests.\n" ):) ):(RETURN  0 ):))
	.loc 1 370
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 32
	mov  [rbp -  8], r12
	mov  [rbp - 16], r13
	mov  [rbp - 24], r14
	mov  [rbp - 32], r15
// Line 374 (= (LVAR 8) (CAST * void   0 ))
	.loc 1 374
	lea  rax, [rbp - 8]
	push rax
// Line 373 (CAST * void   0 )
	.loc 1 373
// Line 373  0 
	.loc 1 373
	push 0
	pop  rdi
	pop  rax
	mov  [rax], rdi
	push rdi
	pop  rax
// Line 375 (CALL assert_expect ( 375 : 1 : 1 :) )
	.loc 1 375
// Line 371  1 
	.loc 1 371
	push 1
// Line 375  1 
	.loc 1 375
	push 1
// Line 375  375 
	.loc 1 375
	push 375
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000204
	mov  rax, 0
	call assert_expect
	jmp  .L000205
.L000204:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000205:
	push rax
	pop  rax
// Line 376 (CALL assert_expect ( 376 : 0 : 0 :) )
	.loc 1 376
// Line 372  0 
	.loc 1 372
	push 0
// Line 376  0 
	.loc 1 376
	push 0
// Line 376  376 
	.loc 1 376
	push 376
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000206
	mov  rax, 0
	call assert_expect
	jmp  .L000207
.L000206:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000207:
	push rax
	pop  rax
// Line 377 (CALL assert_expect ( 377 : 0 :(CAST int  (CAST * void   0 )):) )
	.loc 1 377
// Line 377 (CAST int  (CAST * void   0 ))
	.loc 1 377
// Line 373 (CAST * void   0 )
	.loc 1 373
// Line 373  0 
	.loc 1 373
	push 0
// Line 377  0 
	.loc 1 377
	push 0
// Line 377  377 
	.loc 1 377
	push 377
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000208
	mov  rax, 0
	call assert_expect
	jmp  .L000209
.L000208:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000209:
	push rax
	pop  rax
// Line 379 (CALL assert_expect ( 379 : 70 :(*  10  (+  2   5 )):) )
	.loc 1 379
// Line 378 (*  10  (+  2   5 ))
	.loc 1 378
// Line 379  10 
	.loc 1 379
	push 10
// Line 378 (+  2   5 )
	.loc 1 378
// Line 379  2 
	.loc 1 379
	push 2
// Line 379  5 
	.loc 1 379
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 379  70 
	.loc 1 379
	push 70
// Line 379  379 
	.loc 1 379
	push 379
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
// Line 380 (CALL printf_ ((ADDR (GVAR str_ary)):) )
	.loc 1 380
// Line 380 (ADDR (GVAR str_ary))
	.loc 1 380
	lea  rax, str_ary[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000212
	mov  rax, 0
	call printf_
	jmp  .L000213
.L000212:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000213:
	push rax
	pop  rax
// Line 382 (CALL assert_expect ( 382 : 1979 :(GVAR i):) )
	.loc 1 382
// Line 382 (GVAR i)
	.loc 1 382
	lea  rax, i[rip]
	mov  eax, [rax]
	push rax
// Line 382  1979 
	.loc 1 382
	push 1979
// Line 382  382 
	.loc 1 382
	push 382
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
// Line 383 (CALL assert_expect ( 383 : 2015 :(GVAR j):) )
	.loc 1 383
// Line 383 (GVAR j)
	.loc 1 383
	lea  rax, j[rip]
	mov  eax, [rax]
	push rax
// Line 383  2015 
	.loc 1 383
	push 2015
// Line 383  383 
	.loc 1 383
	push 383
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
// Line 384 (CALL assert_expect ( 384 : 24 :(GVAR s):) )
	.loc 1 384
// Line 384 (GVAR s)
	.loc 1 384
	lea  rax, s[rip]
	movsx eax, BYTE PTR [rax]
	push rax
// Line 384  24 
	.loc 1 384
	push 24
// Line 384  384 
	.loc 1 384
	push 384
	pop  rdi
	pop  rsi
	pop  rdx
	mov  rax, rsp
	and  rax, 15
	jnz  .L000218
	mov  rax, 0
	call assert_expect
	jmp  .L000219
.L000218:
	sub  rsp, 8
	mov  rax, 0
	call assert_expect
	add  rsp, 8
.L000219:
	push rax
	pop  rax
// Line 386 (CALL assert_expect ( 386 : 9 : 9 :) )
	.loc 1 386
// Line 386  9 
	.loc 1 386
	push 9
// Line 386  9 
	.loc 1 386
	push 9
// Line 386  386 
	.loc 1 386
	push 386
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
// Line 387 (CALL assert_expect ( 387 : 4 :(+ (-  0   3 )  7 ):) )
	.loc 1 387
// Line 387 (+ (-  0   3 )  7 )
	.loc 1 387
// Line 387 (-  0   3 )
	.loc 1 387
// Line 387  0 
	.loc 1 387
	push 0
// Line 387  3 
	.loc 1 387
	push 3
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 387  7 
	.loc 1 387
	push 7
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 387  4 
	.loc 1 387
	push 4
// Line 387  387 
	.loc 1 387
	push 387
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
// Line 388 (CALL assert_expect ( 388 : 21 :(- (+  5   20 )  4 ):) )
	.loc 1 388
// Line 388 (- (+  5   20 )  4 )
	.loc 1 388
// Line 388 (+  5   20 )
	.loc 1 388
// Line 388  5 
	.loc 1 388
	push 5
// Line 388  20 
	.loc 1 388
	push 20
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 388  4 
	.loc 1 388
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 388  21 
	.loc 1 388
	push 21
// Line 388  388 
	.loc 1 388
	push 388
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
// Line 389 (CALL assert_expect ( 389 : 21 :(+  5  (*  4   4 )):) )
	.loc 1 389
// Line 389 (+  5  (*  4   4 ))
	.loc 1 389
// Line 389  5 
	.loc 1 389
	push 5
// Line 389 (*  4   4 )
	.loc 1 389
// Line 389  4 
	.loc 1 389
	push 4
// Line 389  4 
	.loc 1 389
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 389  21 
	.loc 1 389
	push 21
// Line 389  389 
	.loc 1 389
	push 389
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
// Line 390 (CALL assert_expect ( 390 : 24 :(* (*  4  (-  5   2 )) (-  4   2 )):) )
	.loc 1 390
// Line 390 (* (*  4  (-  5   2 )) (-  4   2 ))
	.loc 1 390
// Line 390 (*  4  (-  5   2 ))
	.loc 1 390
// Line 390  4 
	.loc 1 390
	push 4
// Line 390 (-  5   2 )
	.loc 1 390
// Line 390  5 
	.loc 1 390
	push 5
// Line 390  2 
	.loc 1 390
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 390 (-  4   2 )
	.loc 1 390
// Line 390  4 
	.loc 1 390
	push 4
// Line 390  2 
	.loc 1 390
	push 2
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 390  24 
	.loc 1 390
	push 24
// Line 390  390 
	.loc 1 390
	push 390
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
// Line 391 (CALL assert_expect ( 391 : 13 :(- (+  6  (*  3   4 )) (/  15   3 )):) )
	.loc 1 391
// Line 391 (- (+  6  (*  3   4 )) (/  15   3 ))
	.loc 1 391
// Line 391 (+  6  (*  3   4 ))
	.loc 1 391
// Line 391  6 
	.loc 1 391
	push 6
// Line 391 (*  3   4 )
	.loc 1 391
// Line 391  3 
	.loc 1 391
	push 3
// Line 391  4 
	.loc 1 391
	push 4
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 391 (/  15   3 )
	.loc 1 391
// Line 391  15 
	.loc 1 391
	push 15
// Line 391  3 
	.loc 1 391
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
// Line 391  13 
	.loc 1 391
	push 13
// Line 391  391 
	.loc 1 391
	push 391
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
// Line 392 (CALL assert_expect ( 392 : 33 :(/ (* (+  6   3 ) (-  15   4 ))  3 ):) )
	.loc 1 392
// Line 392 (/ (* (+  6   3 ) (-  15   4 ))  3 )
	.loc 1 392
// Line 392 (* (+  6   3 ) (-  15   4 ))
	.loc 1 392
// Line 392 (+  6   3 )
	.loc 1 392
// Line 392  6 
	.loc 1 392
	push 6
// Line 392  3 
	.loc 1 392
	push 3
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 392 (-  15   4 )
	.loc 1 392
// Line 392  15 
	.loc 1 392
	push 15
// Line 392  4 
	.loc 1 392
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 392  3 
	.loc 1 392
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 392  33 
	.loc 1 392
	push 33
// Line 392  392 
	.loc 1 392
	push 392
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
// Line 393 (CALL assert_expect ( 393 : 0 :(==  3  (+  3   1 )):) )
	.loc 1 393
// Line 393 (==  3  (+  3   1 ))
	.loc 1 393
// Line 393  3 
	.loc 1 393
	push 3
// Line 393 (+  3   1 )
	.loc 1 393
// Line 393  3 
	.loc 1 393
	push 3
// Line 393  1 
	.loc 1 393
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
// Line 393  0 
	.loc 1 393
	push 0
// Line 393  393 
	.loc 1 393
	push 393
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
// Line 394 (CALL assert_expect ( 394 : 1 :(!=  4  (*  4   2 )):) )
	.loc 1 394
// Line 394 (!=  4  (*  4   2 ))
	.loc 1 394
// Line 394  4 
	.loc 1 394
	push 4
// Line 394 (*  4   2 )
	.loc 1 394
// Line 394  4 
	.loc 1 394
	push 4
// Line 394  2 
	.loc 1 394
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
// Line 395 (CALL assert_expect ( 395 : 0 :(!=  3  (*  1   3 )):) )
	.loc 1 395
// Line 395 (!=  3  (*  1   3 ))
	.loc 1 395
// Line 395  3 
	.loc 1 395
	push 3
// Line 395 (*  1   3 )
	.loc 1 395
// Line 395  1 
	.loc 1 395
	push 1
// Line 395  3 
	.loc 1 395
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
// Line 396 (CALL assert_expect ( 396 : 1 :(>=  5  (-  8   4 )):) )
	.loc 1 396
// Line 396 (>=  5  (-  8   4 ))
	.loc 1 396
// Line 396  5 
	.loc 1 396
	push 5
// Line 396 (-  8   4 )
	.loc 1 396
// Line 396  8 
	.loc 1 396
	push 8
// Line 396  4 
	.loc 1 396
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
// Line 396  1 
	.loc 1 396
	push 1
// Line 396  396 
	.loc 1 396
	push 396
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
// Line 397 (CALL assert_expect ( 397 : 1 :(>=  5  (-  7   2 )):) )
	.loc 1 397
// Line 397 (>=  5  (-  7   2 ))
	.loc 1 397
// Line 397  5 
	.loc 1 397
	push 5
// Line 397 (-  7   2 )
	.loc 1 397
// Line 397  7 
	.loc 1 397
	push 7
// Line 397  2 
	.loc 1 397
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
// Line 397  1 
	.loc 1 397
	push 1
// Line 397  397 
	.loc 1 397
	push 397
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
// Line 398 (CALL assert_expect ( 398 : 0 :(>= (-  11   8 )  5 ):) )
	.loc 1 398
// Line 398 (>= (-  11   8 )  5 )
	.loc 1 398
// Line 398 (-  11   8 )
	.loc 1 398
// Line 398  11 
	.loc 1 398
	push 11
// Line 398  8 
	.loc 1 398
	push 8
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 398  5 
	.loc 1 398
	push 5
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 398  0 
	.loc 1 398
	push 0
// Line 398  398 
	.loc 1 398
	push 398
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
// Line 399 (CALL assert_expect ( 399 : 1 :(<= (*  2   30 )  3 ):) )
	.loc 1 399
// Line 399 (<= (*  2   30 )  3 )
	.loc 1 399
// Line 399 (*  2   30 )
	.loc 1 399
// Line 399  2 
	.loc 1 399
	push 2
// Line 399  30 
	.loc 1 399
	push 30
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 399  3 
	.loc 1 399
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 399  1 
	.loc 1 399
	push 1
// Line 399  399 
	.loc 1 399
	push 399
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
// Line 400 (CALL assert_expect ( 400 : 1 :(<= (/  9   3 )  3 ):) )
	.loc 1 400
// Line 400 (<= (/  9   3 )  3 )
	.loc 1 400
// Line 400 (/  9   3 )
	.loc 1 400
// Line 400  9 
	.loc 1 400
	push 9
// Line 400  3 
	.loc 1 400
	push 3
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 400  3 
	.loc 1 400
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 400  1 
	.loc 1 400
	push 1
// Line 400  400 
	.loc 1 400
	push 400
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
// Line 401 (CALL assert_expect ( 401 : 0 :(<= (-  20   18 )  3 ):) )
	.loc 1 401
// Line 401 (<= (-  20   18 )  3 )
	.loc 1 401
// Line 401 (-  20   18 )
	.loc 1 401
// Line 401  20 
	.loc 1 401
	push 20
// Line 401  18 
	.loc 1 401
	push 18
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 401  3 
	.loc 1 401
	push 3
	pop  rdi
	pop  rax
	cmp  eax, edi
	setge al
	movzb eax, al
	push rax
// Line 401  0 
	.loc 1 401
	push 0
// Line 401  401 
	.loc 1 401
	push 401
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
// Line 402 (CALL assert_expect ( 402 : 1 :(== (+ (* (-  0   5 )  2 )  10 )  0 ):) )
	.loc 1 402
// Line 402 (== (+ (* (-  0   5 )  2 )  10 )  0 )
	.loc 1 402
// Line 402 (+ (* (-  0   5 )  2 )  10 )
	.loc 1 402
// Line 402 (* (-  0   5 )  2 )
	.loc 1 402
// Line 402 (-  0   5 )
	.loc 1 402
// Line 402  0 
	.loc 1 402
	push 0
// Line 402  5 
	.loc 1 402
	push 5
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 402  2 
	.loc 1 402
	push 2
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
// Line 402  10 
	.loc 1 402
	push 10
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 402  0 
	.loc 1 402
	push 0
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
// Line 402  1 
	.loc 1 402
	push 1
// Line 402  402 
	.loc 1 402
	push 402
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
// Line 403 (CALL assert_expect ( 403 : 1 :(== (/  6   2 ) (/  9   3 )):) )
	.loc 1 403
// Line 403 (== (/  6   2 ) (/  9   3 ))
	.loc 1 403
// Line 403 (/  6   2 )
	.loc 1 403
// Line 403  6 
	.loc 1 403
	push 6
// Line 403  2 
	.loc 1 403
	push 2
	pop  rdi
	pop  rax
	cqo
	idiv rax, rdi
	push rax
// Line 403 (/  9   3 )
	.loc 1 403
// Line 403  9 
	.loc 1 403
	push 9
// Line 403  3 
	.loc 1 403
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
// Line 403  1 
	.loc 1 403
	push 1
// Line 403  403 
	.loc 1 403
	push 403
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
// Line 404 (CALL assert_expect ( 404 : 1 :(< (+  4   1 )  4 ):) )
	.loc 1 404
// Line 404 (< (+  4   1 )  4 )
	.loc 1 404
// Line 404 (+  4   1 )
	.loc 1 404
// Line 404  4 
	.loc 1 404
	push 4
// Line 404  1 
	.loc 1 404
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 404  4 
	.loc 1 404
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 404  1 
	.loc 1 404
	push 1
// Line 404  404 
	.loc 1 404
	push 404
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
// Line 405 (CALL assert_expect ( 405 : 1 :(> (+  1   4 )  4 ):) )
	.loc 1 405
// Line 405 (> (+  1   4 )  4 )
	.loc 1 405
// Line 405 (+  1   4 )
	.loc 1 405
// Line 405  1 
	.loc 1 405
	push 1
// Line 405  4 
	.loc 1 405
	push 4
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 405  4 
	.loc 1 405
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 405  1 
	.loc 1 405
	push 1
// Line 405  405 
	.loc 1 405
	push 405
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
// Line 406 (CALL assert_expect ( 406 : 0 :(< (-  4   1 )  4 ):) )
	.loc 1 406
// Line 406 (< (-  4   1 )  4 )
	.loc 1 406
// Line 406 (-  4   1 )
	.loc 1 406
// Line 406  4 
	.loc 1 406
	push 4
// Line 406  1 
	.loc 1 406
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 406  4 
	.loc 1 406
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 406  0 
	.loc 1 406
	push 0
// Line 406  406 
	.loc 1 406
	push 406
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
// Line 407 (CALL assert_expect ( 407 : 0 :(> (-  1   4 )  4 ):) )
	.loc 1 407
// Line 407 (> (-  1   4 )  4 )
	.loc 1 407
// Line 407 (-  1   4 )
	.loc 1 407
// Line 407  1 
	.loc 1 407
	push 1
// Line 407  4 
	.loc 1 407
	push 4
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 407  4 
	.loc 1 407
	push 4
	pop  rdi
	pop  rax
	cmp  eax, edi
	setg al
	movzb eax, al
	push rax
// Line 407  0 
	.loc 1 407
	push 0
// Line 407  407 
	.loc 1 407
	push 407
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
// Line 408 (= (LVAR 12)  0 )
	.loc 1 408
	lea  rax, [rbp - 12]
	push rax
// Line 408  0 
	.loc 1 408
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 409 (CALL assert_expect ( 409 : 0 :(&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
	.loc 1 409
// Line 409 (&&  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 409
// Line 409  0 
	.loc 1 409
	push 0
	pop  rax
	cmp  eax, 0
	je   .L000264
// Line 409 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 409
// Line 409 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 409
	lea  rax, [rbp - 12]
	push rax
// Line 409 (++ (LVAR 12)  1 )
	.loc 1 409
// Line 409 (LVAR 12)
	.loc 1 409
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 409  1 
	.loc 1 409
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
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
	cmp  eax, 0
	je   .L000264
	mov  rax, 1
	jmp  .L000265
.L000264:
	mov  rax, 0
.L000265:
	push  rax
// Line 409  0 
	.loc 1 409
	push 0
// Line 409  409 
	.loc 1 409
	push 409
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
// Line 410 (CALL assert_expect ( 410 : 0 :(LVAR 12):) )
	.loc 1 410
// Line 410 (LVAR 12)
	.loc 1 410
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 410  0 
	.loc 1 410
	push 0
// Line 410  410 
	.loc 1 410
	push 410
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
// Line 411 (CALL assert_expect ( 411 : 0 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
	.loc 1 411
// Line 411 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 411
// Line 411  1 
	.loc 1 411
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000270
// Line 411 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 411
// Line 411 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 411
	lea  rax, [rbp - 12]
	push rax
// Line 411 (++ (LVAR 12)  1 )
	.loc 1 411
// Line 411 (LVAR 12)
	.loc 1 411
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 411  1 
	.loc 1 411
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 411  1 
	.loc 1 411
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
// Line 411  0 
	.loc 1 411
	push 0
// Line 411  411 
	.loc 1 411
	push 411
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
// Line 412 (CALL assert_expect ( 412 : 1 :(LVAR 12):) )
	.loc 1 412
// Line 412 (LVAR 12)
	.loc 1 412
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 412  1 
	.loc 1 412
	push 1
// Line 412  412 
	.loc 1 412
	push 412
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
// Line 413 (CALL assert_expect ( 413 : 1 :(&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
	.loc 1 413
// Line 413 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 413
// Line 413  1 
	.loc 1 413
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000276
// Line 413 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 413
// Line 413 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 413
	lea  rax, [rbp - 12]
	push rax
// Line 413 (++ (LVAR 12)  1 )
	.loc 1 413
// Line 413 (LVAR 12)
	.loc 1 413
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 413  1 
	.loc 1 413
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 413  1 
	.loc 1 413
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
// Line 414 (CALL assert_expect ( 414 : 2 :(LVAR 12):) )
	.loc 1 414
// Line 414 (LVAR 12)
	.loc 1 414
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 414  2 
	.loc 1 414
	push 2
// Line 414  414 
	.loc 1 414
	push 414
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
// Line 415 (CALL assert_expect ( 415 : 1 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
	.loc 1 415
// Line 415 (||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 415
// Line 415  0 
	.loc 1 415
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000282
// Line 415 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 415
// Line 415 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 415
	lea  rax, [rbp - 12]
	push rax
// Line 415 (++ (LVAR 12)  1 )
	.loc 1 415
// Line 415 (LVAR 12)
	.loc 1 415
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 415  1 
	.loc 1 415
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 415  1 
	.loc 1 415
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000282
	mov  rax, 0
	jmp  .L000283
.L000282:
	mov  rax, 1
.L000283:
	push  rax
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
// Line 416 (CALL assert_expect ( 416 : 3 :(LVAR 12):) )
	.loc 1 416
// Line 416 (LVAR 12)
	.loc 1 416
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 416  3 
	.loc 1 416
	push 3
// Line 416  416 
	.loc 1 416
	push 416
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
// Line 417 (CALL assert_expect ( 417 : 1 :(||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
	.loc 1 417
// Line 417 (||  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 417
// Line 417  1 
	.loc 1 417
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000288
// Line 417 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 417
// Line 417 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 417
	lea  rax, [rbp - 12]
	push rax
// Line 417 (++ (LVAR 12)  1 )
	.loc 1 417
// Line 417 (LVAR 12)
	.loc 1 417
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 417  1 
	.loc 1 417
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 417  1 
	.loc 1 417
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
// Line 417  1 
	.loc 1 417
	push 1
// Line 417  417 
	.loc 1 417
	push 417
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
// Line 418 (CALL assert_expect ( 418 : 3 :(LVAR 12):) )
	.loc 1 418
// Line 418 (LVAR 12)
	.loc 1 418
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 418  3 
	.loc 1 418
	push 3
// Line 418  418 
	.loc 1 418
	push 418
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
// Line 419 (= (LVAR 12)  0 )
	.loc 1 419
	lea  rax, [rbp - 12]
	push rax
// Line 419  0 
	.loc 1 419
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 420 (CALL assert_expect ( 420 : 0 :(||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
	.loc 1 420
// Line 420 (||  0  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 420
// Line 420  0 
	.loc 1 420
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000294
// Line 420 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 420
// Line 420 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 420
	lea  rax, [rbp - 12]
	push rax
// Line 420 (++ (LVAR 12)  1 )
	.loc 1 420
// Line 420 (LVAR 12)
	.loc 1 420
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 420  1 
	.loc 1 420
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 420  1 
	.loc 1 420
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
// Line 421 (CALL assert_expect ( 421 : 1 :(LVAR 12):) )
	.loc 1 421
// Line 421 (LVAR 12)
	.loc 1 421
	lea  rax, [rbp - 12]
	mov  eax, [rax]
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
// Line 422 (= (LVAR 12)  0 )
	.loc 1 422
	lea  rax, [rbp - 12]
	push rax
// Line 422  0 
	.loc 1 422
	push 0
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 423 (CALL assert_expect ( 423 : 0 :(||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))):) )
	.loc 1 423
// Line 423 (||  0  (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )))
	.loc 1 423
// Line 423  0 
	.loc 1 423
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000300
// Line 423 (&&  1  (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 423
// Line 423  1 
	.loc 1 423
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000302
// Line 423 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 423
// Line 423 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 423
	lea  rax, [rbp - 12]
	push rax
// Line 423 (++ (LVAR 12)  1 )
	.loc 1 423
// Line 423 (LVAR 12)
	.loc 1 423
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 423  1 
	.loc 1 423
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 423  1 
	.loc 1 423
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	je   .L000302
	mov  rax, 1
	jmp  .L000303
.L000302:
	mov  rax, 0
.L000303:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000300
	mov  rax, 0
	jmp  .L000301
.L000300:
	mov  rax, 1
.L000301:
	push  rax
// Line 423  0 
	.loc 1 423
	push 0
// Line 423  423 
	.loc 1 423
	push 423
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
// Line 424 (CALL assert_expect ( 424 : 1 :(LVAR 12):) )
	.loc 1 424
// Line 424 (LVAR 12)
	.loc 1 424
	lea  rax, [rbp - 12]
	mov  eax, [rax]
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
// Line 425 (CALL assert_expect ( 425 : 1 :(|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )):) )
	.loc 1 425
// Line 425 (|| (&&  1   1 ) (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 ))
	.loc 1 425
// Line 425 (&&  1   1 )
	.loc 1 425
// Line 425  1 
	.loc 1 425
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000310
// Line 425  1 
	.loc 1 425
	push 1
	pop  rax
	cmp  eax, 0
	je   .L000310
	mov  rax, 1
	jmp  .L000311
.L000310:
	mov  rax, 0
.L000311:
	push  rax
	pop  rax
	cmp  eax, 0
	jne  .L000308
// Line 425 (++ (= (LVAR 12) (++ (LVAR 12)  1 ))  1 )
	.loc 1 425
// Line 425 (= (LVAR 12) (++ (LVAR 12)  1 ))
	.loc 1 425
	lea  rax, [rbp - 12]
	push rax
// Line 425 (++ (LVAR 12)  1 )
	.loc 1 425
// Line 425 (LVAR 12)
	.loc 1 425
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 425  1 
	.loc 1 425
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 425  1 
	.loc 1 425
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000308
	mov  rax, 0
	jmp  .L000309
.L000308:
	mov  rax, 1
.L000309:
	push  rax
// Line 425  1 
	.loc 1 425
	push 1
// Line 425  425 
	.loc 1 425
	push 425
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
// Line 426 (CALL assert_expect ( 426 : 1 :(LVAR 12):) )
	.loc 1 426
// Line 426 (LVAR 12)
	.loc 1 426
	lea  rax, [rbp - 12]
	mov  eax, [rax]
	push rax
// Line 426  1 
	.loc 1 426
	push 1
// Line 426  426 
	.loc 1 426
	push 426
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
// Line 427 (CALL assert_expect ( 427 : 1 :(!  0 ):) )
	.loc 1 427
// Line 427 (!  0 )
	.loc 1 427
// Line 427  0 
	.loc 1 427
	push 0
	pop  rax
	cmp  eax, 0
	jne  .L000316
	mov  rax, 1
	jmp  .L000317
.L000316:
	mov  rax, 0
.L000317:
	push rax
// Line 427  1 
	.loc 1 427
	push 1
// Line 427  427 
	.loc 1 427
	push 427
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
// Line 428 (CALL assert_expect ( 428 : 0 :(!  1 ):) )
	.loc 1 428
// Line 428 (!  1 )
	.loc 1 428
// Line 428  1 
	.loc 1 428
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000320
	mov  rax, 1
	jmp  .L000321
.L000320:
	mov  rax, 0
.L000321:
	push rax
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
// Line 429 (CALL assert_expect ( 429 : 0 :(! (! (!  1 ))):) )
	.loc 1 429
// Line 429 (! (! (!  1 )))
	.loc 1 429
// Line 429 (! (!  1 ))
	.loc 1 429
// Line 429 (!  1 )
	.loc 1 429
// Line 429  1 
	.loc 1 429
	push 1
	pop  rax
	cmp  eax, 0
	jne  .L000328
	mov  rax, 1
	jmp  .L000329
.L000328:
	mov  rax, 0
.L000329:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000326
	mov  rax, 1
	jmp  .L000327
.L000326:
	mov  rax, 0
.L000327:
	push rax
	pop  rax
	cmp  eax, 0
	jne  .L000324
	mov  rax, 1
	jmp  .L000325
.L000324:
	mov  rax, 0
.L000325:
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
// Line 431 (CALL assert_expect ( 431 : 256 :(<<  1   8 ):) )
	.loc 1 431
// Line 431 (<<  1   8 )
	.loc 1 431
// Line 431  1 
	.loc 1 431
	push 1
// Line 431  8 
	.loc 1 431
	push 8
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 431  256 
	.loc 1 431
	push 256
// Line 431  431 
	.loc 1 431
	push 431
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
// Line 432 (CALL assert_expect ( 432 : 32 :(>>  512   4 ):) )
	.loc 1 432
// Line 432 (>>  512   4 )
	.loc 1 432
// Line 432  512 
	.loc 1 432
	push 512
// Line 432  4 
	.loc 1 432
	push 4
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 432  32 
	.loc 1 432
	push 32
// Line 432  432 
	.loc 1 432
	push 432
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
// Line 436 (= (LVAR 16)  10 )
	.loc 1 436
	lea  rax, [rbp - 16]
	push rax
// Line 436  10 
	.loc 1 436
	push 10
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 437 (CALL assert_expect ( 437 : 15 :(= (LVAR 16) (+= (LVAR 16)  5 )):) )
	.loc 1 437
// Line 437 (= (LVAR 16) (+= (LVAR 16)  5 ))
	.loc 1 437
	lea  rax, [rbp - 16]
	push rax
// Line 437 (+= (LVAR 16)  5 )
	.loc 1 437
// Line 437 (LVAR 16)
	.loc 1 437
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 437  5 
	.loc 1 437
	push 5
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 437  15 
	.loc 1 437
	push 15
// Line 437  437 
	.loc 1 437
	push 437
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
// Line 438 (CALL assert_expect ( 438 : 15 :(LVAR 16):) )
	.loc 1 438
// Line 438 (LVAR 16)
	.loc 1 438
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 438  15 
	.loc 1 438
	push 15
// Line 438  438 
	.loc 1 438
	push 438
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
// Line 439 (CALL assert_expect ( 439 : 8 :(= (LVAR 16) (-= (LVAR 16)  7 )):) )
	.loc 1 439
// Line 439 (= (LVAR 16) (-= (LVAR 16)  7 ))
	.loc 1 439
	lea  rax, [rbp - 16]
	push rax
// Line 439 (-= (LVAR 16)  7 )
	.loc 1 439
// Line 439 (LVAR 16)
	.loc 1 439
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 439  7 
	.loc 1 439
	push 7
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 439  8 
	.loc 1 439
	push 8
// Line 439  439 
	.loc 1 439
	push 439
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
// Line 440 (CALL assert_expect ( 440 : 8 :(LVAR 16):) )
	.loc 1 440
// Line 440 (LVAR 16)
	.loc 1 440
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 440  8 
	.loc 1 440
	push 8
// Line 440  440 
	.loc 1 440
	push 440
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
// Line 441 (CALL assert_expect ( 441 : 40 :(= (LVAR 16) (*= (LVAR 16)  5 )):) )
	.loc 1 441
// Line 441 (= (LVAR 16) (*= (LVAR 16)  5 ))
	.loc 1 441
	lea  rax, [rbp - 16]
	push rax
// Line 441 (*= (LVAR 16)  5 )
	.loc 1 441
// Line 441 (LVAR 16)
	.loc 1 441
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 441  5 
	.loc 1 441
	push 5
	pop  rdi
	pop  rax
	imul rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 441  40 
	.loc 1 441
	push 40
// Line 441  441 
	.loc 1 441
	push 441
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
// Line 442 (CALL assert_expect ( 442 : 40 :(LVAR 16):) )
	.loc 1 442
// Line 442 (LVAR 16)
	.loc 1 442
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 442  40 
	.loc 1 442
	push 40
// Line 442  442 
	.loc 1 442
	push 442
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
// Line 443 (CALL assert_expect ( 443 : 4 :(= (LVAR 16) (/= (LVAR 16)  10 )):) )
	.loc 1 443
// Line 443 (= (LVAR 16) (/= (LVAR 16)  10 ))
	.loc 1 443
	lea  rax, [rbp - 16]
	push rax
// Line 443 (/= (LVAR 16)  10 )
	.loc 1 443
// Line 443 (LVAR 16)
	.loc 1 443
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 443  10 
	.loc 1 443
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
// Line 443  4 
	.loc 1 443
	push 4
// Line 443  443 
	.loc 1 443
	push 443
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
// Line 444 (CALL assert_expect ( 444 : 4 :(LVAR 16):) )
	.loc 1 444
// Line 444 (LVAR 16)
	.loc 1 444
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 444  4 
	.loc 1 444
	push 4
// Line 444  444 
	.loc 1 444
	push 444
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
// Line 447 (CALL assert_expect ( 447 : 4 :(++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 ):) )
	.loc 1 447
// Line 447 (++ (= (LVAR 16) (++ (LVAR 16)  1 ))  1 )
	.loc 1 447
// Line 447 (= (LVAR 16) (++ (LVAR 16)  1 ))
	.loc 1 447
	lea  rax, [rbp - 16]
	push rax
// Line 447 (++ (LVAR 16)  1 )
	.loc 1 447
// Line 447 (LVAR 16)
	.loc 1 447
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 447  1 
	.loc 1 447
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 447  1 
	.loc 1 447
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
// Line 447  4 
	.loc 1 447
	push 4
// Line 447  447 
	.loc 1 447
	push 447
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
// Line 448 (CALL assert_expect ( 448 : 5 :(LVAR 16):) )
	.loc 1 448
// Line 448 (LVAR 16)
	.loc 1 448
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 448  5 
	.loc 1 448
	push 5
// Line 448  448 
	.loc 1 448
	push 448
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
// Line 449 (CALL assert_expect ( 449 : 5 :(-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 ):) )
	.loc 1 449
// Line 449 (-- (= (LVAR 16) (-- (LVAR 16)  1 ))  1 )
	.loc 1 449
// Line 449 (= (LVAR 16) (-- (LVAR 16)  1 ))
	.loc 1 449
	lea  rax, [rbp - 16]
	push rax
// Line 449 (-- (LVAR 16)  1 )
	.loc 1 449
// Line 449 (LVAR 16)
	.loc 1 449
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 449  1 
	.loc 1 449
	push 1
	pop  rdi
	pop  rax
	sub  rax, rdi
	push rax
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
// Line 449  1 
	.loc 1 449
	push 1
	pop  rdi
	pop  rax
	add  rax, rdi
	push rax
// Line 449  5 
	.loc 1 449
	push 5
// Line 449  449 
	.loc 1 449
	push 449
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
// Line 450 (CALL assert_expect ( 450 : 4 :(LVAR 16):) )
	.loc 1 450
// Line 450 (LVAR 16)
	.loc 1 450
	lea  rax, [rbp - 16]
	mov  eax, [rax]
	push rax
// Line 450  4 
	.loc 1 450
	push 4
// Line 450  450 
	.loc 1 450
	push 450
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
// Line 454 (= (LVAR 20) (/  100  (LVAR 16)))
	.loc 1 454
	lea  rax, [rbp - 20]
	push rax
// Line 454 (/  100  (LVAR 16))
	.loc 1 454
// Line 454  100 
	.loc 1 454
	push 100
// Line 454 (LVAR 16)
	.loc 1 454
	lea  rax, [rbp - 16]
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
// Line 455 (CALL assert_expect ( 455 : 25 :(LVAR 20):) )
	.loc 1 455
// Line 455 (LVAR 20)
	.loc 1 455
	lea  rax, [rbp - 20]
	mov  eax, [rax]
	push rax
// Line 455  25 
	.loc 1 455
	push 25
// Line 455  455 
	.loc 1 455
	push 455
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
// Line 458 (= (LVAR 24)  77 )
	.loc 1 458
	lea  rax, [rbp - 24]
	push rax
// Line 458  77 
	.loc 1 458
	push 77
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
// Line 463 (IF (== (LVAR 24)  77 ) (= (LVAR 24)  55 ) (= (LVAR 24)  66 ))
	.loc 1 463
// Line 459 (== (LVAR 24)  77 )
	.loc 1 459
// Line 459 (LVAR 24)
	.loc 1 459
	lea  rax, [rbp - 24]
	mov  eax, [rax]
	push rax
// Line 459  77 
	.loc 1 459
	push 77
	pop  rdi
	pop  rax
	cmp  eax, edi
	sete al
	movzb eax, al
	push rax
	pop  rax
	cmp  rax, 0
	je   .L000362
// Line 460 (= (LVAR 24)  55 )
	.loc 1 460
	lea  rax, [rbp - 24]
	push rax
// Line 460  55 
	.loc 1 460
	push 55
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
	jmp  .L000363
.L000362:
// Line 462 (= (LVAR 24)  66 )
	.loc 1 462
	lea  rax, [rbp - 24]
	push rax
// Line 462  66 
	.loc 1 462
	push 66
	pop  rdi
	pop  rax
	mov  [rax], edi
	push rdi
	pop  rax
.L000363:
// Line 463 (CALL assert_expect ( 463 : 55 :(LVAR 24):) )
	.loc 1 463
// Line 463 (LVAR 24)
	.loc 1 463
	lea  rax, [rbp - 24]
	mov  eax, [rax]
	push rax
// Line 463  55 
	.loc 1 463
	push 55
// Line 463  463 
	.loc 1 463
	push 463
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
// Line 464 (CALL assert_expect ( 464 : 1346269 :(CALL fibo ( 30 :) ):) )
	.loc 1 464
// Line 464 (CALL fibo ( 30 :) )
	.loc 1 464
// Line 464  30 
	.loc 1 464
	push 30
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000366
	mov  rax, 0
	call fibo
	jmp  .L000367
.L000366:
	sub  rsp, 8
	mov  rax, 0
	call fibo
	add  rsp, 8
.L000367:
	push rax
// Line 464  1346269 
	.loc 1 464
	push 1346269
// Line 464  464 
	.loc 1 464
	push 464
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
// Line 465 (CALL array_global () )
	.loc 1 465
	mov  rax, rsp
	and  rax, 15
	jnz  .L000370
	mov  rax, 0
	call array_global
	jmp  .L000371
.L000370:
	sub  rsp, 8
	mov  rax, 0
	call array_global
	add  rsp, 8
.L000371:
	push rax
	pop  rax
// Line 466 (CALL array_local () )
	.loc 1 466
	mov  rax, rsp
	and  rax, 15
	jnz  .L000372
	mov  rax, 0
	call array_local
	jmp  .L000373
.L000372:
	sub  rsp, 8
	mov  rax, 0
	call array_local
	add  rsp, 8
.L000373:
	push rax
	pop  rax
// Line 467 (CALL string () )
	.loc 1 467
	mov  rax, rsp
	and  rax, 15
	jnz  .L000374
	mov  rax, 0
	call string
	jmp  .L000375
.L000374:
	sub  rsp, 8
	mov  rax, 0
	call string
	add  rsp, 8
.L000375:
	push rax
	pop  rax
// Line 468 (CALL block_scope () )
	.loc 1 468
	mov  rax, rsp
	and  rax, 15
	jnz  .L000376
	mov  rax, 0
	call block_scope
	jmp  .L000377
.L000376:
	sub  rsp, 8
	mov  rax, 0
	call block_scope
	add  rsp, 8
.L000377:
	push rax
	pop  rax
// Line 469 (CALL for_ () )
	.loc 1 469
	mov  rax, rsp
	and  rax, 15
	jnz  .L000378
	mov  rax, 0
	call for_
	jmp  .L000379
.L000378:
	sub  rsp, 8
	mov  rax, 0
	call for_
	add  rsp, 8
.L000379:
	push rax
	pop  rax
// Line 470 (CALL list_ () )
	.loc 1 470
	mov  rax, rsp
	and  rax, 15
	jnz  .L000380
	mov  rax, 0
	call list_
	jmp  .L000381
.L000380:
	sub  rsp, 8
	mov  rax, 0
	call list_
	add  rsp, 8
.L000381:
	push rax
	pop  rax
// Line 471 (CALL struct_ () )
	.loc 1 471
	mov  rax, rsp
	and  rax, 15
	jnz  .L000382
	mov  rax, 0
	call struct_
	jmp  .L000383
.L000382:
	sub  rsp, 8
	mov  rax, 0
	call struct_
	add  rsp, 8
.L000383:
	push rax
	pop  rax
// Line 477 (CALL assert_expect ( 477 : 11 :(CALL switch_ ( 1 :) ):) )
	.loc 1 477
// Line 477 (CALL switch_ ( 1 :) )
	.loc 1 477
// Line 477  1 
	.loc 1 477
	push 1
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000384
	mov  rax, 0
	call switch_
	jmp  .L000385
.L000384:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000385:
	push rax
// Line 477  11 
	.loc 1 477
	push 11
// Line 477  477 
	.loc 1 477
	push 477
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
// Line 478 (CALL assert_expect ( 478 : 13 :(CALL switch_ ( 2 :) ):) )
	.loc 1 478
// Line 478 (CALL switch_ ( 2 :) )
	.loc 1 478
// Line 478  2 
	.loc 1 478
	push 2
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000388
	mov  rax, 0
	call switch_
	jmp  .L000389
.L000388:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000389:
	push rax
// Line 478  13 
	.loc 1 478
	push 13
// Line 478  478 
	.loc 1 478
	push 478
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
// Line 479 (CALL assert_expect ( 479 : 13 :(CALL switch_ ( 3 :) ):) )
	.loc 1 479
// Line 479 (CALL switch_ ( 3 :) )
	.loc 1 479
// Line 479  3 
	.loc 1 479
	push 3
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000392
	mov  rax, 0
	call switch_
	jmp  .L000393
.L000392:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000393:
	push rax
// Line 479  13 
	.loc 1 479
	push 13
// Line 479  479 
	.loc 1 479
	push 479
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
// Line 480 (CALL assert_expect ( 480 : 13 :(CALL switch_ ( 4 :) ):) )
	.loc 1 480
// Line 480 (CALL switch_ ( 4 :) )
	.loc 1 480
// Line 480  4 
	.loc 1 480
	push 4
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000396
	mov  rax, 0
	call switch_
	jmp  .L000397
.L000396:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000397:
	push rax
// Line 480  13 
	.loc 1 480
	push 13
// Line 480  480 
	.loc 1 480
	push 480
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
// Line 481 (CALL assert_expect ( 481 : 15 :(CALL switch_ ( 5 :) ):) )
	.loc 1 481
// Line 481 (CALL switch_ ( 5 :) )
	.loc 1 481
// Line 481  5 
	.loc 1 481
	push 5
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000400
	mov  rax, 0
	call switch_
	jmp  .L000401
.L000400:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000401:
	push rax
// Line 481  15 
	.loc 1 481
	push 15
// Line 481  481 
	.loc 1 481
	push 481
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
// Line 482 (CALL assert_expect ( 482 : 15 :(CALL switch_ ( 6 :) ):) )
	.loc 1 482
// Line 482 (CALL switch_ ( 6 :) )
	.loc 1 482
// Line 482  6 
	.loc 1 482
	push 6
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000404
	mov  rax, 0
	call switch_
	jmp  .L000405
.L000404:
	sub  rsp, 8
	mov  rax, 0
	call switch_
	add  rsp, 8
.L000405:
	push rax
// Line 482  15 
	.loc 1 482
	push 15
// Line 482  482 
	.loc 1 482
	push 482
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
// Line 485 (CALL assert_expect ( 485 : 11 :(CALL switch2_ ( 97 :) ):) )
	.loc 1 485
// Line 485 (CALL switch2_ ( 97 :) )
	.loc 1 485
// Line 485  97 
	.loc 1 485
	push 97
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000408
	mov  rax, 0
	call switch2_
	jmp  .L000409
.L000408:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000409:
	push rax
// Line 485  11 
	.loc 1 485
	push 11
// Line 485  485 
	.loc 1 485
	push 485
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
// Line 486 (CALL assert_expect ( 486 : 12 :(CALL switch2_ ( 98 :) ):) )
	.loc 1 486
// Line 486 (CALL switch2_ ( 98 :) )
	.loc 1 486
// Line 486  98 
	.loc 1 486
	push 98
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000412
	mov  rax, 0
	call switch2_
	jmp  .L000413
.L000412:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000413:
	push rax
// Line 486  12 
	.loc 1 486
	push 12
// Line 486  486 
	.loc 1 486
	push 486
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
// Line 487 (CALL assert_expect ( 487 : 12 :(CALL switch2_ ( 99 :) ):) )
	.loc 1 487
// Line 487 (CALL switch2_ ( 99 :) )
	.loc 1 487
// Line 487  99 
	.loc 1 487
	push 99
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000416
	mov  rax, 0
	call switch2_
	jmp  .L000417
.L000416:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000417:
	push rax
// Line 487  12 
	.loc 1 487
	push 12
// Line 487  487 
	.loc 1 487
	push 487
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
// Line 488 (CALL assert_expect ( 488 : 15 :(CALL switch2_ ( 122 :) ):) )
	.loc 1 488
// Line 488 (CALL switch2_ ( 122 :) )
	.loc 1 488
// Line 488  122 
	.loc 1 488
	push 122
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000420
	mov  rax, 0
	call switch2_
	jmp  .L000421
.L000420:
	sub  rsp, 8
	mov  rax, 0
	call switch2_
	add  rsp, 8
.L000421:
	push rax
// Line 488  15 
	.loc 1 488
	push 15
// Line 488  488 
	.loc 1 488
	push 488
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
// Line 491 (CALL assert_expect ( 491 : 92 :(CALL q8 () ):) )
	.loc 1 491
// Line 491 (CALL q8 () )
	.loc 1 491
	mov  rax, rsp
	and  rax, 15
	jnz  .L000424
	mov  rax, 0
	call q8
	jmp  .L000425
.L000424:
	sub  rsp, 8
	mov  rax, 0
	call q8
	add  rsp, 8
.L000425:
	push rax
// Line 491  92 
	.loc 1 491
	push 92
// Line 491  491 
	.loc 1 491
	push 491
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
// Line 494 (CALL assert_expect ( 494 : 0 : 0 :) )
	.loc 1 494
// Line 494  0 
	.loc 1 494
	push 0
// Line 494  0 
	.loc 1 494
	push 0
// Line 494  494 
	.loc 1 494
	push 494
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
// Line 495 (CALL assert_expect ( 495 : 1 : 1 :) )
	.loc 1 495
// Line 495  1 
	.loc 1 495
	push 1
// Line 495  1 
	.loc 1 495
	push 1
// Line 495  495 
	.loc 1 495
	push 495
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
// Line 496 (CALL assert_expect ( 496 : 2 : 2 :) )
	.loc 1 496
// Line 496  2 
	.loc 1 496
	push 2
// Line 496  2 
	.loc 1 496
	push 2
// Line 496  496 
	.loc 1 496
	push 496
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
// Line 497 (CALL assert_expect ( 497 : 3 : 3 :) )
	.loc 1 497
// Line 497  3 
	.loc 1 497
	push 3
// Line 497  3 
	.loc 1 497
	push 3
// Line 497  497 
	.loc 1 497
	push 497
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
// Line 499 (CALL assert_expect ( 499 : 15 :(|  13   7 ):) )
	.loc 1 499
// Line 499 (|  13   7 )
	.loc 1 499
// Line 499  13 
	.loc 1 499
	push 13
// Line 499  7 
	.loc 1 499
	push 7
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 499  15 
	.loc 1 499
	push 15
// Line 499  499 
	.loc 1 499
	push 499
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
// Line 500 (CALL assert_expect ( 500 : 5115 :(|  938   5073 ):) )
	.loc 1 500
// Line 500 (|  938   5073 )
	.loc 1 500
// Line 500  938 
	.loc 1 500
	push 938
// Line 500  5073 
	.loc 1 500
	push 5073
	pop  rdi
	pop  rax
	or   rax, rdi
	push rax
// Line 500  5115 
	.loc 1 500
	push 5115
// Line 500  500 
	.loc 1 500
	push 500
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
// Line 501 (CALL assert_expect ( 501 : 5 :(&  13   7 ):) )
	.loc 1 501
// Line 501 (&  13   7 )
	.loc 1 501
// Line 501  13 
	.loc 1 501
	push 13
// Line 501  7 
	.loc 1 501
	push 7
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 501  5 
	.loc 1 501
	push 5
// Line 501  501 
	.loc 1 501
	push 501
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
// Line 502 (CALL assert_expect ( 502 : 896 :(&  938   5073 ):) )
	.loc 1 502
// Line 502 (&  938   5073 )
	.loc 1 502
// Line 502  938 
	.loc 1 502
	push 938
// Line 502  5073 
	.loc 1 502
	push 5073
	pop  rdi
	pop  rax
	and  rax, rdi
	push rax
// Line 502  896 
	.loc 1 502
	push 896
// Line 502  502 
	.loc 1 502
	push 502
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
// Line 503 (CALL assert_expect ( 503 : 10 :(^  13   7 ):) )
	.loc 1 503
// Line 503 (^  13   7 )
	.loc 1 503
// Line 503  13 
	.loc 1 503
	push 13
// Line 503  7 
	.loc 1 503
	push 7
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 503  10 
	.loc 1 503
	push 10
// Line 503  503 
	.loc 1 503
	push 503
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
// Line 504 (CALL assert_expect ( 504 : 4219 :(^  938   5073 ):) )
	.loc 1 504
// Line 504 (^  938   5073 )
	.loc 1 504
// Line 504  938 
	.loc 1 504
	push 938
// Line 504  5073 
	.loc 1 504
	push 5073
	pop  rdi
	pop  rax
	xor  rax, rdi
	push rax
// Line 504  4219 
	.loc 1 504
	push 4219
// Line 504  504 
	.loc 1 504
	push 504
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
// Line 506 (CALL assert_expect ( 506 : 29 :(>>  938   5 ):) )
	.loc 1 506
// Line 506 (>>  938   5 )
	.loc 1 506
// Line 506  938 
	.loc 1 506
	push 938
// Line 506  5 
	.loc 1 506
	push 5
	pop  rdi
	pop  rax
	mov  cl , dil
	shr  rax, cl
	push rax
// Line 506  29 
	.loc 1 506
	push 29
// Line 506  506 
	.loc 1 506
	push 506
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
// Line 507 (CALL assert_expect ( 507 : 1664 :(<<  13   7 ):) )
	.loc 1 507
// Line 507 (<<  13   7 )
	.loc 1 507
// Line 507  13 
	.loc 1 507
	push 13
// Line 507  7 
	.loc 1 507
	push 7
	pop  rdi
	pop  rax
	mov  cl , dil
	shl  rax, cl
	push rax
// Line 507  1664 
	.loc 1 507
	push 1664
// Line 507  507 
	.loc 1 507
	push 507
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
// Line 509 (CALL printf_ ((ADDR  "passed tests.\n" ):) )
	.loc 1 509
// Line 509 (ADDR  "passed tests.\n" )
	.loc 1 509
	lea  rax, .LS000029[rip]
	push rax
	pop  rdi
	mov  rax, rsp
	and  rax, 15
	jnz  .L000452
	mov  rax, 0
	call printf_
	jmp  .L000453
.L000452:
	sub  rsp, 8
	mov  rax, 0
	call printf_
	add  rsp, 8
.L000453:
	push rax
	pop  rax
// Line 510 (RETURN  0 )
	.loc 1 510
// Line 510  0 
	.loc 1 510
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

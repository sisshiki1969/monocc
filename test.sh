#!/bin/bash
try() {
    expected="$1"
    input="$2"

    ./monocc "$input" > tmp.s
    gcc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

try 32 32
try 7 7
try 21 " 5  +  20 -4"
try 52 "  5257-5212+  7 +23-23 "
try 21 "5 + 4 * 4"
try 13 "6+3*4-15/3"
try 33 "(6+3)*(15-4)/3"
try 24 "(4 *(5 -2)) * (4 - 2)"
try 1 " 5257-5212+  7 == 52"
try 0 " 3 == 3 +1"
try 1 "4 != 4* 2"
try 0 "3!=1 *3"
try 1 "5>=8 -4"
try 1 "5>=7-2"
try 0 "11-8>=5"
try 1 "3<=2 * 30"
try 1 "3<=9/ 3"
try 0 "3<=20-18"
try 1 "-5*2+10 == 0"
try 1 "+6/2 == 9/3"
try 9 "alpha5 = 5; alpha5 * 6 - 21;"
try 45 "alpha5 = 5; beta_9 = alpha5 * 6 - 21; beta_9*alpha5"
try 37 "a = 5 *5 +12;return a"
try 13 "a=8; if(a==4) b=19; else b=13; return b"
try 19 "a=8; if(a==8) a=19; return a"
try 7 "if(1==1) 13; 7"
try 3 "i = 1; if(1==i) if(0==i) ifs = 7; else ifs = 3; else ifs = 9; return ifs"

echo OK
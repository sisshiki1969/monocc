#!/bin/bash
try() {
    expected="$1"
    input="$2"

    gcc -o monocc monocc.c
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
try 52 "  5257-5212+  7  "
try 21 "5 + 4 * 4"
try 13 "6+3*4-15/3"
try 33 "(6+3)*(15-4)/3"
try 24 "(4 *(5 -2)) * (4 - 2)"

echo OK
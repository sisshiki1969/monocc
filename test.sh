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
try 21 "5+20-4"
try 35 "40-12+7"

echo OK
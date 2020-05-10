#!/bin/bash
set -e

DIR=$1
CC=$2

mkdir -p $DIR
cp -f ./src/* $DIR
$CC/monocc -v $DIR/monocc.c
$CC/monocc -v $DIR/tokenize.c
$CC/monocc -v $DIR/parse.c
$CC/monocc -v $DIR/container.c
$CC/monocc -v $DIR/debug.c
$CC/monocc -v $DIR/codegen.c
$CC/monocc -v $DIR/type.c
$CC/monocc -v $DIR/test.c
$CC/monocc -v $DIR/pp.c
gcc -static -o $DIR/monocc $DIR/*.s $DIR/error.c -L /usr/lib -L /usr/local/lib -L /usr/include/
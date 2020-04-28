#!/bin/bash
set -e

DIR=$1
CC=$2

mkdir -p $DIR
cp -f ./src/* $DIR
$CC/monocc $DIR/monocc.c
$CC/monocc $DIR/tokenize.c
$CC/monocc $DIR/parse.c
$CC/monocc $DIR/container.c
$CC/monocc $DIR/debug.c
$CC/monocc $DIR/codegen.c
$CC/monocc $DIR/type.c
$CC/monocc $DIR/test.c
gcc -static -pie -o $DIR/monocc $DIR/*.s $DIR/error.c -L /usr/lib -L /usr/local/lib -L /usr/include/
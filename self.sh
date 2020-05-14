#!/bin/bash
set -e

DIR=$1
CC=$2
CFLAGS=-v

mkdir -p $DIR
cp -f ./src/* $DIR
$CC/monocc $CFLAGS $DIR/monocc.c
$CC/monocc $CFLAGS $DIR/tokenize.c
$CC/monocc $CFLAGS $DIR/parse.c
$CC/monocc $CFLAGS $DIR/container.c
$CC/monocc $CFLAGS $DIR/debug.c
$CC/monocc $CFLAGS $DIR/codegen.c
$CC/monocc $CFLAGS $DIR/type.c
$CC/monocc $CFLAGS $DIR/test.c
$CC/monocc $CFLAGS $DIR/pp.c
$CC/monocc $CFLAGS $DIR/error.c
gcc -static -o $DIR/monocc $DIR/*.s -L /usr/lib -L /usr/local/lib -L /usr/include/
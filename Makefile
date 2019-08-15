CFLAGS=-std=c11 -g -static
LDLIBS = -L /usr/lib -L /usr/local/lib
SRCS=$(wildcard ./src/*.c)
OBJS=$(SRCS:.c=.o)
SRC2=$(wildcard ./self/*.c)

monocc: $(OBJS)
	$(CC) -c lib.c
	$(CC) -o ./src/monocc $(OBJS) $(CFLAGS)

$(OBJS): ./src/monocc.h

test: monocc
	./src/monocc -test
	./src/monocc ./test/test.c
	$(CC) -o tmp ./test/test.s lib.o
	./tmp

self: monocc
	rm -f ./self/* tmp*
	cp -f ./src/* ./self 
	rm -f ./self/monocc.c ./self/tokenize.c ./self/parse.c ./self/container.c ./self/debug.c ./self/codegen.c
	./src/monocc ./src/monocc.c
	./src/monocc ./src/tokenize.c
	./src/monocc ./src/parse.c
	./src/monocc ./src/container.c
	./src/monocc ./src/debug.c
	./src/monocc ./src/codegen.c
	$(CC) $(CFLAGS) -o self_1 ./self/container.s ./self/error.c ./self/tokenize.s ./self/type.c ./self/test.c ./self/debug.s ./self/codegen.s ./self/parse.s ./self/monocc.s $(LDLIBS)
	#./self_1 ./src/monocc.c > ./self/monocc2.s
	#./self_1 ./src/tokenize.c > ./self/tokenize2.s
	#./self_1 ./src/parse.c > ./self/parse2.s
	#./self_1 ./src/container.c > ./self/container2.s 
	#./self_1 ./src/debug.c > ./self/debug2.s 
	#./self_1 ./src/codegen.c > ./self/codegen2.s 
	#diff ./self/monocc.s ./self/monocc2.s
	#diff ./self/tokenize.s ./self/tokenize2.s
	#diff ./self/parse.s ./self/parse2.s
	#diff ./self/container.s ./self/container2.s
	#diff ./self/debug.s ./self/debug2.s
	#diff ./self/codegen.s ./self/codegen2.s

clean:
	rm -f ./src/monocc ./src/*.o *~ tmp* self_*

.PHONY: test self clean
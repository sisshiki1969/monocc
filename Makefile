CFLAGS=-std=c11 -g -static -Wno-format-security
LDLIBS = -L /usr/lib -L /usr/local/lib -L /usr/include/
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
	rm -f ./self/* ./self2/* tmp* ./src/*.o ./src/*.s
	cp -f ./src/* ./self
	cp -f ./src/* ./self2
	./src/monocc ./self/monocc.c
	./src/monocc ./self/tokenize.c
	./src/monocc ./self/parse.c
	./src/monocc ./self/container.c
	./src/monocc ./self/debug.c
	./src/monocc ./self/codegen.c
	./src/monocc ./self/type.c
	./src/monocc ./self/test.c
	$(CC) $(CFLAGS) -o self_1 ./self/container.s ./self/error.c ./self/tokenize.s ./self/type.s ./self/test.s ./self/debug.s ./self/codegen.s ./self/parse.s ./self/monocc.s $(LDLIBS)
	./self_1 ./self2/monocc.c
	./self_1 ./self2/tokenize.c
	./self_1 ./self2/parse.c
	./self_1 ./self2/container.c 
	./self_1 ./self2/debug.c  
	./self_1 ./self2/codegen.c
	./self_1 ./self2/type.c
	./self_1 ./self2/test.c
	$(CC) $(CFLAGS) -o self_2 ./self2/container.s ./self2/error.c ./self2/tokenize.s ./self2/type.s ./self2/test.s ./self2/debug.s ./self2/codegen.s ./self2/parse.s ./self2/monocc.s $(LDLIBS)
	
	#diff ./self_1 ./self_2 -s
	diff ./self/monocc.s ./self2/monocc.s -s
	diff ./self/tokenize.s ./self2/tokenize.s -s
	diff ./self/parse.s ./self2/parse.s -s
	diff ./self/container.s ./self2/container.s -s
	diff ./self/debug.s ./self2/debug.s -s
	diff ./self/codegen.s ./self2/codegen.s -s
	diff ./self/type.s ./self2/type.s -s
	diff ./self/test.s ./self2/test.s -s

clean:
	rm -f ./src/monocc ./src/*.o ./src/*.s *~ tmp* self_* ./self/* ./self2/* a.out lib.o

.PHONY: test self clean
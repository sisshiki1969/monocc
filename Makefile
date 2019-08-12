CFLAGS=-std=c11 -g -static
SRCS=$(wildcard ./src/*.c)
OBJS=$(SRCS:.c=.o)

monocc: $(OBJS)
	$(CC) -c lib.c
	$(CC) -o ./src/monocc $(OBJS) $(LDFLAGS)

$(OBJS): ./src/monocc.h

test: monocc
	./src/monocc -test
	./src/monocc -file ./test/test.c > tmp.s
	$(CC) -o tmp tmp.s lib.o
	./tmp

self: monocc
	./src/monocc -test
	cp -f ./src/tokenize.c ./src/monocc.h ./test
	./src/monocc -file ./test/tokenize.c > tmp.s
	$(CC) -o tmp tmp.s lib.o
	./tmp

clean:
	rm -f ./src/monocc ./src/*.o *~ tmp*

.PHONY: test self clean
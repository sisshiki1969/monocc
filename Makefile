CFLAGS=-std=c11 -g -static
LDLIBS = -L /usr/lib -L /usr/local/lib
SRCS=$(wildcard ./src/*.c)
OBJS=$(SRCS:.c=.o)

monocc: $(OBJS)
	$(CC) -c lib.c
	$(CC) -o ./src/monocc $(OBJS) $(CFLAGS)

$(OBJS): ./src/monocc.h

test: monocc
	./src/monocc -test
	./src/monocc -file ./test/test.c > tmp.s
	$(CC) -o tmp tmp.s lib.o
	./tmp

self: monocc
	rm -f ./src/monocc.o
	./src/monocc -file ./src/monocc.c > tmp.s
	$(CC) -c tmp.s
	cp -f tmp.o ./src/monocc.o
	$(CC) $(CFLAGS) -o tmp $(OBJS) $(LDLIBS)
	./tmp -file ./src/monocc.c

clean:
	rm -f ./src/monocc ./src/*.o *~ tmp*

.PHONY: test self clean
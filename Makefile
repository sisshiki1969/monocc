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
	./src/monocc -file ./test/test.c > tmp.s
	$(CC) -o tmp tmp.s lib.o
	./tmp

self: monocc
	rm -f ./self/* tmp*
	cp -f ./src/*.c ./self 
	cp -f ./src/*.h ./self 
	rm -f ./self/monocc.c
	./src/monocc -file ./src/monocc.c > ./self/monocc.s 
	$(CC) -c -o ./self/monocc.o ./self/monocc.s
	$(CC) $(CFLAGS) -o self_1  $(SRC2) ./self/monocc.o $(LDLIBS)
	./self_1 -file ./src/monocc.c > ./self/monocc2.s
	diff ./self/monocc.s ./self/monocc2.s

clean:
	rm -f ./src/monocc ./src/*.o *~ tmp*

.PHONY: test self clean
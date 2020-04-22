CFLAGS=-std=c11 -g -static
SRCS=$(wildcard ./src/*.c)
OBJS=$(SRCS:.c=.o)

monocc: $(OBJS)
	$(CC) -c lib.c
	$(CC) -o ./src/monocc $(OBJS) $(CFLAGS)

$(OBJS): ./src/monocc.h

test: monocc
	./src/monocc -test
	./src/monocc ./test/test.c
	$(CC) -o tmp ./test/test.s lib.o
	./tmp

self: clean monocc
	rm -f ./self/* ./self2/* tmp* ./src/*.o ./src/*.s
	bash self.sh self src
	bash self.sh self2 self
	diff ./self/monocc ./self2/monocc -s

clean:
	rm -f ./src/monocc ./src/*.o ./src/*.s ./test/*.s *~ tmp* self_* ./self/* ./self2/* a.out lib.o

.PHONY: test self clean
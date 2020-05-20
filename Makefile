CFLAGS=-std=c11 -g -static -pie -L /usr/lib -L /usr/local/lib -L /usr/include/
SRCS=$(wildcard ./src/*.c)
OBJS=$(SRCS:.c=.o)

monocc: $(OBJS)
	$(CC) -o ./src/monocc $(OBJS) $(CFLAGS)

$(OBJS): ./src/monocc.h

test: monocc
	gcc -o tmp test/test.c
	./tmp
	./src/monocc -test
	./src/monocc ./test/test.c
	gcc -static -o tmp ./test/test.s -L /usr/lib -L /usr/local/lib -L /usr/include/
	./tmp

self: clean monocc test
	bash self.sh self src
	bash self.sh self2 self
	bash self.sh self3 self2
	./self3/monocc ./test/test.c
	gcc -static -o tmp ./test/test.s -L /usr/lib -L /usr/local/lib -L /usr/include/
	./tmp

	diff ./self/monocc ./self2/monocc -s
	diff ./self2/monocc ./self3/monocc -s

clean:
	rm -f ./src/monocc ./src/*.o ./src/*.s ./test/*.s *~ tmp* self_* a.out lib.o
	rm -fr ./self ./self2 ./self3

.PHONY: test self clean
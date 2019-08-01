CFLAGS=-std=c11 -g -static
SRCS=$(wildcard ./src/*.c)
OBJS=$(SRCS:.c=.o)

monocc: $(OBJS)
	$(CC) -c lib.c
	$(CC) -o ./src/monocc $(OBJS) $(LDFLAGS)

$(OBJS): ./src/monocc.h

test: monocc
	./src/monocc -test
	./test.sh

clean:
	rm -f ./src/monocc ./src/*.o *~ tmp*

.PHONY: test clean
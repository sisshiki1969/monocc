CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

monocc: $(OBJS)
	$(CC) -o monocc $(OBJS) $(LDFLAGS)

$(OBJS): monocc.h

test: monocc
	./monocc -test
	./test.sh

clean:
	rm -f monocc *.o *~ tmp*

.PHONY: test clean
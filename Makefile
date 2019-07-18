CFLAGS=-std=c11 -g -static

monocc: monocc.c

test: monocc
	./test.sh

clean:
	rm -f monocc *.o *~ tmp*

.PHONY: test clean
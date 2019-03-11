CSC=		/usr/local/bin/csc5
CSCFLAGS+=	-static -L

all: c1 

c1: $@.o ccode.o 
	${CSC} ${CSCFLAGS} $@.o ccode.o -o $@

# This is an implicit rule?
#ccode.o: ccode.c
#	cc -c ccode.c

.SUFFIXES: .scm .o
.scm.o:
	${CSC} -c $<

clean:
	rm -f *.o *.so *.link *.import.scm *.out
	rm -f c1

.PHONY: clean all


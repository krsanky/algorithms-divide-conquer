#CSC=		csc
CSC=		/usr/local/bin/csc5

all: c1 

a1: $@.o 
	${CSC} ${CSCFLAGS} $@.o -o $@

cl1: $@.o
	${CSC} ${CSCFLAGS} $@.o -o $@

c1: $@.o ccode.o 
	${CSC} ${CSCFLAGS} $@.o ccode.o -o $@
# This is an implicit rule?
#ccode.o: ccode.c
#	$(CC) -c ccode.c

.SUFFIXES: .scm .o
.scm.o:
	${CSC} ${CSCFLAGS} -c $<

clean:
	rm -f *.o *.so *.link *.import.scm *.out
	rm -f c1 
	rm -f a1 
	rm -f cl1 

.PHONY: clean all


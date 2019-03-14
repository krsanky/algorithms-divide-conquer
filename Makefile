CSC=		/usr/local/bin/csc5
#CSCFLAGS+=	-static #doesnt work when importing extensions that are *.so
#CSCFLAGS+=	-L

all: c1 

a1: $@.o 
	${CSC} ${CSCFLAGS} $@.o -o $@

c1: $@.o ccode.o 
	${CSC} ${CSCFLAGS} $@.o ccode.o -o $@
# This is an implicit rule?
#ccode.o: ccode.c
#	cc -c ccode.c

.SUFFIXES: .scm .o
.scm.o:
	${CSC} ${CSCFLAGS} -c $<

clean:
	rm -f *.o *.so *.link *.import.scm *.out
	rm -f c1 
	rm -f a1 

.PHONY: clean all


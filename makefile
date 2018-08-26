CC = gcc
LM = -lm
OBJS = main.o DFT.o IDFT.o READ.o DECOMPRESS.o 

a.out : ${OBJS}
	${CC} ${OBJS} ${LM} 

main.o: main.c
	${CC} -c main.c ${LM} 

DFT.o : DFT.c
	${CC} -c DFT.c ${LM} 

IDFT.o : IDFT.c
	${CC} -c IDFT.c ${LM} 

READ.o : READ.c
	${CC} -c READ.c

DECOMPRESS.o : DECOMPRESS.c
	${CC} -c DECOMPRESS.c

clean:
	\rm a.out *.o *.dot

  
.PHONY = all clean

CC = gcc

LINKERFLAG = -lm

SRCS := ${wildcard *.c}
BINS := ${SRCS.%.c=%}

all: learnc01

learnc01: learnc01.o
	${CC} -o learnc01 learnc01.o

learnc01.o: learnc01.c
	${CC} -c learnc01.c

clean:
	rm learnc01.o learnc01

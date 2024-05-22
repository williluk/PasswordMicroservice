CC=cc --std=gnu99 -g -lpthread

all: tester.c passwordGenClient.o passwordGen.o
	$(CC) tester.c passwordGenClient.o -o tester
	$(CC) passwordGen.c -o passwordGen

passwordGenClient.o: passwordGenClient.c passwordGenClient.h
	$(CC) -c passwordGenClient.c 

run:
	./passwordGen 55555 &
	./tester 

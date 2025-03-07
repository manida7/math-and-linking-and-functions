all:    
	as -o math.o math.s
	gcc -O0 -z noexecstack -no-pie -o test.o -c test.c
	gcc -z noexecstack -o test math.o test.o

clean:
	rm -f *.o

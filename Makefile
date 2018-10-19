
CROSS=arm-none-eabi-
CC=$(CROSS)gcc
LD=$(CROSS)ld
OD=$(CROSS)objdump

all:
	$(CC) -c main.c
	$(CC) -c add.c
	$(CC) -c sub.c
	$(LD) -T ./link.ld add.o sub.o main.o
	$(OD) -D a.out > main.dis
clean:
	rm -f add.o sub.o main.o a.out

#Reference: http://www.devdrv.co.jp/linux/kernel26-makefile.htm
TARGET:= sushi.ko

all: ${TARGET}

sushi.ko: sushi.c
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 modules

clean:
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 clean

obj-m:= sushi.o

clean-files := *.o *.ko *.mod.[co] *~

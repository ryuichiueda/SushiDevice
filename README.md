# Sushi Device Driver for Linux

## Environment

- now only examined on Ubuntu Linux 14.03

## How to use

	$ git clone https://github.com/ryuichiueda/SushiDevice.git
	$ cd SushiDevice
	$ make
	$ sudo insmod sushi.ko
	$ sudo chmod 666 /dev/sushi0
	$ cat /dev/sushi0 | head
	🍣
	🍣
	🍣
	🍣
	🍣
	🍣
	🍣 🍺
	🍣
	🍣
	🍣

Enjoy.

# Advanced feature

## Multiple sushi supplement at each line

	$ echo 3 > /dev/sushi0 #choose 1-9
	$ cat /dev/sushi0 | head
	🍣🍣🍣
	🍣🍣🍣
	🍣 🍺🍣 🍺🍣 🍺
	🍣🍣🍣
	🍣🍣🍣
	🍣🍣🍣
	🍣🍣🍣
	🍣🍣🍣
	🍣🍣🍣
	🍣🍣🍣


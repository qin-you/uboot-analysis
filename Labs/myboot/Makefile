CC = arm-linux-gnueabihf
ASM = $(wildcard ./*.S)
OBJ = $(patsubst %.S,%.o,$(ASM))

ALL:myboot.16k

myboot.16k:myboot.bin mkv210
	./mkv210 myboot.bin myboot.16k

mkv210:mkv210_image.c
	gcc mkv210_image.c -o mkv210

myboot.bin:myboot
	$(CC)-objcopy -O binary myboot myboot.bin

myboot:$(OBJ)
	$(CC)-ld -Tmyboot.lds -o $@ $^

%.o:%.S
	$(CC)-gcc -c -o $@ $<

.PHONY:ALL clean

clean:
	rm -rf $(OBJ)
	rm -rf myboot.16k myboot.bin myboot




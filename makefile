BUILD_DIR = ./build
AS = nasm
CC = gcc
LD = ld
ASFLAG = -f elf
CFLAGS = -m32 -ffreestanding -nostdlib -mno-red-zone -Wall -c -W -Wstrict-prototypes -Wmissing-prototypes
LDFLAGS = -m elf_i386 -e main -Map $(BUILD_DIR)/kernel.map
OBJS =  $(BUILD_DIR)/main.o 
$(BUILD_DIR)/main.o: main.c
				$(CC) $(CFLAGS) $< -o $@
$(BUILD_DIR)/kernel.bin: $(OBJS)
				$(LD) $(LDFLAGS) $^ -o $@
.PHONY: mkdir clean all

mkdir: 
	if [[ ! -d $(BUILD_DIR) ]];then mkdir $(BUILD_DIR);fi

clean:
	cd $(BUILD_DIR) && rm -f ./*

build: $(BUILD_DIR)/kernel.bin

all: mkdir build

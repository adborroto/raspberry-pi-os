../gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc -mcpu=cortex-a7 -fpic -ffreestanding -c boot.S -o boot.o
../gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc -mcpu=cortex-a7 -fpic -ffreestanding -std=gnu99 -c kernel.c -o kernel.o -O2 -Wall -Wextra
../gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc -T linker.ld -o myos.elf -ffreestanding -O2 -nostdlib boot.o kernel.o
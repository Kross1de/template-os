# template-os
If you want create your OS you can use this "Hello, world" OS template in C++!

# To compile:
nasm -f elf32 boot.asm -o boot.o
i686-elf-g++ -ffreestanding -m32 -c kernel.cpp -o kernel.o
i686-elf-ld -T linker.ld boot.o kernel.o -o kernel.bin
# running
qemu-system-i386 -kernel kernel.bin

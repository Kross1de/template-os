# template-os
If you want create your OS you can use this "Hello, world" OS template in C++!

# To compile:
nasm -f elf32 boot.asm -o boot.o
i686-elf-g++ -ffreestanding -m32 -c kernel.cpp -o kernel.o
i686-elf-ld -T linker.ld boot.o kernel.o -o kernel.bin
# running
qemu-system-i386 -kernel kernel.bin

# screenshot
![image](https://github.com/user-attachments/assets/cc62b32a-d21f-4d97-8c0a-854f04dba8a1)


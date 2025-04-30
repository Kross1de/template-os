// Template kernel in C++
extern "C" void kernel_main(void* multiboot_info) {
    // VGA text mode buffer at 0xB8000
    volatile unsigned short* vga_buffer = (unsigned short*)0xB8000;

    // Clear sceen (80x25 text mode)
    for (int i = 0; i < 80 * 25; i++) {
        vga_buffer[i] = (0x09 << 8) | ' '; // on black
    }

    // Write "Hello, world!" to screen
    const char* helloworld = "Hello, world!";
    for (int i = 0; helloworld[i] != '\0'; i++) {
        vga_buffer[i] = (0x09 << 8) | helloworld [i]; 
    }

    // Infinite loop
    while (1) {
        asm("hlt");
    }
} 

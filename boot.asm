; Multiboot header and kernel entry point
section .multiboot
align 4
dd 0x1badb002   ; Multiboot magic number
dd 0x00000000   ; Flags
dd -(0x1badb002 + 0x00000000)

section .text
global start
extern kernel_main

start:
    cli                 ; Disable interrupts
    mov esp, 0x90000    ; Set up stack
    push ebx            ; Pass multiboot info to kernel
    call kernel_main    ; Call kernel main function
    jmp $               ; Infinite loop

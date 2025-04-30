/* Linker script for the kernel */
ENTRY(_start)

SECTIONS {
    . = 0x00100000; /* Load kernel at 1MB */

    .text : {
        *(.multiboot)
        *(.text)
    }

    .data : {
        *(.data)
    }

    .bss : {
        *(.bss)
    }
}

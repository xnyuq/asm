%include 'functions.asm'

section .bss
sinput: resb 255

section .text
global _start

_start:

    mov edx, 255 ; max number of byte from input string
    mov ecx, sinput ; reserved space/buffer to store input
    mov ebx, 0 ; stdin
    mov eax, 3 ; sys_read opcode
    int 80h

    mov eax, sinput
    call sprint

    call quit


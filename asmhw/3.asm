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

    mov ecx, 0
    mov edx, 0
nextchr:
    mov bl, [sinput+ecx] ; dereference sinput[ecx] into bl
    cmp bl, 0
    je terminate ; terminate if meet NULL
    inc ecx ; increase counter
    cmp bl, 61h ; cmp s[i] with 61h - 'a'
    jl nextchr 
    cmp bl, 7Ah ; cmp s[i] with 7Ah 'z'
    jg nextchr
    ; process lowercase letter
    sub bl, 32 ; convert letter from lowercase to uppercase
    mov [sinput+ecx-1], bl
    jmp nextchr

terminate:
    mov eax, sinput
    call sprint
    call quit



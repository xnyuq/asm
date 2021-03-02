%include 'functions.asm'
section .bss
sinput resb 4

section .text
global _start

sscan:
    mov eax, 3
    mov ebx, 2
    mov ecx, sinput
    mov edx, 4
    int 80h
    ret
toInt:
    xor ebx, ebx
    cmp byte [eax], 0
    jz fns
    mul ebx, 10
    add 
    inc eax

fns:
    mov eax, edx
    ret

_start:
    call sscan
    mov eax, sinput

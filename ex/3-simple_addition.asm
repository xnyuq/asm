%include 'functions.asm'
section .bss
num resb 20

section .text
global _start

sscan:
    mov eax, 3
    mov ebx, 2
    mov ecx, num
    mov edx, 20
    int 80h
    ret

fns:
    ret

iprint:
    xor ecx, ecx

divideLoop:
    mov edx, 0
    mov ebx, 10
    idiv ebx
    inc ecx
    push edx
    cmp eax, 0
    jz printLoop
    jmp divideLoop

printLoop:
    cmp ecx, 0
    jz fns
    dec ecx
    pop eax
    add eax, 0x30
    push eax
    mov eax, esp
    call sprint
    pop edx
    jmp printLoop

atoi:
    cmp byte [esi+ecx], '0'
    jl fns
    cmp byte [esi+ecx], '9'
    jg fns
    imul eax, 10
    xor ebx, ebx
    mov bl, byte [esi+ecx]
    sub bl, '0'
    add eax, ebx
    inc ecx
    jmp atoi

_start:
    ;input 1st number
    call sscan
    mov esi, num
    xor ecx, ecx
    xor eax, eax
    call atoi
    mov edx, eax
    push edx

    ;input 2nd number
    call sscan
    mov esi, num
    xor ecx, ecx
    xor eax, eax
    call atoi

    ;add and print
    pop edx
    add eax, edx
    call iprint


    ;newline
    mov eax, 0x0A
    push eax
    mov eax, esp
    call sprint
    pop eax

    call quit

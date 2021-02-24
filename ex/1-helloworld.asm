; helloworld in nasm
section .data
msg db 'Hello, World!', 0Ah

section .text
global _start

_start:

mov edx, 14; msg length
mov ecx, msg; msg address
mov ebx, 1; write to stdout
mov eax, 4; sys_write
int 80h

mov ebx, 0; exit code 0
mov eax, 1; sys_exit
int 80h

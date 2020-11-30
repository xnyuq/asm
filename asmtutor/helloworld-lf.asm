%include 'functions.asm'

section .data
msg1 db 'Hello, brave new world!', 0h
msg2 db 'This is how we recycle in NASM.', 0h

section .text
global _start

_start:

    mov eax, msg1
    call sprintlf

    mov eax, msg2
    call sprintlf

    call quit

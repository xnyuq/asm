%include 'functions.asm'

section .text
global _start

_start:

    pop ecx

nextArg:
    cmp ecx, 0h ; compare the argc with 0
    jz noMoreArgs
    dec ecx
    pop eax
    call sprintlf
    jmp nextArg

noMoreArgs:
    call quit

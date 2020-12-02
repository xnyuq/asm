%include 'functions.asm'

section .text
global _start

_start:
    mov ecx, 0

nextNum:
    cmp ecx, 10 ; check if cnt > 10
    jg exit ; if > 10 exit
    push ecx ; push cnt to stack
    add dword [esp], 48 ; add 48 to get the ascii char
    mov eax, esp ; get char address
    call sprintlf ; print char
    pop eax; clean the stack
    inc ecx ; increase the counter
    jmp nextNum ; loop
exit:
    call quit

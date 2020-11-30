slen:
    push ebx
    mov ebx, eax

nextchar:
    cmp byte [eax], 0
    jz finished
    inc eax
    jmp nextchar

finished:
    sub eax, ebx
    pop ebx
    ret

sprint:
    push edx
    push ecx
    push ebx
    push eax
    call slen
    
    mov edx, eax ; msg len
    pop eax ; return eax to orginal msg
    
    mov ecx, eax ; msg data
    mov ebx, 1 ; stdio
    mov eax, 4 ; sys_write opcode
    int 80h ; call system kernel

    pop ebx
    pop ecx
    pop edx
    ret

sprintlf:
    call sprint ; print the msg
    push eax ; reserve original msg
    mov eax, 0Ah
    push eax ; push eax onto stack to get address of \n through esp
    mov eax, esp
    call sprint
    pop eax ; eax now = 0Ah
    pop eax ; eax now = msg
    ret

quit:
    mov ebx, 0 ; 0 return code
    mov eax, 1 ; sys_exit
    int 80h
    ret


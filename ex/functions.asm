; slen: return string (pass through eax) length to eax 
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

; sprint: print string (arg0-eax: address of string) without linefeed
sprint:

    ; preserve registers initial values onto stack
    push edx
    push ecx
    push ebx
    push eax

    call slen ; strlen -> eax

    mov edx, eax ; strlen -> edx
    pop eax
    push eax
    mov ecx, eax
    mov eax, 4
    mov ebx, 1
    int 0x80 ; invoke linux system call

    ;restore and return
    pop eax
    pop ebx
    pop ecx
    pop edx
    ret

sprintlf:
    push eax
    call sprint
    mov eax, 0Ah
    push eax
    mov eax, esp
    call sprint
    pop eax
    pop eax
    ret

quit:
    mov eax, 1
    mov ebx, 0
    int 0x80
    ret



BITS 64

extern strchr

strpbrk:
    mov R12, RDI
    mov RDI, RSI
    xor RSI, RSI
    xor RAX, RAX
loop:
    mov SIL, BYTE [R12]
    cmp SIL, 0
    je return
    call strchr wrt ..plt
    cmp RAX, 0
    jne return_success
    inc R12
    jmp loop
return_success:
    mov RAX, R12
return:
    ret

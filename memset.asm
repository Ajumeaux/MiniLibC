BITS 64

memset:
    mov RAX, RDI
turn:
    cmp RDX, 0
    je return
    dec RDX
    mov [RDI + RDX], SIL
    jmp turn
return:
    ret
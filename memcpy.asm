BITS 64

memcpy:
    mov RAX, RDI
    cmp RDX, 0
    je return
    push RCX
    mov RCX, RDX
loop:
    dec RCX
    movsb
    cmp RCX, 0
    jne loop
    pop RCX
return:
    ret
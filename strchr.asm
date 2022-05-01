BITS 64

strchr:
    xor RAX, RAX
loop:
    CMP BYTE[RDI], 0
    JE fail
    CMP BYTE[RDI], CL
    JE return
    INC RDI
    JMP loop
return:
    mov RAX, RDI
    ret
fail:
    ret

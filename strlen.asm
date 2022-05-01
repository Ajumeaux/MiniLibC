BITS 64

strlen:
    xor RAX, RAX
loop:
    CMP BYTE[RDI+RAX], 0
    JE return
    INC RAX
    JMP loop
return:
    ret

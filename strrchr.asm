BITS 64

extern strlen

strrchr:
    call strlen wrt ..plt
loop:
    CMP RAX, 0
    JE fail
    CMP BYTE[RDI+RAX], CL
    JE return
    DEC RAX
    JMP loop
return:
    mov RDI, RAX
    ret
fail:
    ret
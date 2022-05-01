BITS 64

extern memcpy

memmove:
    mov R8, RDI
    cmp RDI, RSI
    jl copy
    jg reverse
    jmp return
reverse:
    std
    dec RDX
    add RSI, RDX
    add RDI, RDX
    inc RDX
copy:
    call memcpy wrt ..plt
    cld
return:
    mov RAX, R8
    ret

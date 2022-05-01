BITS 64

strstr:
    xor RCX, RCX
turn:
    cmp [RDI + RCX], BYTE 0
    je return_not_found
    cmp [RSI + RCX], BYTE 0
    je return_found
    mov AL, BYTE [RDI + RCX]
    cmp AL, BYTE [RSI + RCX]
    jne reset
    inc RCX
    jmp turn
reset:
    xor RCX, RCX
    inc RDI
    jmp turn
return_found:
    mov RAX, RDI
    ret
return_not_found:
    xor RAX, RAX
    ret

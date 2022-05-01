BITS 64

strcmp:
    xor RCX, RCX
    xor RAX, RAX
turn:
    mov AL, BYTE [RDI + RCX]
    sub AL, BYTE [RSI + RCX]
    cmp AL, 0
    jne return
    cmp BYTE [RDI + RCX], 0
    je return
    cmp BYTE [RSI + RCX], 0
    je return
    inc RCX
    jmp turn
return:
    movsx RAX, AL
    ret

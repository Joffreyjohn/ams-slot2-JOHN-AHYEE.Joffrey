    BITS 64
    global my_sous
    Section .text
my_sous:
    xor rax,rax
    xor rbx,rbx
    jmp Section1

Section1:
    cmp byte[rdi + rbx],0
    je empty
    cmp byte[rdi + rbx],sil
    je end
    inc rdi
    jmp Section1
empty:
    xor rax,rax
    ret
end:
    dec rdi
    ;; cmp byte[rdi],90
    ;; jle substrat
    ;; sub rdi,2
    movzx rax,byte[rdi]
    ret
    ;; substrat:
    ;; sub rdi,2
    ;; jmp end

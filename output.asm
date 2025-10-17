section .data
    fmt: .string "%%d\n"

section .text

global main 
main:
    mov $42, %edi
    lea fmt(%rip), %rsi
    xor %rax, %rax
    call printf
    mov $0, %rax
    ret


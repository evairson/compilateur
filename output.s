.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global main 
 main:
   push $0
   pop %rax
   ret


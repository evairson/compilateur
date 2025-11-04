.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global main 
 main:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   push %rdi
   pop %rax
   mov %rax, -8(%rbp)
   push $0
  pop %rax
    leave
   ret


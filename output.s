.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global sw 
 sw:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   push $0
   pop %rax
   mov %rax, -8(%rbp)
   mov 16(%rbp), %rax
   push %rax
   pop %rax
   mov (%rax), %rax
   push %rax
   pop %rax
   mov %rax, -8(%rbp)
   mov 24(%rbp), %rax
   push %rax
   pop %rax
   mov (%rax), %rax
   push %rax
   mov 16(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   mov %rax, (%rbx)
   mov -8(%rbp), %rax
   push %rax
   mov 24(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   mov %rax, (%rbx)
   push $0
  pop %rax
    leave
   ret

.global f 
 f:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   push $0
   pop %rax
   mov %rax, -8(%rbp)
   push $42
   pop %rax
   mov %rax, -8(%rbp)
   push $0
   pop %rax
   mov %rax, -16(%rbp)
   push $100
   pop %rax
   mov %rax, -16(%rbp)
   lea -16(%rbp), %rax
   push %rax
   lea -8(%rbp), %rax
   push %rax
   call sw
   add $16, %rsp
   push %rax
   mov -16(%rbp), %rax
   push %rax
  pop %rax
    leave
   ret

.global main 
 main:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   push $0
   pop %rax
   mov %rax, -8(%rbp)
   push $0
   pop %rax
   mov %rax, -16(%rbp)
   push $0
   pop %rax
   mov %rax, -24(%rbp)
   push $1
   pop %rax
   mov %rax, -8(%rbp)
   push $2
   pop %rax
   mov %rax, -16(%rbp)
   push $3
   pop %rax
   mov %rax, -24(%rbp)
   push $0
   pop %rax
   mov %rax, -32(%rbp)
   push $0
   pop %rax
   mov %rax, -32(%rbp)
   mov -8(%rbp), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   and $-16, %rsp 
    xor %rax, %rax
   call printf
   push %rax
   mov -16(%rbp), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   and $-16, %rsp 
    xor %rax, %rax
   call printf
   push %rax
   mov -24(%rbp), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   and $-16, %rsp 
    xor %rax, %rax
   call printf
   push %rax
   lea -16(%rbp), %rax
   push %rax
   lea -8(%rbp), %rax
   push %rax
   call sw
   add $16, %rsp
   push %rax
   lea -24(%rbp), %rax
   push %rax
   lea -16(%rbp), %rax
   push %rax
   call sw
   add $16, %rsp
   push %rax
   mov -32(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, -32(%rbp)
   call f
   add $0, %rsp
   push %rax
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   and $-16, %rsp 
    xor %rax, %rax
   call printf
   push %rax
   push $0
  pop %rax
    leave
   ret


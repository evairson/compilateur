.extern printf
.extern scanf
.extern malloc
.section .data
    fmt: .string "%d\n"

.section .rodata
.section .text
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
   push $8
   push $40
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rdi
   call malloc
   push %rax
   pop %rax
   mov %rax, -16(%rbp)
   push $0
   pop %rax
   mov %rax, -8(%rbp)
   push $0
   mov -16(%rbp), %rax
   push %rax
   push $0
   push $8
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $0
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   mov %rax, (%rbx)
   push $1
   mov -16(%rbp), %rax
   push %rax
   push $1
   push $8
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $0
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   mov %rax, (%rbx)
start_while_0:
   mov -8(%rbp), %rax
   push %rax
   push $30
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   setl %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je end_while_0
   mov -16(%rbp), %rax
   push %rax
   mov -8(%rbp), %rax
   push %rax
   push $8
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov (%rax), %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   mov -8(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $8
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $0
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov (%rax), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   mov -8(%rbp), %rax
   push %rax
   push $2
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $8
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   mov %rax, (%rbx)
   mov -16(%rbp), %rax
   push %rax
   mov -8(%rbp), %rax
   push %rax
   push $8
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov (%rax), %rax
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
   mov -8(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, -8(%rbp)
   jmp start_while_0
end_while_0:
   push $0
  pop %rax
    leave
   ret


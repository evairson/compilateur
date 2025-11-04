.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global f 
 f:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   push %rdi
   pop %rax
   mov %rax, -8(%rbp)
   push %rsi
   pop %rax
   mov %rax, -16(%rbp)
   mov -8(%rbp), %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   setl %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_0
   push $1
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   jmp end_if_0
else_0:
   push $0
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
end_if_0:
   mov -8(%rbp), %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   setg %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_1
   push $1
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   jmp end_if_1
else_1:
   push $0
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
end_if_1:
   mov -8(%rbp), %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   setge %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_2
   push $1
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   jmp end_if_2
else_2:
   push $0
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
end_if_2:
   mov -8(%rbp), %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   setle %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_3
   push $1
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   jmp end_if_3
else_3:
   push $0
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
end_if_3:
   mov -8(%rbp), %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   sete %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_4
   push $1
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   jmp end_if_4
else_4:
   push $0
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
end_if_4:
   mov -8(%rbp), %rax
   push %rax
   mov -16(%rbp), %rax
   push %rax
   push $5
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   setge %al
   movzb %al, %rax
   push %rax
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_5
   push $1
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   jmp end_if_5
else_5:
   push $0
   pop %rax
   mov %rax, %rsi
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
end_if_5:
   push $0
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
   mov %rax, %rdi
   push $0
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $1
   pop %rax
   mov %rax, %rdi
   push $0
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $2
   pop %rax
   mov %rax, %rdi
   push $0
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $3
   pop %rax
   mov %rax, %rdi
   push $0
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $4
   pop %rax
   mov %rax, %rdi
   push $0
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $5
   pop %rax
   mov %rax, %rdi
   push $0
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $0
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $1
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $2
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $3
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $4
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $5
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $0
   pop %rax
   mov %rax, %rdi
   push $5
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $1
   pop %rax
   mov %rax, %rdi
   push $5
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $2
   pop %rax
   mov %rax, %rdi
   push $5
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $3
   pop %rax
   mov %rax, %rdi
   push $5
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $4
   pop %rax
   mov %rax, %rdi
   push $5
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $5
   pop %rax
   mov %rax, %rdi
   push $5
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push $0
  pop %rax
    leave
   ret


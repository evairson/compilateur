.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global fib 
 fib:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   mov 16(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   setle %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_0
   mov 16(%rbp), %rax
   push %rax
  pop %rax
    leave
   ret
   jmp end_if_0
else_0:
end_if_0:
   mov 16(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   call fib
   add $8, %rsp
   push %rax
   mov 16(%rbp), %rax
   push %rax
   push $2
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   call fib
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
  pop %rax
    leave
   ret

.global syr 
 syr:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   mov 16(%rbp), %rax
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
   mov 16(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   sete %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_1
   push $0
  pop %rax
    leave
   ret
   jmp end_if_1
else_1:
end_if_1:
   mov 16(%rbp), %rax
   push %rax
   push $2
   pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rdx
   pop %rax
   cmp $0, %rax
   je else_2
   push $3
   mov 16(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   call syr
   add $8, %rsp
   push %rax
  pop %rax
    leave
   ret
   jmp end_if_2
else_2:
end_if_2:
   mov 16(%rbp), %rax
   push %rax
   push $2
   pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   call syr
   add $8, %rsp
   push %rax
  pop %rax
    leave
   ret

.global ack 
 ack:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   mov 16(%rbp), %rax
   push %rax
   push $0
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   sete %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_3
   mov 24(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
  pop %rax
    leave
   ret
   jmp end_if_3
else_3:
end_if_3:
   mov 24(%rbp), %rax
   push %rax
   push $0
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
   mov 16(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   call ack
   add $16, %rsp
   push %rax
  pop %rax
    leave
   ret
   jmp end_if_4
else_4:
end_if_4:
   mov 24(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   mov 16(%rbp), %rax
   push %rax
   call ack
   add $16, %rsp
   push %rax
   mov 16(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   call ack
   add $16, %rsp
   push %rax
  pop %rax
    leave
   ret

.global fois 
 fois:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   mov 16(%rbp), %rax
   push %rax
   push $0
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   sete %al
   movzb %al, %rax
   push %rax
   mov 24(%rbp), %rax
   push %rax
   push $0
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   sete %al
   movzb %al, %rax
   push %rax
   pop %rbx
   pop %rax
   cmp $0, %rax
   setne %al
   movzbq %al, %rax
   cmp $0, %rbx
   setne %bl
   or %bl, %al
   movzbq %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_5
   push $0
  pop %rax
    leave
   ret
   jmp end_if_5
else_5:
end_if_5:
   mov 16(%rbp), %rax
   push %rax
   mov 24(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov 24(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   mov 16(%rbp), %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   call fois
   add $16, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
  pop %rax
    leave
   ret

.global llf 
 llf:
    push %rbp
     mov %rsp, %rbp
    sub $64, %rsp
   mov 16(%rbp), %rax
   push %rax
   push $0
   pop %rbx
   pop %rax
   cmp %rbx, %rax
   sete %al
   movzb %al, %rax
   push %rax
   pop %rax
   cmp $0, %rax
   je else_6
   push $42
  pop %rax
    leave
   ret
   jmp end_if_6
else_6:
end_if_6:
   mov 16(%rbp), %rax
   push %rax
   push $0
   mov 184(%rbp), %rax
   push %rax
   mov 176(%rbp), %rax
   push %rax
   mov 168(%rbp), %rax
   push %rax
   mov 160(%rbp), %rax
   push %rax
   mov 152(%rbp), %rax
   push %rax
   mov 144(%rbp), %rax
   push %rax
   mov 136(%rbp), %rax
   push %rax
   mov 128(%rbp), %rax
   push %rax
   mov 120(%rbp), %rax
   push %rax
   mov 112(%rbp), %rax
   push %rax
   mov 104(%rbp), %rax
   push %rax
   mov 96(%rbp), %rax
   push %rax
   mov 88(%rbp), %rax
   push %rax
   mov 80(%rbp), %rax
   push %rax
   mov 72(%rbp), %rax
   push %rax
   mov 64(%rbp), %rax
   push %rax
   mov 56(%rbp), %rax
   push %rax
   mov 48(%rbp), %rax
   push %rax
   mov 40(%rbp), %rax
   push %rax
   mov 32(%rbp), %rax
   push %rax
   mov 24(%rbp), %rax
   push %rax
   call llf
   add $176, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
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
   push $10
   call fib
   add $8, %rsp
   push %rax
   pop %rax
   mov %rax, -8(%rbp)
   mov -8(%rbp), %rax
   push %rax
   call syr
   add $8, %rsp
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
   push $10
   push $3
   call ack
   add $16, %rsp
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
   push $205
   push $402
   call fois
   add $16, %rsp
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
   push $22
   push $21
   push $20
   push $19
   push $18
   push $17
   push $16
   push $15
   push $14
   push $13
   push $12
   push $11
   push $10
   push $9
   push $8
   push $7
   push $6
   push $5
   push $4
   push $3
   push $2
   push $1
   call llf
   add $176, %rsp
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


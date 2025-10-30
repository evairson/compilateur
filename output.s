.extern printf
.section .data
    fmt: .string "%d\n"
    a: .quad 0
    b: .quad 0
    c: .quad 0
.section .text
.global main 
 main:
   push $1
   pop %rax
   mov %rax, a(%rip)
   push $1
   pop %rax
   mov %rax, b(%rip)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, c(%rip)
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, b(%rip)
   mov c(%rip), %rax
   push %rax
   pop %rax
   mov %rax, a(%rip)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, c(%rip)
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, b(%rip)
   mov c(%rip), %rax
   push %rax
   pop %rax
   mov %rax, a(%rip)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, c(%rip)
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, b(%rip)
   mov c(%rip), %rax
   push %rax
   pop %rax
   mov %rax, a(%rip)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, c(%rip)
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, b(%rip)
   mov c(%rip), %rax
   push %rax
   pop %rax
   mov %rax, a(%rip)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, c(%rip)
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, b(%rip)
   mov c(%rip), %rax
   push %rax
   pop %rax
   mov %rax, a(%rip)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov b(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov a(%rip), %rax
   push %rax
   mov b(%rip), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $12
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   push $0
   pop %rax
   ret


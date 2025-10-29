.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global main 
 main:
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $2
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $42
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $6
   push $7
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $5
   push $1
   push $2
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $2
   push $3
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $4
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $1
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $2
   push $1
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $3
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $2
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $3
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $4
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $5
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $6
   push $14
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   push $2
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $591321
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $591321
   push $3
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $591321
   push $3
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   push $53
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $591321
   push $3
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   push $53
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   push $3719
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $27
   push $591321
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $3
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   push $53
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   push $3719
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $6
   push $7
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $5
   push $1
   push $2
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $2
   push $3
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $4
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $1
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $2
   push $1
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $3
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $2
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $3
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $4
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   push $5
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $1
   push $2
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
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $1
   push $2
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $3
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $1
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   push $2
   push $3
    pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $4
   push $2
    pop %rbx
   pop %rax
   xor %rdx, %rdx
   idiv %rbx
   push %rax
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $53
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   push $2
    pop %rbx
   pop %rax
   sub %rbx, %rax
   push %rax
   push $3
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %eax, %eax 
   call printf
   push $0
   pop %rax
   ret


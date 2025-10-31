.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global t 
 t:
   push $3
   pop %rax
   ret

.global f 
 f:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov -0(%rbp), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   push $0
   pop %rax
   mov %rax, --64(%rbp)
   push $0
   pop %rax
   mov %rax, --128(%rbp)
   push $0
   pop %rax
   mov %rax, --192(%rbp)
   mov -0(%rbp), %rax
   push %rax
   pop %rax
   mov %rax, --64(%rbp)
   mov -0(%rbp), %rax
   push %rax
   mov -0(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, --128(%rbp)
   mov -0(%rbp), %rax
   push %rax
   mov --128(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, --192(%rbp)
   mov --192(%rbp), %rax
   push %rax
   mov -0(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call t
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   ret

.global g 
 g:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   push %rsi
   pop %rax
   mov %rax, --64(%rbp)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov -0(%rbp), %rax
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   push $0
   pop %rax
   mov %rax, --128(%rbp)
   push $0
   pop %rax
   mov %rax, --192(%rbp)
   push $1
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, --128(%rbp)
   mov --64(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push %rax
   push $2
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   mov %rax, --192(%rbp)
   mov --128(%rbp), %rax
   push %rax
   mov --192(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov --64(%rbp), %rax
   push %rax
   push $4
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov -0(%rbp), %rax
   push %rax
   push $9
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov -0(%rbp), %rax
   push %rax
   mov --64(%rbp), %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call f
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   ret

.global un 
 un:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   mov -0(%rbp), %rax
   push %rax
   pop %rax
   ret

.global deux 
 deux:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   ret

.global trois 
 trois:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call deux
   add $8, %rsp
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   ret

.global quatre 
 quatre:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call deux
   add $8, %rsp
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call deux
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rax
   ret

.global cinq 
 cinq:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call quatre
   add $8, %rsp
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   mov -0(%rbp), %rax
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
   push %rax
   pop %rbx
   pop %rax
   imul %rbx, %rax
   push %rax
   pop %rbx
   pop %rax
   add %rbx, %rax
   push %rax
   pop %rax
   ret

.global pargs 
 pargs:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   push %rsi
   pop %rax
   mov %rax, --64(%rbp)
   push %rdx
   pop %rax
   mov %rax, --128(%rbp)
   push %rcx
   pop %rax
   mov %rax, --192(%rbp)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   mov -0(%rbp), %rax
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
   mov --64(%rbp), %rax
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
   mov --128(%rbp), %rax
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
   mov --192(%rbp), %rax
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

.global main 
 main:
   push %rdi
   pop %rax
   mov %rax, -0(%rbp)
   lea fmt(%rip), %rax
   push %rax
   pop %rax
   mov %rax, %rdi
   push $1
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
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
   push $2
   xor %rax, %rax
   sub $8, %rsp
   call deux
   add $8, %rsp
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
   push $3
   xor %rax, %rax
   sub $8, %rsp
   call trois
   add $8, %rsp
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
   push $4
   xor %rax, %rax
   sub $8, %rsp
   call quatre
   add $8, %rsp
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
   push $5
   xor %rax, %rax
   sub $8, %rsp
   call cinq
   add $8, %rsp
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
   push $2
   xor %rax, %rax
   sub $8, %rsp
   call cinq
   add $8, %rsp
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call quatre
   add $8, %rsp
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call trois
   add $8, %rsp
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call deux
   add $8, %rsp
   push %rax
   xor %rax, %rax
   sub $8, %rsp
   call un
   add $8, %rsp
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
   push $1
   push $11
   xor %rax, %rax
   sub $8, %rsp
   call g
   add $8, %rsp
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
   push $2
   push $12
   xor %rax, %rax
   sub $8, %rsp
   call g
   add $8, %rsp
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
   push $3
   push $13
   xor %rax, %rax
   sub $8, %rsp
   call g
   add $8, %rsp
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
   push $4
   push $14
   xor %rax, %rax
   sub $8, %rsp
   call g
   add $8, %rsp
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
   push $5
   push $15
   xor %rax, %rax
   sub $8, %rsp
   call g
   add $8, %rsp
   push %rax
   pop %rax
   mov %rax, %rsi
   xor %rax, %rax
   sub $8, %rsp
   call printf
   add $8, %rsp
   push $0
   pop %rax
   mov %rax, %rdi
   push $1
   pop %rax
   mov %rax, %rsi
   push $2
   pop %rax
   mov %rax, %rdx
   push $3
   pop %rax
   mov %rax, %rcx
   xor %rax, %rax
   sub $8, %rsp
   call pargs
   add $8, %rsp
   push $1
   pop %rax
   mov %rax, %rdi
   push $2
   pop %rax
   mov %rax, %rsi
   push $3
   pop %rax
   mov %rax, %rdx
   push $0
   pop %rax
   mov %rax, %rcx
   xor %rax, %rax
   sub $8, %rsp
   call pargs
   add $8, %rsp
   push $2
   pop %rax
   mov %rax, %rdi
   push $3
   pop %rax
   mov %rax, %rsi
   push $0
   pop %rax
   mov %rax, %rdx
   push $1
   pop %rax
   mov %rax, %rcx
   xor %rax, %rax
   sub $8, %rsp
   call pargs
   add $8, %rsp
   push $3
   pop %rax
   mov %rax, %rdi
   push $0
   pop %rax
   mov %rax, %rsi
   push $1
   pop %rax
   mov %rax, %rdx
   push $2
   pop %rax
   mov %rax, %rcx
   xor %rax, %rax
   sub $8, %rsp
   call pargs
   add $8, %rsp
   push $42
   pop %rax
   mov %rax, %rdi
   push $17
   pop %rax
   mov %rax, %rsi
   push $283
   pop %rax
   mov %rax, %rdx
   push $19923
   pop %rax
   mov %rax, %rcx
   xor %rax, %rax
   sub $8, %rsp
   call pargs
   add $8, %rsp
   push $0
   pop %rax
   ret


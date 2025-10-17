.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global main 
 main:
   lea fmt(%rip), %rax
   mov %rax,  %rdi
   mov $4, %eax
   mov %eax,  %esi
 xor %eax, %eax 
   call printf
   mov $2, %eax
   ret


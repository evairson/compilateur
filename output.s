.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global main 
 main:
   lea fmt(%rip), %rax
   mov %rax, %rdi
   mov $42, %eax
   mov %rax, %esi
 xor %eax, %eax 
   call printf
   mov $0, %eax
   ret


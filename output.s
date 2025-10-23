.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global main 
 main:
   mov $0, %eax
   ret


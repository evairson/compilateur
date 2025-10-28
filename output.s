.extern printf
.section .data
    fmt: .string "%d\n"
.section .text
.global main 
 main:
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -16(%rbp)
   push $1
   mov %rax, -8(%rbp)
   xor %eax, %eax 
   call printf
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -32(%rbp)
   push $2
   mov %rax, -24(%rbp)
   xor %eax, %eax 
   call printf
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -48(%rbp)
   push $3
   mov %rax, -40(%rbp)
   xor %eax, %eax 
   call printf
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -64(%rbp)
   push $42
   mov %rax, -56(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -72(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -88(%rbp)
   mov -72(%rbp), %rax
   push %rax
   mov %rax, -80(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -96(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -104(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -120(%rbp)
   mov -104(%rbp), %rax
   push %rax
   mov %rax, -112(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -128(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -136(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -144(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -160(%rbp)
   mov -144(%rbp), %rax
   push %rax
   mov %rax, -152(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -168(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -176(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -184(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -192(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -200(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -208(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -216(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -224(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -240(%rbp)
   mov -224(%rbp), %rax
   push %rax
   mov %rax, -232(%rbp)
   xor %eax, %eax 
   call printf
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -248(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -256(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -264(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -280(%rbp)
   mov -264(%rbp), %rax
   push %rax
   mov %rax, -272(%rbp)
   xor %eax, %eax 
   call printf
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -296(%rbp)
   push $591321
   mov %rax, -288(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -304(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -320(%rbp)
   mov -304(%rbp), %rax
   push %rax
   mov %rax, -312(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -328(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -336(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -352(%rbp)
   mov -336(%rbp), %rax
   push %rax
   mov %rax, -344(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -360(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -368(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -376(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -392(%rbp)
   mov -376(%rbp), %rax
   push %rax
   mov %rax, -384(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -400(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -408(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -416(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -424(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -440(%rbp)
   mov -424(%rbp), %rax
   push %rax
   mov %rax, -432(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -448(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -464(%rbp)
   mov -448(%rbp), %rax
   push %rax
   mov %rax, -456(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -472(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -480(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -496(%rbp)
   mov -480(%rbp), %rax
   push %rax
   mov %rax, -488(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -504(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -512(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -520(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -536(%rbp)
   mov -520(%rbp), %rax
   push %rax
   mov %rax, -528(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -544(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -552(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -560(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -568(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -576(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -584(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -592(%rbp)
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -600(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -616(%rbp)
   mov -600(%rbp), %rax
   push %rax
   mov %rax, -608(%rbp)
   xor %eax, %eax 
   call printf
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -624(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -640(%rbp)
   mov -624(%rbp), %rax
   push %rax
   mov %rax, -632(%rbp)
   xor %eax, %eax 
   call printf
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -648(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -656(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -672(%rbp)
   mov -656(%rbp), %rax
   push %rax
   mov %rax, -664(%rbp)
   xor %eax, %eax 
   call printf
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -680(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -688(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -696(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -712(%rbp)
   mov -696(%rbp), %rax
   push %rax
   mov %rax, -704(%rbp)
   xor %eax, %eax 
   call printf
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -720(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -728(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -736(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -744(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -752(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -760(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -768(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -776(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -792(%rbp)
   mov -776(%rbp), %rax
   push %rax
   mov %rax, -784(%rbp)
   xor %eax, %eax 
   call printf
    pop %%rbx
   pop %%rax
   imul %%rbx, %%rax
   push %%rax
   mov %rax, -800(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -808(%rbp)
    pop %%rbx
   pop %%rax
   xor %%rdx, %%rdx
   idiv %%rbx
   push %%rax
   mov %rax, -816(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -824(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -832(%rbp)
    pop %%rbx
   pop %%rax
   sub %%rbx, %%rax
   push %%rax
   mov %rax, -840(%rbp)
   pop %%rbx
   pop %%rax
   add %%rbx, %%rax
   push %%rax
   mov %rax, -848(%rbp)
   mov fmt(%rip), %rax
   push %rax
   mov %rax, -864(%rbp)
   mov -848(%rbp), %rax
   push %rax
   mov %rax, -856(%rbp)
   xor %eax, %eax 
   call printf
   push $0
   ret


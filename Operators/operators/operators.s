.section .rodata

    assembly_statement:
    .string "This code is written in assembly by Abhi"
    
    msg_rs:
    .string "rs : %d\n"

    msg_rs_m:
    .string "rs_m : %d\n"

.section .data

    n1:
    .int 25

    n2:
    .int -4

    m1:
    .int 25

    m2:
    .int 4

.section .bss

    .comm rs, 4, 4

    .comm rs_m, 4, 4

.section .text
.global main
main:

    #Prologue
    pushl   %ebp
    movl    %esp, %ebp

    #Assembly statemnt
    pushl   $assembly_statement
    call    puts
    addl    $4, %esp

    #addition
    movl    n1, %eax
    movl    n2, %ebx
    addl    %ebx, %eax
    movl    %eax, rs

    pushl   rs
    pushl   $msg_rs
    call    printf
    addl    $8, %esp

    #subtraction
    movl    n1, %eax
    movl    n2, %ebx
    subl    %ebx, %eax
    movl    %eax, rs

    pushl   rs
    pushl   $msg_rs
    call    printf
    addl    $8, %esp

    #signed multiplication
    movl    n1, %eax
    movl    n2, %ebx
    movl    $0, %edx    #Because upper 32 bit store in edx and lower 32 bit in eax
    imull   %ebx
    movl    %eax, rs    #Here i know the answer is not more than 32 bit so no need to transfer upper 32 bit

    pushl   rs
    pushl   $msg_rs
    call    printf
    addl    $8, %esp

    #unsigned multiplication
    movl    m1, %eax
    movl    m2, %ebx
    movl    $0, %edx    #Because upper 32 bit store in edx and lower 32 bit in eax
    mull    %ebx
    movl    %eax, rs_m    #Here i know that answer is not more than 32 bit so no need to transfer upper 32 bit

    pushl rs_m
    pushl $msg_rs_m
    call printf
    addl $8, %esp
    
    #signed Division
    movl    n1, %eax
    movl    n2, %ebx
    movl    $0, %edx
    idivl    %ebx
    movl    %eax, rs
    movl    %edx,rs_m

    pushl   rs
    pushl   $msg_rs
    call    printf
    addl    $8, %esp

    pushl   rs_m
    pushl   $msg_rs_m
    call    printf
    addl    $8, %esp
    
    #unsigned Division
    movl    m1,%eax
    movl    m2,%ebx
    movl    $0,%edx
    divl    %ebx
    movl    %eax, rs
    movl    %edx, rs_m

    pushl   rs
    pushl   $msg_rs
    call    printf
    addl    $8, %esp

    pushl   rs_m
    pushl   $msg_rs
    call    printf
    addl    $8, %esp

    #Epilogue for main
    pushl $0
    call exit



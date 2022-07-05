.section .rodata

    msg:
    .string "rs : %d\n"

    assembly_statement:
    .string "This code is written in assembly by Abhi"

.section .data

    n1:
    .int 25

    n2:
    .int 4

.section .bss

    .comm rs, 4, 4

.section .text
.global main
main:

    #prologue
    pushl   %ebp
    movl    %esp, %ebp

    movl    n1, %eax
    movl    n2, %ecx

    movl    $0, %edx
    imull   %ecx
    movl    %eax, rs

    pushl   rs
    pushl   $msg
    call    printf
    addl    $8, %esp

    pushl   $assembly_statement
    call    puts
    addl    $4, %esp

    pushl   $0
    call    exit



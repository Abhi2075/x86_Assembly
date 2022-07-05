.section .rodata

    msg:
    .string "rs : %u\n"

    assembly_statement:
    .string "This assembly code is written by Abhi"

.section .data

    n1:
    .int    50;

    n2:
    .int    4;

.section .bss

    .comm rs, 4, 4

.section .text
.global main
main:

    #Prologue
    pushl   %ebp
    movl    %esp, %ebp

    #rs = n1 * n2;
    movl    n1, %eax
    movl    n2, %ebx

    movl    $0, %edx    #Here i make sure there is no data in edx register

    mull    %ebx

    movl    %eax, rs    #Here i know that result is not longr than 32 bit so only use eax register

    pushl   rs
    pushl   $msg
    call    printf
    addl    $8, %esp

    pushl   $assembly_statement
    call    puts
    addl    $4, %esp

    #epilogue for main
    pushl   $0
    call    exit
    


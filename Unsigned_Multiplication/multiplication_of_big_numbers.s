.section .rodata
    
    msg:
    .string "rs = %llu\n"

    assembly_statement:
    .string "This code is written in assembly by Abhi"

.section .data
    
    n1:
    .int 0x01020304

    n2:
    .int 0x0a0b0c0d

.section .bss

    .comm   rs, 4, 4

.section .text
.global main
main:

    #Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_statement
    call    puts
    addl    $4, %esp

    movl    n1, %eax
    movl    n2, %ebx
    movl    $0, %edx
    mull    %ebx
    movl    %eax, rs
    movl    %edx, rs + 4

    pushl   rs + 4
    pushl   rs
    pushl   $msg
    call    printf
    addl    $8, %esp

    #Epilogue for main
    pushl   $0
    call    exit



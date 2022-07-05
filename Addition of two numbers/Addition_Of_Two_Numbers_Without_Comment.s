.section .rodata

    msg:
    .string     "rs : %d\n"

    assembly_statement:
    .string     "This is assembly"


.section .data
    
    n1:
    .int 20

    n2:
    .int 30


.section .bss

    .comm rs,4 ,4


.section .text
.Global main
main:

    pushl   %ebp
    movl    %esp, %ebp

    movl    n1, %eax
    movl    n2, %edx
    addl    %edx, %eax
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


.section .rodata

    assembly_tag:
    .string "This assembly program is written by Abhi"

    start:
    .string "This is start of a program"

    end:
    .string "This is end of a program"

    if_condition_valid:
    .string "This statement is printed because AS_n1 is  grater then AS_n2"

.section .data

    AS_n1:
    .int 10

    AS_n2:
    .int 5

.section .text
.global main
main:

    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   $start
    call    puts
    addl    $4, %esp

    movl    AS_n1, %eax
    movl    AS_n2, %ebx

    cmpl    %ebx, %eax
    jle     if_condition_not_valid

    pushl   $if_condition_valid
    call    puts
    addl    $4,%esp

if_condition_not_valid:
    pushl   $end
    call    puts
    addl    $4, %esp

    # Epilogue for main
    pushl   $0
    call    exit


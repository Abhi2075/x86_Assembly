.section .rodata

    assembly_tag:
    .string "This assembly code is written by Abhi"

    start:
    .string "Start of program"

    end :
    .string "End of Program"

    input_number_1 :
    .string "Enter number 1"

    scan_number_string :
    .string "%d"

    input_number_2 :
    .string "Enter number 2"

    result_string :
    .string "sum : %d\n"

.section .bss

    .comm   AS_n1, 4, 4
    .comm   AS_n2, 4, 4
    .comm   AS_sum, 4, 4


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

    pushl   $input_number_1
    call    puts
    addl    $4, %esp

    pushl   $AS_n1
    pushl   $scan_number_string
    call    scanf
    addl    $8, %esp

    pushl   $input_number_2
    call    puts
    addl    $4, %esp

    pushl   $AS_n2
    pushl   $scan_number_string
    call    scanf
    addl    $8, %esp

    movl    AS_n1, %eax
    movl    AS_n2, %ebx

    cmpl    %ebx, %eax

    jle     else_block

    movl    AS_n1, %eax
    movl    AS_n2, %ebx
    subl    %ebx, %eax
    movl    %eax, AS_sum

    jmp     after_else

else_block :
    
    movl    AS_n1, %eax
    movl    AS_n2, %ebx
    addl    %ebx, %eax
    movl    %eax, AS_sum

after_else :

    pushl   AS_sum
    pushl   $result_string
    call    printf
    addl    $8, %esp

    pushl   $end
    call    puts
    addl    $4, %esp

    # Epilogue for main

    pushl   $0
    call    exit


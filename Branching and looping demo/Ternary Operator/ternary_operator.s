.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    number_notice :
    .string "Enter a number : "

    scan_string :
    .string "%d"

    result_string :
    .string "Result : %d\n"

.section .bss

    .comm   AS_n, 4, 4
    .comm   AS_rs, 4, 4

.section .text
.global  main
main  :

    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   $number_notice
    call    puts
    addl    $4, %esp

    pushl   $AS_n
    pushl   $scan_string 
    call    scanf
    addl    $8, %esp

    movl    AS_n, %eax
    cmpl    $0, %eax
    jle     else_block

    movl    AS_n, %eax
    addl    $5, %eax
    movl    %eax, AS_rs
    jmp     after_else_block

else_block :
    movl    AS_n, %eax
    movl    $-1, %ebx
    imull   %ebx
    addl    $5, %eax
    movl    %eax, AS_rs

after_else_block :
    pushl   AS_rs
    pushl   $result_string
    call    printf
    addl    $8, %esp

    # Epilogue for main
    pushl   $0
    call    exit
    

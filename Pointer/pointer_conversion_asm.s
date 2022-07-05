.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    print_string :
    .string "AS_n_copy : %d\n"

.section .data

    AS_n :
    .int 10

.section .bss

    .comm   AS_n_copy, 4, 4
    .comm   AS_p, 4, 4

.section .text
.global main
main :
    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    # AS_p = &AS_n;
    movl    $AS_n, %eax
    movl    %eax, AS_p

    #AS_n_copy = *AS_p
    movl    AS_p, %eax
    movl    (%eax), %ebx
    movl    %ebx, AS_n_copy

    # Printf
    pushl   AS_n_copy
    pushl   $print_string
    call    printf
    addl    $8, %esp

    # *AS_p = 200
    movl    AS_p, %eax
    movl    $200, %ebx
    movl    %ebx, (%eax)

    # AS_n_copy = AS_n
    movl    AS_n, %eax
    movl    %eax, AS_n_copy

    #printf 
    pushl   AS_n_copy
    pushl   $print_string
    call    printf
    addl    $8, %esp

    # Epilogue for main
    pushl   $0
    call    exit


.section .rodata

    assembly_tag :
    .string "Ths assembly code is written by Abhi"

    print_string :
    .string "AS_i : %d\tAS_j : %d\n"

.section .bss
    
    .comm   AS_i, 4, 4
    .comm   AS_j, 4, 4

.section .text
.global main
main :

    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    # First loop initialization
    movl    $0, AS_i
    jmp     first_loop_condition

first_loop_body :
    movl    $0, AS_j
    jmp     second_loop_condition

second_loop_body :
    pushl   AS_j
    pushl   AS_i
    pushl   $print_string
    call    printf
    addl    $12, %esp

    #second loop increment
    addl    $1, AS_j

second_loop_condition :
    movl    AS_j,%eax
    cmpl    $10, %eax
    jl      second_loop_body

    #first loop increment
    addl    $1, AS_i

first_loop_condition :
    movl    AS_i, %eax
    cmpl    $10, %eax
    jl      first_loop_body

    # Epilogue for main
    pushl   $0
    call    exit


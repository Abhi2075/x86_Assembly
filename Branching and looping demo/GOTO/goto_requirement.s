.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    print_string :
    .string "AS_i : %d\tAS_j : %d\tAS_k : %d\n"

    end_program_string :
    .string "End of program"

.section .data

    AS_flag1 :
    .int    0

.section .bss

    .comm AS_i, 4, 4
    .comm AS_j, 4, 4
    .comm AS_k, 4, 4

.section .text
.global main
main : 
    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp
    
    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    movl    $0, AS_i
    jmp     first_for_condition 

first_for_body :
    movl    $0, AS_j
    jmp     second_for_condition

second_for_body :
    movl    $0, AS_k
    jmp     third_for_condition

third_for_body :
    movl    AS_i, %eax
    movl    AS_j, %ebx
    addl    %ebx, %eax
    movl    AS_k, %ebx
    addl    %ebx, %eax
    cmpl    $20, %eax
    jle     further_body

out_third_loop_condition :

    movl    $1, AS_flag1
    jmp     out_third_loop
further_body :

    pushl   AS_k
    pushl   AS_j
    pushl   AS_i
    pushl   $print_string
    call    printf
    addl    $16, %esp

    # Third loop increment
    addl    $1, AS_k

third_for_condition :
    movl    AS_k, %eax
    cmpl    $10, %eax
    jl      third_for_body
    
out_third_loop :
    movl    AS_flag1, %eax
    cmpl    $1, %eax
    je      out_second_loop
    # second loop increment
    addl    $1, AS_j

second_for_condition :
    movl    AS_j, %eax
    cmpl    $10, %eax
    jl      second_for_body
    
out_second_loop :
    movl    AS_flag1, %eax
    cmpl    $1, %eax
    je      out_first_loop

    # first loop increment
    addl    $1, AS_i

first_for_condition :
    movl    AS_i, %eax
    cmpl    $10, %eax
    jl      first_for_body

out_first_loop :
    pushl   $end_program_string
    call    puts
    addl    $4, %esp


    # Epilogue for main
    pushl   $0
    call    exit


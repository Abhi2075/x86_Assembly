.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    print_string :
    .string "AS_i : %d\tAS_j : %d\n"

.section .bss
    
    .comm AS_i, 4, 4
    .comm AS_j, 4, 4

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
        jmp     first_while_condition 

first_while_body :
        movl    $0, AS_j
        jmp     second_while_condition 
  
second_while_body :
        pushl   AS_j
        pushl   AS_i
        pushl   $print_string
        call    printf
        addl    $12, %esp

        #Second while loop increment
        addl    $1, AS_j

second_while_condition :
        movl    AS_j, %eax
        cmpl    $6, %eax
        jl      second_while_body

        #first while loop increment
        addl    $1, AS_i
first_while_condition :
        movl    AS_i, %eax
        cmpl    $5, %eax
        jl      first_while_body

        # Epilogue for main
        pushl   $0
        call    exit



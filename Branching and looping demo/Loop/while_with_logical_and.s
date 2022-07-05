.section .rodata
    
    assembly_tag :
    .string "This assembly code is written by Abhi"

    print_string :
    .string "AS_i : %d,\tAS_j : %d\n"

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

    movl    $0, AS_i
    movl    $1, AS_j

    jmp     while_condition

while_loop_body :
    pushl   AS_j
    pushl   AS_i
    pushl   $print_string 
    call    printf 
    addl    $12, %esp

    addl    $1, AS_i
    addl    $3, AS_j

while_condition :
    movl    AS_i, %eax
    cmpl    $10, %eax
    jge     out_of_loop
 
    movl    AS_j, %eax
    cmpl    $21, %eax
    jl     while_loop_body

out_of_loop :
    pushl   $0
    call    exit


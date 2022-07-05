.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    for_statement :
    .string "for loop 1"

.section .bss

    .comm   AS_i, 4, 4

.section .text
.global main
main :

    # Prologue for main
     pushl  %ebp
     movl   %esp, %ebp

     movl   $0, AS_i
     jmp    for_condition

for_body :
    pushl   $for_statement
    call    puts
    addl    $4, %esp

    #increment
    addl    $1, AS_i

for_condition :
    movl    AS_i, %eax
    cmpl    $5, %eax
    jl      for_body

    # Epilogue for main
    pushl   $0
    call    exit


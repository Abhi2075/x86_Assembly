.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    address_string :
    .string "address of n1 : %p\n"

.section .bss
    
    .comm  AS_n1, 4, 4

.section .text
.global main
main :
    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   $AS_n1  #pass address of variable
    pushl   $address_string 
    call    printf
    addl    $8, %esp

    # Epilogue for main
    pushl   $0
    call    exit


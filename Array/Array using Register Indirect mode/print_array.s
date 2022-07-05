.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi."

    print_array_notice :
    .string "Array is as below :"

    print_array_string :
    .string "AS_A[%d] : %d\n"

.section .data

    AS_A :
    .int 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

 
.section .bss
    
    .comm AS_i, 4, 4

.section .text
.global main
main :
    
    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   $print_array_notice
    call    puts
    addl    $4, %esp

    movl    $AS_A, %eax
    
    # For AS_i = 0
    pushl   0(%eax)
    pushl   $0
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp

    # For AS_i = 1
    movl    $AS_A, %eax
    pushl   4(%eax)
    pushl   $1
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp

    # For AS_i = 2
    movl    $AS_A, %eax
    pushl   8(%eax)
    pushl   $2
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
   # For AS_i = 3
    movl    $AS_A, %eax
    pushl   12(%eax)
    pushl   $3
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
   # For AS_i = 4
    movl    $AS_A, %eax
    pushl   16(%eax)
    pushl   $4
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
   # For AS_i = 5
    movl    $AS_A, %eax
    pushl   20(%eax)
    pushl   $5
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
   # For AS_i = 6
    movl    $AS_A, %eax
    pushl   24(%eax)
    pushl   $6
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
   # For AS_i = 7
    movl    $AS_A, %eax
    pushl   28(%eax)
    pushl   $7
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
   # For AS_i = 8
    movl    $AS_A, %eax
    pushl   32(%eax)
    pushl   $8
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
   # For AS_i = 9
    movl    $AS_A, %eax
    pushl   36(%eax)
    pushl   $9
    pushl   $print_array_string
    call    printf 
    addl    $12, %esp
   
    # Epilogue for main
    pushl   $0
    call    exit


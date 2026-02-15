.section .bas
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:

    mov $ram, %rdi
    add $0x50, %rdi


    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi
    movb $0xFF, (%rdi)
    inc %rdi

    ret

.section .note.GNU-stack,"",@progbits

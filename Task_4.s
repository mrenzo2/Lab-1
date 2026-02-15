.section .bas
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram


fill_ram:
    mov %0, %eac
    mov $1, %ecx

    loop_fill_ram:
        addb %cl, %al
        inc %ecx
        cmp $11, %ecx 
        jne loop_fill_ram
        

        movb %al, ram+0x50
        ret



.section .note.GNU-stack,"",@progbits

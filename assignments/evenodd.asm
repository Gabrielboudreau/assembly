section .data
    even DB "even", 0xA
    even_len equ $- even

    odd DB "odd", 0xA
    odd_len equ $- odd

section .text
        global _start

_start:
        push 5 ;number we check
        call _check
        mov eax, 1
        int 0x80

_check:

        push ebp
        mov ebp, esp
        mov eax, DWORD [ebp + 8]
        xor edx, edx
        mov ecx, 2
        div ecx
        cmp edx, 0
        je .print_even

.print_odd:
        ;print odd
        mov eax, 4
        mov ebx, 1
        mov ecx, odd 
        mov edx, odd_len
        int 0x80
        jmp .done

.print_even:
        ;print even
        mov eax, 4
        mov ebx, 1
        mov ecx, even
        mov edx, even_len
        int 0x80
.done:
        leave
        ret




section .text
        global _start

_add:

        add eax, ebx
        add eax, ecx
        mov [result], eax
        ret

_start:

        mov eax, [X]
        mov ebx, [Y]
        mov ecx, [Z]
        call _add

        mov eax, 1
        int 0x80

section .data

        X DD 1
        Y DD 2
        Z DD 3

section .bss

        result resb 1

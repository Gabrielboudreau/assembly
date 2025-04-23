section .text
        global _start

_start:

        mov eax, [var] ;this will be used to store the cumulative value
        mov ebx, [var] ;this will act as a counter
        mov ecx, 0 ; this will be compared to our counter so we know when to stop iteration


comp:
        imul eax, ebx ;multiply for factorial
        dec ebx ;iterate
        cmp ebx, ecx
        jg comp


done:
        mov [result], eax
        mov eax, 1 ;exit
    mov ebx, 0
        int 0x80


section .bss
        result resd 1

section .data
        var DD 5 ;any number can be used, using 5 for example

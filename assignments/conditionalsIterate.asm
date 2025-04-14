section .text             ; other code is here https://github.com/Gabrielboudreau/assembly/blob/main/assignments/conditionalsCompare    
        global _start     ; I can only share one link per submission

_start: 

        mov ebx, 21
        mov eax, 0

.under

        mov eax, 1
        mov ebx, 4
        mov ecx, space
        mov edx, 1
        int 0x80

`       mov tmp, eax
        add eax, 2
        cmp eax, ebx
        jl .under

section.data
        space dd 10

segment .bss
        tmp resb 1



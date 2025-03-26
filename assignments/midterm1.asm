section .text
        global _start     ;var 1 = 1, var 2 = 2, var 3 = 4

_start:
    mov eax, [var1]
    add eax, 2
    mov ebx, [var3] 
    sub ebx, [var2]
    xor edx, edx    
    div ebx
    mov eax, 1
    int 0x80

segment .bss
    result resb 1

section .data
	var1 DD 1 
	var2 DD 2
	var3 DD 4

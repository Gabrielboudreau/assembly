section .text
    global _start

_start:
    mov eax,8
    test eax,1             
    jz evnn                

    mov eax, 4
    mov ebx, 1
    mov ecx, [odd]
	mov edx, len2
    mov [result],eax        
	mov ebx, 1
    mov eax, 1
    int 0x80

evnn:
    mov eax, 4
	mov ebx, 1
    mov ecx, [even]
	mov edx, len1     
    mov [result],eax 
    mov eax, 1
    int 0x80

segment .bss
    result resb 1

segment .data
    even db 'even number', 0
	len1 equ $ -even
    odd db 'odd number', 0 
	len2 equ $ -odd


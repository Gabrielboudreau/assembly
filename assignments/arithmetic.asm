
section .text
	global _start

_start:

	mov eax, word [var1]
 	imul eax, eax, -10 
	mov [result1], eax

	mov eax, [var1]
	add eax, [var2]
	add eax, [var3]
	add eax, [var4]
	mov [result2], eax

	mov eax, [var1]
	neg eax
	imul eax, eax, [var2]
	add eax, [var3]
	mov [result3], eax

	mov eax, [var1]
	imul eax, eax, 2
	mov ebx, [var2]
	add ebx, -3
	idiv ebx
	mov [result4], eax
	mov eax, 1
	int 0x80

section .data

	var1 DW 1 
	var2 DW 2
	var3 DW 3
	var4 DW 4

section .bss

	result1 resw 1
	result2 resw 1
	result3 resw 1           
	result4 resw 1             

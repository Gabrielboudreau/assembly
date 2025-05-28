.section .text
	.global _start

_start: 
	LDR r1 =var1
	LDR r2, [r1]
	LDR r1, =var2
	LDR r3, [r1]
	ADD r4, r2,r3
	LDR r5, [r1]
	MUL r0,r4,r5
	LDR r1 =var4
	STR r0,r1
	MOV r7,#1
	MOV r0, #0
	SVC #0

	.section .data
var1: .word 5
var2: .word 2
var3: .word 3

	.section .bss
	.align 4
var4 .space 4
@This requires several more instructions to exit
@Ensuring that you load each value through is time consuming and repetitive
@Each instrcution in ARM is relatively simple making it easy to walk through the code
@ARM is faster and more effiecient with power meaning for extremely limited quantities
@or precise coding it could be more effective
@Video: 
@ https://www.loom.com/share/e6506da7a3d140ffa9cca146b2e48046?sid=9ad84301-402d-4fe1-af6b-ee12648a466f 

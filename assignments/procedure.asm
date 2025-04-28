section .text
    global _start

_start:
        mov eax, 65        

.iterate:
        mov ebx,eax       
        mov [res],ebx     
        mov ecx,res       
        call output        
        inc eax            
        cmp eax,91        
        jl .iterate        
        
        
        call exit          

output:
        mov edx, 1         
        mov ebx, 1         
        mov eax, 4         
        int 0x80           
        ret
exit:
        
        mov eax, 1         
        int 0x80           

section .bss
        res resb 4         

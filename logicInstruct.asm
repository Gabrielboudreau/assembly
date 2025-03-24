section .text
        global _start

_start:
        mov eax,8
        test eax,1              ; use test operation to reatain eax
        jz evnn                 ;jump to evnn block when 0
                                ;if jump not 0, then continue
        mov eax,'n'
        mov [result],eax        ;this will print 'n', ascii 110
        xor eax, eax
        mov [result1], eax      ; this shows that the xor operation = 0 when performed with itself
        mov eax,1
        int 0x80

evnn:
        mov eax,'y'     
        mov [result],eax ; this will print 'y', ascii 121
        mov eax,1
        int 0x80

segment .bss
        result resb 1
        result1 resb 1

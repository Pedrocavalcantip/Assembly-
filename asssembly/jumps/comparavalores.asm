segment .data
    LF              equ  0xA
    SYS_CALL        equ  0x80
    NULL            equ  0x0
    SYS_EXIT        equ 0x1
    SYS_READ        equ 0x3
    SYS_WRITE       equ 0x4
    RET_EXIT        equ 0x0
    STD_OUT         equ 0x1
    STD_IN          equ 0x0
    


section .data
    x dd 50 
    y dd 10 
    msg1 db 'X é maior que Y' , LF, NULL
    TAM1 equ $ - msg1
    msg2 db 'X é menor que Y' , LF, NULL
    TAM2 equ $ - msg2


section .text 
global _start
_start:
    mov eax, DWORD [x]
    mov ebx, DWORD [y]

    ;compara os valores de X e Y
    cmp eax, ebx            ;compara os valores de eax e ebx

    jge maior               ;eax >=ebx
    mov ecx, msg2           ;se X for menor que Y, carrega msg2
    mov edx, tam2

    jmp final
    
maior:
    mov ecx, msg1
    mov edx, tam1

final:
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    int SYS_CALL 

    mov eax, SYS_EXIT
    xor ebx, RET_EXIT
    int SYS_CALL 



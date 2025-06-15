segment . data ;parte de uma seção
    LF              equ  0xA ;define a constante LF (Line Feed) como 0xA (10 em decimal)
    SYS_CALL        equ  0x80 ;define a constante SYS_CALL como 0x80 (128 em decimal, syscall para chamadas de sistema)
    NULL            equ  0xD ;define a constante NULL como 0xD (13 em decimal, caractere de retorno de carro)
    ; EAX
    SYS_EXIT        equ 0x1 ;define a constante SYS_EXIT como 0x1 (1 em decimal, syscall para sair do programa)
    SYS_READ        equ 0x3 ;define a constante SYS_READ como 0x3 (3 em decimal, syscall para ler da entrada padrão)
    SYS_WRITE       equ 0x4 ;define a constante SYS_WRITE como 0x4 (4 em decimal, syscall para escrever na saída padrão)
    ;EBX
    RET_EXIT        equ 0x0 ;define a constante RET_EXIT como 0x0 (0 em decimal, código de saída do programa)
    STD_OUT         equ 0x1 ;define a constante STD_OUT como 0x1 (1 em decimal, saída padrão)
    STD_IN          equ 0x0 ;define a constante STD_IN como 0x0 (0 em decimal, entrada padrão)
    

; dd define double word, ou seja, 4 bytes
; dw define word, ou seja, 2 bytes
; db define byte, ou seja, 1 byte
; dq define quad word, ou seja, 8 bytes
; dt define ten bytes, ou seja, 10 bytes

section .data
    x dd 50 
    y dd 10 
    msg1 db 'X é maior que Y', LF, NULL
    TAM1 equ $ - msg1
    msg2 db 'X é menor que Y', LF, NULL
    TAM2 equ $ - msg2

;para saltos condicionais:
    ;je é jump if equal, pula para o rótulo se os valores forem iguais
    ;jg é jump if greater, pula para o rótulo se X for maior que Y
    ;jge é jump if greater or equal, pula para o rótulo se X for maior ou igual a Y
    ;jl é jump if less, pula para o rótulo se X for menor que Y
    ;jle é jump if less or equal, pula para o rótulo se X for menor ou igual a Y
    ;jne é jump if not equal, pula para o rótulo se os valores forem diferentes

    ;jmp é jump, pula para o rótulo sem condição

section .text 
global _start
_start:
    mov eax, DWORD [X]
    mov ebx, DWORD [Y]

    ;compara os valores de X e Y
    cmp eax, ebx  ;compara os valores de eax e ebx

    jge maior ;eax >=ebx
    mov ecx, msg2 ;se X for menor que Y, carrega msg2

    jmp final
maior:
    mov ecx, msg2
    mov edx, tam1

final:
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    int SYS_CALL 

    mov eax, SYS_EXIT
    xor ebx, ebx ;zera o registrador ebx para o código de saída 0
    int SYS_CALL 


    ;and é and, faz uma operação lógica de conjunção entre os valores
    ;or é or, faz uma operação lógica de disjunção entre os valores
    ;xor é xor, faz uma operação lógica de exclusão mútua entre os valores
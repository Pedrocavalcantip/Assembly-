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
    



section .data
    msg db " Entre com o seu nome: " , LF, NULL 
    tam equ $ - msg 

section .bss ;varáveis não inicializadas
    nome resb 1 

section .text

global _start 

_start:
    mov eax, SYS_WRITE ;syscall para escrever na saída padrão
    mov ebx, STD_OUT ;saída padrão
    mov ecx, msg ;mensagem a ser escrita
    mov edx, tam ;tamanho da mensagem
    int SYS_CALL ;chamada de sistema para escrever a mensagem

    mov eax, SYS_READ ;syscall para ler da entrada padrão
    mov ebx, STD_IN ;entrada padrão
    mov ecx, nome ;variável onde o nome será armazenado
    mov edx, 0xA ;tamanho máximo da entrada (10 bytes)
    int SYS_CALL ;chamada de sistema para ler o nome

    mov eax, SYS_EXIT ;syscall para sair do programa
    mov ebx, RET_EXIT ;código de saída do programa
    int SYS_CALL ;chamada de sistema para sair do programa
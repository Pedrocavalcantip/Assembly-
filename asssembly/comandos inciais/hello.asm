section .data                           ;constants and variables
    msg db 'Hello, World!', 0xA         ; string to print with a newline at the end
    tam equ $- msg                      ; size of the string

    ;dica: sempre que colocar a mensagem direcionar o ponteiro para o final da string, como esta feito acima.


section .text                           ;code section


global _start                           ; entry point for the program (obrigatorio) 

_start:                                 ; entry point for the program
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, tam
    int 0x80                            ; call kernel to write the string to stdout

saida :
    mov eax, 1                          ; syscall number for sys_exit
    mov ebx, 0                          ; exit code 0
    int 0x80                            ; call kernel to exit the program






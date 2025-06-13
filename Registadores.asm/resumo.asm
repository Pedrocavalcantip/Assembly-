; ---------------------------------------------------------
; RESUMO SOBRE REGISTRADORES EM ASSEMBLY (x86)
; ---------------------------------------------------------

; Registradores são pequenas áreas de memória dentro da CPU,
; usadas para armazenar dados temporários, endereços e instruções.
; Eles são essenciais para a execução eficiente dos programas Assembly.

; PRINCIPAIS TIPOS DE REGISTRADORES:

; 1. Registradores de Propósito Geral:
;    - EAX, EBX, ECX, EDX
;    - Usados para operações aritméticas, lógicas e movimentação de dados.

; 2. Registradores de Segmento:
;    - CS (Code Segment), DS (Data Segment), SS (Stack Segment), ES, FS, GS
;    - Definem áreas específicas da memória para código, dados e pilha.

; 3. Registradores de Ponteiro e Índice:
;    - ESP (Stack Pointer): aponta para o topo da pilha.
;    - EBP (Base Pointer): usado para acessar parâmetros e variáveis locais.
;    - ESI (Source Index), EDI (Destination Index): usados em operações com arrays e strings.

; 4. Registrador de Instrução:
;    - EIP (Instruction Pointer): aponta para a próxima instrução a ser executada.

; 5. Registrador de Flags:
;    - EFLAGS: armazena flags de status (zero, carry, overflow, etc.) e controle.

; Observações:
; - Registradores são muito mais rápidos que a memória RAM.
; - O uso eficiente dos registradores é fundamental para o desempenho em Assembly.
; - Cada arquitetura pode ter diferentes nomes e quantidades de registradores.

; ---------------------------------------------------------
; FIM DO RESUMO
; ---------------------------------------------------------
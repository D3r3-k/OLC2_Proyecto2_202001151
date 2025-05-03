.data
heap: .space 4096
.text
.global _start
_start:
	adr x10, heap
// [START] Declaracion de variable: puntos
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntos
// [START] Print Statement
// Valor String: === Archivo de prueba de funcionalidades intermedias ===
STR x10, [SP, #-8]!
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 65 to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: Validaciones manuales esperadas: 4
STR x10, [SP, #-8]!
// Pushing byte 86 to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 52 to heap
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: ==== Manejo de entornos ====
STR x10, [SP, #-8]!
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosEntornos
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosEntornos
// [START] Print Statement
// Valor String: \nVariable redeclarada en un entorno diferente
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 86 to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: b
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
// [END] Declaracion de variable: b
// [START] If Statement
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L0_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Declaracion de variable: b
// Valor Int: 20
MOV x0, #20
STR x0, [SP, #-8]!
// [END] Declaracion de variable: b
// [START] Print Statement
// Valor String: b dentro del if =
STR x10, [SP, #-8]!
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 20
MOV x0, #20
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L2_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosEntornos
// [START] + operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK Redeclaración en entorno diferente: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 82 to heap
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L1_
L2_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X Redeclaración en entorno diferente: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 82 to heap
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L1_:
// [END] If Statement
// Removiendo 8 bytes de la pila
MOV x0, #8
ADD sp, sp, x0
// Puntero de pila después de remover bytes: sp
// [END] Block Statement
// [+] Fin del bloque 'if'
L0_:
// [END] If Statement
// [START] Print Statement
// Valor String: b fuera del if =
STR x10, [SP, #-8]!
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: \nUso de variable en un entorno superior
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 85 to heap
MOV w0, #85
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: c
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
// [END] Declaracion de variable: c
// [START] Declaracion de variable: d
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
// [END] Declaracion de variable: d
// [START] If Statement
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L3_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Declaracion de variable: d
// Valor Int: 20
MOV x0, #20
STR x0, [SP, #-8]!
// [END] Declaracion de variable: d
// [START] Print Statement
// Valor String: c dentro del if =
STR x10, [SP, #-8]!
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: d dentro del if =
STR x10, [SP, #-8]!
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: c
// Valor Int: 30
MOV x0, #30
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Expression Statement
// Assigning to variable: d
// Valor Int: 30
MOV x0, #30
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// Removiendo 8 bytes de la pila
MOV x0, #8
ADD sp, sp, x0
// Puntero de pila después de remover bytes: sp
// [END] Block Statement
// [+] Fin del bloque 'if'
L3_:
// [END] If Statement
// [START] Print Statement
// Valor String: c fuera del if =
STR x10, [SP, #-8]!
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: d fuera del if =
STR x10, [SP, #-8]!
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] If Statement
// Logical && operation
// Equality operation: ==
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 30
MOV x0, #30
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
CBZ x0, ANDOR_FALSE4_
// Equality operation: ==
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
B ANDOR_END6_
ANDOR_FALSE4_:
MOV x0, #0
B ANDOR_END6_
ANDOR_END6_:
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L8_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosEntornos
// [START] + operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #24
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK Uso de variable en entorno superior: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 85 to heap
MOV w0, #85
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L7_
L8_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X Uso de variable en entorno superior: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 85 to heap
MOV w0, #85
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L7_:
// [END] If Statement
// [START] Print Statement
// Valor String: \n==== If / Else ====
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 73 to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 47 to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 69 to heap
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosIfElse
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosIfElse
// [START] Print Statement
// Valor String: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 86 to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: If simple
STR x10, [SP, #-8]!
// Pushing byte 73 to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] If Statement
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L9_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Print Statement
// Valor String: Condición verdadera
STR x10, [SP, #-8]!
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosIfElse
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
L9_:
// [END] If Statement
// [START] Print Statement
// Valor String: \nIf-Else
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 73 to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 69 to heap
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] If Statement
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L11_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Print Statement
// Valor String: Condición verdadera en if-else
STR x10, [SP, #-8]!
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L10_
L11_:
// [START] Block Statement
// [START] Print Statement
// Valor String: Condición falsa en if-else
STR x10, [SP, #-8]!
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L10_:
// [END] If Statement
// [START] If Statement
// Valor Bool: false
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L13_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Print Statement
// Valor String: Esto no debería imprimirse
STR x10, [SP, #-8]!
// Pushing byte 69 to heap
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L12_
L13_:
// [START] Block Statement
// [START] Print Statement
// Valor String: Condición falsa, ejecutando else
STR x10, [SP, #-8]!
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 44 to heap
MOV w0, #44
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosIfElse
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L12_:
// [END] If Statement
// [START] Print Statement
// Valor String: \nIf-ElseIf-Else
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 73 to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 69 to heap
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 73 to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 69 to heap
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] If Statement
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L15_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Print Statement
// Valor String: Primera condición verdadera
STR x10, [SP, #-8]!
// Pushing byte 80 to heap
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L14_
L15_:
// [START] If Statement
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L17_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Print Statement
// Valor String: Segunda condición verdadera, pero no se ejecuta
STR x10, [SP, #-8]!
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 103 to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 44 to heap
MOV w0, #44
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L16_
L17_:
// [START] Block Statement
// [START] Print Statement
// Valor String: Ninguna condición verdadera
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 103 to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L16_:
// [END] If Statement
// [+] Fin del bloque 'else'
L14_:
// [END] If Statement
// [START] If Statement
// Valor Bool: false
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L19_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Print Statement
// Valor String: Primera condición falsa
STR x10, [SP, #-8]!
// Pushing byte 80 to heap
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L18_
L19_:
// [START] If Statement
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L21_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Print Statement
// Valor String: Segunda condición verdadera
STR x10, [SP, #-8]!
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 103 to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosIfElse
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L20_
L21_:
// [START] Block Statement
// [START] Print Statement
// Valor String: Ninguna condición verdadera
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 103 to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L20_:
// [END] If Statement
// [+] Fin del bloque 'else'
L18_:
// [END] If Statement
// [START] Print Statement
// Valor String: 
STR x10, [SP, #-8]!
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: \n==== For Tipo While ====
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 84 to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 87 to heap
MOV w0, #87
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosForWhile
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosForWhile
// [START] Print Statement
// Valor String: For como while simple
STR x10, [SP, #-8]!
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: i
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: i
// [START] Declaracion de variable: suma
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: suma
// [START] For Condition Statement
L22_:
// [COND] Evaluando condición del for
// Relational operation: <
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L23_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Iniciando ámbito del cuerpo del for
// [START] Block Statement
// [START] Print Statement
// Valor String: i =
STR x10, [SP, #-8]!
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: suma
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Expression Statement
// Assigning to variable: i
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
B L22_
L23_:
// [END] Fin del For Condition Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L25_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosForWhile
// [START] + operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK For como while simple: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L24_
L25_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X For como while simple: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L24_:
// [END] If Statement
// [START] Print Statement
// Valor String: \nFor como while con condición compuesta
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: j
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: j
// [START] Declaracion de variable: producto
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
// [END] Declaracion de variable: producto
// [START] For Condition Statement
L26_:
// [COND] Evaluando condición del for
// Logical && operation
// Relational operation: <
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
CBZ x0, ANDOR_FALSE28_
// Relational operation: <
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 50
MOV x0, #50
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
B ANDOR_END30_
ANDOR_FALSE28_:
MOV x0, #0
B ANDOR_END30_
ANDOR_END30_:
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L27_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Iniciando ámbito del cuerpo del for
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: j
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Expression Statement
// Assigning to variable: producto
// [START] * operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
MUL x0, x0, x1
STR x0, [SP, #-8]!
// [END] * operation
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: j =
STR x10, [SP, #-8]!
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String: producto =
STR x10, [SP, #-8]!
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
B L26_
L27_:
// [END] Fin del For Condition Statement
// [START] If Statement
// Logical && operation
// Equality operation: ==
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
CBZ x0, ANDOR_FALSE31_
// Equality operation: ==
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 120
MOV x0, #120
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
B ANDOR_END33_
ANDOR_FALSE31_:
MOV x0, #0
B ANDOR_END33_
ANDOR_END33_:
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L35_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosForWhile
// [START] + operation
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK For como while con condición compuesta: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L34_
L35_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X For como while con condición compuesta: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L34_:
// [END] If Statement
// [START] Print Statement
// Valor String: \nFor como while anidado (patrón X)
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 40 to heap
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 179 to heap
MOV w0, #179
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 41 to heap
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 86 to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: n
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
// [END] Declaracion de variable: n
// [START] Declaracion de variable: x
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: x
// [START] For Condition Statement
L36_:
// [COND] Evaluando condición del for
// Relational operation: <
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L37_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Iniciando ámbito del cuerpo del for
// [START] Block Statement
// [START] Declaracion de variable: j
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: j
// [START] Declaracion de variable: fila
// Valor String: 
STR x10, [SP, #-8]!
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// [END] Declaracion de variable: fila
// [START] For Condition Statement
L38_:
// [COND] Evaluando condición del for
// Relational operation: <
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L39_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Iniciando ámbito del cuerpo del for
// [START] Block Statement
// [START] If Statement
// Logical || operation
// Equality operation: ==
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
CBNZ x0, ANDOR_TRUE41_
// Equality operation: ==
// [START] + operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
// [START] - operation
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
SUB x0, x0, x1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
B ANDOR_END42_
ANDOR_TRUE41_:
MOV x0, #1
B ANDOR_END42_
ANDOR_END42_:
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L44_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: fila
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor String: *
STR x10, [SP, #-8]!
// Pushing byte 42 to heap
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x1, [SP], #8
LDR x0, [SP], #8
// [+] Concatenando strings [+]
STR x0, [SP, #-8]!
STR x1, [SP, #-8]!
BL concat_strings
ADD sp, sp, #16
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L43_
L44_:
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: fila
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor String:  
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x1, [SP], #8
LDR x0, [SP], #8
// [+] Concatenando strings [+]
STR x0, [SP, #-8]!
STR x1, [SP, #-8]!
BL concat_strings
ADD sp, sp, #16
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L43_:
// [END] If Statement
// [START] Expression Statement
// Assigning to variable: j
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
B L38_
L39_:
// [END] Fin del For Condition Statement
// [START] Print Statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: x
// [START] + operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// Removiendo 16 bytes de la pila
MOV x0, #16
ADD sp, sp, x0
// Puntero de pila después de remover bytes: sp
// [END] Block Statement
// [BODY] Fin del cuerpo
B L36_
L37_:
// [END] Fin del For Condition Statement
// [START] Print Statement
// Valor String: 
STR x10, [SP, #-8]!
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L46_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosForWhile
// [START] + operation
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #48
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK For como while anidado: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L45_
L46_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X For como while anidado: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L45_:
// [END] If Statement
// [START] Print Statement
// Valor String: \n==== For Clásico ====
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosForClasico
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosForClasico
// [START] Print Statement
// Valor String: For clásico simple
STR x10, [SP, #-8]!
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: suma
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #40
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] For Statement
// [INIT] Ejecutando inicialización del for
// [START] Declaracion de variable: i
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: i
// [INIT] Fin de la inicialización
// [COND] Evaluando condición del for 
L47_:
// Relational operation: <
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L48_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Ejecutando cuerpo del for
// [START] Block Statement
// [START] Print Statement
// Valor String: i =
STR x10, [SP, #-8]!
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: suma
// [START] + operation
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #48
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
// [INC] Procesando expresión de incremento
L49_:
// ++ operation
MOV x1, #0
ADD x1, sp, x1
LDR x0, [x1, #0]
ADD x0, x0, #1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
// [INC] Fin del incremento
B L47_
L48_:
// Liberando 8 bytes del ámbito del for
ADD sp, sp, #8
// [END] Fin del For Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L51_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosForClasico
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK For clásico simple: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L50_
L51_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X For clásico simple: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L50_:
// [END] If Statement
// [START] Print Statement
// Valor String: \nFor clásico anidado (tabla de multiplicar)
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 40 to heap
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 41 to heap
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 86 to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] For Statement
// [INIT] Ejecutando inicialización del for
// [START] Declaracion de variable: i
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
// [END] Declaracion de variable: i
// [INIT] Fin de la inicialización
// [COND] Evaluando condición del for 
L52_:
// Relational operation: <=
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, le
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L53_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Ejecutando cuerpo del for
// [START] Block Statement
// [START] For Statement
// [INIT] Ejecutando inicialización del for
// [START] Declaracion de variable: j
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
// [END] Declaracion de variable: j
// [INIT] Fin de la inicialización
// [COND] Evaluando condición del for 
L55_:
// Relational operation: <=
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, le
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L56_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Ejecutando cuerpo del for
// [START] Block Statement
// [START] Print Statement
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String: x
STR x10, [SP, #-8]!
// Pushing byte 120 to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String: =
STR x10, [SP, #-8]!
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// [START] * operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
MUL x0, x0, x1
STR x0, [SP, #-8]!
// [END] * operation
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
// [INC] Procesando expresión de incremento
L57_:
// ++ operation
MOV x1, #0
ADD x1, sp, x1
LDR x0, [x1, #0]
ADD x0, x0, #1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
// [INC] Fin del incremento
B L55_
L56_:
// Liberando 8 bytes del ámbito del for
ADD sp, sp, #8
// [END] Fin del For Statement
// [START] Print Statement
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
// [INC] Procesando expresión de incremento
L54_:
// ++ operation
MOV x1, #0
ADD x1, sp, x1
LDR x0, [x1, #0]
ADD x0, x0, #1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
// [INC] Fin del incremento
B L52_
L53_:
// Liberando 8 bytes del ámbito del for
ADD sp, sp, #8
// [END] Fin del For Statement
// [START] Print Statement
// Valor String: 
STR x10, [SP, #-8]!
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosForClasico
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK For clásico anidado: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosForRange
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosForRange
// [START] Print Statement
// Valor String: \n==== Switch/Case ====
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 47 to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosSwitch
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosSwitch
// [START] Print Statement
// Valor String: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 35 to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 86 to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: Switch simple
STR x10, [SP, #-8]!
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: dia
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
// [END] Declaracion de variable: dia
// [START] Switch Statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x19, [SP], #8
// [+] Ejecutando bloque 'case'
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE59_
B NEXT_CASE60_
CASE59_:
// [START] Print Statement
// Valor String: Lunes
STR x10, [SP, #-8]!
// Pushing byte 76 to heap
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosSwitch
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
B SWITCH_END58_
NEXT_CASE60_:
// [+] Ejecutando bloque 'case'
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE61_
B NEXT_CASE62_
CASE61_:
// [START] Print Statement
// Valor String: Martes
STR x10, [SP, #-8]!
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END58_
NEXT_CASE62_:
// [+] Ejecutando bloque 'case'
// Valor Int: 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE63_
B NEXT_CASE64_
CASE63_:
// [START] Print Statement
// Valor String: Miércoles
STR x10, [SP, #-8]!
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 169 to heap
MOV w0, #169
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END58_
NEXT_CASE64_:
// [+] Ejecutando bloque 'case'
// Valor Int: 4
MOV x0, #4
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE65_
B NEXT_CASE66_
CASE65_:
// [START] Print Statement
// Valor String: Jueves
STR x10, [SP, #-8]!
// Pushing byte 74 to heap
MOV w0, #74
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END58_
NEXT_CASE66_:
// [+] Ejecutando bloque 'case'
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE67_
B NEXT_CASE68_
CASE67_:
// [START] Print Statement
// Valor String: Viernes
STR x10, [SP, #-8]!
// Pushing byte 86 to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END58_
NEXT_CASE68_:
// [+] Ejecutando bloque 'case'
// Valor Int: 6
MOV x0, #6
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE69_
B NEXT_CASE70_
CASE69_:
// [START] Print Statement
// Valor String: Sábado
STR x10, [SP, #-8]!
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END58_
NEXT_CASE70_:
// [+] Ejecutando bloque 'case'
// Valor Int: 7
MOV x0, #7
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE71_
B NEXT_CASE72_
CASE71_:
// [START] Print Statement
// Valor String: Domingo
STR x10, [SP, #-8]!
// Pushing byte 68 to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 103 to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END58_
NEXT_CASE72_:
// [+] Ejecutando bloque 'default'
B DEFAULT73_
DEFAULT73_:
// [START] Print Statement
// Valor String: Día inválido
STR x10, [SP, #-8]!
// Pushing byte 68 to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 118 to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END58_
SWITCH_END58_:
// Fin del Switch Statement
// [START] Print Statement
// Valor String: \nSwitch con default
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: numero
// Valor Int: 100
MOV x0, #100
STR x0, [SP, #-8]!
// [END] Declaracion de variable: numero
// [START] Switch Statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x19, [SP], #8
// [+] Ejecutando bloque 'case'
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE75_
B NEXT_CASE76_
CASE75_:
// [START] Print Statement
// Valor String: No se debería imprimir
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END74_
NEXT_CASE76_:
// [+] Ejecutando bloque 'case'
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE77_
B NEXT_CASE78_
CASE77_:
// [START] Print Statement
// Valor String: No se debería imprimir
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END74_
NEXT_CASE78_:
// [+] Ejecutando bloque 'default'
B DEFAULT79_
DEFAULT79_:
// [START] Print Statement
// Valor String: Número no reconocido, se ejecuta default
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 186 to heap
MOV w0, #186
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 44 to heap
MOV w0, #44
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosSwitch
// [START] + operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
B SWITCH_END74_
SWITCH_END74_:
// Fin del Switch Statement
// [START] Print Statement
// Valor String: \nSwitch con break explícito
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 120 to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: numeroBreak
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
// [END] Declaracion de variable: numeroBreak
// [START] Switch Statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x19, [SP], #8
// [+] Ejecutando bloque 'case'
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE81_
B NEXT_CASE82_
CASE81_:
// [START] Print Statement
// Valor String: No se debería imprimir
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END80_
NEXT_CASE82_:
// [+] Ejecutando bloque 'case'
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE83_
B NEXT_CASE84_
CASE83_:
// [START] Print Statement
// Valor String: Caso 2 - Se ejecuta este y debe detenerse
STR x10, [SP, #-8]!
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 50 to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 121 to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosSwitch
// [START] + operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #24
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Break Statement
B SWITCH_END80_
// [END] Break Statement
// [START] Print Statement
// Valor String: No debería ejecutarse si el break funciona
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: puntosSwitch
// [START] - operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
SUB x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #24
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
B SWITCH_END80_
NEXT_CASE84_:
// [+] Ejecutando bloque 'case'
// Valor Int: 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x19, x1
BEQ CASE85_
B NEXT_CASE86_
CASE85_:
// [START] Print Statement
// Valor String: No se debería imprimir
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
B SWITCH_END80_
NEXT_CASE86_:
SWITCH_END80_:
// Fin del Switch Statement
// [START] Print Statement
// Valor String: 
STR x10, [SP, #-8]!
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: \n==== Break ====
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosBreak
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosBreak
// [START] Print Statement
// Valor String: Break en for infinito
STR x10, [SP, #-8]!
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: contador
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: contador
// [START] Expression Statement
// Assigning to variable: suma
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] For Condition Statement
L87_:
// [COND] Evaluando condición del for
// Valor Bool: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L88_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Iniciando ámbito del cuerpo del for
// [START] Block Statement
// [START] Print Statement
// Valor String: contador =
STR x10, [SP, #-8]!
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: suma
// [START] + operation
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Expression Statement
// Assigning to variable: contador
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] If Statement
// Relational operation: >=
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, ge
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L89_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Break Statement
B L88_
// [END] Break Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
L89_:
// [END] If Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
B L87_
L88_:
// [END] Fin del For Condition Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L91_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosBreak
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK Break en for infinito: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L90_
L91_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X Break en for infinito: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L90_:
// [END] If Statement
// [START] Print Statement
// Valor String: \nBreak en for clásico
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: suma
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] For Statement
// [INIT] Ejecutando inicialización del for
// [START] Declaracion de variable: i
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: i
// [INIT] Fin de la inicialización
// [COND] Evaluando condición del for 
L92_:
// Relational operation: <
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L93_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Ejecutando cuerpo del for
// [START] Block Statement
// [START] Print Statement
// Valor String: i =
STR x10, [SP, #-8]!
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: suma
// [START] + operation
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #104
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] If Statement
// Relational operation: >=
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 4
MOV x0, #4
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, ge
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L95_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Break Statement
B L93_
// [END] Break Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
L95_:
// [END] If Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
// [INC] Procesando expresión de incremento
L94_:
// ++ operation
MOV x1, #0
ADD x1, sp, x1
LDR x0, [x1, #0]
ADD x0, x0, #1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
// [INC] Fin del incremento
B L92_
L93_:
// Liberando 8 bytes del ámbito del for
ADD sp, sp, #8
// [END] Fin del For Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L97_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosBreak
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK Break en for clásico: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L96_
L97_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X Break en for clásico: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L96_:
// [END] If Statement
// [START] Print Statement
// Valor String: \n==== Continue ====
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: puntosContinue
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: puntosContinue
// [START] Print Statement
// Valor String: Continue en for tipo while
STR x10, [SP, #-8]!
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Expression Statement
// Assigning to variable: contador
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Declaracion de variable: impares
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: impares
// [START] For Condition Statement
L98_:
// [COND] Evaluando condición del for
// Relational operation: <
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L99_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Iniciando ámbito del cuerpo del for
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: contador
// [START] + operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] If Statement
// Equality operation: ==
// [START] % operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
SDIV x2, x0, x1
MUL x3, x2, x1
SUB x0, x0, x3
STR x0, [SP, #-8]!
// [END] % operation
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L100_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Continue Statement
B L98_
// [END] Continue Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
L100_:
// [END] If Statement
// [START] Expression Statement
// Assigning to variable: impares
// [START] + operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
B L98_
L99_:
// [END] Fin del For Condition Statement
// [START] Print Statement
// Valor String: Números impares:
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 186 to heap
MOV w0, #186
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 25
MOV x0, #25
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L102_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosContinue
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK Continue en for tipo while: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L101_
L102_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X Continue en for tipo while: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L101_:
// [END] If Statement
// [START] Print Statement
// Valor String: \nContinue en for clásico
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Declaracion de variable: pares
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: pares
// [START] For Statement
// [INIT] Ejecutando inicialización del for
// [START] Declaracion de variable: i
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
// [END] Declaracion de variable: i
// [INIT] Fin de la inicialización
// [COND] Evaluando condición del for 
L103_:
// Relational operation: <
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, lt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L104_
// [COND] Condición verdadera, ejecutando cuerpo
// [BODY] Ejecutando cuerpo del for
// [START] Block Statement
// [START] If Statement
// Equality operation: !=
// [START] % operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
SDIV x2, x0, x1
MUL x3, x2, x1
SUB x0, x0, x3
STR x0, [SP, #-8]!
// [END] % operation
// Valor Int: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, ne
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L106_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Continue Statement
B L105_
// [END] Continue Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
L106_:
// [END] If Statement
// [START] Expression Statement
// Assigning to variable: pares
// [START] + operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [END] Block Statement
// [BODY] Fin del cuerpo
// [INC] Procesando expresión de incremento
L105_:
// ++ operation
MOV x1, #0
ADD x1, sp, x1
LDR x0, [x1, #0]
ADD x0, x0, #1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
// [INC] Fin del incremento
B L103_
L104_:
// Liberando 8 bytes del ámbito del for
ADD sp, sp, #8
// [END] Fin del For Statement
// [START] Print Statement
// Valor String: Números pares:
STR x10, [SP, #-8]!
// Pushing byte 78 to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 186 to heap
MOV w0, #186
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 109 to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
// [END] Print Statement
// [START] If Statement
// Equality operation: ==
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 20
MOV x0, #20
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L108_
// [+] Ejecutando bloque 'if'
// [START] Block Statement
// [START] Expression Statement
// Assigning to variable: puntosContinue
// [START] + operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Valor Int: 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: OK Continue en for clásico: correcto
STR x10, [SP, #-8]!
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 75 to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'if'
// [+] Ejecutando bloque 'else'
B L107_
L108_:
// [START] Block Statement
// [START] Print Statement
// Valor String: X Continue en for clásico: incorrecto
STR x10, [SP, #-8]!
// Pushing byte 88 to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 58 to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [END] Block Statement
// [+] Fin del bloque 'else'
L107_:
// [END] If Statement
// [START] Expression Statement
// Assigning to variable: puntos
// [START] + operation
// [START] + operation
// [START] + operation
// [START] + operation
// [START] + operation
// [START] + operation
// [START] + operation
MOV x0, #176
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #152
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #144
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #72
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #184
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Haciendo POP a la expresion
LDR x0, [SP], #8
// [END] Expression Statement
// [START] Print Statement
// Valor String: \n=== Tabla de Resultados ===
STR x10, [SP, #-8]!
// Pushing byte 10 to heap
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 84 to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 98 to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 82 to heap
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 61 to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | Característica           | Puntos | Total |
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 173 to heap
MOV w0, #173
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 80 to heap
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 84 to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | Manejo de entornos       | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 106 to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 100 to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #176
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 3     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 51 to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | If / Else                | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 73 to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 102 to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 47 to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 69 to heap
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #144
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 3     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 51 to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | For Tipo While           | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 84 to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 112 to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 87 to heap
MOV w0, #87
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #136
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 4     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 52 to heap
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | For Clásico              | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 108 to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 195 to heap
MOV w0, #195
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 3     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 51 to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | For Range                | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 70 to heap
MOV w0, #70
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 82 to heap
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 103 to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #72
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 3     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 51 to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | Switch/Case              | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 83 to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 119 to heap
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 99 to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 104 to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 47 to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 115 to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #64
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 3     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 51 to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | Break                    | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 66 to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 114 to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 97 to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 107 to heap
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 3     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 51 to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | Continue                 | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 67 to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 116 to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 105 to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 110 to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 117 to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 101 to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:     | 3     |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 51 to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: | TOTAL                    | 
STR x10, [SP, #-8]!
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 84 to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 79 to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 84 to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 65 to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 76 to heap
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #184
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Valor String:    | 25    |
STR x10, [SP, #-8]!
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 50 to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 53 to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 32 to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 124 to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
// [START] Print Statement
// Valor String: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 45 to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 43 to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// [END] Print Statement
MOV x0, #0
MOV x8, #93
SVC #0

// [+] Instrucciones [+]

print_string:
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    
    mov x19, x0
    mov x20, x0

// Calcular longitud del string
calculate_length:
    ldrb w0, [x20], #1
    cbnz w0, calculate_length
    
    sub x2, x20, x19
    sub x2, x2, #1

// Hacer syscall write
    mov x0, #1
    mov x1, x19
    mov x8, #64
    svc #0

    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret


    print_newline:
        // Imprimir salto de línea
        mov x0, #1
        adr x1, newline_char
        mov x2, #1
        mov x8, #64
        svc #0
        ret
    

//--------------------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
//--------------------------------------------------------------
print_integer:
    // Save registers
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!
    
    // Check if number is negative
    mov x19, x0
    cmp x19, #0
    bge positive_number
    
    // Handle negative number
    mov x0, #1
    adr x1, minus_sign
    mov x2, #1
    mov w8, #64
    svc #0
    
    neg x19, x19
    
positive_number:
    // Prepare buffer for converting result to ASCII
    sub sp, sp, #32
    mov x22, sp
    
    // Initialize digit counter
    mov x23, #0
    
    // Handle special case for zero
    cmp x19, #0
    bne convert_loop
    
    // If number is zero, just write '0'
    mov w24, #48
    strb w24, [x22, x23]
    add x23, x23, #1
    b print_result
    
convert_loop:
    // Divide the number by 10
    mov x24, #10
    udiv x25, x19, x24
    msub x26, x25, x24, x19
    
    // Convert remainder to ASCII and store in buffer
    add x26, x26, #48
    strb w26, [x22, x23]
    add x23, x23, #1
    
    // Prepare for next iteration
    mov x19, x25
    cbnz x19, convert_loop
    
    // Reverse the buffer since digits are in reverse order
    mov x27, #0
reverse_loop:
    sub x28, x23, x27
    sub x28, x28, #1
    
    cmp x27, x28
    bge print_result
    
    // Swap characters
    ldrb w24, [x22, x27]
    ldrb w25, [x22, x28]
    strb w25, [x22, x27]
    strb w24, [x22, x28]
    
    add x27, x27, #1
    b reverse_loop
    
print_result:
    // Print the result
    mov x0, #1
    mov x1, x22
    mov x2, x23
    mov w8, #64
    svc #0

    // Clean up and restore registers
    add sp, sp, #32
    ldp x27, x28, [sp], #16
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
    

concat_strings:
    // Prologo: Guardar registros usados
    stp x29, x30, [sp, #-64]!
    stp x19, x20, [sp, #16]
    str x21, [sp, #32]

    // Cargar parámetros
    mov x19, x0
    mov x20, x1

    // Calcular longitud de str1
    mov x0, x19
    bl  strlen
    mov x21, x0

    // Calcular longitud de str2
    mov x0, x20
    bl  strlen

    // Calcular espacio total: len1 + len2 + 1 (para null terminator)
    add x2, x21, x0
    add x2, x2, #1

    // Reservar espacio en heap (x10 = HP)
    mov x0, x10
    add x10, x10, x2

    // Copiar str1 al nuevo espacio
    mov x3, x0
    mov x4, x19
copy_str1:
    ldrb w5, [x4], #1
    strb w5, [x3], #1
    cbnz w5, copy_str1

    // Copiar str2 (sobrescribe el null de str1)
    sub x3, x3, #1
    mov x4, x20
copy_str2:
    ldrb w5, [x4], #1
    strb w5, [x3], #1
    cbnz w5, copy_str2

    // Epílogo: Restaurar registros y retornar
    ldr x21, [sp, #32]
    ldp x19, x20, [sp, #16]
    ldp x29, x30, [sp], #64
    ret

strlen:
    mov x1, #0
1:  ldrb w2, [x0], #1
    cbz w2, 2f
    add x1, x1, #1
    b 1b
2:  mov x0, x1
    ret
newline_char: .ascii "\n"
minus_sign: .ascii "-"

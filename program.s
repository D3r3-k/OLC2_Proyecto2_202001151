.data
heap: .space 4096
.text
.global _start
_start:
   adr x10, heap
// Boolean Constante: true
MOV x0, #1
STR x0, [SP, #-8]!
// Variable declaration: booleano
// Rune Constante: A
// Pushing rune 65 - A
STR x10, [SP, #-8]!
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
MOV w0, #0
STRB w0, [x10]
ADD x10, x10, x0
// Variable declaration: caracter
// If Statement
// Equality operation: ==
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Boolean Constante: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
// Equality comparison
STR x0, [SP, #-8]!
// End of Equality operation
LDR x0, [SP], #8
CBZ x0, L0_
// Block Statement
// Print Statement
// Visiting expressions
// String Constante: OK Declaración explícita: correcto
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
// Pushing byte 68 to heap
MOV w0, #68
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
B L1_
L0_:
// Block Statement
// Print Statement
// Visiting expressions
// String Constante: X Declaración explícita: incorrecto
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
// Pushing byte 68 to heap
MOV w0, #68
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
L1_:
MOV x0, #0
MOV x8, #93
SVC #0



 // Foreign Functions



 // Standard Library

print_string:
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    
    mov x19, x0                // x19 = dirección del string
    mov x20, x0                // Copia para calcular longitud

// Calcular longitud del string
calculate_length:
    ldrb w0, [x20], #1
    cbnz w0, calculate_length
    
    sub x2, x20, x19           // x2 = longitud (incluyendo null terminator)
    sub x2, x2, #1             // Excluir el null terminator

// Hacer syscall write
    mov x0, #1                 // stdout
    mov x1, x19                // buffer
    mov x8, #64                // syscall write
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
    
newline_char: .ascii "\n"

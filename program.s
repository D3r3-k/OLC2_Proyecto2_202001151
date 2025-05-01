.data
heap: .space 4096
.text
.global _start
_start:
   adr x10, heap
// Print Statement
// Visiting expressions
MOV x0, #16
SUB sp, sp, x0
// Visiting function parameters
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Constante: 3
MOV x0, #3
STR x0, [SP, #-8]!
MOV x0, #32
ADD sp, sp, x0
MOV x0, #8
SUB x0, sp, x0
ADR x1, L22_
STR x1, [SP, #-8]!
STR x29, [SP, #-8]!
ADD x29, x0, xzr
MOV x0, #24
SUB sp, sp, x0
// Function Call: sumar
BL sumar
// End of Function Call: sumar
L22_:
MOV x4, #32
SUB x4, x29, x4
LDR x4, [x4, #0]
MOV x1, #8
SUB x1, x29, x1
LDR x29, [x1, #0]
MOV x0, #40
ADD sp, sp, x0
STR x4, [SP, #-8]!
// End of Function Call: sumar
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
BL print_newline
MOV x0, #0
MOV x8, #93
SVC #0



 // Foreign Functions
// Function Declaration: saludar
saludar:
// Function Declarationsaludar
saludar:
// Print Statement
// Visiting expressions
// String Constante: ¡Hola, mundo!
STR x10, [SP, #-8]!
// Pushing byte 194 to heap
MOV w0, #194
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 72 to heap
MOV w0, #72
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
// Pushing byte 33 to heap
MOV w0, #33
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
L0_:
ADD x0, x29, xzr
LDR x30, [x0, #0]
BR x30
// End of Function Declarationsaludar
// Function Declaration: obtenerNumero
obtenerNumero:
// Function DeclarationobtenerNumero
obtenerNumero:
// Return Statement
// Constante: 42
MOV x0, #42
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
SUB x1, x29, x1
STR x0, [x1, #0]
B L1_
L1_:
ADD x0, x29, xzr
LDR x30, [x0, #0]
BR x30
// End of Function DeclarationobtenerNumero
// Function Declaration: saludarPersona
saludarPersona:
// Function DeclarationsaludarPersona
saludarPersona:
// Print Statement
// Visiting expressions
// String Constante: ¡Hola,
STR x10, [SP, #-8]!
// Pushing byte 194 to heap
MOV w0, #194
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 161 to heap
MOV w0, #161
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 72 to heap
MOV w0, #72
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
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Visit left operand
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// String Constante: !
STR x10, [SP, #-8]!
// Pushing byte 33 to heap
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Push result
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
L2_:
ADD x0, x29, xzr
LDR x30, [x0, #0]
BR x30
// End of Function DeclarationsaludarPersona
// Function Declaration: sumar
sumar:
// Function Declarationsumar
sumar:
// Return Statement
// Visit left operand
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Push result
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #32
SUB x1, x29, x1
STR x0, [x1, #0]
B L3_
L3_:
ADD x0, x29, xzr
LDR x30, [x0, #0]
BR x30
// End of Function Declarationsumar
// Function Declaration: factorial
factorial:
// Function Declarationfactorial
factorial:
// If Statement
// Relational operation: <=
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, le
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L5_
// Block Statement
// Return Statement
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #24
SUB x1, x29, x1
STR x0, [x1, #0]
B L4_
L5_:
// Return Statement
// * operation
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
SUB sp, sp, x0
// Visiting function parameters
// Visit left operand
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
SUB x0, x1, x0
// Push result
STR x0, [SP, #-8]!
MOV x0, #24
ADD sp, sp, x0
MOV x0, #8
SUB x0, sp, x0
ADR x1, L6_
STR x1, [SP, #-8]!
STR x29, [SP, #-8]!
ADD x29, x0, xzr
MOV x0, #16
SUB sp, sp, x0
// Function Call: factorial
BL factorial
// End of Function Call: factorial
L6_:
MOV x4, #24
SUB x4, x29, x4
LDR x4, [x4, #0]
MOV x1, #8
SUB x1, x29, x1
LDR x29, [x1, #0]
MOV x0, #32
ADD sp, sp, x0
STR x4, [SP, #-8]!
// End of Function Call: factorial
LDR x1, [SP], #8
LDR x0, [SP], #8
MUL x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #24
SUB x1, x29, x1
STR x0, [x1, #0]
B L4_
L4_:
ADD x0, x29, xzr
LDR x30, [x0, #0]
BR x30
// End of Function Declarationfactorial
// Function Declaration: ackermann
ackermann:
// Function Declarationackermann
ackermann:
// If Statement
// Equality operation: ==
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constante: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L8_
// Block Statement
// Return Statement
// Visit left operand
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Push result
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #32
SUB x1, x29, x1
STR x0, [x1, #0]
B L7_
B L9_
L8_:
// If Statement
// Logical && operation
// Relational operation: >
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constante: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, gt
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
CBZ x0, ANDOR_FALSE10_
// Equality operation: ==
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constante: 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CMP x0, #0
CSET x0, ne
B ANDOR_END12_
ANDOR_FALSE10_:
MOV x0, #0
B ANDOR_END12_
ANDOR_END12_:
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L13_
// Block Statement
// Return Statement
MOV x0, #16
SUB sp, sp, x0
// Visiting function parameters
// Visit left operand
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
SUB x0, x1, x0
// Push result
STR x0, [SP, #-8]!
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
MOV x0, #32
ADD sp, sp, x0
MOV x0, #8
SUB x0, sp, x0
ADR x1, L15_
STR x1, [SP, #-8]!
STR x29, [SP, #-8]!
ADD x29, x0, xzr
MOV x0, #24
SUB sp, sp, x0
// Function Call: ackermann
BL ackermann
// End of Function Call: ackermann
L15_:
MOV x4, #32
SUB x4, x29, x4
LDR x4, [x4, #0]
MOV x1, #8
SUB x1, x29, x1
LDR x29, [x1, #0]
MOV x0, #40
ADD sp, sp, x0
STR x4, [SP, #-8]!
// End of Function Call: ackermann
LDR x0, [SP], #8
MOV x1, #32
SUB x1, x29, x1
STR x0, [x1, #0]
B L7_
// Removing 8 bytes from the stack
MOV x0, #8
ADD sp, sp, x0
// Stack pointer after removing bytes: sp
B L14_
L13_:
// Block Statement
// Return Statement
MOV x0, #16
SUB sp, sp, x0
// Visiting function parameters
// Visit left operand
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
SUB x0, x1, x0
// Push result
STR x0, [SP, #-8]!
MOV x0, #16
SUB sp, sp, x0
// Visiting function parameters
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit left operand
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
SUB x0, x1, x0
// Push result
STR x0, [SP, #-8]!
MOV x0, #32
ADD sp, sp, x0
MOV x0, #8
SUB x0, sp, x0
ADR x1, L17_
STR x1, [SP, #-8]!
STR x29, [SP, #-8]!
ADD x29, x0, xzr
MOV x0, #24
SUB sp, sp, x0
// Function Call: ackermann
BL ackermann
// End of Function Call: ackermann
L17_:
MOV x4, #32
SUB x4, x29, x4
LDR x4, [x4, #0]
MOV x1, #8
SUB x1, x29, x1
LDR x29, [x1, #0]
MOV x0, #40
ADD sp, sp, x0
STR x4, [SP, #-8]!
// End of Function Call: ackermann
MOV x0, #32
ADD sp, sp, x0
MOV x0, #8
SUB x0, sp, x0
ADR x1, L16_
STR x1, [SP, #-8]!
STR x29, [SP, #-8]!
ADD x29, x0, xzr
MOV x0, #24
SUB sp, sp, x0
// Function Call: ackermann
BL ackermann
// End of Function Call: ackermann
L16_:
MOV x4, #32
SUB x4, x29, x4
LDR x4, [x4, #0]
MOV x1, #8
SUB x1, x29, x1
LDR x29, [x1, #0]
MOV x0, #40
ADD sp, sp, x0
STR x4, [SP, #-8]!
// End of Function Call: ackermann
LDR x0, [SP], #8
MOV x1, #32
SUB x1, x29, x1
STR x0, [x1, #0]
B L7_
L14_:
L9_:
L7_:
ADD x0, x29, xzr
LDR x30, [x0, #0]
BR x30
// End of Function Declarationackermann
// Function Declaration: hanoi
hanoi:
// Function Declarationhanoi
hanoi:
// If Statement
// Equality operation: ==
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, eq
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, L19_
// Block Statement
// Print Statement
// Visiting expressions
// String Constante: Mover disco 1 de
STR x10, [SP, #-8]!
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
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
// Pushing byte 115 to heap
MOV w0, #115
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
// Pushing byte 49 to heap
MOV w0, #49
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
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// String Constante: a
STR x10, [SP, #-8]!
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
MOV x0, #40
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// Return Statement
B L18_
L19_:
// Expression Statement
MOV x0, #16
SUB sp, sp, x0
// Visiting function parameters
// Visit left operand
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
SUB x0, x1, x0
// Push result
STR x0, [SP, #-8]!
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #40
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #32
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #48
ADD sp, sp, x0
MOV x0, #8
SUB x0, sp, x0
ADR x1, L20_
STR x1, [SP, #-8]!
STR x29, [SP, #-8]!
ADD x29, x0, xzr
MOV x0, #40
SUB sp, sp, x0
// Function Call: hanoi
BL hanoi
// End of Function Call: hanoi
L20_:
MOV x4, #48
SUB x4, x29, x4
LDR x4, [x4, #0]
MOV x1, #8
SUB x1, x29, x1
LDR x29, [x1, #0]
MOV x0, #56
ADD sp, sp, x0
STR x4, [SP, #-8]!
// End of Function Call: hanoi
// Pop the value to discard
LDR x0, [SP], #8
// Print Statement
// Visiting expressions
// String Constante: Mover disco
STR x10, [SP, #-8]!
// Pushing byte 77 to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing byte 111 to heap
MOV w0, #111
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
// Pushing byte 115 to heap
MOV w0, #115
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
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// String Constante: de
STR x10, [SP, #-8]!
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
// Pushing byte 0 to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// String Constante: a
STR x10, [SP, #-8]!
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
MOV x0, #40
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string
BL print_newline
// Expression Statement
MOV x0, #16
SUB sp, sp, x0
// Visiting function parameters
// Visit left operand
MOV x0, #16
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visit right operand
// Constante: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pop operands
LDR x1, [SP], #8
LDR x1, [SP], #8
SUB x0, x1, x0
// Push result
STR x0, [SP, #-8]!
MOV x0, #32
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #24
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #40
SUB x0, x29, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #48
ADD sp, sp, x0
MOV x0, #8
SUB x0, sp, x0
ADR x1, L21_
STR x1, [SP, #-8]!
STR x29, [SP, #-8]!
ADD x29, x0, xzr
MOV x0, #40
SUB sp, sp, x0
// Function Call: hanoi
BL hanoi
// End of Function Call: hanoi
L21_:
MOV x4, #48
SUB x4, x29, x4
LDR x4, [x4, #0]
MOV x1, #8
SUB x1, x29, x1
LDR x29, [x1, #0]
MOV x0, #56
ADD sp, sp, x0
STR x4, [SP, #-8]!
// End of Function Call: hanoi
// Pop the value to discard
LDR x0, [SP], #8
L18_:
ADD x0, x29, xzr
LDR x30, [x0, #0]
BR x30
// End of Function Declarationhanoi



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
    

//--------------------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
//--------------------------------------------------------------
print_integer:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!
    
    // Check if number is negative
    mov x19, x0                // Save original number
    cmp x19, #0                // Compare with zero
    bge positive_number        // Branch if greater or equal to zero
    
    // Handle negative number
    mov x0, #1                 // fd = 1 (stdout)
    adr x1, minus_sign         // Address of minus sign
    mov x2, #1                 // Length = 1
    mov w8, #64                // Syscall write
    svc #0
    
    neg x19, x19               // Make number positive
    
positive_number:
    // Prepare buffer for converting result to ASCII
    sub sp, sp, #32            // Reserve space on stack
    mov x22, sp                // x22 points to buffer
    
    // Initialize digit counter
    mov x23, #0                // Digit counter
    
    // Handle special case for zero
    cmp x19, #0
    bne convert_loop
    
    // If number is zero, just write '0'
    mov w24, #48               // ASCII '0'
    strb w24, [x22, x23]       // Store in buffer
    add x23, x23, #1           // Increment counter
    b print_result             // Skip conversion loop
    
convert_loop:
    // Divide the number by 10
    mov x24, #10
    udiv x25, x19, x24         // x25 = x19 / 10 (quotient)
    msub x26, x25, x24, x19    // x26 = x19 - (x25 * 10) (remainder)
    
    // Convert remainder to ASCII and store in buffer
    add x26, x26, #48          // Convert to ASCII ('0' = 48)
    strb w26, [x22, x23]       // Store digit in buffer
    add x23, x23, #1           // Increment digit counter
    
    // Prepare for next iteration
    mov x19, x25               // Quotient becomes the new number
    cbnz x19, convert_loop     // If number is not zero, continue
    
    // Reverse the buffer since digits are in reverse order
    mov x27, #0                // Start index
reverse_loop:
    sub x28, x23, x27          // x28 = length - current index
    sub x28, x28, #1           // x28 = length - current index - 1
    
    cmp x27, x28               // Compare indices
    bge print_result           // If crossed, finish reversing
    
    // Swap characters
    ldrb w24, [x22, x27]       // Load character from start
    ldrb w25, [x22, x28]       // Load character from end
    strb w25, [x22, x27]       // Store end character at start
    strb w24, [x22, x28]       // Store start character at end
    
    add x27, x27, #1           // Increment start index
    b reverse_loop             // Continue reversing
    
print_result:
    // Print the result
    mov x0, #1                 // fd = 1 (stdout)
    mov x1, x22                // Buffer address
    mov x2, x23                // Buffer length
    mov w8, #64                // Syscall write
    svc #0

    // Clean up and restore registers
    add sp, sp, #32            // Free buffer space
    ldp x27, x28, [sp], #16    // Restore callee-saved registers
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret                        // Return to caller
    
newline_char: .ascii "\n"
minus_sign: .ascii "-"

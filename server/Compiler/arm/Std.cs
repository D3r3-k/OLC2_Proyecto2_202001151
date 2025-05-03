public class StandardLibrary
{
    private readonly HashSet<string> UsedFunctions = new HashSet<string>();
    private readonly HashSet<string> UsedSymbols = new HashSet<string>();

    public void Use(string function)
    {
        UsedFunctions.Add(function);

        var symbolMappings = new Dictionary<string, string[]>
        {
            { "print_integer", new[] { "minus_sign" } },
            { "print_double", new[] { "dot_char", "zero_char" } },
            { "print_bool", new[] { "true_str", "false_str" } },
            { "print_rune", new[] { "rune_char" } },
            { "print_newline", new[] { "newline_char" } },
            { "print_nil", new[] { "nil_char" } },

        };

        if (symbolMappings.TryGetValue(function, out var symbols))
        {
            foreach (var symbol in symbols)
            {
                UsedSymbols.Add(symbol);
            }
        }
    }
    public string GetFunctionDefinitions()
    {
        var functions = new List<string>();

        foreach (var function in UsedFunctions)
        {
            if (FunctionDefinitions.TryGetValue(function, out var definition))
            {
                functions.Add(definition);
            }
        }

        var fnDefs = string.Join("\n", functions);

        var symbols = new List<string>();
        foreach (var symbol in UsedSymbols)
        {
            if (Symbols.TryGetValue(symbol, out var definition))
            {
                symbols.Add(definition);
            }
        }
        var symbolsDefs = string.Join("\n", symbols);

        return fnDefs + "\n" + symbolsDefs;
    }

    private readonly static Dictionary<string, string> FunctionDefinitions = new Dictionary<string, string>
    {
    { "print_integer", @"
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
    "
    },
    { "print_string", @"
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
"
    },
    { "print_double", @"
//--------------------------------------------------------------
// print_double - Prints a double precision float to stdout
//
// Input:
//   d0 - The double value to print
//--------------------------------------------------------------
print_double:
    // Save context
    stp x29, x30, [sp, #-16]!    
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    
    // Check if number is negative
    fmov x19, d0
    tst x19, #(1 << 63)
    beq skip_minus

    // Print minus sign
    mov x0, #1
    adr x1, minus_sign
    mov x2, #1
    mov x8, #64
    svc #0

    // Make value positive
    fneg d0, d0

skip_minus:
    // Convert integer part
    fcvtzs x0, d0
    bl print_integer

    // Print dot '.'
    mov x0, #1
    adr x1, dot_char
    mov x2, #1
    mov x8, #64
    svc #0

    // Get fractional part: frac = d0 - float(int(d0))
    frintm d4, d0
    fsub d2, d0, d4

    // Para 2.5, d2 debe ser exactamente 0.5

    // Multiplicar por 1_000_000 (6 decimales)
    movz x1, #0x000F, lsl #16
    movk x1, #0x4240, lsl #0
    scvtf d3, x1
    fmul d2, d2, d3
    
    // Redondear al entero más cercano para evitar errores de precisión
    frintn d2, d2
    fcvtzs x0, d2

    // Imprimir ceros a la izquierda si es necesario
    mov x20, x0
    movz x21, #0x0001, lsl #16
    movk x21, #0x86A0, lsl #0
    mov x22, #0
    mov x23, #10

leading_zero_loop:
    udiv x24, x20, x21
    cbnz x24, done_leading_zeros

    // Imprimir '0'
    mov x0, #1
    adr x1, zero_char
    mov x2, #1
    mov x8, #64
    svc #0

    udiv x21, x21, x23
    add x22, x22, #1
    cmp x21, #0
    beq print_remaining
    b leading_zero_loop

done_leading_zeros:
    // Print the remaining fractional part
    mov x0, x20
    bl print_integer
    b exit_function

print_remaining:
    // Caso especial cuando la parte fraccionaria es 0 después de imprimir ceros
    cmp x20, #0
    bne exit_function

exit_function:
    // Restore context
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
    "
    },
    { "print_bool", @"
    //--------------------------------------------------------------
    // print_bool - Prints a boolean value to stdout
    //
    // Input:
    //   x0 - The boolean value (0 for false, non-zero for true)
    //--------------------------------------------------------------
    print_bool:
        // Save registers
        stp x29, x30, [sp, #-16]!
        
        // Check if value is true or false
        cmp x0, #0
        beq print_false
        
        // Print 'true'
        adr x1, true_str
        mov x2, #4
        b do_print
        
    print_false:
        // Print 'false'
        adr x1, false_str
        mov x2, #5
        
    do_print:
        mov x0, #1
        mov x8, #64
        svc #0

        // Restore registers and return
        ldp x29, x30, [sp], #16
        ret
        "
    },
    { "string_compare", @"
string_compare:
    // X0 = str1, X1 = str2
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    mov x20, x1

compare_loop:
    ldrb w0, [x19], #1
    ldrb w1, [x20], #1
    cmp w0, w1
    b.ne not_equal
    cbnz w0, compare_loop

    // Strings iguales
    mov x0, #0
    b compare_end

not_equal:
    mov x0, #1

compare_end:
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
"
    },
    { "print_rune", @"
//--------------------------------------------------------------
// print_rune - Prints a rune from its ASCII value (not address)
//
// Input:
//   x0 - ASCII value of the rune (byte)
//--------------------------------------------------------------
print_rune:
    stp x29, x30, [sp, #-32]!
    strb w0, [sp, #16]
    
    // Imprimir desde el stack
    mov x0, #1
    add x1, sp, #16
    mov x2, #1
    mov x8, #64
    svc #0
    
    ldp x29, x30, [sp], #32
    ret
"
},
    { "print_newline", @"
    print_newline:
        // Imprimir salto de línea
        mov x0, #1
        adr x1, newline_char
        mov x2, #1
        mov x8, #64
        svc #0
        ret
    "
    },
    { "concat_strings", @"
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
    ret"
    },
    { "print_nil", @"
    print_nil:
        // Imprimir nil
        mov x0, #1
        adr x1, nil_char
        mov x2, #3
        mov x8, #64
        svc #0
        ret"
    }
};

    private readonly static Dictionary<string, string> Symbols = new Dictionary<string, string>
    {
        { "minus_sign", @"minus_sign: .ascii ""-""" },
        { "dot_char", @"dot_char: .ascii "".""" },
        { "zero_char", @"zero_char: .ascii ""0""" },
        {"true_str", @"true_str: .ascii ""true""" },
        { "false_str", @"false_str: .ascii ""false""" },
        { "true_str_len", @".equ true_str_len, . - true_str" },
        { "false_str_len", @".equ false_str_len, . - false_str" },
        { "string_compare", @"string_compare: .ascii ""string_compare""" },
        { "rune_char", @"rune_char: .ascii ""r""" },
        { "newline_char", @"newline_char: .ascii ""\n""" },
        { "concat_strings", @"concat_strings: .asciz ""concat_strings""" },
        { "nil_char", @"nil_char: .ascii ""nil""" },
        { "nil_char_len", @".equ nil_char_len, . - nil_char" },
    };

}
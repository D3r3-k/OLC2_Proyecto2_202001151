
using System.Text;

public class StackObject
{
    public enum StackObjectType { Int, Float, String, Bool, Void, Slice, Nil, Rune, Undefine }
    public StackObjectType Type { get; set; }
    public int Length { get; set; }
    public int Offset { get; set; }
    public int Depth { get; set; }
    public string? Id { get; set; }
}

public class ArmGenerator
{
    public List<string> _instructions = new List<string>();
    public List<string> _funcInstructions = new List<string>();
    public readonly StandardLibrary _stdLib = new StandardLibrary();
    private List<StackObject> _stack = new List<StackObject>();
    private int _depth = 0;
    private int labelCounter = 0;
    // TODO: STACK OPERATIONS

    public StackObject TopObject()
    {
        return _stack.Last();
    }

    public void PushObject(StackObject obj)
    {
        //Console.WriteLine($"Pushing object: Type={obj.Type}, Id={obj.Id}, Depth={obj.Depth}");
        _stack.Add(obj);
    }

    public void PopObject()
    {
        if (_stack.Count == 0)
        {
            Console.WriteLine("Stack trace:");
            foreach (var item in _stack)
            {
                Console.WriteLine($"- Type={item.Type}, Id={item.Id}, Depth={item.Depth}");
            }
            throw new Exception("No hay objetos en la pila");
        }
        //Console.WriteLine($"Popping object: Type={_stack.Last().Type}, Id={_stack.Last().Id}, Depth={_stack.Last().Depth}");
        _stack.RemoveAt(_stack.Count - 1);
    }

    public void PushConstant(StackObject obj, object value)
    {
        switch (obj.Type)
        {
            case StackObject.StackObjectType.Int:
                Mov(Register.X0, (int)value);
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.Float:
                double doubleValue = (double)value;
                Comment($"Float constant: {doubleValue}");

                // Convertir el double a bits
                long floatBits = BitConverter.DoubleToInt64Bits(doubleValue);

                // Cargar el valor en partes de 16 bits
                for (int shift = 0; shift < 64; shift += 16)
                {
                    ushort part = (ushort)((floatBits >> shift) & 0xFFFF);
                    if (part != 0)
                    {
                        _instructions.Add(shift == 0
                            ? $"MOVZ X0, #{part}, LSL #{shift}"
                            : $"MOVK X0, #{part}, LSL #{shift}");
                    }
                }

                Push(Register.X0);
                break;
            case StackObject.StackObjectType.String:
                List<byte> stringArray = Utils.StringToByteArray((string)value);
                Push(Register.HP);
                foreach (var byteVal in stringArray)
                {
                    Comment($"Pushing byte {byteVal} to heap");
                    Mov(Register.W0, byteVal);
                    Strb(Register.W0, Register.HP);
                    Mov(Register.X0, 1);
                    Add(Register.HP, Register.HP, Register.X0);
                }
                break;
            case StackObject.StackObjectType.Rune:
                char runeValue = (char)Convert.ToInt32(value);
                Comment($"Pushing rune {(int)runeValue} - {runeValue}");

                // Almacenar el rune en el heap (1 byte para ASCII)
                Push(Register.HP);  // Guardamos la dirección donde colocaremos el rune

                // Almacenar el valor del rune
                Mov(Register.W0, (byte)runeValue);
                Strb(Register.W0, Register.HP);

                // Incrementar HP
                Mov(Register.X0, 1);
                Add(Register.HP, Register.HP, Register.X0);

                // Null terminator (opcional para runes)
                Mov(Register.W0, 0);
                Strb(Register.W0, Register.HP);
                Add(Register.HP, Register.HP, Register.X0); // Incrementar HP otra vez
                break;
            case StackObject.StackObjectType.Bool:
                Mov(Register.X0, (bool)value ? 1 : 0);
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.Void:
                break;
        }
        PushObject(obj);
    }
    public StackObject PopObject(string rd)
    {
        var obj = _stack.Last();
        PopObject();
        Pop(rd);
        return obj;
    }

    // public void PopObject()
    // {
    //     Comment($"Popping object from stack");
    //     try
    //     {
    //         _stack.RemoveAt(_stack.Count - 1);
    //     }
    //     catch (System.Exception err)
    //     {
    //         throw new Exception("No hay objetos en la pila");
    //     }
    // }

    public StackObject IntObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Int,
            Length = 8,
            Depth = _depth,
            Id = null
        };
    }
    public StackObject BoolObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Bool,
            Length = 8,
            Depth = _depth,
            Id = null
        };
    }
    public StackObject VoidObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Void,
            Length = 8,
            Depth = _depth,
            Id = null
        };
    }
    public StackObject NilObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Nil,
            Length = 8,
            Depth = _depth,
            Id = null
        };
    }
    public StackObject RuneObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Rune,
            Length = 8,
            Depth = _depth,
            Id = null
        };
    }
    public StackObject FloatObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Float,
            Length = 8,
            Depth = _depth,
            Id = null
        };
    }
    public StackObject StringObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.String,
            Length = 8,
            Depth = _depth,
            Id = null
        };
    }

    public StackObject CloneObject(StackObject obj)
    {
        return new StackObject
        {
            Type = obj.Type,
            Length = obj.Length,
            Depth = obj.Depth,
            Id = obj.Id
        };
    }

    // ? Enviroment operations
    public void NewScope()
    {
        _depth++;
    }

    public int EndScope()
    {
        int byteOffset = 0;
        for (int i = _stack.Count - 1; i >= 0; i--)
        {
            if (_stack[i].Depth == _depth)
            {
                byteOffset += _stack[i].Length;
                _stack.RemoveAt(i);
            }
            else
            {
                break;
            }
        }
        _depth--;
        return byteOffset;
    }

    public void TagObject(string id)
    {
        _stack.Last().Id = id;
    }

    public (int, StackObject) GetObject(string id)
    {
        int byteOffset = 0;
        // Buscar desde el tope de la pila hacia abajo
        for (int i = _stack.Count - 1; i >= 0; i--)
        {
            if (_stack[i].Id == id)
            {
                return (byteOffset, _stack[i]);
            }
            byteOffset += _stack[i].Length;
        }
        throw new Exception($"Objeto {id} no encontrado en la pila");
    }

    // -------------------------

    public void Add(string rd, string rs1, string rs2)
    {
        _instructions.Add($"ADD {rd}, {rs1}, {rs2}");
    }
    public void Add(string rd, string rs1, int imm)
    {
        _instructions.Add($"ADD {rd}, {rs1}, #{imm}");
    }

    public void Adr(string rd, string label)
    {
        _instructions.Add($"ADR {rd}, {label}");
    }

    public void Sub(string rd, string rs1, string rs2)
    {
        _instructions.Add($"SUB {rd}, {rs1}, {rs2}");
    }
    public void Sub(string rd, string rs1, int imm)
    {
        _instructions.Add($"SUB {rd}, {rs1}, #{imm}");
    }

    public void Mul(string rd, string rs1, string rs2)
    {
        _instructions.Add($"MUL {rd}, {rs1}, {rs2}");
    }

    public void Div(string rd, string rs1, string rs2)
    {
        _instructions.Add($"DIV {rd}, {rs1}, {rs2}");
    }
    public void Sdiv(string rd, string rs1, string rs2)
    {
        _instructions.Add($"SDIV {rd}, {rs1}, {rs2}");
    }

    public void Addi(string rd, string rs1, int imm)
    {
        _instructions.Add($"ADDI {rd}, {rs1}, #{imm}");
    }

    // Memory operations
    public void Str(string rs1, string rs2, int offset = 0)
    {
        _instructions.Add($"STR {rs1}, [{rs2}, #{offset}]");
    }

    public void Strb(string rs1, string rs2)
    {
        _instructions.Add($"STRB {rs1}, [{rs2}]");
    }

    public void Ldr(string rd, string rs1, int offset = 0)
    {
        _instructions.Add($"LDR {rd}, [{rs1}, #{offset}]");
    }

    public void Mov(string rd, int imm)
    {
        _instructions.Add($"MOV {rd}, #{imm}");
    }
    public void Push(string rs)
    {
        _instructions.Add($"STR {rs}, [SP, #-8]!");
    }

    public void Pop(string rd)
    {
        _instructions.Add($"LDR {rd}, [SP], #8");
    }

    /* Float Operations */
    public void Fneg(string rd, string rs)
    {
        _instructions.Add($"FNEG {rd}, {rs}");
    }
    public void Neg(string rd, string rs)
    {
        _instructions.Add($"NEG {rd}, {rs}");
    }
    public void Mvn(string rd, string rs)
    {
        _instructions.Add($"MVN {rd}, {rs}");
    }
    public void Scvtf(string rd, string rs)
    {
        _instructions.Add($"SCVTF {rd}, {rs}");
    }

    public void Fmov(string rd, string rs)
    {
        _instructions.Add($"FMOV {rd}, {rs}");
    }
    public void Fmov(string rd, double value)
    {
        long bits = BitConverter.DoubleToInt64Bits(value);
        _instructions.Add($"MOV X1, #{bits & 0xFFFF}");
        _instructions.Add($"MOVK X1, #{(bits >> 16) & 0xFFFF}, LSL #16");
        _instructions.Add($"MOVK X1, #{(bits >> 32) & 0xFFFF}, LSL #32");
        _instructions.Add($"MOVK X1, #{(bits >> 48) & 0xFFFF}, LSL #48");
        _instructions.Add($"FMOV {rd}, X1");
    }
    public void Fadd(string rd, string rs1, string rs2)
    {
        _instructions.Add($"FADD {rd}, {rs1}, {rs2}");
    }
    public void Fsub(string rd, string rs1, string rs2)
    {
        _instructions.Add($"FSUB {rd}, {rs1}, {rs2}");
    }
    public void Fmul(string rd, string rs1, string rs2)
    {
        _instructions.Add($"FMUL {rd}, {rs1}, {rs2}");
    }
    public void Fdiv(string rd, string rs1, string rs2)
    {
        _instructions.Add($"FDIV {rd}, {rs1}, {rs2}");
    }

    public void Fcsel(string rd, string rs1, string rs2, string cond)
    {
        _instructions.Add($"FCSEL {rd}, {rs1}, {rs2}, {cond}");
    }

    // Branch operations

    public void B(string label)
    {
        _instructions.Add($"B {label}");
    }

    public void Br(string rs)
    {
        _instructions.Add($"BR {rs}");
    }

    public void Bl(string label)
    {
        _instructions.Add($"BL {label}");
    }

    public void Cbz(string rs, string label)
    {
        _instructions.Add($"CBZ {rs}, {label}");
    }

    public void Cbnz(string rs, string label)
    {
        _instructions.Add($"CBNZ {rs}, {label}");
    }

    public void Cmp(string rs1, string rs2)
    {
        _instructions.Add($"CMP {rs1}, {rs2}");
    }
    public void Cmp(string rs1, int imm)
    {
        _instructions.Add($"CMP {rs1}, #{imm}");
    }

    // Add to ArmGenerator.cs
    public void Fcmp(string rn, string rm) => _instructions.Add($"FCMP {rn}, {rm}");
    public void Cset(string rd, string cond) => _instructions.Add($"CSET {rd}, {cond}");
    public void And(string rd, string rn, long imm) => _instructions.Add($"AND {rd}, {rn}, #{imm}");



    public void Beq(string label)
    {
        _instructions.Add($"BEQ {label}");
    }

    public void Bne(string label)
    {
        _instructions.Add($"BNE {label}");
    }

    public void Bgt(string label)
    {
        _instructions.Add($"BGT {label}");
    }

    public void Blt(string label)
    {
        _instructions.Add($"BLT {label}");
    }

    public void Bge(string label)
    {
        _instructions.Add($"BGE {label}");
    }

    public void Ble(string label)
    {
        _instructions.Add($"BLE {label}");
    }

    public void Ret()
    {
        _instructions.Add($"RET");
    }

    public string GetLabel(string prefix = "L")
    {
        return $"{prefix}{labelCounter++}_";
    }

    public string GetUniqueLabel()
    {
        return $"L{labelCounter++}_";
    }
    public void ResetLabelCounter()
    {
        labelCounter = 0;
    }

    public void SetLabel(string label)
    {
        _instructions.Add($"{label}:");
    }


    public void Ret(string rs)
    {
        _instructions.Add($"RET {rs}");
    }

    //

    public void Svc()
    {
        _instructions.Add($"SVC #0");
    }

    public void EndProgram()
    {
        Mov(Register.X0, 0);
        Mov(Register.X8, 93);
        Svc();
    }

    public void PrintInteger(string rs)
    {
        _stdLib.Use("print_integer");
        _instructions.Add($"MOV X0, {rs}");
        _instructions.Add($"BL print_integer");
    }

    public void PrintFloat()
    {
        _stdLib.Use("print_integer");
        _stdLib.Use("print_double");
        _instructions.Add($"BL print_double");
    }

    public void PrintString(string rs)
    {
        _stdLib.Use("print_string");
        _instructions.Add($"MOV X0, {rs}");
        _instructions.Add($"BL print_string");
    }

    public void PrintBool(string rs)
    {
        _stdLib.Use("print_bool");
        _instructions.Add($"MOV X0, {rs}");
        _instructions.Add($"BL print_bool");
    }
    public void PrintNil()
    {
        _stdLib.Use("print_nil");
        _instructions.Add($"BL print_nil");
    }
    public void PrintRune(string rs)
    {
        _stdLib.Use("print_rune");
        _instructions.Add($"MOV X0, {rs}");
        _instructions.Add($"BL print_rune");
    }

    public void PrintNewLine()
    {
        _stdLib.Use("print_newline");
        Bl("print_newline");
    }

    public void Comment(string comment)
    {
        _instructions.Add($"// {comment}");
    }

    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.AppendLine(".data");
        sb.AppendLine("heap: .space 4096");
        sb.AppendLine(".text");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");
        sb.AppendLine("   adr x10, heap");

        EndProgram();
        foreach (var instruction in _instructions)
        {
            sb.AppendLine(instruction);
        }

        sb.AppendLine("\n\n\n // Foreign Functions");
        _funcInstructions.ForEach(i => sb.AppendLine(i));

        sb.AppendLine("\n\n\n // Standard Library");
        sb.AppendLine(_stdLib.GetFunctionDefinitions());

        return sb.ToString();
    }

    public void commentStack()
    {
        Console.WriteLine("Stack:");
        string stackString = "Stack: ";
        foreach (var obj in _stack)
        {
            stackString += $"[{obj.Type}, {obj.Length}, {obj.Depth}, {obj.Id}] ";
            Console.WriteLine($"Type: {obj.Type}, Length: {obj.Length}, Depth: {obj.Depth}, Id: {obj.Id}");
        }
        Comment(stackString);
    }


    public StackObject GetFrameLocal(int index)
    {
        var obj = _stack.Where(o => o.Type == StackObject.StackObjectType.Undefine).ToList()[index];
        return obj;
    }

    public StackObject GetDefaultValueArm(string type)
    {
        return type switch
        {
            "int" => IntObject(),
            "float64" => FloatObject(),
            "string" => StringObject(),
            "bool" => BoolObject(),
            "rune" => RuneObject(),
            "nil" => NilObject(),
            _ when type.Contains("[][]") => new StackObject
            {
                Type = StackObject.StackObjectType.Slice,
                Length = 8,
                Depth = _depth,
                Id = null
            },
            _ when type.Contains("[]") => new StackObject
            {
                Type = StackObject.StackObjectType.Slice,
                Length = 8,
                Depth = _depth,
                Id = null
            },
            _ => throw new Exception($"Tipo no soportado: {type}"),
        };
    }
}
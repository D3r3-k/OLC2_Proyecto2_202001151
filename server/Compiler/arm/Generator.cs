
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
    private readonly StandardLibrary _stdLib = new StandardLibrary();
    private List<StackObject> _stack = new List<StackObject>();
    private int _depth = 0;
    private int labelCounter = 0;
    public string GetLabel()
    {
        return $"L{labelCounter++}";
    }
    public void SetLabel(string label)
    {
        _instructions.Add($"{label}:");
    }
    // TODO: STACK OPERATIONS

    public StackObject TopObject()
    {
        return _stack.Last();
    }

    public void PushObject(StackObject obj)
    {
        Comment($"Pushing object {obj.Type} to stack");
        _stack.Add(obj);
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
                long floatBits = BitConverter.DoubleToInt64Bits((double)value);
                short[] floatArray = new short[4];
                for (int i = 0; i < 4; i++)
                {
                    floatArray[i] = (short)((floatBits >> (i * 16)) & 0xFFFF);
                }
                _instructions.Add($"MOVZ X0, #{floatArray[0]}, LSL #0");
                for (int i = 1; i < 4; i++)
                {
                    _instructions.Add($"MOVK X0, #{floatArray[i]}, LSL #{i * 16}");
                }
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.String:
                List<byte> stringArray = Utils.StringToByteArray((string)value);
                Push(Register.HP);
                for (int i = 0; i < stringArray.Count; i++)
                {
                    var charCode = stringArray[i];
                    Comment($"Pushing char {charCode} to heap - {(char)charCode}");
                    Mov(Register.W0, charCode);
                    Strb(Register.W0, Register.HP);
                    Mov(Register.X0, 1);
                    Add(Register.HP, Register.HP, Register.X0);
                }

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

    public void PopObject()
    {
        Console.WriteLine("Cantidad del Stack: " + _stack.Count);
        Comment($"Popping object from stack");
        try
        {
            _stack.RemoveAt(_stack.Count - 1);
        }
        catch (System.Exception err)
        {
            Console.WriteLine(err.Message);
            throw new Exception("No hay objetos en la pila");
        }
    }

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

    public void Adr(string rd, string label)
    {
        _instructions.Add($"ADR {rd}, {label}");
    }

    public void Sub(string rd, string rs1, string rs2)
    {
        _instructions.Add($"SUB {rd}, {rs1}, {rs2}");
    }

    public void Mul(string rd, string rs1, string rs2)
    {
        _instructions.Add($"MUL {rd}, {rs1}, {rs2}");
    }

    public void Div(string rd, string rs1, string rs2)
    {
        _instructions.Add($"DIV {rd}, {rs1}, {rs2}");
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
    public void Scvtf(string rd, string rs)
    {
        _instructions.Add($"SCVTF {rd}, {rs}");
    }

    public void Fmov(string rd, string rs)
    {
        _instructions.Add($"FMOV {rd}, {rs}");
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

    public void Cmp(string rs1, string rs2)
    {
        _instructions.Add($"CMP {rs1}, {rs2}");
    }
    public void Cbz(string rs, string label)
    {
        _instructions.Add($"CBZ {rs}, {label}");
    }

    public void B(string label)
    {
        _instructions.Add($"B {label}");
    }

    public void Br(string label)
    {
        _instructions.Add($"BR {label}");
    }

    public void Bl(string label)
    {
        _instructions.Add($"BL {label}");
    }

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

    public StackObject GetFrameLocal(int index)
    {
        var obj = _stack.Where(o => o.Type == StackObject.StackObjectType.Undefine).ToList()[index];
        return obj;
    }

}
using System.Security.Cryptography.X509Certificates;
using System.Text;

public class StackObject
{
    public enum StackObjectType { Int, Float, String, Bool }
    public StackObjectType Type { get; set; }
    public int Length { get; set; }
    public int Depth { get; set; }
    public string? Id { get; set; }
}

public class ArmGenerator
{
    private readonly List<string> _instructions = new List<string>();
    private readonly StandardLibrary _stdLib = new StandardLibrary();
    private List<StackObject> _stack = new List<StackObject>();
    private int _depth = 0;
    /*
        TODO: STACK OPERATIONS
    */
    public void PushObject(StackObject stackObject)
    {
        _stack.Add(stackObject);
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
                // TODO: Implement float support
                break;
            case StackObject.StackObjectType.String:
                // TODO: <---
                List<byte> stringArray = Utils.StringToByteArray((string)value);

                Push(Register.HP);
                for (int i = 0; i < stringArray.Count; i++)
                {
                    var charCode = stringArray[i];
                    Comment($"Pushing char {charCode} to heap - {(char) charCode}");
                    Mov(Register.W0, charCode);
                    Strb(Register.W0, Register.HP);
                    Mov(Register.X0, 1);
                    Add(Register.HP, Register.HP, Register.X0);
                }

                break;
            case StackObject.StackObjectType.Bool:
                // TODO: Implement bool support
                break;
        }
        PushObject(obj);
    }
    public StackObject PopObject(string rd)
    {
        var obj = _stack.Last();
        _stack.RemoveAt(_stack.Count - 1);

        Pop(rd);
        return obj;
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

    public void PrintString(string rs)
    {
        _stdLib.Use("print_string");
        _instructions.Add($"MOV X0, {rs}");
        _instructions.Add($"BL print_string");
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

        sb.AppendLine("\n\n\n // Standard Library");
        sb.AppendLine(_stdLib.GetFunctionDefinitions());

        return sb.ToString();
    }

}
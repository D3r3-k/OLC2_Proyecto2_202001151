using analyzer;
using Antlr4.Runtime.Misc;
using Antlr4.Runtime.Tree;


public class FunctionMetadata
{
    public int FrameSize { get; set; }
    public StackObject.StackObjectType ReturnType;
}

public class CompilerVisitor : LanguageBaseVisitor<Object?>
{
    // TODO: Atributos
    public ArmGenerator c = new ArmGenerator();
    private string continueLabel = "";
    private string breakLabel = "";
    private string returnLabel = "";
    private Dictionary<string, FunctionMetadata> functions = new Dictionary<string, FunctionMetadata>();
    private string? insideFunction = null;
    private int framePointerOffset = 0;

    // TODO: Contructor
    public CompilerVisitor()
    {

    }

    // TODO: Métodos
    // VisitProgram
    public override Object? VisitProgram([NotNull] LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        return null;
    }
    // // VisitDcl
    // // VisitType
    // // VisitBaseType
    // // VisitDimensions
    // VisitVarDcl
    public override Object? VisitVarDcl([NotNull] LanguageParser.VarDclContext context)
    {
        var varName = context.ID().GetText();
        var value = context.expr() != null;
        // var numero int = 0;
        // numero := 0;
        if (value)
        {
            Visit(context.expr());
        }
        // var numero int;
        else
        {
            var typeValue = context.type().GetText();
            StackObject obj = c.GetDefaultValueArm(typeValue);
            var defaultValue = Extras.GetDefaultValueArm(typeValue);
            c.PushConstant(obj, defaultValue);
        }

        c.Comment("Variable declaration: " + varName);

        if (insideFunction != null)
        {
            var localObj = c.GetFrameLocal(framePointerOffset);
            var valueObj = c.PopObject(Register.X0); // Pop the value to assign

            c.Mov(Register.X1, framePointerOffset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1); // Calculate the address of the variable
            c.Str(Register.X0, Register.X1); // Store the value in the variable

            localObj.Type = valueObj.Type;
            framePointerOffset++;

            return null;
        }

        c.TagObject(varName);

        return null;
    }
    // VisitFuncDcl
    public override Object? VisitFuncDcl([NotNull] LanguageParser.FuncDclContext context)
    {
        int baseOffset = 2;
        int paramsOffset = 0;
        if (context.@params() != null)
        {
            paramsOffset = context.@params().ID().Length;
        }

        FrameVisitor frameVisitor = new FrameVisitor(baseOffset + paramsOffset);

        foreach (var dcl in context.dcl())
        {
            frameVisitor.Visit(dcl);
        }

        var frame = frameVisitor.Frame;
        int localOffset = frame.Count;
        int returnOffset = 1;
        int totalFrameSize = baseOffset + paramsOffset + localOffset + returnOffset;

        string funcName = context.ID().GetText();
        StackObject.StackObjectType funcType = context.type() != null
            ? Extras.GetTypeArm(context.type().GetText())
            : StackObject.StackObjectType.Void;

        functions.Add(funcName, new FunctionMetadata
        {
            FrameSize = totalFrameSize,
            ReturnType = funcType
        });

        var prevInstructions = c._instructions;
        c._instructions = new List<string>();

        // 4. Prologo de la función
        c.Comment($"Function Declaration: {funcName}");
        c.SetLabel(funcName);

        var paramCounter = 0;
        var paramTypes = context.@params()?.type() ?? Array.Empty<LanguageParser.TypeContext>();
        var paramIds = context.@params()?.ID() ?? Array.Empty<ITerminalNode>();

        for (int i = 0; i < paramIds.Length; i++)
        {
            var paramId = paramIds[i].GetText();
            var paramType = paramTypes[i].GetText();

            c.PushObject(new StackObject
            {
                Type = Extras.GetTypeArm(paramType),
                Id = paramId,
                Offset = paramCounter + baseOffset,
                Length = 8
            });
            paramCounter++;
        }


        foreach (var element in frame)
        {
            c.PushObject(new StackObject
            {
                Type = StackObject.StackObjectType.Undefine,
                Id = element.Name,
                Offset = element.Offset,
                Length = 8
            });
        }


        insideFunction = funcName;
        framePointerOffset = 0;

        returnLabel = c.GetLabel();

        c.Comment("Function Declaration" + funcName);
        c.SetLabel(funcName);

        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }


        c.SetLabel(returnLabel);

        c.Add(Register.X0, Register.FP, Register.XZR);
        c.Ldr(Register.LR, Register.X0);
        c.Br(Register.LR);

        c.Comment("End of Function Declaration" + funcName);

        for (int i = 0; i < paramsOffset + localOffset; i++)
        {
            c.PopObject();
        }


        foreach (var instruction in c._instructions)
        {
            c._funcInstructions.Add(instruction);
        }
        c._instructions = prevInstructions;

        insideFunction = null;

        return null;
    }
    // // VisitNodo
    // // VisitParams
    // // VisitClassDcl
    // // VisitClassBody
    // // VisitStructDcl
    // VisitPrintStmt
    public override Object? VisitPrintStmt([NotNull] LanguageParser.PrintStmtContext context)
    {
        c.Comment("Print Statement");
        // Imprimir todos los argumentos
        foreach (var expr in context.expr())
        {
            Visit(expr);
            var isDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
            var value = c.PopObject(isDouble ? Register.D0 : Register.X0);

            if (value.Type == StackObject.StackObjectType.Int)
            {
                c.PrintInteger(Register.X0);
            }
            else if (value.Type == StackObject.StackObjectType.Float)
            {
                c.PrintFloat();
            }
            else if (value.Type == StackObject.StackObjectType.Bool)
            {
                c.PrintBool(Register.X0);
            }
            else if (value.Type == StackObject.StackObjectType.String)
            {
                c.PrintString(Register.X0);
            }
            else if (value.Type == StackObject.StackObjectType.Rune)
            {
                c.PrintRune(Register.X0);
            }
            else if (value.Type == StackObject.StackObjectType.Nil)
            {
                c.PrintNil();
            }
        }
        c.PrintNewLine();
        return null;
    }
    // VisitExprStmt
    public override Object? VisitExprStmt([NotNull] LanguageParser.ExprStmtContext context)
    {
        c.Comment("Expression Statement");
        Visit(context.expr());
        c.Comment("Pop the value to discard");
        c.PopObject(Register.X0); // Pop the value to discard

        return null;
    }
    // VisitBlockStmt
    public override Object? VisitBlockStmt([NotNull] LanguageParser.BlockStmtContext context)
    {
        c.Comment("Block Statement");
        c.NewScope();
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        int bytesToRemove = c.EndScope();
        if (bytesToRemove > 0)
        {
            c.Comment("Removing " + bytesToRemove + " bytes from the stack");
            c.Mov(Register.X0, bytesToRemove);
            c.Add(Register.SP, Register.SP, Register.X0); // Remove the bytes from the stack
            c.Comment("Stack pointer after removing bytes: " + Register.SP);
        }
        return null;
    }
    // VisitIfStmt
    public override Object? VisitIfStmt([NotNull] LanguageParser.IfStmtContext context)
    {
        c.Comment("If Statement");
        Visit(context.expr()); // Visit the condition
        c.PopObject(Register.X0); // Pop the condition value

        var hasElse = context.stmt().Length > 1;
        if (hasElse)
        {
            var elseLabel = c.GetLabel();
            var endLabel = c.GetLabel();

            c.Cbz(Register.X0, elseLabel); // Compare the condition with 0
            Visit(context.stmt(0)); // Visit the true branch
            c.B(endLabel); // Jump to the end
            c.SetLabel(elseLabel); // Set the else label
            Visit(context.stmt(1)); // Visit the false branch
            c.SetLabel(endLabel); // Set the end label
        }
        else
        {
            var endLabel = c.GetLabel();

            c.Cbz(Register.X0, endLabel); // Compare the condition with 0
            Visit(context.stmt(0)); // Visit the true branch
            c.SetLabel(endLabel); // Set the end label
        }

        return null;
    }

    // VisitSwitchStmt
    public override Object? VisitSwitchStmt([NotNull] LanguageParser.SwitchStmtContext context)
    {
        return null;
    }
    // VisitForStmt
    public override Object? VisitForStmt([NotNull] LanguageParser.ForStmtContext context)
    {
        var startLabel = c.GetLabel();
        var endLabel = c.GetLabel();
        var incrementLabel = c.GetLabel();

        var prevContinueLabel = continueLabel;
        var prevBreakLabel = breakLabel;

        continueLabel = incrementLabel;
        breakLabel = endLabel;

        c.Comment("For Statement");
        c.NewScope();

        Visit(context.forInit()); // Visit the initialization
        c.SetLabel(startLabel);
        Visit(context.expr(0)); // Visit the condition
        c.PopObject(Register.X0); // Pop the condition value
        c.Cbz(Register.X0, endLabel); // Compare the condition with 0
        Visit(context.stmt()); // Visit the body
        c.SetLabel(incrementLabel);
        Visit(context.expr(1)); // Visit the increment
        c.B(startLabel); // Jump to the start label
        c.SetLabel(endLabel); // Set the end label

        c.Comment("End of For Statement");

        var bytesToRemove = c.EndScope();
        if (bytesToRemove > 0)
        {
            c.Comment("Removing " + bytesToRemove + " bytes from the stack");
            c.Mov(Register.X0, bytesToRemove);
            c.Add(Register.SP, Register.SP, Register.X0); // Remove the bytes from the stack
            c.Comment("Stack pointer after removing bytes: " + Register.SP);
        }
        continueLabel = prevContinueLabel;
        breakLabel = prevBreakLabel;

        return null;
    }
    // VisitForCondStmt
    public override Object? VisitForCondStmt([NotNull] LanguageParser.ForCondStmtContext context)
    {
        c.Comment("For Condition Statement");
        var startLabel = c.GetLabel();
        var endLabel = c.GetLabel();

        var prevContinueLabel = continueLabel;
        var prevBreakLabel = breakLabel;
        continueLabel = startLabel;
        breakLabel = endLabel;

        c.SetLabel(startLabel);
        Visit(context.expr()); // Visit the condition
        c.PopObject(Register.X0); // Pop the condition value

        c.Cbz(Register.X0, endLabel); // Compare the condition with 0
        Visit(context.stmt()); // Visit the body
        c.B(startLabel); // Jump to the start label
        c.SetLabel(endLabel); // Set the end label

        c.Comment("End of For Condition Statement");

        continueLabel = prevContinueLabel;
        breakLabel = prevBreakLabel;

        return null;
    }
    // VisitForRangeStmt
    public override Object? VisitForRangeStmt([NotNull] LanguageParser.ForRangeStmtContext context)
    {
        return null;
    }
    public void VisitForBody([NotNull] LanguageParser.ForStmtContext context)
    {
        // return null;
    }
    public void VisitForBody([NotNull] LanguageParser.ForCondStmtContext context)
    {
        // return null;
    }
    // VisitBreakStmt
    public override Object? VisitBreakStmt([NotNull] LanguageParser.BreakStmtContext context)
    {
        c.Comment("Break Statement");
        if (breakLabel != null)
        {
            c.B(breakLabel); // Jump to the break label
        }
        return null;
    }
    // VisitContinueStmt
    public override Object? VisitContinueStmt([NotNull] LanguageParser.ContinueStmtContext context)
    {
        c.Comment("Continue Statement");
        if (continueLabel != null)
        {
            c.B(continueLabel); // Jump to the continue label
        }
        return null;
    }
    // VisitReturnStmt
    public override Object? VisitReturnStmt([NotNull] LanguageParser.ReturnStmtContext context)
    {
        c.Comment("Return Statement");
        if (insideFunction == null) throw new Exception("Return statement outside of function");

        if (context.expr() != null)
        {
            Visit(context.expr());
            c.PopObject(Register.X0); // Pop the return value

            var frameSize = functions[insideFunction].FrameSize;
            var returnOffset = frameSize - 1;
            c.Mov(Register.X1, returnOffset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1); // Calculate return address
            c.Str(Register.X0, Register.X1); // Store return value

            c.B(returnLabel);
        }
        else
        {
            // Return void
            c.B(returnLabel);
        }

        return null;
    }
    // // VisitSwitchCase
    // // VisitSwitchDefault
    // // VisitForInit
    // VisitCallee
    public override Object? VisitCallee([NotNull] LanguageParser.CalleeContext context)
    {
        if (context.expr() is not LanguageParser.IdentifierContext idContext) return null;

        string funcName = idContext.ID().GetText();
        var call = context.call()[0];

        if (call is not LanguageParser.FuncCallContext callContext) return null;

        // TODO: Funcion embedida
        var postFuncCallLabel = c.GetLabel();

        // 1. | RA | FP |
        int baseOffset = 2;
        int stackElementSize = 8;

        c.Mov(Register.X0, baseOffset * stackElementSize);
        c.Sub(Register.SP, Register.SP, Register.X0); // Allocate space for the function call

        // 2. | RA | FP | ...params |
        if (callContext.args() != null)
        {
            c.Comment("Visiting function parameters");
            foreach (var param in callContext.args().expr())
            {
                Visit(param);
            }
        }

        // 3. Calcular el valor del FP
        // Regresar el SP al inicio del Frame
        c.Mov(Register.X0, stackElementSize * (baseOffset + (callContext.args() != null ? callContext.args().expr().Length : 0)));
        c.Add(Register.SP, Register.SP, Register.X0); // Remove the bytes from the stack

        // Calcular la posicion donde se va a guardar el FP
        c.Mov(Register.X0, stackElementSize);
        c.Sub(Register.X0, Register.SP, Register.X0); // Allocate space for the function call

        c.Adr(Register.X1, postFuncCallLabel); // Set the return address
        c.Push(Register.X1); // Push the return address

        c.Push(Register.FP);
        c.Add(Register.FP, Register.X0, Register.XZR);

        int frameSize = functions[funcName].FrameSize;
        c.Mov(Register.X0, (frameSize - 2) * stackElementSize);
        c.Sub(Register.SP, Register.SP, Register.X0); // Allocate space for the function call

        c.Comment("Function Call: " + funcName);
        c.Bl(funcName); // Call the function
        c.Comment("End of Function Call: " + funcName);
        c.SetLabel(postFuncCallLabel); // Set the post function call label

        var returnOffset = frameSize - 1;
        c.Mov(Register.X4, returnOffset * stackElementSize);
        c.Sub(Register.X4, Register.FP, Register.X4); // Calculate the address of the return value
        c.Ldr(Register.X4, Register.X4); // Load the return value

        c.Mov(Register.X1, stackElementSize);
        c.Sub(Register.X1, Register.FP, Register.X1); // Calculate the address of the return value
        c.Ldr(Register.FP, Register.X1); // Load the return value

        c.Mov(Register.X0, stackElementSize * frameSize);
        c.Add(Register.SP, Register.SP, Register.X0); // Remove the bytes from the stack

        c.Push(Register.X4); // Push the return value
        c.PushObject(new StackObject
        {
            Type = functions[funcName].ReturnType,
            Id = null,
            Offset = 0,
            Length = 8
        });
        c.Comment("End of Function Call: " + funcName);

        return null;
    }
    // VisitSlices
    public override Object? VisitSlices([NotNull] LanguageParser.SlicesContext context)
    {
        return null;
    }
    // VisitMulDiv
    public override Object? VisitMulDiv([NotNull] LanguageParser.MulDivContext context)
    {
        var operation = context.op.Text;
        c.Comment($"{operation} operation");

        // Evaluar operandos
        Visit(context.expr(0)); // Left operand -> [left]
        Visit(context.expr(1)); // Right operand -> [left, right]

        // Determinar tipos
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X1); // Pop right -> [left]
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X0); // Pop left -> []

        if (isLeftDouble || isRightDouble)
        {
            // Operación con flotantes
            if (!isLeftDouble) c.Scvtf(Register.D1, Register.X0); // Convert left to double
            if (!isRightDouble) c.Scvtf(Register.D0, Register.X1); // Convert right to double

            switch (operation)
            {
                case "*":
                    c.Fmul(Register.D0, Register.D0, Register.D1);
                    break;
                case "/":
                    c.Fdiv(Register.D0, Register.D1, Register.D0);
                    break;
                default:
                    throw new Exception($"Unsupported operation: {operation}");
            }

            c.Push(Register.D0); // Push result -> [result]
            c.PushObject(c.CloneObject(isLeftDouble ? left : right));
        }
        else
        {
            // Operación con enteros
            switch (operation)
            {
                case "*":
                    c.Mul(Register.X0, Register.X0, Register.X1);
                    break;
                case "/":
                    c.Sdiv(Register.X0, Register.X0, Register.X1);
                    break;
                case "%":
                    c.Sdiv(Register.X2, Register.X0, Register.X1);
                    c.Mul(Register.X3, Register.X2, Register.X1);
                    c.Sub(Register.X0, Register.X0, Register.X3);
                    break;
                default:
                    throw new Exception($"Unsupported operation: {operation}");
            }

            c.Push(Register.X0); // Push result -> [result]
            c.PushObject(c.CloneObject(left));
        }

        return null;
    }
    // VisitAddSub
    public override object? VisitAddSub([NotNull] LanguageParser.AddSubContext context)
    {
        var operation = context.op.Text;
        Visit(context.expr(0)); // Left operand
        Visit(context.expr(1)); // Right operand

        // 1. Pop de operandos y verificación de tipos
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X1); // Pop right (segundo operando)
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X0); // Pop left (primer operando)

        // 2. Manejar concatenación de strings primero
        if (operation == "+" &&
            left.Type == StackObject.StackObjectType.String &&
            right.Type == StackObject.StackObjectType.String)
        {
            //=============================================================
            // CONCATENACIÓN DE STRINGS (Código preservado del usuario)
            //=============================================================
            c.Comment("|===============[Concatenando]==================|");
            c._stdLib.Use("concat_strings");

            // Los pops ya se hicieron, invertir orden para concatenación correcta
            c.Push(Register.X0); // left (primer string)
            c.Push(Register.X1); // right (segundo string)
            c.Bl("concat_strings");
            c.Add(Register.SP, Register.SP, 16); // Limpiar args de la pila
            c.Push(Register.X0); // Push resultado
            c.PushObject(c.StringObject());
            return null;
        }

        //=============================================================
        // LÓGICA PARA NÚMEROS (Enteros y Flotantes)
        //=============================================================
        if (isLeftDouble || isRightDouble)
        {
            // Convertir operandos a double si es necesario
            if (!isLeftDouble) c.Scvtf(Register.D1, Register.X0); // Entero -> Double
            if (!isRightDouble) c.Scvtf(Register.D0, Register.X1);

            // Realizar operación
            if (operation == "+")
                c.Fadd(Register.D0, Register.D1, Register.D0); // D0 = D1 + D0
            else
                c.Fsub(Register.D0, Register.D1, Register.D0); // D0 = D1 - D0

            c.Push(Register.D0);
            c.PushObject(c.FloatObject());
        }
        else // Ambos son enteros
        {
            if (operation == "+")
                c.Add(Register.X0, Register.X0, Register.X1); // X0 = X0 + X1
            else
                c.Sub(Register.X0, Register.X0, Register.X1); // X0 = X0 - X1

            c.Push(Register.X0);
            c.PushObject(c.IntObject());
        }

        return null;
    }
    // VisitParens
    public override Object? VisitParens([NotNull] LanguageParser.ParensContext context)
    {
        c.Comment("Parentheses");
        Visit(context.expr()); // Visit the expression inside parentheses
        return null;
    }
    // VisitRelational
    public override Object? VisitRelational([NotNull] LanguageParser.RelationalContext context)
    {
        c.Comment($"Relational operation: {context.op.Text}");
        Visit(context.expr(0)); // Left operand
        Visit(context.expr(1)); // Right operand

        // Determinar tipos
        var isRightFloat = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightFloat ? Register.D0 : Register.X1);
        var isLeftFloat = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftFloat ? Register.D1 : Register.X0);

        string op = context.op.Text;
        string condition = op switch
        {
            ">" => "gt",
            "<" => "lt",
            ">=" => "ge",
            "<=" => "le",
            _ => throw new Exception("Operador inválido")
        };

        if (isLeftFloat || isRightFloat)
        {
            // Comparación de floats
            if (!isLeftFloat) c.Scvtf(Register.D1, Register.X0);
            if (!isRightFloat) c.Scvtf(Register.D0, Register.X1);
            c.Fcmp(Register.D1, Register.D0);
            c.Cset(Register.X0, condition);
        }
        else if (left.Type == StackObject.StackObjectType.Int || left.Type == StackObject.StackObjectType.Rune)
        {
            // Comparación de enteros o runes
            c.Cmp(Register.X0, Register.X1);
            c.Cset(Register.X0, condition);
        }
        else
        {
            throw new SemanticError("Tipos no comparables", context.Start);
        }

        c.Push(Register.X0);
        c.PushObject(c.BoolObject());

        return null;
    }
    // VisitIncDec
    public override Object? VisitIncDec([NotNull] LanguageParser.IncDecContext context)
    {
        c.Comment($"{context.op.Text} operation");
        var operation = context.op.Text;
        var id = context.ID().GetText();

        // Obtener información de la variable
        var (offset, obj) = c.GetObject(id);
        var isDouble = obj.Type == StackObject.StackObjectType.Float;

        // Cargar la variable
        if (insideFunction != null)
        {
            // Variable local (usando frame pointer)
            c.Mov(Register.X1, obj.Offset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1);
        }
        else
        {
            // Variable global (usando stack pointer)
            c.Mov(Register.X1, offset);
            c.Add(Register.X1, Register.SP, Register.X1);
        }

        // Operación de incremento/decremento
        if (isDouble)
        {
            c.Ldr(Register.D0, Register.X1); // Cargar valor flotante
            c.Fmov(Register.D1, 1.0);       // Cargar 1.0 en registro flotante

            if (operation == "++")
            {
                c.Fadd(Register.D0, Register.D0, Register.D1); // Incremento
            }
            else
            {
                c.Fsub(Register.D0, Register.D0, Register.D1); // Decremento
            }

            c.Str(Register.D0, Register.X1); // Almacenar nuevo valor
            c.Push(Register.D0);             // Push resultado
        }
        else
        {
            c.Ldr(Register.X0, Register.X1); // Cargar valor entero

            if (operation == "++")
            {
                c.Add(Register.X0, Register.X0, 1); // Incremento
            }
            else
            {
                c.Sub(Register.X0, Register.X0, 1); // Decremento
            }

            c.Str(Register.X0, Register.X1); // Almacenar nuevo valor
            c.Push(Register.X0);             // Push resultado
        }

        // Actualizar el objeto en la pila
        c.PushObject(c.CloneObject(obj));

        return null;
    }
    // VisitString
    public override Object? VisitString([NotNull] LanguageParser.StringContext context)
    {
        var value = context.STRING().GetText().Trim('"');
        c.Comment("String Constante: " + value);
        var stringObj = c.StringObject();
        c.PushConstant(stringObj, value);

        return null;
    }
    // VisitInt
    public override Object? VisitInt([NotNull] LanguageParser.IntContext context)
    {
        var value = context.INT().GetText();
        c.Comment("Constante: " + value);
        var intObject = c.IntObject();
        c.PushConstant(intObject, int.Parse(value));

        return null;
    }

    // VisitNil
    public override Object? VisitNil([NotNull] LanguageParser.NilContext context)
    {
        c.Comment("Nil Constante");
        var nilObject = c.NilObject();
        c.PushConstant(nilObject, null);
        return null;
    }
    // VisitFloat
    public override Object? VisitFloat([NotNull] LanguageParser.FloatContext context)
    {
        var value = context.FLOAT().GetText();

        c.Comment("Constante: " + value);
        var floatObject = c.FloatObject();
        c.PushConstant(floatObject, double.Parse(value, System.Globalization.CultureInfo.InvariantCulture));

        return null;
    }
    // VisitNot
    public override Object? VisitNot([NotNull] LanguageParser.NotContext context)
    {
        c.Comment("Logical NOT operation");
        Visit(context.expr()); // Visit the operand to negate

        // Pop the boolean value (always treated as integer in ARM)
        var operand = c.PopObject(Register.X0);

        if (operand.Type != StackObject.StackObjectType.Bool)
        {
            throw new SemanticError("Operand of '!' must be boolean", context.Start);
        }

        // ARM64 logical NOT implementation:
        c.Cmp(Register.X0, 0);          // Compare with 0 (false)
        c.Cset(Register.X0, Register.EQ);  // Set to 1 if equal (was 0), else 0

        c.Push(Register.X0);
        c.PushObject(c.BoolObject());  // Push boolean result

        return null;
    }
    // VisitIdentifier
    public override Object? VisitIdentifier([NotNull] LanguageParser.IdentifierContext context)
    {
        var id = context.ID().GetText();

        var (offset, obj) = c.GetObject(id);

        if (insideFunction != null)
        {
            c.Mov(Register.X0, obj.Offset * 8);
            c.Sub(Register.X0, Register.FP, Register.X0); // Calculate the address of the variable
            c.Ldr(Register.X0, Register.X0); // Load the address of the variable
            c.Push(Register.X0); // Push the address of the variable
            var CloneObject = c.CloneObject(obj);
            CloneObject.Id = null;
            c.PushObject(CloneObject);
            return null;
        }

        c.Mov(Register.X0, offset);
        c.Add(Register.X0, Register.SP, Register.X0);

        c.Ldr(Register.X0, Register.X0);
        c.Push(Register.X0);

        var newObj = c.CloneObject(obj);
        newObj.Id = null;
        c.PushObject(newObj);

        return null;
    }
    // VisitAssign
    public override Object? VisitAssign([NotNull] LanguageParser.AssignContext context)
    {
        var asignee = context.expr(0);
        if (asignee is LanguageParser.IdentifierContext idContext)
        {
            string id = idContext.ID().GetText();
            c.Comment("Assigning to variable: " + id);
            Visit(context.expr(1));

            var valueObject = c.PopObject(Register.X0);

            var (offset, varObj) = c.GetObject(id);

            if (insideFunction != null)
            {
                c.Mov(Register.X1, varObj.Offset * 8);
                c.Sub(Register.X1, Register.FP, Register.X1);
                c.Str(Register.X0, Register.X1);
                return null;
            }

            c.Mov(Register.X1, offset);
            c.Add(Register.X1, Register.SP, Register.X1);
            c.Str(Register.X0, Register.X1);

            varObj.Type = valueObject.Type;

            c.Push(Register.X0);
            c.PushObject(c.CloneObject(varObj));

        }
        return null;
    }

    // VisitNegate
    public override Object? VisitNegate([NotNull] LanguageParser.NegateContext context)
    {
        c.Comment("Negate operation");
        Visit(context.expr()); // Visit the operand to negate

        // Determine if the operand is float or integer
        var isDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var operand = c.PopObject(isDouble ? Register.D0 : Register.X0);

        if (isDouble)
        {
            // Floating-point negation
            c.Fneg(Register.D0, Register.D0); // D0 = -D0
            c.Push(Register.D0);
        }
        else
        {
            // Integer negation
            c.Neg(Register.X0, Register.X0); // X0 = -X0
            c.Push(Register.X0);
        }

        // Push the same type back to the stack
        c.PushObject(operand);

        return null;
    }
    // VisitEquality
    public override Object? VisitEquality([NotNull] LanguageParser.EqualityContext context)
    {
        // Comparando numeros enteros
        c.Comment($"Equality operation: {context.op.Text}");
        Visit(context.expr(0)); // Left operand
        Visit(context.expr(1)); // Right operand
        // Determinar tipos
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X1);
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X0);
        string op = context.op.Text;
        string condition = op switch
        {
            "==" => "eq",
            "!=" => "ne",
            _ => throw new Exception("Operador inválido")
        };
        if (left.Type == StackObject.StackObjectType.Float && right.Type == StackObject.StackObjectType.Float)
        {
            c.Fcmp(Register.D1, Register.D0);
            c.Cset(Register.X0, condition);
        }
        else if (left.Type == StackObject.StackObjectType.Float || right.Type == StackObject.StackObjectType.Float)
        {
            // Cargar ambos operandos en registros flotantes
            if (left.Type != StackObject.StackObjectType.Float)
            {
                c.Scvtf(Register.D1, Register.X0); // Convertir entero izquierdo a float
            }
            else
            {
                c.Fmov(Register.D1, Register.D0); // Mover float izquierdo a D1
            }

            if (right.Type != StackObject.StackObjectType.Float)
            {
                c.Scvtf(Register.D0, Register.X1); // Convertir entero derecho a float
            }
            c.Fcmp(Register.D1, Register.D0);
            c.Cset(Register.X0, condition);
        }
        else if (left.Type == StackObject.StackObjectType.Int || left.Type == StackObject.StackObjectType.Rune)
        {
            // Comparación de enteros o runes
            c.Cmp(Register.X0, Register.X1);
            c.Cset(Register.X0, condition);
        }
        else if (left.Type == StackObject.StackObjectType.String && right.Type == StackObject.StackObjectType.String)
        {
            // Comparación de strings
            c._stdLib.Use("string_compare");
            c.Push(Register.X0); // Push dirección izquierda
            c.Push(Register.X1); // Push dirección derecha
            c.Bl("string_compare");
            c.Add(Register.SP, Register.SP, 16); // Añadir esta línea para limpiar los argumentos
            c.Cmp(Register.X0, 0); // Comparar resultado con 0
            c.Cset(Register.X0, condition); // X0 = 1 si condición se cumple
        }
        else if (left.Type == StackObject.StackObjectType.Bool && right.Type == StackObject.StackObjectType.Bool)
        {
            // Comparación de booleanos
            c.Cmp(Register.X0, Register.X1);
            c.Cset(Register.X0, condition);
        }
        else if (left.Type == StackObject.StackObjectType.Rune && right.Type == StackObject.StackObjectType.Rune)
        {
            // Comparación de runes
            c.Cmp(Register.X0, Register.X1);
            c.Cset(Register.X0, condition);
        }
        else
        {
            throw new SemanticError("Tipos no comparables", context.Start);
        }
        c.Push(Register.X0);
        c.PushObject(c.BoolObject()); // Push boolean result
        return null;
    }
    // VisitBoolean
    public override Object? VisitBoolean([NotNull] LanguageParser.BooleanContext context)
    {
        var value = context.BOOL().GetText();
        c.Comment("Boolean Constante: " + value);
        var boolObject = c.BoolObject();
        c.PushConstant(boolObject, value == "true" ? true : false);

        return null;
    }
    // VisitRune
    public override Object? VisitRune([NotNull] LanguageParser.RuneContext context)
    {
        var value = context.RUNE().GetText().Trim('\'');
        c.Comment("Rune Constante: " + value);
        var runeObject = c.RuneObject();
        c.Mov(Register.X0, (int)value[0]);
        c.Push(Register.X0);
        c.PushObject(runeObject);

        return null;
    }
    // VisitAndOr
    public override Object? VisitAndOr([NotNull] LanguageParser.AndOrContext context)
    {
        c.Comment($"Logical {context.op.Text} operation");
        string op = context.op.Text;

        string falseLabel = c.GetLabel("ANDOR_FALSE");
        string trueLabel = c.GetLabel("ANDOR_TRUE");
        string endLabel = c.GetLabel("ANDOR_END");

        // Evaluar primera condición
        Visit(context.expr(0));
        var left = c.PopObject(Register.X0); // Resultado en X0

        // Convertir a booleano (0 o 1)
        c.Cmp(Register.X0, 0);
        c.Cset(Register.X0, "ne"); // X0 = 1 si es verdadero

        if (op == "&&")
        {
            // AND lógico: si left es falso, salta a false
            c.Cbz(Register.X0, falseLabel); // Si es 0, salta
        }
        else // ||
        {
            // OR lógico: si left es verdadero, salta a true
            c.Cbnz(Register.X0, trueLabel); // Si es 1, salta
        }

        // Evaluar segunda condición
        Visit(context.expr(1));
        var right = c.PopObject(Register.X0);

        // Convertir a booleano
        c.Cmp(Register.X0, 0);
        c.Cset(Register.X0, "ne"); // X0 = 1 si es verdadero

        if (op == "&&")
        {
            c.B(endLabel);
            // Manejar caso donde primera condición fue falsa
            c.SetLabel(falseLabel);
            c.Mov(Register.X0, 0);
            c.B(endLabel);
        }
        else if (op == "||")
        {
            c.B(endLabel);
            // Manejar caso donde primera condición fue verdadera
            c.SetLabel(trueLabel);
            c.Mov(Register.X0, 1);
            c.B(endLabel);
        }

        // Etiqueta final
        c.SetLabel(endLabel);

        // Push resultado final
        c.Push(Register.X0);
        c.PushObject(c.BoolObject());

        return null;
    }

    // VisitAssignOp
    public override Object? VisitAssignOp([NotNull] LanguageParser.AssignOpContext context)
    {
        var id = context.ID().GetText();
        var operation = context.op.Text;
        c.Comment($"Assign operation: {operation} to {id}");

        // 1. Evaluar la expresión derecha
        Visit(context.expr());

        // 2. Obtener información de la variable
        var (offset, varObj) = c.GetObject(id);
        bool isVarFloat = varObj.Type == StackObject.StackObjectType.Float;

        // 3. Determinar tipo del valor derecho
        var rhsType = c.TopObject().Type;
        bool isRhsFloat = rhsType == StackObject.StackObjectType.Float;

        // 4. Pop del valor derecho
        var rhs = isRhsFloat ? c.PopObject(Register.D0) : c.PopObject(Register.X1);

        // 5. Calcular dirección de la variable (¡corregido!)
        string addressReg = Register.X2;
        if (insideFunction != null)
        {
            // Variable local: dirección = FP - (offset * 8)
            c.Mov(addressReg, varObj.Offset * 8);
            c.Sub(addressReg, Register.FP, addressReg);
        }
        else
        {
            c.Mov(addressReg, 0);
            c.Add(addressReg, Register.SP, addressReg);
        }

        // 6. Cargar valor actual de la variable
        if (isVarFloat)
        {
            c.Ldr(Register.D1, addressReg);
        }
        else
        {
            c.Ldr(Register.X0, addressReg);
        }

        // 7. Realizar operación
        if (isVarFloat || isRhsFloat)
        {
            if (!isVarFloat) c.Scvtf(Register.D1, Register.X0);
            if (!isRhsFloat) c.Scvtf(Register.D0, Register.X1);

            if (operation == "+=")
                c.Fadd(Register.D0, Register.D1, Register.D0);
            else
                c.Fsub(Register.D0, Register.D1, Register.D0);

            c.Str(Register.D0, addressReg);
        }
        else
        {
            if (operation == "+=")
                c.Add(Register.X0, Register.X0, Register.X1);
            else
                c.Sub(Register.X0, Register.X0, Register.X1);

            c.Str(Register.X0, addressReg);
        }

        // 8. Push del resultado (opcional, pero necesario si se usa en expresiones)
        if (isVarFloat)
        {
            c.Push(Register.D0);
            c.PushObject(c.FloatObject());
        }
        else
        {
            c.Push(Register.X0);
            c.PushObject(c.IntObject());
        }

        return null;
    }
    // // VisitFuncCall
    // // VisitGet
    // // VisitArrayAccess
    // // VisitArgs
    // // VisitStruct


}

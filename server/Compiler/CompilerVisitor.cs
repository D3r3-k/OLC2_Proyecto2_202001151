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
        c.Comment("[START] Declaracion de variable: " + varName);
        var value = context.expr() != null;
        if (value)
        {
            Visit(context.expr());
        }
        else
        {
            var typeValue = context.type().GetText();
            StackObject obj = c.GetDefaultValueArm(typeValue);
            var defaultValue = Extras.GetDefaultValueArm(typeValue);
            c.PushConstant(obj, defaultValue);
        }
        if (insideFunction != null)
        {
            var localObj = c.GetFrameLocal(framePointerOffset);
            var valueObj = c.PopObject(Register.X0);
            c.Mov(Register.X1, framePointerOffset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1);
            c.Str(Register.X0, Register.X1);
            localObj.Type = valueObj.Type;
            framePointerOffset++;
            c.Comment("[END] Declaracion de variable: " + varName);
            return null;
        }
        c.TagObject(varName);
        c.Comment("[END] Declaracion de variable: " + varName);
        return null;
    }
    // VisitFuncDcl
    public override Object? VisitFuncDcl([NotNull] LanguageParser.FuncDclContext context)
    {
        c.Comment("[START] Declaracion de funcion: " + context.ID().GetText());

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

        c.Comment("[START] Prologo de la funcion: " + funcName);
        c.SetLabel(funcName);

        var paramCounter = 0;
        var paramTypes = context.@params()?.type() ?? Array.Empty<LanguageParser.TypeContext>();
        var paramIds = context.@params()?.ID() ?? Array.Empty<ITerminalNode>();

        c.Comment("Procesando parametros de la funcion");
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

        c.Comment("Procesando variables locales de la funcion");
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

        c.Comment("Visitando declaraciones dentro de la funcion");
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }

        c.Comment("[START] Epilogo de la funcion: " + funcName);
        c.SetLabel(returnLabel);

        c.Add(Register.X0, Register.FP, Register.XZR);
        c.Ldr(Register.LR, Register.X0);
        c.Br(Register.LR);

        c.Comment("[END] Declaracion de funcion: " + funcName);

        c.Comment("Limpiando objetos de la pila");
        for (int i = 0; i < paramsOffset + localOffset; i++)
        {
            c.PopObject();
        }

        c.Comment("Guardando instrucciones de la funcion");
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
        c.Comment("[START] Print Statement");
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
        c.Comment("[END] Print Statement");
        return null;
    }
    // VisitExprStmt
    public override Object? VisitExprStmt([NotNull] LanguageParser.ExprStmtContext context)
    {
        c.Comment("[START] Expression Statement");
        Visit(context.expr());
        c.Comment("Haciendo POP a la expresion");
        c.PopObject(Register.X0);
        c.Comment("[END] Expression Statement");
        return null;
    }
    // VisitBlockStmt
    public override Object? VisitBlockStmt([NotNull] LanguageParser.BlockStmtContext context)
    {
        c.Comment("[START] Block Statement");
        c.NewScope();
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        int bytesToRemove = c.EndScope();
        if (bytesToRemove > 0)
        {
            c.Comment("Removiendo " + bytesToRemove + " bytes de la pila");
            c.Mov(Register.X0, bytesToRemove);
            c.Add(Register.SP, Register.SP, Register.X0); // Remove the bytes from the stack
            c.Comment("Puntero de pila después de remover bytes: " + Register.SP);
        }
        c.Comment("[END] Block Statement");
        return null;
    }
    // VisitIfStmt
    public override Object? VisitIfStmt([NotNull] LanguageParser.IfStmtContext context)
    {
        c.Comment("[START] If Statement");
        Visit(context.expr());
        c.PopObject(Register.X0);
        var hasElse = context.stmt().Length > 1;
        string endLabel = c.GetLabel();
        string elseLabel = hasElse ? c.GetLabel() : endLabel;
        // Saltar a "else" si la condición es falsa
        c.Cbz(Register.X0, elseLabel);
        c.Comment("[+] Ejecutando bloque 'if'");
        c.NewScope();
        Visit(context.stmt(0));
        c.Comment("[+] Fin del bloque 'if'");
        int bytesToRemoveThen = c.EndScope();
        if (bytesToRemoveThen > 0)
        {
            c.Comment($"Liberando {bytesToRemoveThen} bytes del ámbito del 'then'");
            c.Add(Register.SP, Register.SP, bytesToRemoveThen);
        }

        if (hasElse)
        {
            c.Comment("[+] Ejecutando bloque 'else'");
            c.B(endLabel);
            c.SetLabel(elseLabel);
            c.NewScope();
            Visit(context.stmt(1));
            c.Comment("[+] Fin del bloque 'else'");
            int bytesToRemoveElse = c.EndScope();
            if (bytesToRemoveElse > 0)
            {
                c.Comment($"Liberando {bytesToRemoveElse} bytes del ámbito del 'else'");
                c.Add(Register.SP, Register.SP, bytesToRemoveElse);
            }
        }
        c.SetLabel(endLabel);
        c.Comment("[END] If Statement");
        return null;
    }
    // VisitSwitchStmt
    public override Object? VisitSwitchStmt([NotNull] LanguageParser.SwitchStmtContext context)
    {
        c.Comment("[START] Switch Statement");
        var previousBreakLabel = breakLabel;
        breakLabel = c.GetLabel("SWITCH_END");
        string endLabel = breakLabel;
        Visit(context.expr());
        c.PopObject(Register.X19);
        foreach (var caseCtx in context.switchCase())
        {
            c.Comment("[+] Ejecutando bloque 'case'");
            string caseLabel = c.GetLabel("CASE");
            string nextLabel = c.GetLabel("NEXT_CASE");
            Visit(caseCtx.expr());
            c.PopObject(Register.X1);
            // Comparar el valor del case con el valor de la expresión
            c.Cmp(Register.X19, Register.X1);
            c.Beq(caseLabel);
            c.B(nextLabel);
            c.SetLabel(caseLabel);
            c.NewScope();
            foreach (var stmt in caseCtx.stmt())
            {
                Visit(stmt);
            }
            int bytesToRemove = c.EndScope();
            if (bytesToRemove > 0)
            {
                c.Comment($"Liberando {bytesToRemove} bytes del case");
                c.Add(Register.SP, Register.SP, bytesToRemove);
            }
            c.B(endLabel);
            c.SetLabel(nextLabel);
        }
        // Si hay un caso por defecto
        if (context.switchDefault() != null)
        {
            c.Comment("[+] Ejecutando bloque 'default'");
            string defaultLabel = c.GetLabel("DEFAULT");
            c.B(defaultLabel);
            c.SetLabel(defaultLabel);
            c.NewScope();
            foreach (var stmt in context.switchDefault().stmt())
            {
                Visit(stmt);
            }
            int bytesToRemove = c.EndScope();
            if (bytesToRemove > 0)
            {
                c.Comment($"Liberando {bytesToRemove} bytes del default");
                c.Add(Register.SP, Register.SP, bytesToRemove);
            }
            c.B(endLabel);
        }
        c.SetLabel(endLabel);
        breakLabel = previousBreakLabel;
        c.Comment("Fin del Switch Statement");
        return null;
    }

    // VisitForStmt
    public override Object? VisitForStmt([NotNull] LanguageParser.ForStmtContext context)
    {
        c.Comment("[START] For Statement");
        var startLabel = c.GetLabel();
        var endLabel = c.GetLabel();
        var incrementLabel = c.GetLabel();

        var prevContinueLabel = continueLabel;
        var prevBreakLabel = breakLabel;

        continueLabel = incrementLabel;
        breakLabel = endLabel;

        // --- INICIALIZACIÓN ---
        c.Comment("[INIT] Ejecutando inicialización del for");
        c.NewScope();
        Visit(context.forInit());
        c.Comment("[INIT] Fin de la inicialización");

        // --- CONDICIÓN ---
        c.Comment("[COND] Evaluando condición del for ");
        c.SetLabel(startLabel);
        Visit(context.expr(0));
        c.PopObject(Register.X0);
        c.Cbz(Register.X0, endLabel);
        c.Comment("[COND] Condición verdadera, ejecutando cuerpo");

        // --- CUERPO DEL BUCLE ---
        c.Comment("[BODY] Ejecutando cuerpo del for");
        c.NewScope();
        Visit(context.stmt());
        int bytesBody = c.EndScope();
        if (bytesBody > 0)
        {
            c.Comment($"[BODY] Liberando {bytesBody} bytes del cuerpo");
            c.Add(Register.SP, Register.SP, bytesBody);
        }
        c.Comment("[BODY] Fin del cuerpo");

        // --- INCREMENTO ---
        c.Comment("[INC] Procesando expresión de incremento");
        c.SetLabel(incrementLabel);
        if (context.expr().Length > 1)
        {
            Visit(context.expr(1));
            c.PopObject(Register.X0);
        }
        c.Comment("[INC] Fin del incremento");

        // --- SALTO A CONDICIÓN ---
        c.B(startLabel);

        // --- FIN DEL BUCLE ---
        c.SetLabel(endLabel);
        int bytesLoop = c.EndScope();
        if (bytesLoop > 0)
        {
            c.Comment($"Liberando {bytesLoop} bytes del ámbito del for");
            c.Add(Register.SP, Register.SP, bytesLoop);
        }

        continueLabel = prevContinueLabel;
        breakLabel = prevBreakLabel;
        c.Comment("[END] Fin del For Statement");

        return null;
    }
    // VisitForCondStmt
    public override Object? VisitForCondStmt([NotNull] LanguageParser.ForCondStmtContext context)
    {
        c.Comment("[START] For Condition Statement");
        var startLabel = c.GetLabel();
        var endLabel = c.GetLabel();

        var prevContinueLabel = continueLabel;
        var prevBreakLabel = breakLabel;
        continueLabel = startLabel;
        breakLabel = endLabel;

        // --- CONDICIÓN ---
        c.SetLabel(startLabel);
        c.Comment("[COND] Evaluando condición del for");
        Visit(context.expr());
        c.PopObject(Register.X0);
        c.Cbz(Register.X0, endLabel);
        c.Comment("[COND] Condición verdadera, ejecutando cuerpo");

        // --- CUERPO DEL BUCLE (con scope) ---
        c.Comment("[BODY] Iniciando ámbito del cuerpo del for");
        c.NewScope();
        Visit(context.stmt());
        int bytesToFree = c.EndScope();
        if (bytesToFree > 0)
        {
            c.Comment($"Liberando {bytesToFree} bytes del ámbito");
            c.Add(Register.SP, Register.SP, bytesToFree);
        }
        c.Comment("[BODY] Fin del cuerpo");

        // --- REINICIO DEL BUCLE ---
        c.B(startLabel);
        c.SetLabel(endLabel);

        // --- RESTAURAR ETIQUETAS ---
        continueLabel = prevContinueLabel;
        breakLabel = prevBreakLabel;
        c.Comment("[END] Fin del For Condition Statement");

        return null;
    }
    // VisitForRangeStmt
    public override Object? VisitForRangeStmt([NotNull] LanguageParser.ForRangeStmtContext context)
    {
        return null;
    }
    // VisitBreakStmt
    public override Object? VisitBreakStmt([NotNull] LanguageParser.BreakStmtContext context)
    {
        c.Comment("[START] Break Statement");
        if (breakLabel != null)
        {
            c.B(breakLabel);
        }
        c.Comment("[END] Break Statement");
        return null;
    }
    // VisitContinueStmt
    public override Object? VisitContinueStmt([NotNull] LanguageParser.ContinueStmtContext context)
    {
        c.Comment("[START] Continue Statement");
        if (continueLabel != null)
        {
            c.B(continueLabel);
        }
        c.Comment("[END] Continue Statement");
        return null;
    }
    // VisitReturnStmt
    public override Object? VisitReturnStmt([NotNull] LanguageParser.ReturnStmtContext context)
    {
        c.Comment("[START] Return Statement");
        if (insideFunction == null) throw new Exception("Sentencia de retorno fuera de una función");

        if (context.expr() != null)
        {
            Visit(context.expr());
            c.PopObject(Register.X0);

            var frameSize = functions[insideFunction].FrameSize;
            var returnOffset = frameSize - 1;
            c.Mov(Register.X1, returnOffset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1);
            c.Str(Register.X0, Register.X1);

            c.B(returnLabel);
        }
        else
        {
            c.B(returnLabel);
        }
        c.Comment("[END] Return Statement");
        return null;
    }
    // // VisitSwitchCase
    // // VisitSwitchDefault
    // // VisitForInit
    // VisitCallee
    public override Object? VisitCallee([NotNull] LanguageParser.CalleeContext context)
    {
        c.Comment("[START] Function Call");
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
        c.Sub(Register.SP, Register.SP, Register.X0);

        // 2. | RA | FP | ...params |
        if (callContext.args() != null)
        {
            c.Comment("[+] Procesando argumentos de la funcion");
            foreach (var param in callContext.args().expr())
            {
                Visit(param);
            }
        }
        // 3. Calcular el valor del FP
        // Regresar el SP al inicio del Frame
        c.Mov(Register.X0, stackElementSize * (baseOffset + (callContext.args() != null ? callContext.args().expr().Length : 0)));
        c.Add(Register.SP, Register.SP, Register.X0);

        // Calcular la posicion donde se va a guardar el FP
        c.Mov(Register.X0, stackElementSize);
        c.Sub(Register.X0, Register.SP, Register.X0);

        c.Adr(Register.X1, postFuncCallLabel);
        c.Push(Register.X1);

        c.Push(Register.FP);
        c.Add(Register.FP, Register.X0, Register.XZR);

        int frameSize = functions[funcName].FrameSize;
        c.Mov(Register.X0, (frameSize - 2) * stackElementSize);
        c.Sub(Register.SP, Register.SP, Register.X0);

        c.Comment("[+] Llamando a la funcion: " + funcName);
        c.Bl(funcName);
        c.Comment("[+] Fin de la llamada a la funcion");
        c.SetLabel(postFuncCallLabel);

        var returnOffset = frameSize - 1;
        c.Mov(Register.X4, returnOffset * stackElementSize);
        c.Sub(Register.X4, Register.FP, Register.X4);
        c.Ldr(Register.X4, Register.X4);

        c.Mov(Register.X1, stackElementSize);
        c.Sub(Register.X1, Register.FP, Register.X1);
        c.Ldr(Register.FP, Register.X1);

        c.Mov(Register.X0, stackElementSize * frameSize);
        c.Add(Register.SP, Register.SP, Register.X0);

        c.Push(Register.X4);
        c.PushObject(new StackObject
        {
            Type = functions[funcName].ReturnType,
            Id = null,
            Offset = 0,
            Length = 8
        });
        c.Comment("[END] Function Call");

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
        c.Comment($"[START] {operation} operation");
        Visit(context.expr(0));
        Visit(context.expr(1));
        // Determinar tipos
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X1);
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X0);

        if (isLeftDouble || isRightDouble)
        {
            // Convertir a flotante si es necesario
            if (!isLeftDouble) c.Scvtf(Register.D1, Register.X0);
            if (!isRightDouble) c.Scvtf(Register.D0, Register.X1);
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

            c.Push(Register.D0);
            c.PushObject(c.CloneObject(isLeftDouble ? left : right));
        }
        else
        {
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
            c.Push(Register.X0);
            c.PushObject(c.CloneObject(left));
        }
        c.Comment($"[END] {operation} operation");
        return null;
    }
    // VisitAddSub
    public override object? VisitAddSub([NotNull] LanguageParser.AddSubContext context)
    {
        var operation = context.op.Text;
        c.Comment($"[START] {operation} operation");
        Visit(context.expr(0));
        Visit(context.expr(1));
        // Determinar tipos
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X1);
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X0);
        // Determinar si son enteros o flotantes o strings
        if (operation == "+" &&
            left.Type == StackObject.StackObjectType.String &&
            right.Type == StackObject.StackObjectType.String)
        {
            c.Comment("[+] Concatenando strings [+]");
            c._stdLib.Use("concat_strings");
            c.Push(Register.X0); // left (primer string)
            c.Push(Register.X1); // right (segundo string)
            c.Bl("concat_strings");
            c.Add(Register.SP, Register.SP, 16);
            c.Push(Register.X0);
            c.PushObject(c.StringObject());
            return null;
        }
        else if (isLeftDouble || isRightDouble)
        {
            // Convertir operandos a double si es necesario
            if (!isLeftDouble) c.Scvtf(Register.D1, Register.X0);
            if (!isRightDouble) c.Scvtf(Register.D0, Register.X1);
            // Realizar operación
            if (operation == "+")
                c.Fadd(Register.D0, Register.D1, Register.D0);
            else
                c.Fsub(Register.D0, Register.D1, Register.D0);

            c.Push(Register.D0);
            c.PushObject(c.FloatObject());
        }
        else
        {
            if (operation == "+")
                c.Add(Register.X0, Register.X0, Register.X1);
            else
                c.Sub(Register.X0, Register.X0, Register.X1);

            c.Push(Register.X0);
            c.PushObject(c.IntObject());
        }
        c.Comment($"[END] {operation} operation");
        return null;
    }
    // VisitParens
    public override Object? VisitParens([NotNull] LanguageParser.ParensContext context)
    {
        c.Comment("[START] Parentesis");
        Visit(context.expr());
        c.Comment("[END] Parentesis");
        return null;
    }
    // VisitRelational
    public override Object? VisitRelational([NotNull] LanguageParser.RelationalContext context)
    {
        c.Comment($"[START] Relational operation: {context.op.Text}");
        Visit(context.expr(0));
        Visit(context.expr(1));
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
        c.Comment($"[END] Relational operation: {context.op.Text}");
        return null;
    }
    // VisitIncDec
    public override Object? VisitIncDec([NotNull] LanguageParser.IncDecContext context)
    {
        c.Comment("[START] Increment/Decrement operation");
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
            c.Ldr(Register.D0, Register.X1);
            c.Fmov(Register.D1, 1.0);

            if (operation == "++")
            {
                c.Fadd(Register.D0, Register.D0, Register.D1);
            }
            else
            {
                c.Fsub(Register.D0, Register.D0, Register.D1);
            }

            c.Str(Register.D0, Register.X1);
            c.Push(Register.D0);
        }
        else
        {
            c.Ldr(Register.X0, Register.X1);

            if (operation == "++")
            {
                c.Add(Register.X0, Register.X0, 1);
            }
            else
            {
                c.Sub(Register.X0, Register.X0, 1);
            }

            c.Str(Register.X0, Register.X1);
            c.Push(Register.X0);
        }
        // Actualizar el objeto en la pila
        c.PushObject(c.CloneObject(obj));
        c.Comment("[END] Increment/Decrement operation");
        return null;
    }
    // VisitString
    public override Object? VisitString([NotNull] LanguageParser.StringContext context)
    {
        var value = context.STRING().GetText().Trim('"');
        c.Comment("Valor String: " + value);
        var stringObj = c.StringObject();
        c.PushConstant(stringObj, value);

        return null;
    }
    // VisitInt
    public override Object? VisitInt([NotNull] LanguageParser.IntContext context)
    {
        var value = context.INT().GetText();
        c.Comment("Valor Int: " + value);
        var intObject = c.IntObject();
        c.PushConstant(intObject, int.Parse(value));
        return null;
    }

    // VisitNil
    public override Object? VisitNil([NotNull] LanguageParser.NilContext context)
    {
        c.Comment("Valor NIL: nil");
        var nilObject = c.NilObject();
        c.PushConstant(nilObject, null);
        return null;
    }
    // VisitFloat
    public override Object? VisitFloat([NotNull] LanguageParser.FloatContext context)
    {
        var value = context.FLOAT().GetText();
        c.Comment("Valor Float64: " + value);
        var floatObject = c.FloatObject();
        c.PushConstant(floatObject, double.Parse(value, System.Globalization.CultureInfo.InvariantCulture));

        return null;
    }
    // VisitNot
    public override Object? VisitNot([NotNull] LanguageParser.NotContext context)
    {
        c.Comment("[START] Logical NOT operation");
        Visit(context.expr());
        var operand = c.PopObject(Register.X0);

        if (operand.Type != StackObject.StackObjectType.Bool)
        {
            throw new SemanticError("El operando de '!' debe ser booleano", context.Start);
        }
        c.Cmp(Register.X0, 0);
        c.Cset(Register.X0, Register.EQ);

        c.Push(Register.X0);
        c.PushObject(c.BoolObject());
        c.Comment("[END] Logical NOT operation");
        return null;
    }
    // VisitIdentifier
    public override Object? VisitIdentifier([NotNull] LanguageParser.IdentifierContext context)
    {
        var id = context.ID().GetText();
        c.Comment("[START] Identifier: " + id);
        var (offset, obj) = c.GetObject(id);
        if (insideFunction != null)
        {
            c.Mov(Register.X0, obj.Offset * 8);
            c.Sub(Register.X0, Register.FP, Register.X0);
            c.Ldr(Register.X0, Register.X0);
            c.Push(Register.X0);
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
        c.Comment("[END] Identifier: " + id);
        return null;
    }
    // VisitAssign
    public override Object? VisitAssign([NotNull] LanguageParser.AssignContext context)
    {
        c.Comment("[START] Assignment operation");
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
        c.Comment("[END] Assignment operation");

        return null;
    }

    // VisitNegate
    public override Object? VisitNegate([NotNull] LanguageParser.NegateContext context)
    {
        c.Comment("[START] Negation operation");
        Visit(context.expr());
        var isDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var operand = c.PopObject(isDouble ? Register.D0 : Register.X0);

        if (isDouble)
        {
            c.Fneg(Register.D0, Register.D0);
            c.Push(Register.D0);
        }
        else
        {
            c.Neg(Register.X0, Register.X0);
            c.Push(Register.X0);
        }
        c.PushObject(operand);
        c.Comment("[END] Negation operation");
        return null;
    }
    // VisitEquality
    public override Object? VisitEquality([NotNull] LanguageParser.EqualityContext context)
    {
        c.Comment($"[START] Equality operation: {context.op.Text}");
        Visit(context.expr(0));
        Visit(context.expr(1));
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
            if (left.Type != StackObject.StackObjectType.Float)
            {
                c.Scvtf(Register.D1, Register.X0);
            }
            else
            {
                c.Fmov(Register.D1, Register.D0);
            }

            if (right.Type != StackObject.StackObjectType.Float)
            {
                c.Scvtf(Register.D0, Register.X1);
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
            c.Push(Register.X0);
            c.Push(Register.X1);
            c.Bl("string_compare");
            c.Add(Register.SP, Register.SP, 16);
            c.Cmp(Register.X0, 0);
            c.Cset(Register.X0, condition);
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
        c.PushObject(c.BoolObject());
        c.Comment($"[END] Equality operation: {context.op.Text}");
        return null;
    }
    // VisitBoolean
    public override Object? VisitBoolean([NotNull] LanguageParser.BooleanContext context)
    {
        var value = context.BOOL().GetText();
        c.Comment("Valor Bool: " + value);
        var boolObject = c.BoolObject();
        c.PushConstant(boolObject, value == "true" ? true : false);

        return null;
    }
    // VisitRune
    public override Object? VisitRune([NotNull] LanguageParser.RuneContext context)
    {
        var value = context.RUNE().GetText().Trim('\'');
        c.Comment("Valor Rune: " + value);
        var runeObject = c.RuneObject();
        c.Mov(Register.X0, (int)value[0]);
        c.Push(Register.X0);
        c.PushObject(runeObject);

        return null;
    }
    // VisitAndOr
    public override Object? VisitAndOr([NotNull] LanguageParser.AndOrContext context)
    {
        c.Comment("[START] Logical AND/OR operation");
        string op = context.op.Text;

        string falseLabel = c.GetLabel("ANDOR_FALSE");
        string trueLabel = c.GetLabel("ANDOR_TRUE");
        string endLabel = c.GetLabel("ANDOR_END");

        // Evaluar primera condición
        Visit(context.expr(0));
        var left = c.PopObject(Register.X0);

        // Convertir a booleano (0 o 1)
        c.Cmp(Register.X0, 0);
        c.Cset(Register.X0, Register.NE);

        if (op == "&&")
        {
            // AND lógico: si left es falso, salta a false
            c.Cbz(Register.X0, falseLabel);
        }
        else
        {
            // OR lógico: si left es verdadero, salta a true
            c.Cbnz(Register.X0, trueLabel);
        }

        // Evaluar segunda condición
        Visit(context.expr(1));
        var right = c.PopObject(Register.X0);

        // Convertir a booleano
        c.Cmp(Register.X0, 0);
        c.Cset(Register.X0, Register.NE);

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
        c.Comment("[END] Logical AND/OR operation");

        return null;
    }

    // VisitAssignOp
    public override Object? VisitAssignOp([NotNull] LanguageParser.AssignOpContext context)
    {
        var id = context.ID().GetText();
        var operation = context.op.Text;
        c.Comment("[START] Assignment operation: " + operation);

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
        c.Comment("[END] Assignment operation: " + operation);

        return null;
    }
    // // VisitFuncCall
    // // VisitGet
    // // VisitArrayAccess
    // // VisitArgs
    // // VisitStruct


}

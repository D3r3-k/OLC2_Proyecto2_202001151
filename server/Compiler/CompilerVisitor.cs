using System.Net.WebSockets;
using analyzer;
using Antlr4.Runtime.Misc;
using server.global;
public class CompilerVisitor : LanguageBaseVisitor<Object?>
{
    // TODO: Atributos
    public ArmGenerator c = new ArmGenerator();
    private string? continueLabel = null;
    private string? breakLabel = null;
    private string? returnLabel = null;

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
        c.Comment("Variable declaration: " + varName);

        Visit(context.expr());

        c.TagObject(varName);

        return null;
    }
    // VisitFuncDcl
    public override Object? VisitFuncDcl([NotNull] LanguageParser.FuncDclContext context)
    {
        
        return null;
    }
    // // VisitNodo
    // // VisitParams
    // // VisitClassDcl
    // // VisitClassBody
    // VisitStructDcl
    public override Object? VisitStructDcl([NotNull] LanguageParser.StructDclContext context)
    {
        return null;
    }
    // VisitPrintStmt
    public override Object? VisitPrintStmt([NotNull] LanguageParser.PrintStmtContext context)
    {
        c.Comment("Print Statement");
        c.Comment("Visiting expressions");
        foreach (var expr in context.expr())
        {
            Visit(expr);
            c.Comment("Pop the value to print");
            var isDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
            var value = c.PopObject(isDouble ? Register.D0 : Register.X0); // Pop the value to print

            if (value.Type == StackObject.StackObjectType.Int)
            {
                c.PrintInteger(Register.X0); // Call the print function
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
        }

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
        return null;
    }
    // // VisitSwitchCase
    // // VisitSwitchDefault
    // // VisitForInit
    // VisitCallee
    public override Object? VisitCallee([NotNull] LanguageParser.CalleeContext context)
    {
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
        // 1 * 2
        // Top -> []
        c.Comment("Visit left operand");
        Visit(context.expr(0)); // Visit 1 -> [1]
        c.Comment("Visit right operand");
        Visit(context.expr(1)); // Visit 2 -> [1, 2]
        c.Comment("Pop operands");
        c.Pop(Register.X1); // Pop 2 -> [1]
        c.Pop(Register.X0); // Pop 1 -> []
        if (operation == "*")
        {
            c.Mul(Register.X0, Register.X0, Register.X1); // X0 = 1 * 2
        }
        else if (operation == "/")
        {
            c.Div(Register.X0, Register.X0, Register.X1); // X0 = 1 / 2
        }
        // else if (operation == "%")
        // {
        //     c.Mod(Register.X0, Register.X0, Register.X1); // X0 = 1 % 2
        // }
        c.Comment("Push result");
        c.Push(Register.X0); // Push result -> [result]
        return null;
    }
    // VisitAddSub
    public override Object? VisitAddSub([NotNull] LanguageParser.AddSubContext context)
    {
        var operation = context.op.Text;
        // 1 + 2
        // Top -> []
        c.Comment("Visit left operand");
        Visit(context.expr(0)); // Visit 1; TOP -> [1]
        c.Comment("Visit right operand");
        Visit(context.expr(1)); // Visit 2; TOP -> [1, 2]
        c.Comment("Pop operands");
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X1); // Pop 2 -> [1]
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X1); // Pop 1 -> []


        if (isLeftDouble || isRightDouble)
        {
            if (!isLeftDouble) c.Scvtf(Register.D1, Register.X1); // Convert to double
            if (!isRightDouble) c.Scvtf(Register.D0, Register.X0); // Convert to double

            if (operation == "+")
            {
                c.Fadd(Register.D0, Register.D0, Register.D1); // D1 = 1.0 + 2.0
            }
            else if (operation == "-")
            {
                c.Fsub(Register.D0, Register.D1, Register.D0); // D1 = 1.0 - 2.0
            }
            c.Comment("Push result");
            c.Push(Register.D0); // Push result -> [result]
            c.PushObject(c.CloneObject(
                isLeftDouble ? left : right
            ));


            return null;
        }

        // Aqui ya se puede verificar el tipo de left y right

        if (operation == "+")
        {
            c.Add(Register.X0, Register.X0, Register.X1); // X0 = 1 + 2
        }
        else if (operation == "-")
        {
            c.Sub(Register.X0, Register.X1, Register.X0); // X0 = 1 - 2
        }

        c.Comment("Push result");
        c.Push(Register.X0); // Push result -> [result]
        c.PushObject(c.CloneObject(left));

        return null;
    }
    // VisitParens
    public override Object? VisitParens([NotNull] LanguageParser.ParensContext context)
    {
        return null;
    }
    // VisitRelational
    public override Object? VisitRelational([NotNull] LanguageParser.RelationalContext context)
    {
        c.Comment("Relational operation");
        var operation = context.op.Text;
        Visit(context.expr(0)); // Visit left operand
        Visit(context.expr(1)); // Visit right operand
        c.Comment("Pop operands");
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X1); // Pop 2 -> [1]
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X1); // Pop 1 -> []
        if (isLeftDouble || isRightDouble)
        {
            return null;
        }
        c.Cmp(Register.X1, Register.X0); // Compare left and right
        var trueLabel = c.GetLabel();
        var endLabel = c.GetLabel();

        /*
        cmp x1, x0
        [beq] [bne] [blt] [bgt] [ble] [bge] -> true
        push 0
        b end
        trueLabel:
        push 1
        end:
        */
        switch (operation)
        {
            case "<":
                c.Blt(trueLabel);
                break;
            case ">":
                c.Bgt(trueLabel);
                break;
            case "<=":
                c.Ble(trueLabel);
                break;
            case ">=":
                c.Bge(trueLabel);
                break;
            case "==":
                c.Beq(trueLabel);
                break;
            case "!=":
                c.Bne(trueLabel);
                break;
        }
        c.Mov(Register.X0, 0); // Push false
        c.Push(Register.X0); // Push result -> [result]
        c.B(endLabel);
        c.SetLabel(trueLabel);
        c.Mov(Register.X0, 1); // Push true
        c.Push(Register.X0); // Push result -> [result]
        c.SetLabel(endLabel);

        c.PushObject(c.BoolObject());

        return null;
    }
    // VisitIncDec
    public override Object? VisitIncDec([NotNull] LanguageParser.IncDecContext context)
    {
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
        c.PushConstant(intObject, int.Parse(value)); // Push the integer value to the stack

        return null;
    }
    // VisitStruct
    public override Object? VisitStruct([NotNull] LanguageParser.StructContext context)
    {
        return null;
    }
    // VisitNil
    public override Object? VisitNil([NotNull] LanguageParser.NilContext context)
    {
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
        return null;
    }
    // VisitIdentifier
    public override Object? VisitIdentifier([NotNull] LanguageParser.IdentifierContext context)
    {
        var id = context.ID().GetText();

        var (offset, obj) = c.GetObject(id);

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

            var valueObject = c.PopObject(Register.X0); // Pop the value to assign

            var (offset, varObj) = c.GetObject(id);

            c.Mov(Register.X1, offset);
            c.Add(Register.X1, Register.SP, Register.X1); // Calculate the address of the variable
            c.Str(Register.X0, Register.X1); // Store the value in the variable

            varObj.Type = valueObject.Type;

            c.Push(Register.X0);
            c.PushObject(c.CloneObject(varObj));

        }
        return null;
    }

    // VisitNegate
    public override Object? VisitNegate([NotNull] LanguageParser.NegateContext context)
    {
        return null;
    }
    // VisitEquality
    public override Object? VisitEquality([NotNull] LanguageParser.EqualityContext context)
    {
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
        return null;
    }
    // VisitAndOr
    public override Object? VisitAndOr([NotNull] LanguageParser.AndOrContext context)
    {
        return null;
    }
    // VisitAssignOp
    public override Object? VisitAssignOp([NotNull] LanguageParser.AssignOpContext context)
    {
        return null;
    }
    // // VisitFuncCall
    // // VisitGet
    // // VisitArrayAccess
    // // VisitArgs
}

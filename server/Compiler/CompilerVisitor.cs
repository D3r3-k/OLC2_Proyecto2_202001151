using System.Net.WebSockets;
using analyzer;
using Antlr4.Runtime.Misc;
using server.global;
public class CompilerVisitor : LanguageBaseVisitor<Object?>
{
    // TODO: Atributos
    public ArmGenerator c = new ArmGenerator();
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
            c.Pop(Register.X0); // Pop the value to print
            c.PrintInteger(Register.X0); // Call the print function
        }
        return null;
    }
    // VisitExprStmt
    public override Object? VisitExprStmt([NotNull] LanguageParser.ExprStmtContext context)
    {
        return null;
    }
    // VisitBlockStmt
    public override Object? VisitBlockStmt([NotNull] LanguageParser.BlockStmtContext context)
    {
        return null;
    }
    // VisitIfStmt
    public override Object? VisitIfStmt([NotNull] LanguageParser.IfStmtContext context)
    {
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
        return null;
    }
    // VisitForCondStmt
    public override Object? VisitForCondStmt([NotNull] LanguageParser.ForCondStmtContext context)
    {
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
        return null;
    }
    // VisitContinueStmt
    public override Object? VisitContinueStmt([NotNull] LanguageParser.ContinueStmtContext context)
    {
        throw new ContinueException();
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
        return null;
    }
    // VisitAddSub
    public override Object? VisitAddSub([NotNull] LanguageParser.AddSubContext context)
    {
        var operation = context.op.Text;
        // 1 + 2
        // Top -> []
        c.Comment("Visit left operand");
        Visit(context.expr(0)); // Visit 1 -> [1]
        c.Comment("Visit right operand");
        Visit(context.expr(1)); // Visit 2 -> [1, 2]

        c.Comment("Pop operands");
        c.Pop(Register.X1); // Pop 2 -> [1]
        c.Pop(Register.X0); // Pop 1 -> []

        if (operation == "+")
        {
            c.Add(Register.X0, Register.X0, Register.X1); // X0 = 1 + 2
        }
        else if (operation == "-")
        {
            c.Sub(Register.X0, Register.X0, Register.X1); // X0 = 1 - 2
        }

        c.Comment("Push result");
        c.Push(Register.X0); // Push result -> [result]
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
        return null;
    }
    // VisitInt
    public override Object? VisitInt([NotNull] LanguageParser.IntContext context)
    {
        var value = context.INT().GetText();
        c.Comment("Constante: " + value);
        c.Mov(Register.X0, int.Parse(value));
        c.Push(Register.X0);
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
        return null;
    }
    // VisitAssign
    public override Object? VisitAssign([NotNull] LanguageParser.AssignContext context)
    {
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

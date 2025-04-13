using analyzer;

namespace server.Compiler
{
    public class SearchVisitor : LanguageBaseVisitor<object?>
    {
        public List<LanguageParser.DclContext> GlobalStatements { get; private set; } = new();
        public LanguageParser.FuncDclContext? MainFunction { get; private set; }

        public override object? VisitDcl(LanguageParser.DclContext context)
        {
            if (context.varDcl() != null || context.funcDcl() != null || context.structDcl() != null)
            {
                if (context.funcDcl() != null && context.funcDcl().ID().GetText() == "main")
                {
                    MainFunction = context.funcDcl();
                }
                else
                {
                    GlobalStatements.Add(context);
                }
            }

            return null;
        }
    }
}
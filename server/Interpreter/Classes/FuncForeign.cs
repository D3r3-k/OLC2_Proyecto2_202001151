using analyzer;

public class FuncForeign : Invocable
{
    // TODO: Atributos
    private Environment closure;
    private LanguageParser.FuncDclContext context;
    private string returnType;
    private string idBind;

    // TODO: Constructor
    public FuncForeign(Environment closure, LanguageParser.FuncDclContext context, string returnType, string idBind)
    {
        this.closure = closure;
        this.context = context;
        this.returnType = returnType;
        this.idBind = idBind;
    }

    // TODO: Métodos
    public int Arity()
    {
        if (context.@params() == null)
        {
            return 0;
        }
        return context.@params().ID().Length;
    }
    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        Environment newEnv = new Environment(closure, "func_" + context.ID().GetText());
        var beforeCallEnv = visitor.currentEnv;
        visitor.currentEnv = newEnv;
        if (context.@params() != null)
        {
            for (int i = 0; i < context.@params().ID().Length; i++)
            {
                string paramType = context.@params().type(i).GetText();
                args[i] = Extras.CastValue(args[i], paramType);
                Extras.ValidateValues(args[i], paramType, context.Start);
                Symbol arg = new Symbol(args[i], "Function", "param_" + paramType, newEnv.name);
                newEnv.Declare(context.@params().ID(i).GetText(), arg, null);
            }
        }
        try
        {
            foreach (var statement in context.dcl())
            {
                visitor.Visit(statement);
            }
            if (returnType != "void")
            {
                throw new SemanticError("La función no tiene un retorno", context.Start);
            }
        }
        catch (ReturnException e)
        {
            if (returnType != e.Value.GetTyper())
            {
                throw new SemanticError("El tipo de retorno no coincide", context.Start);
            }
            else
            {
                visitor.currentEnv = beforeCallEnv;
                return e.Value;
            }
        }
        visitor.currentEnv = beforeCallEnv;
        return visitor.defaultVoid;
    }

    public FuncForeign Bind(Instance instance)
    {
        var hiddenEnv = new Environment(closure, "func_" + context.ID().GetText());
        Symbol thisSymbol = new Symbol(new InstanceValue(instance), "Function", "instance", hiddenEnv.name);
        hiddenEnv.Declare(idBind, thisSymbol, null);
        return new FuncForeign(hiddenEnv, context, returnType, idBind);
    }
}
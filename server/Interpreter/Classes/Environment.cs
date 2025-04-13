using server.global;

public class Environment
{
    // TODO: Atributos
    private Environment? parent;
    public string name = "Global";
    public Dictionary<string, Symbol> variables = new Dictionary<string, Symbol>();

    // TODO: Constructor
    public Environment(Environment? parent, string name)
    {
        this.parent = parent;
        this.name = name;
    }

    // TODO: Métodos
    public Symbol Get(string id, Antlr4.Runtime.IToken token)
    {
        if (variables.ContainsKey(id))
        {
            return variables[id];
        }

        if (parent != null)
        {
            return parent.Get(id, token);
        }
        throw new SemanticError("Variable \"" + id + "\" no encontrada", token);
    }
    public void Declare(string id, Symbol symbol, Antlr4.Runtime.IToken? token = null)
    {
        if (variables.ContainsKey(id))
        {
            if (token != null)
            {
                throw new SemanticError("Variable \"" + id + "\" ya declarada", token);
            }
        }
        else
        {
            variables[id] = symbol;
            int line = token?.Line ?? -1;
            int column = token?.Column ?? -1;
            Global.symbols.Add(new SymbolReport(id, symbol.typeSymbol, symbol.valueType, name, line, column));
        }
    }
    public ValueWrapper Assign(string id, Symbol value, Antlr4.Runtime.IToken token)
    {
        if (variables.ContainsKey(id))
        {
            variables[id].value = value.value;
            return value.value;
        }

        if (parent != null)
        {
            return parent.Assign(id, value, token);
        }
        throw new SemanticError("Variable \"" + id + "\" no encontrada", token);
    }
}

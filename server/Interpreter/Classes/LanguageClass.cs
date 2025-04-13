using analyzer;

public class LanguageClass : Invocable
{
    // TODO: Atributos
    public string name { get; set; }
    public Dictionary<string, LanguageParser.VarDclContext> props { get; set; }
    public Dictionary<string, FuncForeign> methods { get; set; }

    // TODO: Constructor
    public LanguageClass(string name
        , Dictionary<string, LanguageParser.VarDclContext> props
        , Dictionary<string, FuncForeign> methods)
    {
        this.name = name;
        this.props = props;
        this.methods = methods;
    }

    // TODO: Métodos
    public FuncForeign? GetMethod(string id)
    {
        if (methods.ContainsKey(id))
        {
            return methods[id];
        }
        return null;
    }
    public int Arity()
    {
        var constructor = GetMethod("constructor");
        if (constructor != null)
        {
            return constructor.Arity();
        }
        return 0;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        var newInstance = new Instance(this, instance =>
        {
            var str = "{";
            foreach (var prop in instance.Properties)
            {
                str += prop.Key + ": " + prop.Value.ToString() + ",";
            }

            if (str.Length > 1)
            {
                str = str.TrimEnd(',');
            }
            str += "}";
            return str;
        });
        // ? (MODIFICAR) Default values | Modificar para volverlo un Structs
        foreach (var prop in props)
        {
            var name = prop.Key;
            var value = prop.Value;
            if (value.expr() != null)
            {
                var varValue = visitor.Visit(value.expr());
                newInstance.Set(name, varValue);
            }
            else
            {
                newInstance.Set(name, Extras.GetDefaultValue(value.type().GetText()));
            }
        }
        var constructor = GetMethod("constructor");
        if (constructor != null)
        {
            constructor.Bind(newInstance).Invoke(args, visitor);
        }
        else
        {
            for (int i = 0; i < args.Count; i++)
            {
                newInstance.Set(props.ElementAt(i).Key, args[i]);
            }
        }
        return new InstanceValue(newInstance);
    }
}
using analyzer;

public class LanguageSlice : Invocable
{
    public Dictionary<string, LanguageParser.VarDclContext> Props { get; }
    public Dictionary<string, FuncForeign> Methods { get; set; }
    private LanguageClass equivalentClass;

    public LanguageSlice(string typeArray)
    {
        Props = new Dictionary<string, LanguageParser.VarDclContext>();
        Methods = new Dictionary<string, FuncForeign>();
        equivalentClass = new LanguageClass(typeArray, Props, Methods);
    }

    public int Arity()
    {
        return 1000;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        var newInstance = new Instance(equivalentClass, instance =>
        {
            var str = "[";
            foreach (var prop in instance.Properties)
            {
                str += prop.Value.ToString() + ",";
            }

            if (str.Length > 1)
            {
                str = str.TrimEnd(',');
            }
            str += "]";
            return str;
        });
        for (int i = 0; i < args.Count; i++)
        {
            var name = i.ToString();
            var value = args[i];
            newInstance.Set(name, value);
        }
        return new SliceValue(newInstance);
    }
}
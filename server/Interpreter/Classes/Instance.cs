public class Instance
{
    // TODO: Atributos
    public LanguageClass languageClass;
    public Dictionary<string, ValueWrapper> Properties;

    public new Func<string> ToString;

    public Instance(LanguageClass languageClass, Func<Instance, string> toString)
    {
        this.languageClass = languageClass;
        Properties = new Dictionary<string, ValueWrapper>();
        ToString = () => toString(this);
    }

    public void Set(string name, ValueWrapper value)
    {
        Properties[name] = value;
    }
    public ValueWrapper Get(string name, Antlr4.Runtime.IToken token)
    {
        if (Properties.ContainsKey(name))
        {
            return Properties[name];
        }

        var method = languageClass.GetMethod(name);
        if (method != null)
        {
            return new FunctionValue(method.Bind(this), name);
        }

        throw new SemanticError("Propiedad o Metodo \"" + name + "\" no encontrada", token);
    }

}
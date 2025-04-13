public class Symbol
{
    // TODO: Atributos
    public string typeSymbol;
    public string valueType;
    public string environment;
    public ValueWrapper value;
    // TODO: Constructor
    public Symbol(ValueWrapper value, string typeSymbol, string valueType, string environment)
    {
        this.value = value;
        this.typeSymbol = typeSymbol;
        this.valueType = valueType;
        this.environment = environment;
    }
}
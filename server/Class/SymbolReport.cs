public class SymbolReport
{
    // TODO: Atributos
    public string id { get; }
    public string typeSymbol { get; }
    public string typeData { get; }
    public string environment { get; }
    public int line { get; }
    public int column { get; }

    // TODO: Constructor
    public SymbolReport(string id, string typeSymbol, string typeData, string environment, int line, int column)
    {
        this.id = id;
        this.typeSymbol = typeSymbol;
        this.typeData = typeData;
        this.environment = environment;
        this.line = line;
        this.column = column;
    }
}
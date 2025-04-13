public class ErrorReport
{
    // TODO: Atributos
    public string description { get; }
    public int row { get; }
    public int column { get; }
    public string type { get; }

    // todo: Constructor
    public ErrorReport(string description, int row, int column, string type)
    {
        this.description = description;
        this.row = row;
        this.column = column;
        this.type = type;
        Console.WriteLine("Error: " + description + " at row: " + row + " column: " + column + " type: " + type);
    }

}
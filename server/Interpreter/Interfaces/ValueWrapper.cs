using System.Text.RegularExpressions;

public abstract record ValueWrapper
{
    public abstract string GetTyper();
}

public record IntValue(int Value) : ValueWrapper
{
    public override string GetTyper() => "int";
    public override string ToString() => Value.ToString();
}

public record FloatValue(double Value) : ValueWrapper
{
    public override string GetTyper() => "float64";
    public override string ToString() => Value.ToString("F2").Replace(",", ".");
}

public record StringValue(string Value) : ValueWrapper
{
    public override string GetTyper() => "string";
    public override string ToString() => Regex.Replace(Value, @"\\(.)", match =>
                {
                    return match.Groups[1].Value switch
                    {
                        "\"" => "\"",
                        "\\" => "\\",
                        "n" => "\n",
                        "r" => "\r",
                        "t" => "\t",
                        _ => match.Value
                    };
                });
}

public record BoolValue(bool Value) : ValueWrapper
{
    public override string GetTyper() => "bool";
    public override string ToString() => Value.ToString();
}

public record RuneValue(char Value) : ValueWrapper
{
    public override string GetTyper() => "rune";
    public override string ToString() => Value.ToString();
}

public record NilValue : ValueWrapper
{
    public override string GetTyper() => "nil";
    public override string ToString() => "nil";
}

public record VoidValue : ValueWrapper
{
    public override string GetTyper() => "void";
    public override string ToString() => "";
}

public record InstanceValue(Instance instance) : ValueWrapper
{
    public override string GetTyper() => instance.languageClass.name;
    public override string ToString() => instance.ToString();
}

public record FunctionValue(Invocable invocable, string name) : ValueWrapper
{
    public override string GetTyper() => "function";
    public override string ToString() => "Function_" + name;
}
public record StructValue(LanguageClass languageClass) : ValueWrapper
{
    public override string GetTyper() => languageClass.name;
    public override string ToString() => languageClass.ToString();
}

public record SliceValue(Instance instance) : ValueWrapper
{
    public override string GetTyper() => instance.languageClass.name;
    public override string ToString() => instance.ToString();
}
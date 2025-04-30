using System.Data;
using analyzer;
using Antlr4.Runtime;
using server.global;

public class Extras
{

    public static StackObject.StackObjectType GetTypeArm(string type)
    {
        return type.ToLower() switch
        {
            "int" => StackObject.StackObjectType.Int,
            "float64" => StackObject.StackObjectType.Float,
            "string" => StackObject.StackObjectType.String,
            "bool" => StackObject.StackObjectType.Bool,
            "rune" => StackObject.StackObjectType.Rune,
            "nil" => StackObject.StackObjectType.Nil,
            "void" => StackObject.StackObjectType.Void,
            _ when type.Contains("[][]") => StackObject.StackObjectType.Slice,
            _ when type.Contains("[]") => StackObject.StackObjectType.Slice,
            _ => throw new Exception($"Tipo no soportado: {type}"),
        };
    }

    public static object GetDefaultValueArm(string type)
    {
        return type switch
        {
            "int" => 0,
            "float64" => 0.0,
            "bool" => false,
            "string" => "",
            "rune" => '\0',
            _ => 0
        };
    }


    public static ValueWrapper GetDefaultValue(string type)
    {
        return type.ToLower() switch
        {
            "int" => new IntValue(0),
            "float64" => new FloatValue(0.00),
            "string" => new StringValue(""),
            "bool" => new BoolValue(false),
            "rune" => new RuneValue('0'),
            "nil" => new NilValue(),
            _ when type.Contains("[][]") => new InstanceValue(
                new Instance(
                new LanguageClass(type, new Dictionary<string, LanguageParser.VarDclContext>(), new Dictionary<string, FuncForeign>()),
                instance => "[[]]"
                )
                ),
            _ when type.Contains("[]") => new InstanceValue(
                new Instance(
                new LanguageClass(type, new Dictionary<string, LanguageParser.VarDclContext>(), new Dictionary<string, FuncForeign>()),
                instance => "[]"
                )
            ),
            _ => new VoidValue(),
        };
    }

    public static string GetValueTypeArm(object value)
    {
        return value switch
        {
            int _ => "int",
            double _ => "float64",
            string _ => "string",
            bool _ => "bool",
            char _ => "rune",
            null => "nil",
            _ => "void",
        };
    }

    public static string GetValueType(ValueWrapper value)
    {
        return value switch
        {
            IntValue _ => "int",
            FloatValue _ => "float64",
            StringValue _ => "string",
            BoolValue _ => "bool",
            RuneValue _ => "rune",
            NilValue _ => "nil",
            _ when value is SliceValue => value.GetTyper(),
            _ when value is InstanceValue _ => value.GetTyper(),
            _ => "void",
        };
    }

    public static string GetSliceType(List<ValueWrapper> args, IToken token)
    {
        List<SliceValue> slices = new List<SliceValue>();
        Dictionary<string, int> typeCounts = new Dictionary<string, int>();

        foreach (var arg in args)
        {
            string type = GetValueType(arg);
            if (arg is SliceValue slc)
            {
                slices.Add(slc);
            }
            if (typeCounts.ContainsKey(type))
            {
                typeCounts[type]++;
            }
            else
            {
                typeCounts[type] = 1;
            }
        }

        string mostCommonType = typeCounts.OrderByDescending(tc => tc.Value).First().Key;

        if (slices.Count > 1)
        {
            return $"[]{mostCommonType}";
        }
        else
        {
            return $"[]{mostCommonType}";
        }
    }

    public static ValueWrapper CastValue(ValueWrapper value, string type)
    {
        if (value is IntValue && type == "float64")
        {
            return new FloatValue(((IntValue)value).Value);
        }
        return value;
    }

    public static void ValidateValues(ValueWrapper newValue, string varType, IToken token)
    {
        if (newValue is SliceValue slc)
        {
            string newValueType = GetSliceType(slc.instance.Properties.Values.ToList(), token);
            if (newValueType != varType)
            {
                throw new Exception($"Se esperaba el tipo {varType}, pero se recibió {newValueType} en línea {token.Line} y columna {token.Column}");
            }
            foreach (var value in slc.instance.Properties.Values)
            {
                if (value is SliceValue)
                {
                    varType = GetValueType(value);
                    ValidateValues(value, varType, token);
                }
                else
                {
                    varType = GetValueType(value);
                    newValueType = newValueType.Replace("[]", "");
                    if (varType != newValueType)
                    {
                        throw new Exception($"Se esperaba el tipo {newValueType}, pero se recibió {varType} en línea {token.Line} y columna {token.Column}");
                    }
                }
            }
        }
        else if (newValue is StructValue strct)
        {
            string newValueType = GetValueType(strct);
            if (newValueType != varType)
            {
                throw new Exception($"Se esperaba el tipo {varType}, pero se recibió {newValueType} en línea {token.Line} y columna {token.Column}");
            }
        }
        else if (newValue is InstanceValue inst)
        {
            string newValueType = GetValueType(inst);
            if (newValueType != varType)
            {
                throw new Exception($"Se esperaba el tipo {varType}, pero se recibió {newValueType} en línea {token.Line} y columna {token.Column}");
            }
        }
        else
        {
            string newValueType = GetValueType(newValue);
            if (newValueType != varType)
            {
                throw new Exception($"Se esperaba el tipo {varType}, pero se recibió {newValueType} en línea {token.Line} y columna {token.Column}");
            }
        }
    }

}
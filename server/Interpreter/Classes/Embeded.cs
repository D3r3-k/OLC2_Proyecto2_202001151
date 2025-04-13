using analyzer;

public class Embeded
{
    public static void Generate(Environment env)
    {
        // funciones
        env.Declare("append", new Symbol(new FunctionValue(new AppendEmbeded(), "append"), "Function", "slice", string.Empty), null);
        env.Declare("len", new Symbol(new FunctionValue(new LenEmbeded(), "len"), "Function", "slice", string.Empty), null);
        // instancias
        env.Declare("slices", new Symbol(new InstanceValue(new SlicesEmbeded()), "Instance", "slices", string.Empty), null);
        env.Declare("strings", new Symbol(new InstanceValue(new StringsEmbeded()), "Instance", "strings", string.Empty), null);
        env.Declare("strconv", new Symbol(new InstanceValue(new StrconvEmbeded()), "Instance", "strconv", string.Empty), null);
        env.Declare("reflect", new Symbol(new InstanceValue(new ReflectEmbeded()), "Instance", "reflect", string.Empty), null);
        // // env.Declare("print", new FunctionValue(new PrintEmbeded(), "print"), null);
    }
}

public class SlicesEmbeded : Instance
{
    public SlicesEmbeded() : base(new LanguageClass("slices", new Dictionary<string, analyzer.LanguageParser.VarDclContext>(), new Dictionary<string, FuncForeign>()), (instance) => "slices")
    {
        this.Properties.Add("Index", new FunctionValue(new IndexEmbeded(), "Index"));
    }

    public class IndexEmbeded : Invocable
    {
        public int Arity()
        {
            return 2;
        }

        public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
        {
            if (args.Count != 2)
            {
                throw new Exception("La función index() solo funciona con 2 argumentos");
            }
            if (args[0] is SliceValue array && args[1] is ValueWrapper value)
            {
                var index = array.instance.Properties
                    .Select((prop, i) => new { prop, i })
                    .FirstOrDefault(p => p.prop.Value.ToString() == value.ToString())?.i ?? -1;
                return new IntValue(index);
            }
            throw new Exception("La función index() solo funciona con arreglos y enteros");
        }
    }

}

public class StringsEmbeded : Instance
{
    public StringsEmbeded() : base(new LanguageClass("strings", new Dictionary<string, analyzer.LanguageParser.VarDclContext>(), new Dictionary<string, FuncForeign>()), (instance) => "strings")
    {
        this.Properties.Add("Join", new FunctionValue(new IndexEmbeded(), "Join"));
    }

    public class IndexEmbeded : Invocable
    {
        public int Arity()
        {
            return 2;
        }

        public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
        {
            if (args.Count != 2)
            {
                throw new Exception("La función join() solo funciona con 2 argumentos");
            }
            if (args[0] is SliceValue array && args[1] is ValueWrapper value)
            {
                var joined = string.Join(value.ToString(), array.instance.Properties.Select(p => p.Value.ToString()));
                return new StringValue(joined);
            }
            throw new Exception("La función join() solo funciona con arreglos y enteros");
        }
    }
}

public class LenEmbeded : Invocable
{
    public int Arity()
    {
        return 1;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        if (args.Count != 1)
        {
            throw new Exception("La función len() solo funciona con 1 argumento");
        }
        if (args[0] is SliceValue array)
        {
            return new IntValue(array.instance.Properties.Count);
        }
        throw new Exception("La función len() solo funciona con arreglos");
    }
}

public class AppendEmbeded : Invocable
{
    public int Arity()
    {
        return 2;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        if (args.Count != 2)
        {
            throw new Exception("La función append() solo funciona con 2 argumentos");
        }
        if (args[0] is SliceValue array)
        {
            // string type = Extras.GetArrayType(array.instance.Properties.Values.ToList()).Replace("[]", "");
            // Extras.ValidateType(args[1], type);
            array.instance.Properties.Add(array.instance.Properties.Count.ToString(), args[1]);
            SliceValue newArray = new SliceValue(array.instance);
            return newArray;
        }
        throw new Exception("La función append() solo funciona con arreglos");
    }
}

public class StrconvEmbeded : Instance
{
    public StrconvEmbeded() : base(new LanguageClass("strconv", new Dictionary<string, LanguageParser.VarDclContext>(), new Dictionary<string, FuncForeign>()), (instance) => "strconv")
    {
        this.Properties.Add("Atoi", new FunctionValue(new AtoiEmbeded(), "Atoi"));
        this.Properties.Add("ParseFloat", new FunctionValue(new ParseFloatEmbeded(), "ParseFloat"));
    }

    public class AtoiEmbeded : Invocable
    {
        public int Arity()
        {
            return 1;
        }

        public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
        {
            if (args.Count != 1)
            {
                throw new Exception("La función Atoi() solo funciona con 1 argumento");
            }
            if (args[0] is StringValue str)
            {
                if (int.TryParse(str.ToString(), out int result))
                {
                    return new IntValue(result);
                }
                throw new Exception("La función Atoi() solo funciona con enteros");
            }
            throw new Exception("La función Atoi() solo funciona con cadenas");
        }
    }

    public class ParseFloatEmbeded : Invocable
    {
        public int Arity()
        {
            return 1;
        }

        public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
        {
            if (args.Count != 1)
            {
                throw new Exception("La función ParseFloat() solo funciona con 1 argumento");
            }
            if (args[0] is StringValue str)
            {
                if(double.TryParse(str.ToString(), System.Globalization.CultureInfo.InvariantCulture, out double result))
                {
                    return new FloatValue(result);
                }
                throw new Exception("La función ParseFloat() solo funciona con flotantes");
            }
            throw new Exception("La función ParseFloat() solo funciona con cadenas");
        }
    }
}

public class ReflectEmbeded : Instance
{
    public ReflectEmbeded() : base(new LanguageClass("reflect", new Dictionary<string, analyzer.LanguageParser.VarDclContext>(), new Dictionary<string, FuncForeign>()), (instance) => "reflect")
    {
        this.Properties.Add("TypeOf", new FunctionValue(new TypeOfEmbeded(), "TypeOf"));
    }

    public class TypeOfEmbeded : Invocable
    {
        public int Arity()
        {
            return 1;
        }

        public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
        {
            if (args.Count != 1)
            {
                throw new Exception("La función TypeOf() solo funciona con 1 argumento");
            }
            return new StringValue(args[0].GetTyper());
        }
    }
}

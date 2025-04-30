using analyzer;
using Antlr4.Runtime.Misc;

public class InterpreterVisitor : LanguageBaseVisitor<ValueWrapper>
{
    // TODO: Atributos
    public ValueWrapper defaultVoid = new VoidValue();
    public string output = "";
    public Environment currentEnv;

    // TODO: Contructor
    public InterpreterVisitor()
    {
        currentEnv = new Environment(null, "Global");
        Embeded.Generate(currentEnv);
    }

    // TODO: Métodos
    // VisitProgram
    public override ValueWrapper VisitProgram([NotNull] LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        return defaultVoid;
    }
    // // VisitDcl
    // // VisitType
    // // VisitBaseType
    // // VisitDimensions
    // VisitVarDcl
    public override ValueWrapper VisitVarDcl([NotNull] LanguageParser.VarDclContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = context.expr() != null ? Visit(context.expr()) : defaultVoid;
        var type = context.type() != null ? context.type().GetText() : null;


        string valueType = "";
        if (value is VoidValue && type != null)
        {
            valueType = type;
            value = Extras.GetDefaultValue(type);
        }
        else if (value is not VoidValue && type == null)
        {
            valueType = Extras.GetValueType(value);
        }
        else if (value is not VoidValue && type != null)
        {
            valueType = type;
        }
        value = Extras.CastValue(value, valueType);
        Extras.ValidateValues(value, valueType, context.Start);
        Symbol symbol = new Symbol(value, "Variable", valueType, currentEnv.name);
        currentEnv.Declare(id, symbol, context.Start);
        return defaultVoid;
    }
    // VisitFuncDcl
    public override ValueWrapper VisitFuncDcl([NotNull] LanguageParser.FuncDclContext context)
    {
        string type = context.type() == null ? "void" : context.type().GetText();
        var bind = context.bind();
        if (bind != null)
        {
            string id = bind.ID(0).GetText();
            string idStruct = bind.ID(1).GetText();
            var structSym = currentEnv.Get(idStruct, context.Start);
            if (structSym.value != null)
            {
                if (structSym.value is not StructValue structValue)
                {
                    throw new SemanticError("Invalid struct", context.Start);
                }
                var structClass = structValue.languageClass;
                var method = new FuncForeign(currentEnv, context, type, id);
                structClass.methods.Add(context.ID().GetText(), method);
                return defaultVoid;
            }
        }
        var foreign = new FuncForeign(currentEnv, context, type, "");
        ValueWrapper value = new FunctionValue(foreign, context.ID().GetText());
        currentEnv.Declare(context.ID().GetText(), new Symbol(value, "Function", type, currentEnv.name), context.Start);
        return defaultVoid;
    }
    // // VisitNodo
    // // VisitParams
    // // VisitClassDcl
    // // VisitClassBody
    // VisitStructDcl
    public override ValueWrapper VisitStructDcl([NotNull] LanguageParser.StructDclContext context)
    {
        string id = context.ID().GetText();
        var props = new Dictionary<string, LanguageParser.VarDclContext>();
        var methods = new Dictionary<string, FuncForeign>();
        foreach (var dcl in context.varDcl())
        {
            props.Add(dcl.ID().GetText(), dcl);
        }
        LanguageClass languageClass = new LanguageClass(id, props, methods);
        currentEnv.Declare(id, new Symbol(new StructValue(languageClass), "Struct", id, currentEnv.name), context.Start);
        return defaultVoid;
    }
    // VisitPrintStmt
    public override ValueWrapper VisitPrintStmt([NotNull] LanguageParser.PrintStmtContext context)
    {
        var output = "";

        foreach (var arg in context.expr())
        {
            ValueWrapper value = Visit(arg);
            output += value.ToString() + " ";
        }
        output += "\n";

        this.output += output;
        return defaultVoid;
    }
    // VisitExprStmt
    public override ValueWrapper VisitExprStmt([NotNull] LanguageParser.ExprStmtContext context)
    {
        return Visit(context.expr());
    }
    // VisitBlockStmt
    public override ValueWrapper VisitBlockStmt([NotNull] LanguageParser.BlockStmtContext context)
    {
        Environment previousEnvironment = currentEnv;
        currentEnv = new Environment(currentEnv, "Block_" + previousEnvironment.name);
        foreach (var stmt in context.dcl())
        {
            Visit(stmt);
        }
        currentEnv = previousEnvironment;
        return defaultVoid;
    }
    // VisitIfStmt
    public override ValueWrapper VisitIfStmt([NotNull] LanguageParser.IfStmtContext context)
    {
        Environment previousEnvironment = currentEnv;
        currentEnv = new Environment(currentEnv, "If_" + previousEnvironment.name);
        ValueWrapper condition = Visit(context.expr());
        if (condition is not BoolValue)
        {
            throw new SemanticError("If Error > La condición no es booleana", context.Start);
        }

        if ((condition as BoolValue)?.Value == true)
        {
            Visit(context.stmt(0));
        }
        else if (context.stmt().Length > 1)
        {
            Visit(context.stmt(1));
        }
        currentEnv = previousEnvironment;
        return defaultVoid;
    }
    // VisitSwitchStmt
    public override ValueWrapper VisitSwitchStmt([NotNull] LanguageParser.SwitchStmtContext context)
    {
        Environment previousEnvironment = currentEnv;
        currentEnv = new Environment(currentEnv, "Switch_" + previousEnvironment.name);
        try
        {
            ValueWrapper condition = Visit(context.expr());
            if (condition is not IntValue && condition is not StringValue && condition is not RuneValue && condition is not BoolValue)
            {
                throw new SemanticError("Tipo de dato no valido para switch", context.Start);
            }
            bool matchCase = false;
            foreach (var stmt in context.switchCase())
            {
                var caseValue = Visit(stmt.expr());
                if (condition == caseValue)
                {
                    matchCase = true;
                    foreach (var action in stmt.stmt())
                    {
                        Visit(action);
                    }
                    break;
                }
            }
            if (!matchCase)
            {
                var defaultCase = context.switchDefault();
                if (defaultCase != null)
                {
                    foreach (var action in defaultCase.stmt())
                    {
                        Visit(action);
                    }
                }
            }
            return defaultVoid;
        }
        catch (BreakException)
        {
            currentEnv = previousEnvironment;
            return defaultVoid;
        }
    }
    // VisitForStmt
    public override ValueWrapper VisitForStmt([NotNull] LanguageParser.ForStmtContext context)
    {
        Environment previousEnvironment = currentEnv;
        currentEnv = new Environment(currentEnv, "For_" + previousEnvironment.name);

        Visit(context.forInit());

        VisitForBody(context);

        currentEnv = previousEnvironment;
        return defaultVoid;
    }
    // VisitForCondStmt
    public override ValueWrapper VisitForCondStmt([NotNull] LanguageParser.ForCondStmtContext context)
    {
        Environment previousEnvironment = currentEnv;
        currentEnv = new Environment(currentEnv, "ForCond_" + previousEnvironment.name);
        ValueWrapper condition = Visit(context.expr());

        if (condition is not BoolValue)
        {
            throw new SemanticError("Invalid condition", context.Start);
        }

        VisitForBody(context);

        currentEnv = previousEnvironment;
        return defaultVoid;
    }
    // VisitForRangeStmt
    public override ValueWrapper VisitForRangeStmt([NotNull] LanguageParser.ForRangeStmtContext context)
    {
        string indexId = context.ID(0).GetText(); // indice
        string valueId = context.ID(1).GetText(); // valor
        string valuesId = context.ID(2).GetText(); // numeros
        // obtener el array
        if (currentEnv.Get(valuesId, context.Start).value is not SliceValue instanceValue)
        {
            throw new SemanticError($"La variable '{valuesId}' no es un array", context.Start);
        }
        // validar que sea un array
        else if (instanceValue.instance is not Instance array)
        {
            throw new SemanticError($"La variable '{valuesId}' no es un arreglo válido", context.Start);
        }
        else
        {
            Environment beforeEnvironment = currentEnv;
            currentEnv = new Environment(currentEnv, "ForRange_" + beforeEnvironment.name);
            Symbol indexSym = new Symbol(new IntValue(0), "Variable", "int", currentEnv.name);
            Symbol valueSym = new Symbol(new NilValue(), "Variable", "nil", currentEnv.name);
            currentEnv.Declare(indexId, indexSym, context.Start);
            currentEnv.Declare(valueId, valueSym, context.Start);
            for (int i = 0; i < array.Properties.Count; i++)
            {
                try
                {
                    indexSym.value = new IntValue(i);
                    valueSym.value = array.Properties[i.ToString()];
                    currentEnv.Assign(indexId, indexSym, context.Start);
                    currentEnv.Assign(valueId, valueSym, context.Start);
                    Visit(context.stmt());
                }
                catch (BreakException)
                {
                    break;
                }
                catch (ContinueException)
                {
                    continue;
                }
            }
            currentEnv = beforeEnvironment;
        }
        return defaultVoid;
    }
    public void VisitForBody([NotNull] LanguageParser.ForStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr(0));
        var lastEnvironment = currentEnv;
        if (condition is not BoolValue)
        {
            throw new SemanticError("Invalid condition", context.Start);
        }
        try
        {
            while (condition is BoolValue boolCondition && boolCondition.Value)
            {
                Visit(context.stmt());
                Visit(context.expr(1));
                condition = Visit(context.expr(0));
            }
        }
        catch (BreakException)
        {
            currentEnv = lastEnvironment;
        }
        catch (ContinueException)
        {
            currentEnv = lastEnvironment;
            Visit(context.expr(1));
            VisitForBody(context);
        }
    }
    public void VisitForBody([NotNull] LanguageParser.ForCondStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr());
        var lastEnvironment = currentEnv;
        if (condition is not BoolValue)
        {
            throw new SemanticError("Invalid condition", context.Start);
        }
        try
        {
            while (condition is BoolValue boolCondition && boolCondition.Value)
            {
                Visit(context.stmt());
                condition = Visit(context.expr());
            }
        }
        catch (BreakException)
        {
            currentEnv = lastEnvironment;
        }
        catch (ContinueException)
        {
            currentEnv = lastEnvironment;
            Visit(context.expr());
            VisitForBody(context);
        }
    }
    // VisitBreakStmt
    public override ValueWrapper VisitBreakStmt([NotNull] LanguageParser.BreakStmtContext context)
    {
        throw new BreakException();
    }
    // VisitContinueStmt
    public override ValueWrapper VisitContinueStmt([NotNull] LanguageParser.ContinueStmtContext context)
    {
        throw new ContinueException();
    }
    // VisitReturnStmt
    public override ValueWrapper VisitReturnStmt([NotNull] LanguageParser.ReturnStmtContext context)
    {
        ValueWrapper value = defaultVoid;
        if (context.expr() != null)
        {
            value = Visit(context.expr());
        }
        throw new ReturnException(value);
    }
    // // VisitSwitchCase
    // // VisitSwitchDefault
    // // VisitForInit
    // VisitCallee
    public override ValueWrapper VisitCallee([NotNull] LanguageParser.CalleeContext context)
    {
        ValueWrapper callee = Visit(context.expr());
        foreach (var action in context.call())
        {
            if (action is LanguageParser.FuncCallContext funCall)
            {
                if (callee is FunctionValue funcValue)
                {
                    callee = VisitCall(funcValue.invocable, funCall.args());
                }
                else
                {
                    throw new SemanticError("Llamada a función inválida", context.Start);
                }
            }
            else if (action is LanguageParser.GetContext propAccess)
            {
                if (callee is InstanceValue instanceValue)
                {
                    callee = instanceValue.instance.Get(propAccess.ID().GetText(), propAccess.Start);
                }
                else
                {
                    throw new SemanticError("Acceso a propiedad inválido", context.Start);
                }
            }
            else if (action is LanguageParser.SliceAccessContext sliceAccess)
            {
                if (callee is SliceValue sliceValue)
                {
                    var index = Visit(sliceAccess.expr());
                    if (index is IntValue intValue)
                    {
                        if (sliceValue.instance.Properties.Count <= intValue.Value)
                        {
                            throw new SemanticError("Indice fuera de rango", context.Start);
                        }
                        callee = sliceValue.instance.Properties[intValue.Value.ToString()];
                    }
                    else
                    {
                        throw new SemanticError("Indice no entero", context.Start);
                    }
                }
            }
        }
        return callee;
    }
    public ValueWrapper VisitCall(Invocable invocable, LanguageParser.ArgsContext context)
    {
        List<ValueWrapper> arguments = new List<ValueWrapper>();
        if (context != null)
        {
            foreach (var expr in context.expr())
            {
                var value = Visit(expr);

                arguments.Add(value);
            }
        }
        return invocable.Invoke(arguments, this);

    }
    // VisitSlices
    public override ValueWrapper VisitSlices([NotNull] LanguageParser.SlicesContext context)
    {
        List<ValueWrapper> args = new List<ValueWrapper>();
        string type = context.type() != null ? context.type().GetText() : "void";
        if (context.args() != null)
        {
            foreach (var expr in context.args().expr())
            {
                var valueSlice = Visit(expr);
                args.Add(valueSlice);
            }
        }
        if (type == "void")
        {
            type = Extras.GetSliceType(args, context.Start);
        }
        var arrayClass = new LanguageSlice(type);
        var instance = arrayClass.Invoke(args, this);
        return instance;
    }
    // VisitMulDiv
    public override ValueWrapper VisitMulDiv([NotNull] LanguageParser.MulDivContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;

        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "*") => new IntValue(l.Value * r.Value),
            (IntValue l, FloatValue r, "*") => new FloatValue(l.Value * r.Value),
            (FloatValue l, FloatValue r, "*") => new FloatValue(l.Value * r.Value),
            (FloatValue l, IntValue r, "*") => new FloatValue(l.Value * r.Value),
            (IntValue l, IntValue r, "/") => new IntValue(l.Value / r.Value),
            (IntValue l, FloatValue r, "/") => new FloatValue(l.Value / r.Value),
            (FloatValue l, FloatValue r, "/") => new FloatValue(l.Value / r.Value),
            (FloatValue l, IntValue r, "/") => new FloatValue(l.Value / r.Value),
            (IntValue l, IntValue r, "%") => new IntValue(l.Value % r.Value),
            _ => throw new SemanticError("MulDiv: Invalid operation", context.Start)
        };
    }
    // VisitAddSub
    public override ValueWrapper VisitAddSub([NotNull] LanguageParser.AddSubContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;
        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "+") => new IntValue(l.Value + r.Value),
            (IntValue l, FloatValue r, "+") => new FloatValue(l.Value + r.Value),
            (FloatValue l, FloatValue r, "+") => new FloatValue(l.Value + r.Value),
            (FloatValue l, IntValue r, "+") => new FloatValue(l.Value + r.Value),
            (StringValue l, StringValue r, "+") => new StringValue(l.Value + r.Value),
            (IntValue l, IntValue r, "-") => new IntValue(l.Value - r.Value),
            (IntValue l, FloatValue r, "-") => new FloatValue(l.Value - r.Value),
            (FloatValue l, FloatValue r, "-") => new FloatValue(l.Value - r.Value),
            (FloatValue l, IntValue r, "-") => new FloatValue(l.Value - r.Value),
            _ => throw new SemanticError($"No se puede operar {left.ToString()} {op.ToString()} {right.ToString()}", context.Start)
        };
    }
    // VisitParens
    public override ValueWrapper VisitParens([NotNull] LanguageParser.ParensContext context)
    {
        return Visit(context.expr());
    }
    // VisitRelational
    public override ValueWrapper VisitRelational([NotNull] LanguageParser.RelationalContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;

        return (left, right, op) switch
        {
            (IntValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (IntValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (IntValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (IntValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (FloatValue l, FloatValue r, ">") => new BoolValue(l.Value > r.Value),
            (FloatValue l, FloatValue r, "<") => new BoolValue(l.Value < r.Value),
            (FloatValue l, FloatValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (FloatValue l, FloatValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (IntValue l, FloatValue r, ">") => new BoolValue(l.Value > r.Value),
            (IntValue l, FloatValue r, "<") => new BoolValue(l.Value < r.Value),
            (IntValue l, FloatValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (IntValue l, FloatValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (FloatValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (FloatValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (FloatValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (FloatValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (RuneValue l, RuneValue r, ">") => new BoolValue(l.Value > r.Value),
            (RuneValue l, RuneValue r, "<") => new BoolValue(l.Value < r.Value),
            (RuneValue l, RuneValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (RuneValue l, RuneValue r, "<=") => new BoolValue(l.Value <= r.Value),
            _ => throw new SemanticError("Relational: Invalid operation", context.Start)
        };
    }
    // VisitIncDec
    public override ValueWrapper VisitIncDec([NotNull] LanguageParser.IncDecContext context)
    {
        string id = context.ID().GetText();
        Symbol sym = currentEnv.Get(id, context.Start);
        ValueWrapper value = sym.value;
        var op = context.op.Text;

        if (value is not IntValue && value is not FloatValue)
        {
            throw new SemanticError("Invalid operation", context.Start);
        }
        ValueWrapper newValue = (value, op) switch
        {
            (FloatValue f, "++") => new FloatValue(f.Value + 1),
            (FloatValue f, "--") => new FloatValue(f.Value - 1),
            (IntValue i, "++") => new IntValue(i.Value + 1),
            (IntValue i, "--") => new IntValue(i.Value - 1),
            _ => throw new SemanticError("IncDec: Invalid operation", context.Start)
        };
        sym.value = newValue;
        currentEnv.Assign(id, sym, context.Start);
        return newValue;
    }
    // VisitString
    public override ValueWrapper VisitString([NotNull] LanguageParser.StringContext context)
    {
        string text = context.STRING().GetText();
        text = text.Substring(1, text.Length - 2);
        return new StringValue(text);
    }
    // VisitInt
    public override ValueWrapper VisitInt([NotNull] LanguageParser.IntContext context)
    {
        return new IntValue(int.Parse(context.INT().GetText()));

    }
    // VisitStruct
    public override ValueWrapper VisitStruct([NotNull] LanguageParser.StructContext context)
    {
        ValueWrapper value = currentEnv.Get(context.ID().GetText(), context.Start).value;
        if (value is not StructValue structValue)
        {
            throw new SemanticError("Invalid struct", context.Start);
        }
        List<ValueWrapper> args = new List<ValueWrapper>();
        foreach (var expr in context.strucArgs().expr())
        {
            var valueSlice = Visit(expr);
            args.Add(valueSlice);
        }
        var instance = ((StructValue)structValue).languageClass.Invoke(args, this);
        return instance;
    }
    // VisitNil
    public override ValueWrapper VisitNil([NotNull] LanguageParser.NilContext context)
    {
        return new NilValue();
    }
    // VisitFloat
    public override ValueWrapper VisitFloat([NotNull] LanguageParser.FloatContext context)
    {
        var value = context.FLOAT().GetText();
        return new FloatValue(double.Parse(value, System.Globalization.CultureInfo.InvariantCulture));
    }
    // VisitNot
    public override ValueWrapper VisitNot([NotNull] LanguageParser.NotContext context)
    {
        ValueWrapper value = Visit(context.expr());

        if (value is BoolValue boolValue)
        {
            return new BoolValue(!boolValue.Value);
        }

        throw new SemanticError("Invalid operation", context.Start);
    }
    // VisitIdentifier
    public override ValueWrapper VisitIdentifier([NotNull] LanguageParser.IdentifierContext context)
    {
        string id = context.ID().GetText();
        return currentEnv.Get(id, context.Start).value;
    }
    // VisitAssign
    public override ValueWrapper VisitAssign([NotNull] LanguageParser.AssignContext context)
    {
        var asignee = context.expr(0);
        ValueWrapper value = Visit(context.expr(1));
        if (asignee is LanguageParser.IdentifierContext idContext)
        {
            string id = idContext.ID().GetText();
            Symbol symbol = currentEnv.Get(id, context.Start);
            string typeVar = symbol.valueType;
            value = Extras.CastValue(value, typeVar);
            Extras.ValidateValues(value, typeVar, context.Start);
            symbol.value = value;
            currentEnv.Assign(id, symbol, context.Start);
            return defaultVoid;
        }
        else if (asignee is LanguageParser.CalleeContext calleeContext)
        {

            ValueWrapper callee = Visit(calleeContext.expr());

            for (int i = 0; i < calleeContext.call().Length; i++)
            {
                var action = calleeContext.call(i);

                if (i == calleeContext.call().Length - 1)
                {
                    if (action is LanguageParser.GetContext propertyAccess)
                    {
                        if (callee is InstanceValue instanceValue)
                        {
                            var instance = instanceValue.instance;
                            var propertyName = propertyAccess.ID().GetText();
                            // Extras.ValidateValues(value, instanceValue.GetTyper(), context.Start);
                            instance.Set(propertyName, value);
                        }
                        else
                        {
                            throw new SemanticError("2. Invalid property access", context.Start);
                        }
                    }
                    // TODO: acceso del array
                    else if (action is LanguageParser.SliceAccessContext sliceAccess)
                    {
                        if (callee is SliceValue sliceValue)
                        {
                            var index = Visit(sliceAccess.expr());
                            if (index is IntValue intValue)
                            {
                                if (sliceValue.instance.Properties.Count <= intValue.Value)
                                {
                                    throw new SemanticError("Indice fuera de rango", context.Start);
                                }
                                Extras.ValidateValues(value, sliceValue.instance.Properties[intValue.Value.ToString()].GetTyper(), context.Start);
                                sliceValue.instance.Properties[intValue.Value.ToString()] = value;
                            }
                            else
                            {
                                throw new SemanticError("Indice no entero", context.Start);
                            }
                        }
                        else
                        {
                            throw new SemanticError("sliceValue | Acceso a arreglo inválido", context.Start);
                        }
                    }
                    else
                    {
                        throw new SemanticError("sliceAccess | Acceso a arreglo inválido", context.Start);
                    }
                }

                if (action is LanguageParser.FuncCallContext funcCall)
                {
                    if (callee is FunctionValue functionValue)
                    {
                        callee = VisitCall(functionValue.invocable, funcCall.args());
                    }
                    else
                    {
                        throw new SemanticError("funcCall | Llamada a función inválida", context.Start);
                    }
                }

                else if (action is LanguageParser.GetContext propertyAccess)
                {
                    if (callee is InstanceValue instanceValue)
                    {
                        callee = instanceValue.instance.Get(propertyAccess.ID().GetText(), propertyAccess.Start);
                    }
                    else
                    {
                        throw new SemanticError("propertyAccess | Acceso a propiedad inválido", context.Start);
                    }
                }
                // TODO: acceso del array
                else if (action is LanguageParser.SliceAccessContext sliceAccess)
                {
                    if (callee is SliceValue instanceValue)
                    {
                        var index = Visit(sliceAccess.expr());
                        if (index is IntValue intValue)
                        {
                            callee = instanceValue.instance.Get(intValue.Value.ToString(), sliceAccess.Start);
                        }
                        else
                        {
                            throw new SemanticError("arrayAccess | Indice no entero", context.Start);
                        }
                    }
                    else
                    {
                        throw new SemanticError("arrayAccess | Acceso a arreglo inválido", context.Start);
                    }
                }
            }

            return callee;

        }
        else
        {
            throw new SemanticError("Invalid assignment", context.Start);
        }
    }

    // VisitNegate
    public override ValueWrapper VisitNegate([NotNull] LanguageParser.NegateContext context)
    {
        ValueWrapper value = Visit(context.expr());

        return value switch
        {
            IntValue i => new IntValue(-i.Value),
            FloatValue f => new FloatValue(-f.Value),
            _ => throw new SemanticError("Negate: Invalid operation", context.Start)
        };
    }
    // VisitEquality
    public override ValueWrapper VisitEquality([NotNull] LanguageParser.EqualityContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;

        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (IntValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (FloatValue l, FloatValue r, "==") => new BoolValue(l.Value == r.Value),
            (FloatValue l, FloatValue r, "!=") => new BoolValue(l.Value != r.Value),
            (IntValue l, FloatValue r, "==") => new BoolValue(l.Value == r.Value),
            (IntValue l, FloatValue r, "!=") => new BoolValue(l.Value != r.Value),
            (FloatValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (FloatValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (BoolValue l, BoolValue r, "==") => new BoolValue(l.Value == r.Value),
            (BoolValue l, BoolValue r, "!=") => new BoolValue(l.Value != r.Value),
            (StringValue l, StringValue r, "==") => new BoolValue(l.Value == r.Value),
            (StringValue l, StringValue r, "!=") => new BoolValue(l.Value != r.Value),
            (RuneValue l, RuneValue r, "==") => new BoolValue(l.Value == r.Value),
            (RuneValue l, RuneValue r, "!=") => new BoolValue(l.Value != r.Value),
            (NilValue l, NilValue r, "==") => new BoolValue(true),
            (NilValue l, _, "==") => new BoolValue(false),
            (_, NilValue r, "==") => new BoolValue(false),
            (NilValue l, _, "!=") => new BoolValue(true),
            (_, NilValue r, "!=") => new BoolValue(true),
            _ => throw new SemanticError("Equal: Invalid operation", context.Start)
        };
    }
    // VisitBoolean
    public override ValueWrapper VisitBoolean([NotNull] LanguageParser.BooleanContext context)
    {
        return new BoolValue(bool.Parse(context.BOOL().GetText()));
    }
    // VisitRune
    public override ValueWrapper VisitRune([NotNull] LanguageParser.RuneContext context)
    {
        string text = context.RUNE().GetText();
        text = text.Substring(1, text.Length - 2);
        if (text.Length != 1)
        {
            throw new SemanticError("Rune invalido", context.Start);
        }
        return new RuneValue(text[0]);
    }
    // VisitAndOr
    public override ValueWrapper VisitAndOr([NotNull] LanguageParser.AndOrContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;

        return (left, right, op) switch
        {
            (BoolValue l, BoolValue r, "&&") => new BoolValue(l.Value && r.Value),
            (BoolValue l, BoolValue r, "||") => new BoolValue(l.Value || r.Value),
            _ => throw new SemanticError("AndOr: Invalid operation", context.Start)
        };
    }
    // VisitAssignOp
    public override ValueWrapper VisitAssignOp([NotNull] LanguageParser.AssignOpContext context)
    {
        string id = context.ID().GetText();
        Symbol symbol = currentEnv.Get(id, context.Start);
        ValueWrapper value = symbol.value;
        ValueWrapper right = Visit(context.expr());
        var op = context.op.Text;

        if (value is not IntValue && value is not FloatValue)
        {
            throw new SemanticError("Invalid operation", context.Start);
        }

        ValueWrapper newValue = (value, right, op) switch
        {
            (IntValue l, IntValue r, "+=") => new IntValue(l.Value + r.Value),
            (FloatValue l, FloatValue r, "+=") => new FloatValue(l.Value + r.Value),
            (FloatValue l, IntValue r, "+=") => new FloatValue(l.Value + r.Value),
            (IntValue l, FloatValue r, "+=") => new FloatValue(l.Value + r.Value),
            (IntValue l, IntValue r, "-=") => new IntValue(l.Value - r.Value),
            (FloatValue l, FloatValue r, "-=") => new FloatValue(l.Value - r.Value),
            (FloatValue l, IntValue r, "-=") => new FloatValue(l.Value - r.Value),
            (IntValue l, IntValue r, "*=") => new IntValue(l.Value * r.Value),

            _ => throw new SemanticError("AssignOp: Invalid operation", context.Start)
        };
        symbol.value = newValue;
        currentEnv.Assign(id, symbol, context.Start);
        return newValue;
    }
    // // VisitFuncCall
    // // VisitGet
    // // VisitArrayAccess
    // // VisitArgs
}

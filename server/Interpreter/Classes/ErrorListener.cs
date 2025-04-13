using Antlr4.Runtime;
using Antlr4.Runtime.Misc;
using server.global;

public class SemanticError : Exception
{
    // TODO: Atributos
    private string message;
    private Antlr4.Runtime.IToken token;

    // TODO: Constructor
    public SemanticError(string message, Antlr4.Runtime.IToken token)
    {
        this.message = message;
        this.token = token;
        Console.WriteLine($"Error semántico en línea {token.Line}, columna {token.Column}: {message}");
        Global.errors.Add(new ErrorReport(message, token.Line, token.Column, "Semantico"));
    }
    public override string Message
    {
        get
        {
            return message + " en línea " + token.Line + ", columna " + token.Column;
        }
    }
}
public class LexicalErrorListener : BaseErrorListener, IAntlrErrorListener<int>
{
    public void SyntaxError(TextWriter output, IRecognizer recognizer, int offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        Console.WriteLine($"Error léxico en línea {line}, columna {charPositionInLine}: {msg}");
        Global.errors.Add(new ErrorReport(msg, line, charPositionInLine, "Lexico"));
        throw new ParseCanceledException($"Error léxico en línea {line}:{charPositionInLine} - {msg}");
    }

}


public class SyntaxErrorListener : BaseErrorListener
{
    public override void SyntaxError(TextWriter output, IRecognizer recognizer, IToken offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        Console.WriteLine($"Error de sintaxis en línea {line}, columna {charPositionInLine}: {msg}");
        Global.errors.Add(new ErrorReport(msg, line, charPositionInLine, "Sintactico"));
        throw new ParseCanceledException($"Error sintáctico en línea {line}:{charPositionInLine} - {msg}");
    }
}
using System.ComponentModel.DataAnnotations;
using analyzer;
using Antlr4.Runtime;
using Antlr4.Runtime.Misc;
using Microsoft.AspNetCore.Mvc;
using server.Compiler;
using server.global;

namespace server.Controllers
{
    [Route("[controller]")]
    public class Compile : Controller
    {
        private readonly ILogger<Compile> _logger;

        public Compile(ILogger<Compile> logger)
        {
            _logger = logger;
        }

        public class CompileRequest
        {
            [Required]
            public required string code { get; set; }
        }

        // POST /compile
        [HttpPost]
        public IActionResult Post([FromBody] CompileRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(new { error = "Invalid request" });
            }

            // TODO: Limpiar errores
            Global.errors = [];
            Global.symbols = [];

            var inputStream = new AntlrInputStream(request.code);
            var lexer = new LanguageLexer(inputStream);

            // Add custom error listener
            lexer.RemoveErrorListeners();
            lexer.AddErrorListener(new LexicalErrorListener());

            var tokens = new CommonTokenStream(lexer);
            var parser = new LanguageParser(tokens);

            parser.RemoveErrorListeners();
            parser.AddErrorListener(new SyntaxErrorListener());

            try
            {
                var tree = parser.program();

                // Buscar declaraciones globales y función main
                var searchVisitor = new SearchVisitor();
                searchVisitor.Visit(tree);

                var interpreter = new InterpreterVisitor();
                //interpreter.Visit(tree);

                var compiler = new CompilerVisitor();
                // compiler.Visit(tree);

                // Ejecutar declaraciones globales primero
                foreach (var stmt in searchVisitor.GlobalStatements)
                {
                    interpreter.Visit(stmt);
                    compiler.Visit(stmt);
                }

                // Si existe la función main, ejecutar su bloque de sentencias
                if (searchVisitor.MainFunction != null)
                {
                    foreach (var stmt in searchVisitor.MainFunction.dcl())
                    {
                        interpreter.Visit(stmt);
                        compiler.Visit(stmt);
                    }
                }

                // Si no hay main, simplemente no se ejecuta nada
                return Ok(new { result = compiler.c.ToString() });

            }
            catch (ParseCanceledException ex)
            {
                return BadRequest(new { error = ex.Message });
            }
            catch (SemanticError ex)
            {
                return BadRequest(new { error = ex.Message });
            }
            catch (ContinueException)
            {
                return BadRequest(new { error = "Continue statement outside loop" });
            }
            catch (Exception ex)
            {
                return BadRequest(new { error = ex.Message });
            }
        }
    }
}

using Microsoft.AspNetCore.Mvc;
using server.global;

namespace server.controllers.reports
{
    [Route("reports/symbols")]
    [ApiController]
    public class SymbolsController : ControllerBase
    {
        private readonly ILogger<SymbolsController> _logger;

        public SymbolsController(ILogger<SymbolsController> logger)
        {
            _logger = logger;
        }

        // GET /reports/tokens
        [HttpGet]
        public IActionResult Get()
        {
            // arreglo de arreglo de strings de tokens
            List<string[]> symbols = new List<string[]>();
            symbols = Global.symbols
                .Where(token => token.id != "strconv"
                && token.id != "append"
                && token.id != "len"
                && token.id != "slices"
                && token.id != "strings"
                && token.id != "reflect")
                .Select(token => new string[] {
                    token.id,
                    token.typeSymbol,
                    token.typeData,
                    token.environment,
                    token.line.ToString(),
                    token.column.ToString()
                }).ToList();
            return Ok(new
            {
                header = new[] { "ID", "Tipo Simbolo", "Tipo dato", "Ambito", "Linea", "Columna" },
                symbols
            });
        }
    }
}
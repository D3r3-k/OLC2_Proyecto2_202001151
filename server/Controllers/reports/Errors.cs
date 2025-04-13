using Microsoft.AspNetCore.Mvc;
using server.global;

namespace server.controllers.reports
{
    [Route("reports/errors")]
    [ApiController]
    public class Errors : Controller
    {
        private readonly ILogger<Errors> _logger;

        public Errors(ILogger<Errors> logger)
        {
            _logger = logger;
        }

        // GET /reports/errors
        [HttpGet]
        public IActionResult Get()
        {
            // arreglo de arreglo de strings de errors
            List<string[]> errors = new List<string[]>();
            errors = Global.errors.Select((error, index) => new string[]
            {
                (index + 1).ToString(),
                error.description,
                error.row.ToString(),
                error.column.ToString(),
                error.type
            }).ToList();
            return Ok(new
            {
                header = new[] { "No.", "Descripcion", "Linea", "Columna", "Tipo" },
                errors
            });
        }
    }
}
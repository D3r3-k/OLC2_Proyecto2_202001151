using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;
using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using server.Controllers;

namespace server.controllers.reports
{
    [Route("reports/ast")]
    [ApiController]
    public class AST : Controller
    {
        private readonly ILogger<Compile> _logger;

        public AST(ILogger<Compile> logger)
        {
            _logger = logger;
        }

        public class ASTRequest
        {
            [Required]
            public required string code { get; set; }
        }

        // POST /reports/ast
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] ASTRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(new { error = "Invalid request" });
            }
            string grammarPath = Path.Combine(Directory.GetCurrentDirectory(), "Grammar", "Language.g4");
            var grammar = "";
            try
            {
                if (System.IO.File.Exists(grammarPath))
                {
                    grammar = await System.IO.File.ReadAllTextAsync(grammarPath);
                }
                else
                {
                    return BadRequest(new { error = "Grammar file not found" });
                }
            }
            catch (System.Exception)
            {
                return BadRequest(new { error = "Error reading grammar file" });
            }
            var payload = new
            {
                grammar,
                lexgrammar = "",
                input = request.code,
                start = "program"
            };
            var jsonPayload = JsonSerializer.Serialize(payload);
            var context = new StringContent(jsonPayload, Encoding.UTF8, "application/json");

            using (var client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = await client.PostAsync("http://lab.antlr.org/parse/", context);
                    response.EnsureSuccessStatusCode();
                    string responseString = await response.Content.ReadAsStringAsync();
                    using var doc = JsonDocument.Parse(responseString);
                    var root = doc.RootElement;

                    if (root.TryGetProperty("result", out JsonElement resElement)
                    && resElement.TryGetProperty("svgtree", out JsonElement svgElement))
                    {
                        string svgtree = svgElement.GetString() ?? string.Empty;
                        return Content(svgtree, "image/svg+xml");
                    }
                    return BadRequest(new { error = "Svg tree not found in response" });
                }
                catch (Exception ex)
                {
                    return BadRequest(new { error = ex.Message });
                }
            }

        }
    }
}
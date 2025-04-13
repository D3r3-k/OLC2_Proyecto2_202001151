var builder = WebApplication.CreateBuilder(args);

// * Agregar controladores
builder.Services.AddControllers();

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll",
        policy =>
        {
            policy.AllowAnyOrigin()
                  .AllowAnyMethod()
                  .AllowAnyHeader();
        });
});


var app = builder.Build();

app.UseHttpsRedirection();

app.UseCors("AllowAll");

// * Agregar controladores
app.MapControllers();

app.Run();
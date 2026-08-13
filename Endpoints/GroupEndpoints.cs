using MySqlConnector;
using Dapper;
using KpopApi.Models;

namespace KpopApi.Endpoints;

public static class GroupEndpoints
{
    public static void MapGroupEndpoints(this WebApplication app)
    {
        // Obtener todos los grupos
        app.MapGet("/api/groups", async (IConfiguration configuration) =>
        {
            using var connection = new MySqlConnection(configuration.GetConnectionString("DefaultConnection"));
            
            var groups = await connection.QueryAsync<Group>("SELECT * FROM Grupo");
            return Results.Ok(groups);
        });

        // Obtener un grupo por ID
        app.MapGet("/api/groups/{id}", async (int id, IConfiguration configuration) =>
        {
            using var connection = new MySqlConnection(configuration.GetConnectionString("DefaultConnection"));
            
            var group = await connection.QueryFirstOrDefaultAsync<Group>(
                "SELECT * FROM Grupo WHERE Id = @Id", new { Id = id });

            return group is not null ? Results.Ok(group) : Results.NotFound(new { message = "Grupo no encontrado" });
        });
    }
}
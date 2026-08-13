using MySqlConnector;
using Dapper;
using KpopApi.Models;

namespace KpopApi.Endpoints;

public static class ArtistEndpoints
{
    public static void MapArtistEndpoints(this WebApplication app)
    {
        // Obtener la lista de todos los artistas
        app.MapGet("/api/artists", async (IConfiguration configuration) =>
        {
            
            using var connection = new MySqlConnection(configuration.GetConnectionString("DefaultConnection"));
            
            var artists = await connection.QueryAsync<Artist>("SELECT * FROM Artists");
            
            return Results.Ok(artists);
        });

        //  Obtener la información individual de un artista por su ID
        app.MapGet("/api/artists/{id}", async (int id, IConfiguration configuration) =>
        {
            using var connection = new MySqlConnection(configuration.GetConnectionString("DefaultConnection"));
            
            var artist = await connection.QueryFirstOrDefaultAsync<Artist>(
                "SELECT * FROM Artists WHERE Id = @Id", new { Id = id });

            return artist is not null 
                ? Results.Ok(artist) 
                : Results.NotFound(new { message = "Artista no encontrado" });
        });
    }
}
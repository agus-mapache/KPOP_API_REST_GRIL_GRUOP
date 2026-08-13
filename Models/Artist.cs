namespace KpopApi.Models;

public class Artist
{
    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Role { get; set; } = string.Empty;
    public int GroupId { get; set; }
    public string? ImageUrl { get; set; } 
}
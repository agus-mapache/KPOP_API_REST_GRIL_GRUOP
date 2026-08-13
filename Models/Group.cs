using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KpopApi.Models;
public class Group
{
    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Agency { get; set; } = string.Empty;
    public string? ImageUrl { get; set; } 
}
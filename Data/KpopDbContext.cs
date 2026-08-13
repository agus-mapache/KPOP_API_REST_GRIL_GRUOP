using Microsoft.EntityFrameworkCore;
using KpopApi.Models;

namespace KpopApi.Data;

public class KpopDbContext : DbContext
{
    public KpopDbContext(DbContextOptions<KpopDbContext> options) : base(options) { }

    public DbSet<Group> Groups => Set<Group>();
    public DbSet<Artist> Artists => Set<Artist>();
}
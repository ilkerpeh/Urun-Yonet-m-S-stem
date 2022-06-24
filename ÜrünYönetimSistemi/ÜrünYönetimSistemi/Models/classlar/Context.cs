using System.Data.Entity;

namespace ÜrünYönetimSistemi.Models.classlar
{
    public class Context : DbContext
    {
        public DbSet<Admin> Admins { get; set; }
        public DbSet<AnaSayfa> anaSayfas  { get; set; }

    }
}
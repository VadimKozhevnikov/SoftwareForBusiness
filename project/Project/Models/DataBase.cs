using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SQLite;
using System.Diagnostics;
using System.Reflection.Metadata;
using Microsoft.EntityFrameworkCore;

namespace Project.Models
{
  public class DataBase : DbContext
  {
    public DbSet<ImageTab> ImageTab { get; set; }
    public DbSet<Patient> Patient { get; set; }
    public DbSet<Autorizacia> Autorizacia { get; set; }
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
      optionsBuilder.UseSqlServer(@"Server=localhost;Database=tets_db;Trusted_Connection=True;TrustServerCertificate=True");
    }
  }
}

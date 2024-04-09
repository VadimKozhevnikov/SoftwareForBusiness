using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestDB.Models
{
    public class DataBase : DbContext
    {

        public DbSet<Patient> Patient {  get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=localhost;Database=tets_db;Trusted_Connection=True;TrustServerCertificate=True");
        }
    }
}

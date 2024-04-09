using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Models
{
  public class Autorizacia
  {
    public int Id { get; set; }
    public string Login { get; set; } = null!;
    public string Password { get; set; } = null!;
    public string Role { get; set; } = null!;
  }
}

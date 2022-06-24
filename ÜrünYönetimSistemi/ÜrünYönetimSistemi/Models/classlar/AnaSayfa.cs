using System.ComponentModel.DataAnnotations;

namespace ÜrünYönetimSistemi.Models.classlar
{
    public class AnaSayfa
    {
        [Key]
        public int id{ get; set; }
        public string isim { get; set; }
        public string unvan { get; set; }
    }
}
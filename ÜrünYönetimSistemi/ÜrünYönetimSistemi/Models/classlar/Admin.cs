using System.ComponentModel.DataAnnotations;

namespace ÜrünYönetimSistemi.Models.classlar
{
    public class Admin
    {
        [Key]
        public int id { get; set; }
        public string KullaniciAdi { get; set; }
        public string sifre { get; set; }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ÜrünYönetimSistemi.Models.classlar;

namespace ÜrünYönetimSistemi.Controllers
{
    public class AnaSayfaController : Controller
    {
        // GET: AnaSayfa
        Context c = new Context();
        public ActionResult Index()
        {
            var deger = c.anaSayfas.ToList();
            return View(deger);
        }
    }
}
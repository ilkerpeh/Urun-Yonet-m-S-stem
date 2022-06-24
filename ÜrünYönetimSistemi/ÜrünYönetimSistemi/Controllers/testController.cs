using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ÜrünYönetimSistemi.Models.Entity;

namespace ÜrünYönetimSistemi.Controllers
{
    public class testController : Controller
    {
        // GET: test
        UrunYonetimDbEntities db = new UrunYonetimDbEntities();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Ekle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Ekle(TBLURUNLER U)
        {
            if (Request.Files.Count > 0)
            {
                String dosyaadi = Path.GetFileName(Request.Files[0].FileName);
                string uzanti = Path.GetExtension(Request.Files[0].FileName);
                string yol = "~/Image/" + dosyaadi + uzanti;
                Request.Files[0].SaveAs(Server.MapPath(yol));
                U.URUNRESMİ = "/Image/" + dosyaadi + uzanti;
            }
            db.TBLURUNLER.Add(U);
            db.SaveChanges();
            return View();
        }
    }
}
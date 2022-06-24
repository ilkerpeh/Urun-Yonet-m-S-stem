using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ÜrünYönetimSistemi.Models.Entity;


namespace ÜrünYönetimSistemi.Controllers
{
    public class UrunÖzellikleriController : Controller
    {
        // GET: UrunÖzellikleri
        UrunYonetimDbEntities db = new UrunYonetimDbEntities();
        public ActionResult Index()
      
        {
            var degerler = db.TBLURUNOZELLIKLERI.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult YeniUrunÖzellikleri()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniUrunÖzellikleri(TBLURUNOZELLIKLERI p1)
        {
            if (!ModelState.IsValid)
            {
                return View("YeniUrunÖzellikleri");
            }
            db.TBLURUNOZELLIKLERI.Add(p1);
            db.SaveChanges();
            return View();
        }
        public ActionResult SIL(int id)
        {
            var UrunÖzellikleri = db.TBLURUNOZELLIKLERI.Find(id);
            db.TBLURUNOZELLIKLERI.Remove(UrunÖzellikleri);
            db.SaveChanges();
            return RedirectToAction("Index");

        }
        public ActionResult ÜrünÖzellikleriGetir(int id) 
        {
            var üö = db.TBLURUNOZELLIKLERI.Find(id);
            return View("ÜrünÖzellikleriGetir", üö);
        }
        public ActionResult Guncelle(TBLURUNOZELLIKLERI p1)
        {
            var uo = db.TBLURUNOZELLIKLERI.Find(p1.URUNOZELLIGIID);
            uo.OZELLIKADI = p1.OZELLIKADI;
            uo.OZELLIKDEGERI = p1.OZELLIKDEGERI;
            uo.URUNID = p1.URUNID;
            db.SaveChanges();
            return RedirectToAction("Index");

        }

    }
}
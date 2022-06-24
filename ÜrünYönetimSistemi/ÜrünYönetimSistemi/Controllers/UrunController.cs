using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ÜrünYönetimSistemi.Models.Entity;
using System.IO;
namespace ÜrünYönetimSistemi.Controllers
{
    public class UrunController : Controller
    {
        // GET: Urun
        UrunYonetimDbEntities db = new UrunYonetimDbEntities();
        public ActionResult Index()
        {
            var degerler = db.TBLURUNLER.ToList();
            return View(degerler);
        }
            [HttpGet]
            public ActionResult YENIURUN()
            {
            List<SelectListItem> degerler = (from i in db.TBLKATEGORILER.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KATEGORIAD,
                                                 Value = i.KATEGORIID.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
                return View();
            }
            [HttpPost]
            public ActionResult YENIURUN(TBLURUNLER p1)
            {
                var ktg = db.TBLKATEGORILER.Where(m => m.KATEGORIID == p1.TBLKATEGORILER.KATEGORIID).FirstOrDefault();
                p1.TBLKATEGORILER = ktg;
                db.TBLURUNLER.Add(p1);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            public ActionResult SIL(int id)
            {
               var Urun = db.TBLURUNLER.Find(id);
               db.TBLURUNLER.Remove(Urun);
               db.SaveChanges();
               return RedirectToAction("Index");
            }
            public ActionResult UrunGetir(int id)
            {
              var urn = db.TBLURUNLER.Find(id);
              List<SelectListItem> degerler = (from i in db.TBLKATEGORILER.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KATEGORIAD,
                                                 Value = i.KATEGORIID.ToString()
                                             }).ToList();
            return View("UrunGetir",urn);

            }
            public ActionResult Guncelle(TBLURUNLER p)
            {
            var ürün = db.TBLURUNLER.Find(p.URUNID);
            ürün.URUNID = p.URUNID;
            ürün.URUNAD = p.URUNAD;
            ürün.URUNRESMİ = p.URUNRESMİ;
            ürün.URUNKATEGORI = p.URUNKATEGORI;
            ürün.FIYAT = p.FIYAT;
            ürün.STOK = p.STOK;
            db.SaveChanges();
            return RedirectToAction("Index");

            }
        [HttpGet]
        public ActionResult SaveImages()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SaveImages(TBLURUNLER p)
        {
            if (Request.Files.Count>0)
            {
                string filename = Path.GetFileName(Request.Files[1].FileName);
                string extn = Path.GetExtension(Request.Files[1].FileName);
                string url = "~/UrunImages/" + filename + extn;
                Request.Files[0].SaveAs(Server.MapPath(url));
                p.URUNRESMİ = "~/UrunImages/" + filename + extn;
                db.TBLURUNLER.Add(p);
                db.SaveChanges();
                
            }

            return RedirectToAction("Index","Urun");

        }

    }
}
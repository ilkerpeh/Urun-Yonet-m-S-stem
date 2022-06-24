using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ÜrünYönetimSistemi.Models.classlar;

namespace ÜrünYönetimSistemi.Controllers
{
    public class AdminController : Controller
    {
        //GET: Admin
       //[Authorize]
        Context c = new Context();
        public ActionResult Index()
        {
            var deger = c.anaSayfas.ToList();
            return View(deger);
        }
        public ActionResult SIL(int id)
        {
            var sl = c.anaSayfas.Find(id);
            c.anaSayfas.Remove(sl);
            c.SaveChanges();
            return RedirectToAction("Index");

        }
        public ActionResult AnaSayfaGetir(int id) 
        {
            var ag = c.anaSayfas.Find(id);
            return View("AnaSayfaGetir", ag);
        }
        public ActionResult AnaSayfaGuncelle(AnaSayfa x)
        {
            var ag = c.anaSayfas.Find(x.id);
            ag.isim = x.isim;
            ag.unvan = x.unvan;
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult YeniKullanıcı()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniKullanıcı(AnaSayfa a1)
        {
            c.anaSayfas.Add(a1);
            c.SaveChanges();
            return RedirectToAction("Index");

        }
    }
}
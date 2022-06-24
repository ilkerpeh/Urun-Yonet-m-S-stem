using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net.Mail;
using System.Net;

namespace ÜrünYönetimSistemi.Controllers
{
    public class HomeController : Controller
    {
        //DRY 
        // GET: Home
        public ActionResult Index()
        {
            SendMail("ilker@gmail.com", "ÜRÜN YÖNETİMİNİ ELE ALINIZ", "<p>İyi Günler</p>");
            return View();
        }
        public ActionResult Contact()
        {
            SendMail("kadir@gmail.com", "Bilgiler için teşekkürler", "<span>iyi Günler Dileriz</span>");
            return View();
        }
        public void SendMail(string toMailAddress, string subject, string body)
        {
            
            SmtpClient client = new SmtpClient("mail.nisantasi.edu.tr");
            MailAddress fromAddress = new MailAddress("info@nisantasi.edu.tr", "Nişantaşı Üniversitesi");
            MailAddress toAddress = new MailAddress("ilker@gmail.com");
            MailMessage msg = new MailMessage(fromAddress, toAddress);
            
            msg.Subject = subject;
            msg.IsBodyHtml = true;
            
            msg.Body = body;
            msg.CC.Add("ilker@nisantasi.edu.tr");
            msg.Bcc.Add("kadir@nisantasi.edu.tr");
            msg.ReplyToList.Add("demo@nisantasi.edu.tr");
            
            try
            {
                client.Send(msg); 
            }
            catch (OverflowException ex)
            {
                throw new Exception("Mail gönderirken bir hata oluştu");
            }
            catch (ArgumentNullException ex)
            {

            }
            finally
            {

            }

        }
    }
}
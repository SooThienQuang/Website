using DoAn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Controllers
{
    public class AccountController : Controller
    {
        MVC_demoEntities cn = new MVC_demoEntities();
        //
        // GET: /Account/
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string txt_email, string txt_pass)
        {
            if (ModelState.IsValid)
            {
                account test = cn.accounts.Where(n => n.email == txt_email && n.pass == txt_pass).FirstOrDefault();
                //if (txt_email == "admin@gmail.com" && txt_pass == "123")
                //{
                //    return RedirectToAction("Home", "Admin");
                //}
                if (test == null)
                {
                    return View();
                }             
                if (test != null && test.maCV == 4)
                {
                    Session["user"] = new account()
                    {
                            HovaTen = test.HovaTen,
                            email = txt_email,
                            pass = txt_pass

                    };
                    return RedirectToAction("Home", "Home");
                }
                if(test!=null&&test.maCV!=4)
                {
                    Session["nhanvien"] = new account()
                    {
                        HovaTen = test.HovaTen,
                        email = txt_email,
                        pass = txt_pass,
                        maCV = test.maCV

                    };
                    return RedirectToAction("Home", "Admin");
                }    
                
            }

            return View();
        }
        public ActionResult Register()
        {
            return View();
        }
        account a;
        [HttpGet]
        public ActionResult MaXacNhan()
        {
            return View();
        }

       public static string[] mang;
        [HttpPost]
        public ActionResult MaXacNhan(string txt_maxacnhan)
        {
            string count = mang[0].ToString();
            if (ModelState.IsValid)
            {
                var info = Session["TTKH"] as DoAn.Models.account;
                if (txt_maxacnhan.Equals(count))
                {
                    cn.accounts.Add(info);
                    cn.SaveChanges();
                    return RedirectToAction("Login");
                }
                else
                {
                    return View();
                }    

            }
            return View();
        }
        private static Random random = new Random();
        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
                .Select(s => s[random.Next(s.Length)]).ToArray());
            
        }
        public string ma = RandomString(5);

        [HttpPost]
        //them 1 account moi
       
        public ActionResult Register(string txt_username, string txt_email, string txt_password)
        {
            mang = new string[] { ma };
            if (ModelState.IsValid)
            {
                guimai("thienquangpro1221.ytb@gmail.com", txt_email, "Dang ky thanh cong", "Mã xác nhận là :" + ma + "");
                Session["TTKH"] = new account()
                {
                    HovaTen = txt_username,
                    email = txt_email,
                    pass = txt_password,
                    maCV=4

                };
                return RedirectToAction("MaXacNhan","account");    
            }
            return View();
            //if (ModelState.IsValid)
            //{
            //    cn.accounts.Add(new account()
            //    {
            //        HovaTen = txt_username,
            //        email =txt_email,
            //        pass = txt_password,
            //        maCV=4
            //    });
            //    cn.SaveChanges();
            //    return RedirectToAction("Login");
            //}
            //return View();
        }


        //tao gui mail
      public  void guimai(string fr, string to, string sub, string nd)
        {
            MailMessage message = new MailMessage(fr, to, sub, nd);
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("thienquangpro1221.ytb@gmail.com", "0820112001bo");
            client.Send(message);
        }

    }
}

using DoAn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Controllers
{
    public class PayMentController : Controller
    {
        //
        // GET: /PayMent/
        MVC_demoEntities cn = new MVC_demoEntities();
        public ActionResult Pay(int id)
        {
            var tb = cn.THIETBIs.Where(n => n.MATB == id).ToList();
            return View(tb);
        }
        [HttpPost]
        public ActionResult Pay(string txt_gia,string txt_mail,string txt_hoten,string txt_sdt,string txt_diachi,string txt_quanhuyen,string txt_tinhtp,string quantity,string txt_matb)
        {
            if (ModelState.IsValid)
            {

                HOADON d = new HOADON();
                d.mail = txt_mail; d.hoten = txt_hoten;d.sodienthoai = txt_sdt; d.quanHuyen = txt_quanhuyen; d.soLuong = Convert.ToInt32(quantity);d.MATB = Convert.ToInt32(txt_matb);
                d.diachi = txt_diachi;d.tinhTP = txt_tinhtp;
                d.thoiGian = DateTime.Now;
                //d.giaban = Convert.ToInt32(txt_gia);
                //d.tongtien = Convert.ToInt32(quantity) * Convert.ToInt32(txt_gia);
                cn.HOADONs.Add(d);
                cn.SaveChanges();
                return RedirectToAction("Home", "Home");
            }
            return RedirectToAction("Home","Home");
        }


        public ActionResult DonHang()
        {
            var info = Session["user"] as DoAn.Models.account;
            if (info == null)
            {
                return View();
            }
            else
            {
                var item = cn.HOADONs.Where(n => n.mail == info.email).ToList();
                return View(item);
            }
        }
       
    }
}

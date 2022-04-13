using DoAn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
namespace DoAn.Controllers
{
    public class SerchProductsController : Controller
    {
        //
        // GET: /SerchProducts/
        MVC_demoEntities cn = new MVC_demoEntities();
        //serch product
        public ActionResult Navbar()
        {
            return PartialView();
        }
        public ActionResult LocSP()
        {
            var item = cn.HangSanXuats.ToList();
            return PartialView(item);
        }
        public ActionResult LocHangSX(int ma, int page = 1, int size = 8)
        {
            var item = cn.THIETBIs.ToList().Where(n => n.MAHSX == ma).ToPagedList(page, size);
            return PartialView(item);
        }
        public ActionResult Home(int ma, int page = 1, int size = 8)
        {
          
            var item = cn.THIETBIs.ToList().Where(n => n.LOAITB == ma).ToPagedList(page, size);
            return View(item);
        }
        public ActionResult LocTheoGiaSanPham(int ma,int GiaSP1,int GiaSP2, int page = 1, int size = 8)
        {
          var item=  cn.THIETBIs.ToList().Where(n => n.GIATHANH >= GiaSP1 && n.GIATHANH <= GiaSP2&&n.MAHSX==ma).ToPagedList(page,size);
            if (item == null)
            {
                return HttpNotFound();
            }
            else
            {
                return View(item);
            }
        }

       
        public ActionResult LocTheoHangSanXuat(int ma, int page = 1, int size = 8)
        {
          
            var item = cn.THIETBIs.ToList().Where(n => n.MAHSX==ma).ToPagedList(page, size);
            if (item == null)
            {
                return HttpNotFound();
            }
            else
            {
                ViewData["mahsx"] =ma;
                return View(item);
            }
        }
    }
}

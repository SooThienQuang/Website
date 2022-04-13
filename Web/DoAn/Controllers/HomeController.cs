using DoAn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.IO;
using PagedList.Mvc;
using PagedList;
namespace DoAn.Controllers
{
    public class HomeController : Controller
    {
        MVC_demoEntities cn = new MVC_demoEntities();
        //
        // GET: /Home/

        BusThietBi b = new BusThietBi();
        public ActionResult Home(int page = 1, int size = 8)
        {
            //var db = cn.THIETBIs.ToList().ToPagedList(page, size);
            var db = b.listTB().ToPagedList(page, size);
            ViewBag.MayTinhBang = cn.THIETBIs.Where(n => n.LOAITB == 3).ToList();
            ViewBag.DienThoai = cn.THIETBIs.Where(n => n.LOAITB == 1).ToList();
            ViewBag.LapTop = cn.THIETBIs.Where(n => n.LOAITB == 2).ToList();
            return View(db);
        }
        public ActionResult Detail(int id, int page = 1, int size = 4)
        {
            var obj = cn.CHITIETTBs.ToList().Where(n => n.MATB == id).ToPagedList(page, size);
            return View(obj);
        }

        public ActionResult Products(int id,int page = 1, int size = 4)
        {
            //.Where(n => n.LOAITB.Length==4).
            var obj = cn.THIETBIs.ToList().Where(n =>n.LOAITB ==id).ToPagedList(page, size);
            return View(obj);
        }


        public ActionResult Serch(string txt_serch, int page = 1, int size = 4)
        {
            //.Where(n => n.LOAITB.Length==4).
            var obj = cn.THIETBIs.ToList().Where(n => n.TENTB.Contains(txt_serch)).ToPagedList(page, size);
            return View(obj);
        }
    }
}

using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Models
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        MVC_demoEntities cn = new MVC_demoEntities();
        BusThietBi b = new BusThietBi();
      
        public account acc()
        {
            account a = Session["nhanvien"] as account;
            if(a!=null)
            {
                return a;
            }
            return null;
            
        }
        
        public ActionResult Admin()
        {
            return View();
        }
        
        public ActionResult Home(int page = 1, int size = 8)
        {
                var db = b.listTB().ToPagedList(page, size);
                return View(db);
        }
        [HttpPost]
        public ActionResult Home(string txt_serch,int page = 1, int size = 8)
        {
            var db = cn.THIETBIs.Where(n=>n.TENTB.Contains(txt_serch)).ToList().ToPagedList(page, size);
            return View(db);
        }
        //public ActionResult Admin(int page = 1, int size = 30)
        //{
        //    var db = b.listTB().ToPagedList(page, size);
        //    return View(db);
        //}
        // ham xu ly tac vu nhap lieu cho thiet bi
        public ActionResult viewErr()
        {
            return View();
        }
        public ActionResult XLTB()
        {
            if(acc().maCV == 1 || acc().maCV == 3)

            {
                THIETBI b = cn.THIETBIs.ToList().LastOrDefault();
                ViewBag.MATB = b.MATB + 1;
                ViewBag.LOAITB = new SelectList(cn.loaiTBs, "loaiTB1", "tenLoai");
                return View();
            }
            else
            {
                return RedirectToAction("viewErr");
            }    
        }
        [HttpPost]
        public ActionResult XLTB(THIETBI tb)
        {
            if (acc().maCV == 1 || acc().maCV == 3)
            {
                THIETBI b = cn.THIETBIs.ToList().LastOrDefault();
                if (ModelState.IsValid)
                {
                    tb.MATB = b.MATB + 1;
                    //ViewBag.ID = tb.MATB;
                    cn.THIETBIs.Add(tb);
                    cn.SaveChanges();
                    return RedirectToAction("XLChiTietTB", "Admin", new { id = tb.MATB });
                }
                return View(tb);
            }
            else
            {
                return RedirectToAction("viewErr");
            }
           
        }
        [HttpGet]
        public ActionResult xoaTB(int id)
        {

            if (ModelState.IsValid)
            {
                THIETBI tb = cn.THIETBIs.Where(n => n.MATB == id).FirstOrDefault();
                cn.THIETBIs.Remove(tb);
                cn.SaveChanges();
                return RedirectToAction("Home", "Admin");
            }
            return RedirectToAction("Home", "Admin");
        }
        //ham xu ly tac vu nhap lieu cho chi tiet thiet bi
        public ActionResult XLChiTietTB(int id)
        {
            ViewBag.ID = id;
            return View();
        }
        [HttpPost]
        public ActionResult XLChiTietTB(CHITIETTB ct)
        {
            THIETBI b = cn.THIETBIs.ToList().LastOrDefault();
            if (ModelState.IsValid)
            {
                ct.MATB =b.MATB;
                cn.CHITIETTBs .Add(ct);
                cn.SaveChanges();
                return RedirectToAction("Home", "Admin");
            }
            return View(ct);
        }
        public ActionResult Details(int id)
        {
            var item = cn.CHITIETTBs.Where(n => n.MATB == id).ToList();
            if(item==null)
            {
                return HttpNotFound();
            }
            return View(item);
        }
        public ActionResult Update(int id=1)
        {
            var item = cn.CHITIETTBs.SingleOrDefault(n => n.MATB == id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        public ActionResult DoanhSoBanHang(int page=1,int num=8)
        {
            account a = Session["nhanvien"] as account;
            if (a.maCV == 1)
            {
                //ViewBag.tongdoanhso = cn.HOADONs.Sum(n => n.tongtien);
                return View(cn.HOADONs.ToList().ToPagedList(page, num));
            }
            else
            {
                return RedirectToAction("viewErr", "Admin");

            }
          
        }
        [HttpPost]
        public ActionResult DoanhSoBanHang(string thoigian1,string thoigian2, int page = 1, int num = 8)
        {
            DateTime d1 = DateTime.Parse(thoigian1);
            DateTime d2 = DateTime.Parse(thoigian2);
            return View(cn.HOADONs.Where(n=>n.thoiGian>=d1&&n.thoiGian<=d2).ToList().ToPagedList(page, num));
        }

        
        public ActionResult QuanLyDonHang(int page = 1, int num = 8)
        {
            return View(cn.HOADONs.ToList().ToPagedList(page, num));
        }
        [HttpPost]
        public ActionResult QuanLyDonHang(string thoigian1, int page = 1, int num = 8)
        {
            DateTime d1 = DateTime.Parse(thoigian1);
            return View(cn.HOADONs.Where(n => n.thoiGian >= d1).ToList().ToPagedList(page, num));
        }
    } 
}

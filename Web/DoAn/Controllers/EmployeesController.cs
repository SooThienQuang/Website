using DoAn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Controllers
{
    public class EmployeesController : Controller
    {
        //
        public account acc()
        {
            account a = Session["nhanvien"] as account;
            if (a != null)
            {
                return a;
            }
            return null;

        }
       
// GET: /Employees/
        MVC_demoEntities cn = new MVC_demoEntities();
        public ActionResult ShowKhachHang()
        {
            account a = Session["nhanvien"] as account;
            return View(cn.accounts.Where(n=>n.maCV==4).ToList());
        }
        //-----------------------reset password
         public ActionResult ResetPassword(string id)
        {
            if (ModelState.IsValid)
            {
                account a = cn.accounts.SingleOrDefault(n => n.email == id);
                a.email = id;
                a.pass = "123";
                cn.accounts.Attach(a);
                cn.Entry(a).State = System.Data.EntityState.Modified;
                cn.SaveChanges();
                return RedirectToAction("Home", "Admin");
            }
            return RedirectToAction("Home", "Admin");
        }


        public ActionResult Delete(string id)
        {
            if (ModelState.IsValid)
            {
                account tb = cn.accounts.SingleOrDefault(n => n.email.Contains(id));
                cn.accounts.Remove(tb);
                cn.SaveChanges();
                return RedirectToAction("Home", "Admin");
            }
            return RedirectToAction("Home", "Admin");
        }



        public ActionResult ShowEmployee()
        {
            account a = Session["nhanvien"] as account;
            if (a.maCV == 1 || a.maCV == 3)
            {
                return View(cn.NhanViens.Include("ChucVu").ToList());
            }
            else
            {
                return RedirectToAction("viewErr","Admin");
               
            }
        }
        public ActionResult createEm()
        {
            ViewBag.maCV = new SelectList(cn.chucVus, "maCV", "tenCV");
            NhanVien nv = cn.NhanViens.ToList().LastOrDefault();
            if (cn != null)
            {
                ViewBag.ma = nv.maNV + 1;
            }
            return View();
        }
        [HttpPost]
        public ActionResult createEm(NhanVien nv)
        {
            account a = cn.accounts.Where(n => n.email.Equals(nv.email)).FirstOrDefault();
            if(a!=null)
            {
                ViewBag.errEmail = "Tên mail đã tồn tại";
                return View();
            }    
            if (ModelState.IsValid)
            {
                account b = new account();
                b.HovaTen = nv.tenNV;
                b.email = nv.email;
                b.pass = nv.soDT;
                b.maCV = nv.maCV;
                cn.accounts.Add(b);
                cn.NhanViens.Add(nv);
                cn.SaveChanges();
                return RedirectToAction("ShowEmployee");
            }
                return View();
        }
    }
}

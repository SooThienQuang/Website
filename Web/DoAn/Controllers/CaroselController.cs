using DoAn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Controllers
{
    public class CaroselController : Controller
    {
        //
        // GET: /Carosel/
        MVC_demoEntities cn = new MVC_demoEntities();
        public ActionResult createCarosel()
        {
            return View();
        }
        public ActionResult showCarosel()
        {
            return View(cn.Carosels.ToList());
        }
        [HttpPost]
        public ActionResult createCarosel(Carosel a)
        {
            if (ModelState.IsValid)
            {
                cn.Carosels.Add(a);
                cn.SaveChanges();
                return RedirectToAction("showCarosel");
            }
            return View();
        }




        public ActionResult demo()
        {
            return View();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
using System.Web.UI;
namespace DoAn.Controllers
{
    public class ShoppingCartController : Controller
    {
        //
        // GET: /ShoppingCart/
        MVC_demoEntities cn = new MVC_demoEntities();
        public ActionResult Index()
        {
            return View();
        }
       static List<Bus_ShoppingCart> lstcart = new List<Bus_ShoppingCart>();
       static int sl = 1;
        public ActionResult AddCart(int id)
        {
                Bus_ShoppingCart a = new Bus_ShoppingCart(id, sl);
                lstcart.Add(a);
            //Session["cart"] = lstcart; 
            return RedirectToAction("Home", "Home");
        }
        public ActionResult ShowCart()
        {       
                return View(lstcart);
        }
        public ActionResult deltetecart(int id)
        {
            Bus_ShoppingCart item = lstcart.SingleOrDefault(n => n.MATB == id);
            lstcart.Remove(item);
            return RedirectToAction("ShowCart");
        }
        public ActionResult updatecart(int id)
        {
            Bus_ShoppingCart item = lstcart.SingleOrDefault(n => n.MATB == id);
            lstcart.Remove(item);
            return RedirectToAction("ShowCart");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.Models
{
    public class BusThietBi
    {
        MVC_demoEntities db = new MVC_demoEntities();
        
        public List<THIETBI>listTB()
        {
            return db.THIETBIs.ToList();
        }
    }
}
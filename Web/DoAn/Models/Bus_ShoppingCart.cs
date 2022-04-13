using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.Models
{
    public class Bus_ShoppingCart
    {
       
            public int MATB { get; set; }
        public int SOLUONG { get; set; }     
        public Bus_ShoppingCart(int m,int sl)
            {
                MATB = m;
              
                SOLUONG = sl;           
        }

    }
}
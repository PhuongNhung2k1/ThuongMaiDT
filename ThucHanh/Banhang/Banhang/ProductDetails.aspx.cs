﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banhang
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        public string pid;
        public string name;
        public string image;
        public decimal price;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid = Request["pid"];
            name = Request["name"];
            image = Request["image"];
            if (Request["price"] != null)
                price = Decimal.Parse(Request["price"]);
        }
    }
}
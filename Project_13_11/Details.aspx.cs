using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_13_11
{
    public partial class Details : System.Web.UI.Page
    {
        public string pid;
        public string name;
        public string image;
        public Decimal price;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid = Request["pid"];
            name = Request["name"];
            image = Request["image"];
            if(Request["price"]!= null)
            price = Decimal.Parse(Request["price"]);
        }
       
    }
}
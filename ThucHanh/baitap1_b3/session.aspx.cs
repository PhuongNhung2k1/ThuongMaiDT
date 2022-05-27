using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baitap1_b3
{
    public partial class session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            student s = new student();
            s.id = 1;
            s.name = "Ha noi";
            Session["stu"] = s;
        }
    }
}
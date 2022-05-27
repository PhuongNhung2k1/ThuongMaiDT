using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proj3_C7
{
    public partial class DisplayCookie2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mauchu"];
            HttpCookie f = Request.Cookies["phongchu"];

            msg.ForeColor = System.Drawing.Color.FromName(c.Value);
            msg.Font.Name = f.Value;

            HttpCookie maunen = Request.Cookies["maunen"];
            mybody.Attributes.Add("bgcolor", maunen.Value);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banhang
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload");
            string path = Server.MapPath("~/Images/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["ImagePath"].DefaultValue = f.FileName;
        }
    }
}
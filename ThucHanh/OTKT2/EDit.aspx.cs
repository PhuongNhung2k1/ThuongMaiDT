using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OTKT2
{
    public partial class EDit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            string path = Server.MapPath("~/Images/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.UpdateParameters["ImagePath"].DefaultValue = "/Images/"+f.FileName;
        }
    }
}
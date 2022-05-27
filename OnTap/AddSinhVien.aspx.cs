using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnTap
{
    public partial class AddSinhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            string path = Server.MapPath("~/Image/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["anh"].DefaultValue = f.FileName;
        }
    }
}
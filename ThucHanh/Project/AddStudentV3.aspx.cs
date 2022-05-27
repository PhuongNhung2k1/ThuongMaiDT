using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class AddStudentV3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ItemInsertingEvent(object sender, FormViewInsertEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            string path = Server.MapPath("~/Image/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["anh"].DefaultValue = f.FileName;
        }
    }
}
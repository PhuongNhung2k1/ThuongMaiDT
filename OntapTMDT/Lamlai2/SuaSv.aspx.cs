using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lamlai2
{
    public partial class SuaSv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void FormView1_ItemInserting1(object sender, FormViewInsertEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            String path = Server.MapPath("~/Image/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["anh"].DefaultValue = "~/Image/" + f.FileName;
            
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {

            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            String path = Server.MapPath("~/Image/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["anh"].DefaultValue = "/Image/" + f.FileName;
            
        }
    }
}
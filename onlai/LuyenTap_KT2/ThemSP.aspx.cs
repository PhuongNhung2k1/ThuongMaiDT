using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenTap_KT2
{
    public partial class ThemSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            string path = Server.MapPath("~/Images/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["ImagePath"].DefaultValue = "/Images/" + f.FileName;
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            //if (e.Exception != null)
            //{
            //    e.KeepInInsertMode = true;
            //    e.ExceptionHandled = true;
            //    errorMsg.ForeColor = System.Drawing.Color.Red;
            //    errorMsg.Text = "Có lỗi xảy ra :" + e.Exception.Message;
            //}
            //else
            //{
            //    errorMsg.ForeColor = System.Drawing.Color.Blue;
            //    errorMsg.Text = "Thêm thành công";
            //}
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proj_Buoi6
{
    public partial class ThemSinhvien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertedCmd(object sender, FormViewInsertedEventArgs e)
        {
            if(e.Exception != null)
            {
                e.KeepInInsertMode = true;
                e.ExceptionHandled = true;
                errorMsg.ForeColor = System.Drawing.Color.Red;
                errorMsg.Text = "Có lỗi xảy ra : " +e.Exception.Message;
            }
            else
            {
                errorMsg.ForeColor = System.Drawing.Color.Blue;
                errorMsg.Text = "Thêm thành công";
            }

        }

        protected void InsertingItem(object sender, FormViewInsertEventArgs e)
        {
           
                FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
                string path = Server.MapPath("~/Image/");
                f.PostedFile.SaveAs(path + f.FileName);
                SqlDataSource1.InsertParameters["anh"].DefaultValue = f.FileName;
            
        }
    }
}
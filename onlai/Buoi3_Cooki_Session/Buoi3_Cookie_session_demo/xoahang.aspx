<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xoahang.aspx.cs" Inherits="Buoi3_Cookie_session_demo.xoahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Hang ban da xoa dat hang</h2>
            <asp:HiddenField ID="action" Value="del&tenHang" /> 
            <%
                string gio = "";
               List<string> ds = (List<string>)Session["giohang"];
                if(Request.Form["acction"]== "del&tenHang")
                {
                    foreach(var item in ds)
                    {
                        if (Session["giohang"].Equals(item))
                        {
                            ds.Remove(item);
                        }
                    }

                }
                Session["giohang"] = ds;
                Response.Write(ds);
                %>
            
        </div>
    </form>
     
</body>
</html>

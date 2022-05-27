<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dathang.aspx.cs" Inherits="Buoi3_Cookie_session_demo.Dathang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Don hang ban da dat mua:</h2>
            <%
                List<string> ds = (List<string>)Session["giohang"];
                Response.Write("<ol>");
                foreach(string item in ds)
                {
                    Response.Write("<li>" + item + "</li>");
                }
                Response.Write("</ol>");
                Response.Write("so luong snphan ban da mua:" + ds.Count);
                Session.Remove("giohang");
                %><br />
            <a href ="Hanghoa.aspx">Mua tiep don hang khac</a>
        </div>
    </form>
</body>
</html>

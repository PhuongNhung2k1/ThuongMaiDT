<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dathang.aspx.cs" Inherits="Proj3_C7.Dathang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dat hang</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Hang ban dat hang</h2>
            <%
                List<string> ds = (List<string>)Session["giohang"];
                Response.Write("<ol>");
                foreach (string  item in ds)
                {
                    Response.Write("<li>" + item + "</li>");
                }
                 Response.Write("</ol>");
                Response.Write("So luong san pham ban mua: " + ds.Count);
                Session.Remove("giohang");
            %>
            <br /><br />
            <a href="Hanghoa.aspx">Mua tiep gio hang khac</a>
        </div>
    </form>
</body>
</html>

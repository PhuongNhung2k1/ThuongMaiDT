<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCookie.aspx.cs" Inherits="Proj3_C7.DisplayCookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server" id="body1">
    <form id="form1" runat="server">
        <div>
            <%
                HttpCookie c1 = Request.Cookies["username"];
                HttpCookie c2 = Request.Cookies["password"];
                HttpCookie n = Request.Cookies["number"];

                if (c1 != null)
                    Response.Write("name: " + c1.Name + " value: " + c1.Value + "<br />");

                if (c2 != null)
                    Response.Write("name: " + c2.Name + " value: " + c2.Value + "<br />");

                if (n != null)
                {
                    int num = int.Parse(n.Value);
                    Response.Write("Binh phuong  la: " + num * num);
                }
            %>
            
        </div>
    </form>
</body>
</html>


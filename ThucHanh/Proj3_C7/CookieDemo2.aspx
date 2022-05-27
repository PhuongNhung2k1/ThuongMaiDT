<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieDemo2.aspx.cs" Inherits="Proj3_C7.CookieDemo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookie Demo2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Set Cookie</h2>
            <%
                HttpCookie maunen = new HttpCookie("maunen");
                maunen.Value = "Blue";
                Response.SetCookie(maunen);

                HttpCookie mauchu = new HttpCookie("mauchu");
                mauchu.Value = "White";
                Response.SetCookie(mauchu);
                
                HttpCookie font = new HttpCookie("phongchu");
                font.Value = "Montserrat";
                Response.SetCookie(font);

                %>
            <a href="DisplayCookie2.aspx">Hien thi cookie</a>

        </div>
    </form>
</body>
</html>

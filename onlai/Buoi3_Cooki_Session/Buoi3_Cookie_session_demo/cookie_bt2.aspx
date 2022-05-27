<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cookie_bt2.aspx.cs" Inherits="Buoi3_Cookie_session_demo.cookie_bt2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Set cookie</h2>
            <%
                HttpCookie maunen = new HttpCookie("maunen");
                maunen.Value = "blue";
                Response.SetCookie(maunen);
                HttpCookie mauchu = new HttpCookie("mauchu");
                mauchu.Value = "white";
                Response.SetCookie(mauchu);

                HttpCookie font = new HttpCookie("phongchu");
                font.Value = "Arial";
                Response.SetCookie(font);

                %>
            <a href="displayCookie2.aspx">Hien thi cookie 2</a>
        </div>
    </form>
</body>
</html>

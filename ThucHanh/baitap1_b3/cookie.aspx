<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cookie.aspx.cs" Inherits="baitap1_b3.cookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                HttpCookie cookie = new HttpCookie("username");
                cookie.Value = "Nhungpp";
                DateTime d = DateTime.Now;
                TimeSpan tsMinute = new TimeSpan(0, 0, 0, 5);
                cookie.Expires = d + tsMinute;
                Response.SetCookie(cookie);
                %>
           <a href="DisplayCookie.aspx">Sang trang tiep theo</a>
            <a href="session.aspx">Session ID</a>
        </div>
    </form>
</body>
</html>

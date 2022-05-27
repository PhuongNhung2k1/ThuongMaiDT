<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieDemo.aspx.cs" Inherits="Proj3_C7.CookieDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookie Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%

                HttpCookie number = new HttpCookie("number");
                number.Value = "9";
                Response.SetCookie(number);

                HttpCookie cookie1 = new HttpCookie("username");
                cookie1.Value = "huongnt";
                HttpCookie cookie2 = new HttpCookie("password");
                cookie2.Value = "123456";
                DateTime d = DateTime.Now;
                number.Expires =  d + new TimeSpan(365, 0, 0, 1);
                cookie1.Expires =  d + new TimeSpan(365, 0, 0, 1);
                cookie2.Expires =  d + new TimeSpan(365, 0, 0, 1);
                Response.SetCookie(cookie1);
                Response.SetCookie(cookie2);
                Response.Write("Da ghi cookie vao may khach");
                %>
            <br />
            <a href="DisplayCookie.aspx">Hien thi cookie</a>
        </div>
    </form>
</body>
</html>

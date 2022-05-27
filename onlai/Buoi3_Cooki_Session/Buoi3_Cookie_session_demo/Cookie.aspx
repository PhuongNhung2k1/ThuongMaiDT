<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookie.aspx.cs" Inherits="Buoi3_Cookie_session_demo.Cookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div>
            <%
                HttpCookie number = new HttpCookie("number");
                number.Value = "19";
                Response.SetCookie(number);
                HttpCookie cookie1 = new HttpCookie("username");
                cookie1.Value = "Phuongpp";
                Response.SetCookie(cookie1);
                HttpCookie cookie2 = new HttpCookie("password");
                cookie2.Value = "12345";
                Response.SetCookie(cookie2);


                DateTime d = DateTime.Now;
                number.Expires = d + new TimeSpan(365, 0, 0, 0);
                cookie1.Expires = d + new TimeSpan(365, 0, 0, 0);
                cookie2.Expires = d + new TimeSpan(365, 0, 0, 0);


                Response.SetCookie(number);
                Response.SetCookie(cookie1);
                Response.SetCookie(cookie2);
                Response.Write("DA GHI COOKIE VAO MAY KHACH!");
                //Response.Write("number"+number.Value);
                //Response.Write("password:"+cookie2.Value);
                //Response.Write(cookie1.Value+"va" + cookie1.Name);
                %><br />
            <a href="DisplayCookie.aspx" >Hien thi cookie</a>

              </div>

    </form>
</body>
</html>

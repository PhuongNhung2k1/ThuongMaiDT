<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCookie.aspx.cs" Inherits="baitap1_b3.DisplayCookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h2 {
            color: brown;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%-- <%
                if(Request.Cookies["username"] != null)
                {
                    HttpCookie cookie = Request.Cookies["username"];
                    Response.Write("name:" + cookie.Name);
                    Response.Write("</br> Value :" + cookie.Value);

                }else
            {
                    Response.Write("khong co cookie username");
            }
                %>
            <h2>Session id :<%= Session.SessionID %></h2>
            <%
                string name = (string)Session["username"];
                int age = (int)Session["age"];
               // student s = (student)Session[""]
                %>--%>

            <%
                HttpCookie cookie = Request.Cookies["username"];
                Response.Write("Name:" + cookie.Name );
                Response.Write("<br/>value:"+ cookie.Value);
                %>
        </div>
    </form>
</body>
</html>

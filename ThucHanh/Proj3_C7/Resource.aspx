<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resource.aspx.cs" Inherits="Proj3_C7.Resource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Resource</h2>
            <h4>Cookie tren may khach la</h4>
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
            <br />
            <h2>Session variable</h2>
            Username: <%= Session["username"] %><br />
            Password: <%= Session["password"] %><br />
            Student: <%= Session["st"] %><br />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCookie.aspx.cs" Inherits="Buoi3_Cookie_session_demo.DisplayCookie" %>
<%@ import Namespace="Buoi3_Cookie_session_demo" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <% 
                HttpCookie n = new HttpCookie("number");
                HttpCookie c2 = new HttpCookie("username");
                HttpCookie c3 = new HttpCookie("password");
                if (c2 != null)
                    Response.Write("Name: " + c2.Name + "Value: " + c2.Value + "<br />");

                if (c3 != null)
                    Response.Write("Password: " + c3.Name + "Value: " + c3.Value + "<br />");
                if (n != null)
                {
                   int num = Convert.ToInt32(n.Value);
                   Response.Write("Binh phuong so la:" + num * num);
                }

                %><br />
            <h2>Session value :<%=Session.SessionID %></h2>
            Username:<%= Session["username"] %> <br />
            Password: <%=(string)Session["password"] %><br />
            Student: <%=(string)Session["stu"] %>
        </div>
        

    </form>
</body>
</html>

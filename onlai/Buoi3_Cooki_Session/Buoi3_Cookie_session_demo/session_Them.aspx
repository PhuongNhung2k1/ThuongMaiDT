<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="session_Them.aspx.cs" Inherits="Buoi3_Cookie_session_demo.session_Them" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Session ID:<%=Session.SessionID %></h2>
            <%
                Session["username"] = "Pham";
                Session["passWord"] = "12345";
                Student s = new Student(3, "Phuong", "Thanh Hoa");
                Session["stu"] = s;
                %>
        
        </div>
    </form>
</body>
</html>

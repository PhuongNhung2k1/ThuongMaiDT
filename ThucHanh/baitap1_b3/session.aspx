<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="session.aspx.cs" Inherits="baitap1_b3.session" %>
<%@ Import Namespace="baitap1_b3"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Session ID <%= Session.SessionID %></h2>
            <%
                Session["username"] = "Nhungpp";
                Session["age"] = 19;
               student s = new student();
                s.id = 1;
                s.name = "Ha noi";
                Session["stu"] = s;
                %>
        </div>
    </form>
</body>
</html>

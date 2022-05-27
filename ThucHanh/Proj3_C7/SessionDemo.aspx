<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionDemo.aspx.cs" Inherits="Proj3_C7.SessionDemo" %>
<%@ Import Namespace="Proj3_C7" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Session ID: <%=Session.SessionID %></h2>
            <%
                Session["username"] = "ngocanh";
                Session["password"] = "123456";
                Student s = new Student(3,"Phuong","Ha noi");
                Session["st"] = s;

                //Xoa bien username
                //Session.Remove("username");
                //Session["username"] = null;

                //Xoa tat ca cac bien luu tru trong session
                //Session.Abandon();                
                %>
        </div>
    </form>
</body>
</html>

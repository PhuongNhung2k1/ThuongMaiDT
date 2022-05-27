<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="B1_Output.aspx.cs" Inherits="Bai1.Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Your Information </h2>
            Name : <%=Request.Form["name"] %><br />
            Age : <%= Request.Form["age"] %><br />
            User Name : <%= Request.Form["user"] %><br />
                Password : <%= Request.Form["pass1"] %><br />
                Re password : <%= Request.Form["pass2"] %><br />
                Phone : <%= Request.Form["phone"] %><br />
                Email : <%= Request.Form["email"] %>
        </div>
    </form>
</body>
</html>

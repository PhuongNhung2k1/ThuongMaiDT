<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xulyform.aspx.cs" Inherits="thuchanh2.xulyform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Login</h2>
            User name<asp:TextBox ID="user" Text="username" runat="server"></asp:TextBox><br />
            Pass word<asp:TextBox ID="pass" runat="server"></asp:TextBox>
            <asp:Button ID="Login" value="login" runat="server" PostBackUrl="~/Controller.aspx" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai2_login.aspx.cs" Inherits="Bai1.Bai2_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label {
            width:100px;
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Login Form</h2>
            <p><label> User :</label> <asp:TextBox ID="user" runat="server" /> </p>
            <p><label> Password :</label> <asp:TextBox ID="pass" runat="server" /> </p>
            <p>
                <asp:Button ID="login" Text="Login" runat="server" PostBackUrl="~/Controller.aspx" />
            </p>
        </div>
    </form>
</body>
</html>

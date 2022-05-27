<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hanghoa.aspx.cs" Inherits="Proj3_C7.Hanghoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hang hoa</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh sach hang hoa</h2>
            <asp:DropDownList ID="hanghoa" runat="server" size="5">
                <asp:ListItem>Iphone 13</asp:ListItem>
                <asp:ListItem>Samsung star</asp:ListItem>
                <asp:ListItem>Sony</asp:ListItem>
                <asp:ListItem>LG</asp:ListItem>
                <asp:ListItem>Realme</asp:ListItem>
            </asp:DropDownList>
            <asp:HiddenField ID="action" Value="add" runat="server" />
            <asp:Button ID="b1" Text="Mua" runat="server" PostBackUrl="Muahang.aspx" />
        </div>
    </form>
</body>
</html>

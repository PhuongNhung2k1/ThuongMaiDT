<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hanghoa.aspx.cs" Inherits="Buoi3_Cookie_session_demo.Hanghoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh sach hang hoa</h2>
            <asp:DropDownList ID="hanghoa" runat="server" size="6">
                <asp:ListItem>Ban phim</asp:ListItem>
                <asp:ListItem>Lap top</asp:ListItem>
                <asp:ListItem>USB</asp:ListItem>
                <asp:ListItem>O dia cung</asp:ListItem>
                <asp:ListItem>HDD</asp:ListItem>
            </asp:DropDownList>
           <asp:HiddenField ID="action" Value="add" runat="server" />
            <asp:Button ID="b1" Text="Mua" runat="server" PostBackUrl="~/Muahang.aspx"/>
        </div>
    </form>
</body>
</html>

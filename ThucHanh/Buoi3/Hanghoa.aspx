<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hanghoa.aspx.vb" Inherits="Buoi3.Hanghoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Hàng hóa</h2>
            <asp:DropDownList ID="hanghoa" size ="5" runat="server">
                <asp:ListItem>HDD</asp:ListItem>
                <asp:ListItem>HD2</asp:ListItem>
                <asp:ListItem>HDD3</asp:ListItem>
                <asp:ListItem>HDD4</asp:ListItem>
                <asp:ListItem>HDD5</asp:ListItem>
                <asp:ListItem>HDD6</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="b1" Text="Mua"  runat="server" PostBackUrl="~/Muahang.aspx"/>
        </div>
    </form>
</body>
</html>

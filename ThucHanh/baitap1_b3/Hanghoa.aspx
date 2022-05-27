<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hanghoa.aspx.cs" Inherits="baitap1_b3.Hanghoa" %>

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
                <asp:ListItem>USB </asp:ListItem>
                <asp:ListItem>o dia cung</asp:ListItem>
                <asp:ListItem>RAM 16GB</asp:ListItem>
                <asp:ListItem>Ban phim</asp:ListItem>
                <asp:ListItem>man hinh</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="b1" Text="Mua"  runat="server" PostBackUrl="~/Muahang.aspx"/>
        </div>
    </form>
</body>
</html>

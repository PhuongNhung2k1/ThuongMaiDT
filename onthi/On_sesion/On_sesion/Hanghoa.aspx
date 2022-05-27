<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hanghoa.aspx.vb" Inherits="On_sesion.Hanghoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Danh sách hàng hóa</h2>
            <asp:DropDownList ID="hhoa" runat="server" Size="6">
                <asp:ListItem>Cấu trúc dữ liệu và giải thuật</asp:ListItem>
                <asp:ListItem>Kỹ thuật lập trình</asp:ListItem>
                <asp:ListItem>Kiến trúc máy tính</asp:ListItem>
                <asp:ListItem>Cơ sở dữ liệu</asp:ListItem>
                <asp:ListItem>Toán rời rạc</asp:ListItem>
            </asp:DropDownList>
        </div>
         <asp:HiddenField ID="actio" Value="add" runat="server" />
        <asp:Button runat="server" ID="b1" Text="Mua hàng" PostBackUrl="~/Muahang.aspx" />
    </form>
</body>
</html>

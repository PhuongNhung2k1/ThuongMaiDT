<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hanghoa.aspx.cs" Inherits="Onthi_session.Hanghoa" %>

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
    </form>
    <asp:HiddenField ID="action" runat="server" Value="add" />
    <asp:Button ID="but" Text="Mua hàng" runat="server" PostBackUrl="~/Muahang.aspx" />
</body>
</html>

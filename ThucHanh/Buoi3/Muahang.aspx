<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Muahang.aspx.vb" Inherits="Buoi3.Muahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3> Ban da mua</h3>
           
            <asp:Button ID="b2" Text="Mua tiep" runat="server" PostBackUrl="~/Hanghoa.aspx" />
        </div>
    </form>
</body>
</html>

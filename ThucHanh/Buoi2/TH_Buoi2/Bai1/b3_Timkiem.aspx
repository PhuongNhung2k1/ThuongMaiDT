<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b3_Timkiem.aspx.cs" Inherits="Bai1.Timkiem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Tìm kiếm sinh viên</h2>
            Name: <asp:TextBox ID="hoten" runat="server" />
            <input type="hidden" name="action" value="find" />
            <asp:Button ID="fin"  Text="Find" runat="server" PostBackUrl="~/b3_Xuly.aspx" />
        </div>
    </form>
</body>
</html>

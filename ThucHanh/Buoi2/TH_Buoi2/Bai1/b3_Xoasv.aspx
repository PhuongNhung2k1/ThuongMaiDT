<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b3_Xoasv.aspx.cs" Inherits="Bai1.Xoasv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Delete Student</h2>
            Masv : <asp:TextBox ID="masv" runat="server" />
            <input  type="hidden" name="action" value="delete" />
            <asp:Button ID="del" Text="Delete" runat="server" PostBackUrl="~/b3_Xuly.aspx" />
            
        </div>
    </form>
</body>
</html>

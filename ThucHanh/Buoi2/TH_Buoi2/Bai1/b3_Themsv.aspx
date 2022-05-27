<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b3_Themsv.aspx.cs" Inherits="Bai1.Themsv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label{
           width:120px;
           float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Thêm sinh viên</h2>
           <p>
               <label>Mã sinh viên</label> <asp:TextBox ID="masv" runat="server" />
           </p>
            <p>
           <label> Họ tên:</label> <asp:TextBox ID="hoten" runat="server" /></p>
           <p> <label> Địa chỉ :</label> <asp:TextBox ID="diachi" runat="server" /></p>
           <p> <input type="hidden"  name="action" value="add"/></p>
            <asp:Button ID="ad" Text="Add" runat="server" PostBackUrl="~/b3_Xuly.aspx" />
        </div>
    </form>
</body>
</html>

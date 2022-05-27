<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListStudentv2.aspx.cs" Inherits="Repeater.ListStudentv2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="ListStudent.aspx">Xem </a>
            <h2> Danh sach sinh vien</h2>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="masv" DataSourceID="SqlDataSource1" RepeatColumns="5" Width="192px">
                <ItemTemplate>
                    Mã sinh viên:
                    <asp:Label ID="masvLabel" runat="server" Text='<%# Eval("masv") %>' />
                    <br />
                    Họ tên:
                    <asp:Label ID="hotenLabel" runat="server" Text='<%# Eval("hoten") %>' />
                    <br />
                    Địa chỉ:
                    <asp:Label ID="diachiLabel" runat="server" Text='<%# Eval("diachi") %>' />
                    <br />
                    Điện thoại:
                    <asp:Label ID="dienthoaiLabel" runat="server" Text='<%# Eval("dienthoai") %>' />
                    <br />
                    Mã lớp:
                    <asp:Label ID="malopLabel" runat="server" Text='<%# Eval("malop") %>' />
                    <br />
                    Ảnh:
<%--                    <asp:Label ID="anhLabel" runat="server" Text='<%# Eval("anh") %>' />--%>
                     <td>
                           <asp:Image runat="server" ID ="anh" ImageUrl='<%# "~/image/" + Eval("anh") %>' Width="100" />
                      </td>
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [sinhvien]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

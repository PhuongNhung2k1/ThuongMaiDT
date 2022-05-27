<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="Project_Repeater.Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 395px; height: 285px">
    <form id="form1" runat="server">
        <div>
            <h2> Danh sách sinh viên </h2>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                
                   
                
                <HeaderTemplate>
                  <table border="1">
                        <tr>
                            <th>Họ tên</th>
                            <th>Điện thoại</th>
                            <th>Địa chỉ</th>
                            <th>Mã lớp </th>
                            <th>Ảnh</th>
                        </tr>
                   
                </HeaderTemplate>
                <ItemTemplate>
                   
                    <tr>
                         <td>
                        <asp:Label ID="lblhoten" runat="server" Text='<%#Eval("hoten") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lbldienthoai" runat="server" Text='<%#Eval("dienthoai") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lbldiachi" runat="server" Text='<%#Eval("diachi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lbllop" runat="server" Text='<%#Eval("malop") %>' />
                    </td>
                    <td aria-pressed="true">

                        <asp:Image  runat="server" ID="anh" ImageUrl= '<%#"~/Image/"+Eval("anh") %>' Width="100"/>
                    </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$
                ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [sinhvien]">
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

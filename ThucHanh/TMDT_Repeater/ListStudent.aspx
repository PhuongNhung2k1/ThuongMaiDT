<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListStudent.aspx.cs" Inherits="Repeater.ListStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="AddStudent.aspx">Thêm sinh viên</a>
            <h2> Danh sách sinh viên </h2>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                 
                <HeaderTemplate>
                   <table border="1">
                      <tr>
                          <th> Họ tên</th>
                          <th>Điện thoại</th>
                          <th> Địa chỉ</th>
                          <th> Mã lớp</th>
                          <th>Anh</th>
                      </tr>
                    
                </HeaderTemplate>
                <ItemTemplate>
                   
                   <tr>
                       <td>
                            <asp:Label runat ="server" ID="lblhoten" Text ='<%# Eval("hoten") %>' />
                       </td>
                        <td>
                            <asp:Label runat ="server" ID="lbldienthoai" Text ='<%# Eval("dienthoai") %>' />
                       </td>
                        <td>
                            <asp:Label runat ="server" ID="lbldiachi" Text ='<%# Eval("diachi") %>' />
                       </td>
                        <td>
                            <asp:Label runat ="server" ID="lblmalop" Text ='<%# Eval("malop") %>' />
                       </td>
                        <%--<td>
                            <asp:Label runat ="server" ID="lblanh" Text ='<%# Eval("anh") %>' />
                       </td>--%>
                       <td>
                           <asp:Image runat="server" ID ="anh" ImageUrl='<%# "~/image/" + Eval("anh") %>' Width="100" />
                       </td>
                   </tr>
                </ItemTemplate>
                    
              
                <FooterTemplate>
                      </table>

                </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [sinhvien]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

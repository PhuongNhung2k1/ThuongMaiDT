<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListStudent.aspx.cs" Inherits="Project.ListStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Danh sách sinh viên </title>
    <style>
        th{
            width:80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 align="center" backgroundcolor="blue">Danh sách sinh viên</h1> 
           <asp:DataList ID="DataList1" runat="server" DataKeyField="masv" DataSourceID="SqlDataSource1" RepeatColumns="5" Width="796px">
            
               <HeaderTemplate>
                     <table align="center" border="1" cellspacing ="0">
                   <tr>
                       <th>Mã sinh viên</th>
                       <th>Họ tên</th>
                       <th>Địa chỉ</th>
                       <th>Điện thoại</th>
                       <th>Mã lớp</th>
                       <th>Ảnh</th>
                   </tr>
               </HeaderTemplate>
               
               <ItemTemplate>
                   <tr>
                  <td>
                   <asp:Label ID="masvLabel" runat="server" Text='<%# Eval("masv") %>' />
                  </td>
                    <td>
                   <asp:Label ID="hotenLabel" runat="server" Text='<%# Eval("hoten") %>' />
                   </td>
                  <td>
                   <asp:Label ID="diachiLabel" runat="server" Text='<%# Eval("diachi") %>' />
                  </td>
                   <td>
                   <asp:Label ID="dienthoaiLabel" runat="server" Text='<%# Eval("dienthoai") %>' />
                   </td>
                 <td>
                   <asp:Label ID="malopLabel" runat="server" Text='<%# Eval("malop") %>' />
                   </td>
                   <td>
                   <asp:Image ID="anh" runat="server" ImageUrl='<%#"~/Image/"+Eval("anh") %>' Width="100" />
                   </td>
                       </tr>
               </ItemTemplate>
                  <FooterTemplate>
                      
                       </table>
                  </FooterTemplate>
                 
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [sinhvien]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

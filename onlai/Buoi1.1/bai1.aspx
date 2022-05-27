<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1.aspx.cs" Inherits="Buoi1._1.bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h2 {
            color:blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" action="bai1_output.aspx">
        <div>
            <h2>Thông tin nhân viên</h2>
            <table>
                <tr>
                    <td><lable>Mã nhân viên</lable></td>
                    <td>
                        <asp:TextBox ID="manv" runat="server"></asp:TextBox>
                    </td>     
                </tr>
                <tr>
                    <td><lable>Họ tên</lable></td>
                    <td>
                        <asp:TextBox ID="hoten" runat="server"></asp:TextBox>
                    </td>     
                </tr>
                <tr>
                    <td><lable>Giới tính </lable></td>
                    <td>
                        <asp:RadioButtonList ID="gioitinh" runat="server">
                            <asp:ListItem Text="Nam" Value="Nam">Nam</asp:ListItem>
                            <asp:ListItem Text="Nữ" Value="Nữ">Nữ</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>     
                </tr>
                <tr>
                    <td><lable>Ngoại Ngữ</lable></td>
                    <td>
                       <asp:CheckBoxList ID="nn" runat="server">
                           <asp:ListItem Text="Anh" Value="Anh">Anh</asp:ListItem>
                            <asp:ListItem Text="phap" Value="phap">Pháp</asp:ListItem>
                            <asp:ListItem Text="nga" Value="Nga">Nga</asp:ListItem>
                       </asp:CheckBoxList>
                    </td>     
                </tr>
                <tr>
                    <td><lable>Bậc lương</lable></td>
                    <td>
                        <asp:TextBox ID="bacluong" runat="server"></asp:TextBox>
                    </td>     
                </tr>
                <tr>
                    <td><lable>Số ngảy lương</lable></td>
                    <td>
                        <asp:TextBox ID="songayluong" runat="server"></asp:TextBox>
                    </td>     
                </tr>
                <tr>
                    <td><lable>Chức vụ</lable></td>
                    <td>
                      <asp:DropDownList ID="chucvu" runat="server">
                          <asp:ListItem Value="Trưởng phòng" Text="Trưởng Phòng"> Trưởng Phòng</asp:ListItem>
                           <asp:ListItem Value="Phó phòng" Text="Phó Phòng"> Phó Phòng</asp:ListItem>
                           <asp:ListItem Value="Nhân viên" Text="Nhân viên"> Nhân viên</asp:ListItem>
                      </asp:DropDownList>
                    </td>     
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="tinhluong" Text="Tính lương" runat="server"/>
                        <asp:Button ID="nhaplai" Text="Nhập lại" runat="server"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

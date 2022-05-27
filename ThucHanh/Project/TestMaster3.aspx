<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="TestMaster3.aspx.cs" Inherits="Project.TestTiep3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
  Students View
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <h2 style="text-align:center">Danh sách sinh viên</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="569px">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" />
             <asp:BoundField DataField="tenlop" HeaderText="Tên lớp" SortExpression="tenlop" />
            <asp:TemplateField> 
                <ItemTemplate>
                    <asp:Image ID="img1" runat="server" ImageUrl='<%#"~/Image/"+ Eval("anh") %>' Height="60px" Width="45px" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField ShowHeader="False" HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" 
                        Text="Delete" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="masv"  
                DataNavigateUrlFormatString="SuaSinhVienV3.aspx?masv={0}" Text="Edit" HeaderText="Edit" /> 
       
        
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" 
            SelectCommand="select masv ,hoten, diachi,dienthoai,s.malop , l.tenlop ,anh from sinhvien s, lophoc l where s.malop = l.malop ">

        </asp:SqlDataSource>
    <br />
         <small ><a href="AddStudentV3.aspx" align="center">Thêm sinh viên</a></small><br /><br />
         <small><a href="SuaSinhVien.aspx" align="center" >Sửa thông tin sinh viên</a></small><br />
        <small > <a href="TestMaster3.aspx" align="center">Xem danh sách sinh viên</a></small>
</asp:Content>

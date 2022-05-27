<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DanhSachSV.aspx.cs" Inherits="OnTap.DanhSachSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <h2> Danh sach sinh vien</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="masv" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="masv" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="dienthoai" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
            <asp:BoundField DataField="tenlop" HeaderText="tenlop" SortExpression="tenlop" />
           <asp:TemplateField HeaderText="Ảnh">
               <ItemTemplate>
                   <asp:Image ID="anh" runat="server" ImageUrl='<%#"~/Image/" + Eval("anh") %>' width="80"/>
               </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField  HeaderText="delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm ('Bạn có chắc xóa k ?')" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="masv" DataNavigateUrlFormatString="SuaSinhVien.aspx?masv={0}" Text="Edit" />
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
        DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" 
        InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" 
        SelectCommand="select masv , hoten, diachi, dienthoai, l.malop, tenlop, anh from sinhvien s, lophoc l where s.malop = l.malop"
        UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
        <DeleteParameters>
            <asp:Parameter Name="masv" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="diachi" Type="String" />
            <asp:Parameter Name="dienthoai" Type="String" />
            <asp:Parameter Name="malop" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="diachi" Type="String" />
            <asp:Parameter Name="dienthoai" Type="String" />
            <asp:Parameter Name="malop" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="masv" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="AddSinhVien.aspx">Thêm sinh viên</a>
</asp:Content>

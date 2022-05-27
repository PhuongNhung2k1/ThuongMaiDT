<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="OntapTMDT.DanhSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="580px" Height="500px" style="margin-right: 0px">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" />        
            <asp:TemplateField HeaderText="Ảnh">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Image/" + Eval("anh") %>' Width="80px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False" HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="masv"  DataNavigateUrlFormatString="SuaSV.aspx?masv={0}" Text="Edit" HeaderText="Edit" /> 
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
    DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv"
    InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)"
    SelectCommand="SELECT * FROM [sinhvien]"
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
</asp:Content>

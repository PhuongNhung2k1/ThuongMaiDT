<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailDs.aspx.cs" Inherits="Lamlai2.DetailDs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="288px" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="masv" DataSourceID="SqlDataSource1">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" />
           <asp:TemplateField HeaderText="Ảnh">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Image/" + Eval("anh") %>' height="150px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
        SelectCommand="SELECT * FROM [sinhvien] where masv = @masv">
        <SelectParameters>
            <asp:QueryStringParameter Name="masv" QueryStringField="masv" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

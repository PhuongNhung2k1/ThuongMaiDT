<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="Project.StudentDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Height="50px" Width="178px">
        <Fields>
            <asp:BoundField DataField="masv" HeaderText="masv" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="dienthoai" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
           
          <asp:TemplateField>
                <ItemTemplate>
                    
                    <asp:Image ID="anh" BorderColor="GreenYellow" runat="server" ImageUrl='<%#"~/Image/"+ Eval("anh") %>' width="100" />
               
                </ItemTemplate>

            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
        SelectCommand="SELECT * FROM [sinhvien] where masv =@masv">

        <SelectParameters>
            <asp:QueryStringParameter Name="masv" QueryStringField="masv" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

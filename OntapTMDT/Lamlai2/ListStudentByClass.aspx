<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListStudentByClass.aspx.cs" Inherits="Lamlai2.ListStudentByClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="608px">
            <Columns>
                <asp:BoundField DataField="masv" HeaderText="masv" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
                <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
                <asp:BoundField DataField="dienthoai" HeaderText="dienthoai" SortExpression="dienthoai" />
                <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
               <asp:TemplateField HeaderText="Anh">
                <ItemTemplate>
                    <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/Image/" + Eval("anh") %>' Width="60"/>
                    <a href="DetailDs.aspx?masv=<%# Eval("masv") %>" class="button">Chi tiết</a>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm ('Ban co chac muon xoa khong ?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
                   <asp:HyperLinkField DataNavigateUrlFormatString="SuaSv.aspx?masv={0}" DataNavigateUrlFields="masv" Text="Edit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
            DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv"
            InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" 
             SelectCommand="SELECT masv, hoten, diachi, dienthoai, s.malop, l.tenlop ,anh from sinhvien s, lophoc l where s.malop = l.malop and s.malop = @malop" 
            UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
            <SelectParameters>
                <asp:QueryStringParameter Name="malop" QueryStringField="malop" Type="Int32" />
            </SelectParameters>
          
        </asp:SqlDataSource>

</asp:Content>

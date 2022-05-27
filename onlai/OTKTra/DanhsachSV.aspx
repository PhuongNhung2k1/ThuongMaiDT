<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DanhsachSV.aspx.cs" Inherits="OTKTra.DanhsachSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
  
    Danh sách sinh viên
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="585px">
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
           <asp:TemplateField HeaderText="Delete">
               <ItemTemplate>
                   <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm ('Bạn có chắc muốn xóa không?')"></asp:LinkButton>
               </ItemTemplate>
           </asp:TemplateField>
           <asp:HyperLinkField DataNavigateUrlFields="masv"  DataNavigateUrlFormatString="SuaSinhVienV3.aspx?malop ={0}" Text="Edit" />
       </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" 
            DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" 
            InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" 
            SelectCommand="SELECT * FROM [sinhvien] where [masv] = @masv"
            UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
            <SelectParameters>
                <asp:QueryStringParameter Name="masv" QueryStringField="masv" Type="Int32" />
            </SelectParameters>
           
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

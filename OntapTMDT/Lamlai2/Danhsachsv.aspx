<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Danhsachsv.aspx.cs" Inherits="Lamlai2.Danhsachsv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="615px">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="Điện Thoại" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" />
            <asp:BoundField DataField="tenlop" HeaderText="Tên lớp" SortExpression="tenlop" />
            <asp:TemplateField HeaderText="Anh">
                <ItemTemplate>
                    <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/Image/" + Eval("anh") %>' Width="80"/>
                    
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm ('Ban co chac muon xoa khong ?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
         
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" 
        DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv"
        InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" 
        SelectCommand="SELECT masv, hoten, diachi, dienthoai, s.malop, l.tenlop ,anh from sinhvien s, lophoc l where s.malop = l.malop" 
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

    <a href="AddStudent.aspx">Thêm sinh viên</a>
</asp:Content>

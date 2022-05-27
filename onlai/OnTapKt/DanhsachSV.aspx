<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DanhsachSV.aspx.cs" Inherits="OnTapKt.DanhsachSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sach sinh vien
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
 
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="496px">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="masv" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="dienthoai" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
            <asp:BoundField DataField="tenlop" HeaderText="tenlop" SortExpression="tenlop" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/Image/" + Eval("anh") %>' Width="45" Height="60" />
                </ItemTemplate>
            </asp:TemplateField>
       
            <asp:TemplateField ShowHeader="true" HeaderText="Xóa"  ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50">

                        <ItemTemplate>
                            &nbsp;<asp:LinkButton  ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn xóa không?')"></asp:LinkButton>
                        </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField ShowHeader="true" HeaderText="Sửa"  ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50">

                        <ItemTemplate>
                            &nbsp;<asp:LinkButton  ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
            </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" 
            DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @original_masv AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([dienthoai] = @original_dienthoai) OR ([dienthoai] IS NULL AND @original_dienthoai IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([anh] = @original_anh) OR ([anh] IS NULL AND @original_anh IS NULL))" 
            InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" 
            OldValuesParameterFormatString="original_{0}"
             SelectCommand="select masv ,hoten, diachi,dienthoai, anh,s.malop , l.tenlop from sinhvien s, lophoc l where s.malop = l.malop "         
            UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @original_masv AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([dienthoai] = @original_dienthoai) OR ([dienthoai] IS NULL AND @original_dienthoai IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([anh] = @original_anh) OR ([anh] IS NULL AND @original_anh IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_masv" Type="Int32" />
                <asp:Parameter Name="original_hoten" Type="String" />
                <asp:Parameter Name="original_diachi" Type="String" />
                <asp:Parameter Name="original_dienthoai" Type="String" />
                <asp:Parameter Name="original_malop" Type="Int32" />
                <asp:Parameter Name="original_anh" Type="String" />
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
                <asp:Parameter Name="original_masv" Type="Int32" />
                <asp:Parameter Name="original_hoten" Type="String" />
                <asp:Parameter Name="original_diachi" Type="String" />
                <asp:Parameter Name="original_dienthoai" Type="String" />
                <asp:Parameter Name="original_malop" Type="Int32" />
                <asp:Parameter Name="original_anh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
   <a href="Insert.aspx">Thêm sinh viên</a>
</asp:Content>

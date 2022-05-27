<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="Proj_Buoi6.DanhSach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh sách sinh viên</h2>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="masv" DataSourceID="SqlDataSource2" 
                GridLines="Vertical" Width="768px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="masv" HeaderText="Mã Sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" ItemStyle-Width="180" />
                    <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi"  ItemStyle-Width="130"/>
                    <asp:BoundField DataField="dienthoai" HeaderText="Điện Thoại" SortExpression="dienthoai" />
                   
                    <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="tenlop" HeaderText="Tên lớp" SortExpression="malop" ItemStyle-HorizontalAlign="Center" />
                     <asp:TemplateField>
                       <ItemTemplate>
                           <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/Image/" + Eval("anh") %>' Height="60" Width="50"/>
                       </ItemTemplate>
                      </asp:TemplateField>
                    <asp:TemplateField ShowHeader="true" HeaderText="Xóa"  ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50">

                        <ItemTemplate>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn xóa không?')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="masv" DataNavigateUrlFormatString="SuaSinhvien.aspx?masv={0}" Text="Sửa"  HeaderText="Sửa" ItemStyle-Width="80"  ItemStyle-HorizontalAlign="Center"/>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @original_masv AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([dienthoai] = @original_dienthoai) OR ([dienthoai] IS NULL AND @original_dienthoai IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([anh] = @original_anh) OR ([anh] IS NULL AND @original_anh IS NULL))" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @original_masv AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([dienthoai] = @original_dienthoai) OR ([dienthoai] IS NULL AND @original_dienthoai IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([anh] = @original_anh) OR ([anh] IS NULL AND @original_anh IS NULL))">
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
                DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @original_masv AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([dienthoai] = @original_dienthoai) OR ([dienthoai] IS NULL AND @original_dienthoai IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([anh] = @original_anh) OR ([anh] IS NULL AND @original_anh IS NULL))" 
                InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="select masv ,hoten, diachi,dienthoai, anh,s.malop , l.tenlop from sinhvien s, lophoc l where s.malop = l.malop"
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
            <br />
            <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/ThemSinhvien.aspx">Thêm sinh viên</asp:HyperLink>
        </div>
    </form>
</body>
</html>

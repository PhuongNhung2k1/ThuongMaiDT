<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSinhvien.aspx.cs" Inherits="Proj_Buoi6.ThemSinhvien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm sinh viên</title>
    <style>
        label{
            width:120px;
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Thêm một sinh viên</h2>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3CB371"
                BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="350px" DefaultMode="Insert" OnItemInserted="InsertedCmd" OnItemInserting="InsertingItem">
              
                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    <p>
                        <label>Họ tên :</label>
                        <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                    </p>
                    <p>
                        <label>Địa chỉ:</label>
                        <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                    </p>
                    <p>
                        <label> Điện thoại:</label>
                        <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
                    </p>
                    <p>
                        <label> Mã lớp:</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource12" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                    </p>
                    <p>
                        <label>Ảnh:</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </p>
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    masv:
                    <asp:Label ID="masvLabel" runat="server" Text='<%# Eval("masv") %>' />
                    <br />
                    hoten:
                    <asp:Label ID="hotenLabel" runat="server" Text='<%# Bind("hoten") %>' />
                    <br />
                    diachi:
                    <asp:Label ID="diachiLabel" runat="server" Text='<%# Bind("diachi") %>' />
                    <br />
                    dienthoai:
                    <asp:Label ID="dienthoaiLabel" runat="server" Text='<%# Bind("dienthoai") %>' />
                    <br />
                    malop:
                    <asp:Label ID="malopLabel" runat="server" Text='<%# Bind("malop") %>' />
                    <br />
                    anh:
                    <asp:Label ID="anhLabel" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString2 %>"
               
                InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)"
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [sinhvien]" >
               
                <InsertParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="dienthoai" Type="String" />
                    <asp:Parameter Name="malop" Type="Int32" />
                    <asp:Parameter Name="anh" Type="String" />
                </InsertParameters>
                
            </asp:SqlDataSource>
            <br />
            <asp:Label  ID="errorMsg" ForeColor="Red" runat="server"></asp:Label><br />
            <asp:HyperLink ID="hyperlink" runat="server" NavigateUrl="~/DanhSach.aspx">Xem danh sách</asp:HyperLink>
           
        </div>
    </form>
</body>
</html>

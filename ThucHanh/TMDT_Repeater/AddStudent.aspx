<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Repeater.AddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Thêm sinh viên</h2>

        <asp:FormView ID="FormView1" DefaultMode="Insert" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" OnItemInserting="ItemInsertingEvent">
            <EditItemTemplate>
                masv:
                <asp:Label ID="masvLabel1" runat="server" Text='<%# Eval("masv") %>' />
                <br />
                Họ tên:
                <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                <br />
                Địa chỉ:
                <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                <br />
                Điện thoại:
                <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
                <br />
                Mã lớp:
                <asp:TextBox ID="malopTextBox" runat="server" Text='<%# Bind("malop") %>' />
                <br />
                Anh :
                <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Họ tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                <br />
                Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                <br />
                Điện thoại:&nbsp;
                <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
                <br />
                Mã lớp:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="malopTextBox" runat="server" Text='<%# Bind("malop") %>' />
                <br />
                Anh :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                <br />
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
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @original_masv AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([dienthoai] = @original_dienthoai) OR ([dienthoai] IS NULL AND @original_dienthoai IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([anh] = @original_anh) OR ([anh] IS NULL AND @original_anh IS NULL))" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @original_masv AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([dienthoai] = @original_dienthoai) OR ([dienthoai] IS NULL AND @original_dienthoai IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([anh] = @original_anh) OR ([anh] IS NULL AND @original_anh IS NULL))">
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
                 </div>
    </form>
</body>
</html>

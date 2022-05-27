<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Lamlai2.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <a href="Danhsachsv.aspx">Xem danh sách </a>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">
       
        <InsertItemTemplate>
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
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2"
                DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
                SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
            <br />
            Ảnh:
            <asp:FileUpload ID="FileUpload1" runat="server" />
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

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
        SelectCommand="SELECT * FROM [sinhvien]"></asp:SqlDataSource>
</asp:Content>

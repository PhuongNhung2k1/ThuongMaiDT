<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="PhamThiPhuongNhung_2019602987.DanhSachBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="kiemtra1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trackid" DataSourceID="SqlDataSource1" Width="642px">
            <Columns>
                <asp:BoundField DataField="trackid" HeaderText="trackid" InsertVisible="False" ReadOnly="True" SortExpression="trackid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="artist" HeaderText="artist" SortExpression="artist" />
                <asp:BoundField DataField="composer" HeaderText="composer" SortExpression="composer" />
                <asp:BoundField DataField="bytes" HeaderText="bytes" SortExpression="bytes" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="genreid" HeaderText="genreid" SortExpression="genreid" />
                <asp:TemplateField ShowHeader="False" HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                        CommandName="Delete" Text="Delete" 
                        OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>"
            DeleteCommand="DELETE FROM [Tracks] WHERE [trackid] = @trackid" 
            SelectCommand="SELECT * FROM [Tracks] " 
            UpdateCommand="UPDATE [Tracks] SET [name] = @name, [artist] = @artist, [composer] = @composer, [bytes] = @bytes, [price] = @price, [phone] = @phone, [genreid] = @genreid WHERE [trackid] = @trackid">
            <DeleteParameters>
                <asp:Parameter Name="trackid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="artist" Type="String" />
                <asp:Parameter Name="composer" Type="String" />
                <asp:Parameter Name="bytes" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="genreid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="artist" Type="String" />
                <asp:Parameter Name="composer" Type="String" />
                <asp:Parameter Name="bytes" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="genreid" Type="Int32" />
                <asp:Parameter Name="trackid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <a href="Add.aspx">Thêm track</a>
</asp:Content>

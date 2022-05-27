<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListPro.aspx.cs" Inherits="Banhang.ListPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    ListProduct
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    
        <h1>Danh sách sản phẩm</h1>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            Pid:
            <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
            <br />
            Categoryid:
            <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Eval("Categoryid") %>' />
            <br />
            <b>
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
            <br /></b>
            <a href="ProductDetails.aspx?Pid=<%# Eval("Pid") %> &name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %>">
            <asp:Image ID="anh" runat="server" ImageUrl='<%#"~/Images/"+Eval("ImagePath")%>' Width="150" />
            <br />
            </a>
            Price:
            <b>
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                </b>
            <br />
            <a href="ShoppingCart.aspx?Pid=<%# Eval("Pid") %>&name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %> &action=add" class="button">Mua hàng</a>
<br />
        </ItemTemplate>

    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_banhangConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    
</asp:Content>

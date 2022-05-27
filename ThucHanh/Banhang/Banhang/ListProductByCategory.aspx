<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListProductByCategory.aspx.cs" Inherits="Banhang.ListProductByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    ListProductByCategory
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style type="text/css">
        tr,td{
            border:none;
        }
        table{
            border:none;
        }
    </style>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="300px" Font-Bold="true" Font-Size="20" DataSourceID="SqlDataSource1" AutoGenerateRows="false">
        <Fields>
            <asp:BoundField DataField="CategoryName" SortExpression="CategoryName" />
        </Fields>

    </asp:DetailsView>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            Pid:
            <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
            <br />
            Categoryid:
            <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Eval("Categoryid") %>' />
            <br />
            <b>
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' /></b>
            <br />
            <a href="ProductDetails.aspx?Pid=<%# Eval("Pid") %>" &name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %>>
            <asp:Image ID="anh" runat="server" ImageUrl='<%#"~/Images/"+Eval("ImagePath")%>' Width="150" />
            <br />
            </a>
            Price:
            <b>
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' /></b>
            <br />
            
            <a href="ShoppingCart.aspx?Pid=<%# Eval("Pid") %> &name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %> &action=add" class="button">Mua hàng</a>
<br />
        </ItemTemplate>

    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_banhangConnectionString %>" 
            SelectCommand="select Pid, ProdName, Price, p.Categoryid, CategoryName, ImagePath
                            from Product p, Category c
                            where p.Categoryid = c.Categoryid and p.Categoryid=@Categoryid">
            <SelectParameters>
            <asp:QueryStringParameter Name="Categoryid" Type="Int16" QueryStringField="Categoryid" />
        </SelectParameters>
        </asp:SqlDataSource>
    
</asp:Content>

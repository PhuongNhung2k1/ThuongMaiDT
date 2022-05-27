<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListProByCate.aspx.cs" Inherits="OnThi_LL.ListProByCate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="494px">
        <ItemTemplate>
            Pid:
            <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
            <br />
            Categoryid:
            <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Eval("Categoryid") %>' />
            <br />
            ProdName:
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
            <br />
            MetaTitle:
            <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Eval("MetaTitle") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            ImagePath:
           <asp:Image ID="ImagePathLabel" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="120px"/>
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <a href='Details.aspx?pid=<%# Eval("Pid") %>&name =<%# Eval("ProdName") %>&image=<%# Eval("ImagePath")%>&price=<%# Eval("Price") %>' class="button">Chi tiết</a>
            <a href="ShoppingCart.aspx?Pid=<%# Eval("Pid") %>&name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %> &action=add" class="button">Mua hàng</a>

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>"
        DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid" 
        InsertCommand="INSERT INTO [Product] ([Categoryid], [ProdName], [MetaTitle], [Description], [ImagePath], [Price]) VALUES (@Categoryid, @ProdName, @MetaTitle, @Description, @ImagePath, @Price)" 
        SelectCommand="SELECT Pid , p.Categoryid, prodName, p.Metatitle, Description, ImagePath, Price from Product p, Category c where c.Categoryid = p.Categoryid and p.Categoryid = @Categoryid"
        UpdateCommand="UPDATE [Product] SET [Categoryid] = @Categoryid, [ProdName] = @ProdName, [MetaTitle] = @MetaTitle, [Description] = @Description, [ImagePath] = @ImagePath, [Price] = @Price WHERE [Pid] = @Pid">
        <SelectParameters>
            <asp:QueryStringParameter Name="Categoryid" Type="Int32" QueryStringField="Categoryid" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="Pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Categoryid" Type="Int32" />
            <asp:Parameter Name="ProdName" Type="String" />
            <asp:Parameter Name="MetaTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Categoryid" Type="Int32" />
            <asp:Parameter Name="ProdName" Type="String" />
            <asp:Parameter Name="MetaTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

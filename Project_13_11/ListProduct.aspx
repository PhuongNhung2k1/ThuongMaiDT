<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="Project_13_11.ListProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
 
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="663px">
        <ItemTemplate>
            Pid:
            <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
            <br />
            Categoryid:
            <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Eval("Categoryid") %>' />
            <br />
            ProdName:
            <asp:Label ID="ProdNameLabel" Font-Bold="true" runat="server" Text='<%# Eval("ProdName") %>' />
            <br />
        <%--    MetaTitle:
            <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Eval("MetaTitle") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />  --%>        
         <%--   ImagePath:--%>
          <a href='Details.aspx?Pid=<%# Eval("Pid") %> &name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %>'>
            <asp:Image ID="anh" runat="server" ImageUrl='<%#Eval("ImagePath")%>' Width="150" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>"
        SelectCommand="SELECT * FROM [Product]"
        DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid" 
        InsertCommand="INSERT INTO [Product] ([Categoryid], [ProdName], [MetaTitle], [Description], [ImagePath], [Price]) VALUES (@Categoryid, @ProdName, @MetaTitle, @Description, @ImagePath, @Price)"
        UpdateCommand="UPDATE [Product] SET [Categoryid] = @Categoryid, [ProdName] = @ProdName, [MetaTitle] = @MetaTitle, [Description] = @Description, [ImagePath] = @ImagePath, [Price] = @Price WHERE [Pid] = @Pid">
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

    <a href="Addproduct.aspx">Thêm sản phẩm</a>
</asp:Content>

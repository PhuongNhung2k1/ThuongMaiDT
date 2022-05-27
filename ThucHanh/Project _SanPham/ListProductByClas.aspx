<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListProductByClas.aspx.cs" Inherits="Project__SanPham.ListProductByClas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <h2> Danh sách các sản phẩm theo danh mục </h2>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="537px">
        <ItemTemplate>
           
            ProdName:
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
            <br />
            MetaTitle:
            <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Eval("MetaTitle") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
           
            <asp:Image ID="ImagePathLabel" runat="server"  ImageUrl='<%# Eval("ImagePath") %>' Width="120px"/>
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>"
        DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid" 
        InsertCommand="INSERT INTO [Product] ([Categoryid], [ProdName], [MetaTitle], [Description], [ImagePath], [Price]) VALUES (@Categoryid, @ProdName, @MetaTitle, @Description, @ImagePath, @Price)"
        SelectCommand="SELECT Pid, p.Categoryid,ProdName,p.MetaTitle,Description, ImagePath, Price from Product p , Category c where p.Categoryid = c.Categoryid and p.Categoryid = @Categoryid"
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

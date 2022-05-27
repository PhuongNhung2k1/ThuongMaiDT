<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="OTKT2_TMDT.ListProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
  
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Pid" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3" Width="667px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
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
          
            <asp:Image ID="ImagePathLabel" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="100px" />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
          
                <a href="Detail.aspx" class="button">Chi tiết</a>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"  OnClientClick="return confirm ('Bạn có chắc muốn xóa không ?')" class="button"> delete</asp:LinkButton>
                
                </ItemTemplate>
          <asp:HyperLink ID="sua" runat="server" NavigateUrl="~/Edit.aspx?Pid={0}" Text="Edit">Edit</asp:HyperLink>
        </ItemTemplate>
        
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid" InsertCommand="INSERT INTO [Product] ([Categoryid], [ProdName], [MetaTitle], [Description], [ImagePath], [Price]) VALUES (@Categoryid, @ProdName, @MetaTitle, @Description, @ImagePath, @Price)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Categoryid] = @Categoryid, [ProdName] = @ProdName, [MetaTitle] = @MetaTitle, [Description] = @Description, [ImagePath] = @ImagePath, [Price] = @Price WHERE [Pid] = @Pid">
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
    <br />
    <a href="AddProduct.aspx">Thêm sản phẩm</a>
   
</asp:Content>

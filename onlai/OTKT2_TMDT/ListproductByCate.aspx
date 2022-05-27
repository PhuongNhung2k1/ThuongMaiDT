<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListproductByCate.aspx.cs" Inherits="OTKT2_TMDT.ListproductByCate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
     <style>
         image{
             border-radius:20px;
             margin:50px;
         }
     </style>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
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
           <%-- MetaTitle:
            <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Eval("MetaTitle") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />--%>
            <br />
             <asp:Image ID="ImagePathLabel" runat="server" ImageUrl='<%#Eval("ImagePath") %>' Width="150px" />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
        <br /><a href="Detail.aspx" class="button">Chi tiết</a>
           
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Ban co chac muon xoa khong?")'></asp:LinkButton>
                   
        </ItemTemplate>
         
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>"
        DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid"
        InsertCommand="INSERT INTO [Product] ([Categoryid], [ProdName], [MetaTitle], [Description], [ImagePath], [Price]) VALUES (@Categoryid, @ProdName, @MetaTitle, @Description, @ImagePath, @Price)"
        SelectCommand="SELECT Pid, p.Categoryid, CategoryName,ProdName, ImagePath, Price from Category c, Product p where  c.Categoryid = p.Categoryid and p.Categoryid = @Categoryid" 
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
     
    <br />
</asp:Content>

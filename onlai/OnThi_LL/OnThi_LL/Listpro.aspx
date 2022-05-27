<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Listpro.aspx.cs" Inherits="OnThi_LL.Listpro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
           
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="anh" ImageUrl='<%# Eval("ImagePath") %>' Width="120px" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm ("Ban co chac muon xoa khong")'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="Pid" DataNavigateUrlFormatString='Edit.aspx?Pid={0}' Text="Edit" HeaderText="edit" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1"
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" 
        DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid" 
        InsertCommand="INSERT INTO [Product] ([Categoryid], [ProdName], [MetaTitle], [Description], [ImagePath], [Price]) VALUES (@Categoryid, @ProdName, @MetaTitle, @Description, @ImagePath, @Price)" 
        SelectCommand="SELECT Pid , p.Categoryid, prodName, p.Metatitle, Description, ImagePath, Price from Product p, Category c where c.Categoryid = p.Categoryid"
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
    <a href="Add.aspx">Theem sp</a>
</asp:Content>

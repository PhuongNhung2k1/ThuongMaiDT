<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Project_13_11.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">


            <asp:DetailsView ID="DetailsView1" runat="server" Height="106px" Width="242px" AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:TemplateField HeaderText ="ImagePath">
                        <ItemTemplate>
                            <asp:Image ID="anh" runat="server" ImageUrl='<%#"~/Images/" + Eval("ImagePath") %>'  Width="150" />
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />

        </Fields>

    </asp:DetailsView>
    <br />
    <a href="ShoppingCart.aspx?Pid=<%# Eval("Pid") %>&name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %> &action=add" class="button">Mua hàng</a>
    <br />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>"
            SelectCommand="SELECT * FROM [Product] where [Pid] = @Pid">
            <SelectParameters>
                <asp:QueryStringParameter Name="Pid" Type="Int16" QueryStringField="Pid" />
            </SelectParameters>
        </asp:SqlDataSource>

     <br />
<%--      <a href="ShoppingCart.aspx?Pid=<%# Eval("pid") %>&name =<%# Eval("name") %>&image=<%# Eval("image")%>&price=<%# Eval("price") %>&action = add" class="button" >Mua hàng</a>--%>
        

</asp:Content>

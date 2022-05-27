<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="OTKT2_TMDT.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="442px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Pid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
           <asp:TemplateField>
               <ItemTemplate>
                    <asp:Image ID="ImagePathLabel" runat="server" ImageUrl='<%#"~/images/" +  Eval("ImagePath") %>' Width="150px" />
               </ItemTemplate>
           </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>

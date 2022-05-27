<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detailview.aspx.cs" Inherits="Project__SanPham.Detailview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:TemplateField>
                <ItemTemplate>
                        <asp:Image ID="ImagePath" runat="server" ImageUrl='<%# "~/Images/" + Eval("ImagePath") %>' Width="120px" />  
                       
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Fields>
    </asp:DetailsView>

  

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>"
        SelectCommand="select Pid, Categoryid, ProdName, MetaTitle, Description, ImagePath, Price from Product where Pid = @Pid">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pid" QueryStringField="Pid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

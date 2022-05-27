<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListtProductByClass.aspx.cs" Inherits="Project_13_11.ListtProductByClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <%--<asp:DetailsView ID="DetailsView1" DataSourceID="SqlDataSource1" runat="server" 
        Height="30px" Width="318px" AutoGenerateRows="false">
        <Fields>
            <asp:BoundField DataField="CategoryName" HeaderText="Danh mục" />
        </Fields>
    </asp:DetailsView>--%>
   
    <br /><br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="677px">
            <ItemTemplate>
                Pid:
                <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
                <br />
               <%-- Categoryid:
                <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Eval("Categoryid") %>' />
                <br />--%>
                ProdName:
                <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
             <%--   <br />
                MetaTitle:
                <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Eval("MetaTitle") %>' />
                <br />--%>
                <br />
            <%--    Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />         --%>

                <a href='Details.aspx?pid=<%# Eval("Pid") %>&name =<%# Eval("ProdName") %>&image=<%# Eval("ImagePath")%>&price=<%# Eval("Price") %>'>

                    
<%--                         <asp:Image ID="img" runat="server" ImageUrl='<%#"~/Images/"+ Eval("ImagePath") %>' Width="150px" />--%>
                         <asp:Image ID="img" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="150px" />
                </a>
                <a href="ShoppingCart.aspx?Pid=<%# Eval("Pid") %>&name=<%# Eval("Prodname") %> &image=<%# Eval("ImagePath") %> &price=<%# Eval("Price") %> &action=add" class="button">Mua hàng</a>
                       <%--  <a href='Details.aspx?Pid=<%#Eval("Pid") %>' class="button">Chi Tiết</a>--%>
                <br /><br />
                 Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>'  />
                <br />
           <br /><br /> </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" 
           SelectCommand="select Pid, ProdName, Price, p.Categoryid, CategoryName, ImagePath
                            from Product p, Category c
                            where p.Categoryid = c.Categoryid and p.Categoryid=@Categoryid">
            <SelectParameters>
                <asp:QueryStringParameter Name="Categoryid" Type="Int16" QueryStringField="Categoryid" />
            </SelectParameters>
        </asp:SqlDataSource>
  
</asp:Content>

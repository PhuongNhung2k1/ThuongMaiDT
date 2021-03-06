<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="PhamThiPhuongNhung_2019602987.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="kiemtra1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
  
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="trackid" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">
            <EditItemTemplate>
                trackid:
                <asp:Label ID="trackidLabel1" runat="server" Text='<%# Eval("trackid") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                artist:
                <asp:TextBox ID="artistTextBox" runat="server" Text='<%# Bind("artist") %>' />
                <br />
                composer:
                <asp:TextBox ID="composerTextBox" runat="server" Text='<%# Bind("composer") %>' />
                <br />
                bytes:
                <asp:TextBox ID="bytesTextBox" runat="server" Text='<%# Bind("bytes") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                genreid:
                <asp:TextBox ID="genreidTextBox" runat="server" Text='<%# Bind("genreid") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                artist:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="artistTextBox" runat="server" Text='<%# Bind("artist") %>' />
                <br />
                composer :&nbsp;
                <asp:TextBox ID="composerTextBox" runat="server" Text='<%# Bind("composer") %>' />
                <br />
                bytes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="bytesTextBox" runat="server" Text='<%# Bind("bytes") %>' />
                <br />
                price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                genreid:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="genreidTextBox" runat="server" Text='<%# Bind("genreid") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True"
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                trackid:
                <asp:Label ID="trackidLabel" runat="server" Text='<%# Eval("trackid") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                <br />
                artist:
                <asp:Label ID="artistLabel" runat="server" Text='<%# Bind("artist") %>' />
                <br />
                composer:
                <asp:Label ID="composerLabel" runat="server" Text='<%# Bind("composer") %>' />
                <br />
                bytes:
                <asp:Label ID="bytesLabel" runat="server" Text='<%# Bind("bytes") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                genreid:
                <asp:Label ID="genreidLabel" runat="server" Text='<%# Bind("genreid") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>" 
            DeleteCommand="DELETE FROM [Tracks] WHERE [trackid] = @trackid"
            InsertCommand="INSERT INTO [Tracks] ([name], [artist], [composer], [bytes], [price], [phone], [genreid]) VALUES (@name, @artist, @composer, @bytes, @price, @phone, @genreid)" 
            SelectCommand="SELECT * FROM [Tracks]" 
            UpdateCommand="UPDATE [Tracks] SET [name] = @name, [artist] = @artist, [composer] = @composer, [bytes] = @bytes, [price] = @price, [phone] = @phone, [genreid] = @genreid WHERE [trackid] = @trackid">
            <DeleteParameters>
                <asp:Parameter Name="trackid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="artist" Type="String" />
                <asp:Parameter Name="composer" Type="String" />
                <asp:Parameter Name="bytes" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="genreid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="artist" Type="String" />
                <asp:Parameter Name="composer" Type="String" />
                <asp:Parameter Name="bytes" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="genreid" Type="Int32" />
                <asp:Parameter Name="trackid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <a href="List.aspx">Xem danh sách</a>
</asp:Content>

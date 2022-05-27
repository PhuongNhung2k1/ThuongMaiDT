<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Ot_thi2.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="eid" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">
        <EditItemTemplate>
            eid:
            <asp:Label ID="eidLabel1" runat="server" Text='<%# Eval("eid") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            age:
            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
            <br />
            addr:
            <asp:TextBox ID="addrTextBox" runat="server" Text='<%# Bind("addr") %>' />
            <br />
            salary:
            <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' />
            <br />
            image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            deptid:
            <asp:TextBox ID="deptidTextBox" runat="server" Text='<%# Bind("deptid") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
            <br />
            Address:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="addrTextBox" runat="server" Text='<%# Bind("addr") %>' />
            <br />
            Salary:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="salaryTextBox" runat="server" Height="16px" Text='<%# Bind("salary") %>' />
            <br />
            Image:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            DeptId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="deptname" DataValueField="deptid" SelectedValue='<%# Bind("deptid") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>" SelectCommand="SELECT * FROM [tblDept]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            eid:
            <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            age:
            <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
            <br />
            addr:
            <asp:Label ID="addrLabel" runat="server" Text='<%# Bind("addr") %>' />
            <br />
            salary:
            <asp:Label ID="salaryLabel" runat="server" Text='<%# Bind("salary") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Bind("image") %>' />
            <br />
            deptid:
            <asp:Label ID="deptidLabel" runat="server" Text='<%# Bind("deptid") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>" DeleteCommand="DELETE FROM [tblEmployee] WHERE [eid] = @eid" InsertCommand="INSERT INTO [tblEmployee] ([name], [age], [addr], [salary], [image], [deptid]) VALUES (@name, @age, @addr, @salary, @image, @deptid)" SelectCommand="SELECT * FROM [tblEmployee]" UpdateCommand="UPDATE [tblEmployee] SET [name] = @name, [age] = @age, [addr] = @addr, [salary] = @salary, [image] = @image, [deptid] = @deptid WHERE [eid] = @eid">
        <DeleteParameters>
            <asp:Parameter Name="eid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="addr" Type="String" />
            <asp:Parameter Name="salary" Type="Int32" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="deptid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="addr" Type="String" />
            <asp:Parameter Name="salary" Type="Int32" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="deptid" Type="Int32" />
            <asp:Parameter Name="eid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="DSNV.aspx">Xem danh sách</a>
</asp:Content>

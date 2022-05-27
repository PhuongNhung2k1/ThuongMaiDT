<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListByDepartment.aspx.cs" Inherits="OT_Thi_TMDT.ListByDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h2> Danh sách nhân viên theo phòng ban</h2>
    <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="eid" DataSourceID="SqlDataSource1" ForeColor="Black" RepeatColumns="3" Width="555px">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            
            Name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            Age:
            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
            <br />
            Address:
            <asp:Label ID="addrLabel" runat="server" Text='<%# Eval("addr") %>' />
            <br />
            Salary:
            <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
            <br />
         
            <asp:Image ID="imageLabel" runat="server"  ImageUrl='<%# Eval("image") %>' Width="150px" />
            <br />
        
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>"
    DeleteCommand="DELETE FROM [tblEmployee] WHERE [eid] = @eid"
    InsertCommand="INSERT INTO [tblEmployee] ([name], [age], [addr], [salary], [image], [deptid]) VALUES (@name, @age, @addr, @salary, @image, @deptid)" 
    SelectCommand="SELECT eid, name, age, addr, salary,image, d.deptid, deptname from tblEmployee e , tblDept d where e.deptid = d.deptid and d.deptid = @deptid"
    UpdateCommand="UPDATE [tblEmployee] SET [name] = @name, [age] = @age, [addr] = @addr, [salary] = @salary, [image] = @image, [deptid] = @deptid WHERE [eid] = @eid">
      <SelectParameters>
           <asp:QueryStringParameter Name="deptid" QueryStringField="deptid" Type="Int32" />
       </SelectParameters>
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
</asp:Content>

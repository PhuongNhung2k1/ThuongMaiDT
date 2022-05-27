<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="OT_Thi_TMDT.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1" Width="757px">
        <Columns>
            <asp:BoundField DataField="eid" HeaderText="eid" InsertVisible="False" ReadOnly="True" SortExpression="eid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="addr" HeaderText="addr" SortExpression="addr" />
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
            <asp:TemplateField HeaderText="Anh">
                <ItemTemplate>
                    <asp:Image ID="anh" runat="server" ImageUrl='<%# Eval("image") %>' Width="120px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
            <asp:BoundField DataField="deptname" HeaderText="deptname" SortExpression="deptname" />
            <asp:TemplateField ShowHeader="False" HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm ("Ban co chac muon xoa khong?")' ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField HeaderText="Edit" Text="Edit" DataNavigateUrlFields="eid" DataNavigateUrlFormatString="Edit.aspx?eid={0}" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>"
        DeleteCommand="DELETE FROM [tblEmployee] WHERE [eid] = @eid"
        InsertCommand="INSERT INTO [tblEmployee] ([name], [age], [addr], [salary], [image], [deptid]) VALUES (@name, @age, @addr, @salary, @image, @deptid)"
        SelectCommand="SELECT eid, name, age, addr, salary,image, d.deptid, deptname from tblEmployee e , tblDept d where e.deptid = d.deptid" 
        UpdateCommand="UPDATE [tblEmployee] SET [name] = @name, [age] = @age, [addr] = @addr, [salary] = @salary, [image] = @image, [deptid] = @deptid WHERE [eid] = @eid">
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
      <a href="Add.aspx">Thêm nhân viên</a>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ListStudentByClass.aspx.cs" Inherits="Project.ListStudentByClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Xem danh sách sinh viên theo lớp 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
   
    
   <asp:GridView runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="masv" DataSourceID="SqlDataSource1" style="margin-top: 1px" Width="600px">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="masv" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="dienthoai" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
            <asp:BoundField DataField="tenlop" HeaderText="tenlop" SortExpression="tenlop" />
        
             <asp:TemplateField>
                <ItemTemplate>
                    
                    <asp:Image ID="anh" BorderColor="GreenYellow" runat="server" ImageUrl='<%#"~/Image/"+ Eval("anh") %>' Height="60px" Width="45px" />
                 <a href="StudentDetail.aspx?masv=<%# Eval("masv") %>" class="button"> Chi tiet</a>
                </ItemTemplate>

            </asp:TemplateField>
           
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" 
        SelectCommand="select masv ,hoten, diachi,dienthoai,s.malop ,l.tenlop, anh from sinhvien s, lophoc l where s.malop = l.malop and s.malop = @malop">
        <SelectParameters>
            <asp:QueryStringParameter Name="malop" Type="Int16" QueryStringField="malop" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

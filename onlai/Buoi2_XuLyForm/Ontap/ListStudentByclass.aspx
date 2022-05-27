﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListStudentByclass.aspx.cs" Inherits="Ontap.ListStudentByclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sách sinh viên
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="583px">
                <Columns>
                    <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
                    <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
                    <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
                    <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" SortExpression="dienthoai" />
                    <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" />
                    <asp:BoundField DataField="tenlop" HeaderText="Tên lớp" SortExpression="tenlop" />
                    
                    <asp:TemplateField HeaderText="Ảnh">
                        <ItemTemplate >
                            <asp:Image runat="server" ImageUrl='<%# "~/Image/" + Eval("anh") %>' Width="45" Height="60"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="true" HeaderText="Xóa" >
                        <ItemTemplate>
                            <asp:LinkButton runat="server" CausesValidation="false" CommandName="delete"  Text="Xóa" OnClientClick='return confirm ("Bạn có chắc muốn xóa ko?" )'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:HyperLinkField DataNavigateUrlFields="masv" DataNavigateUrlFormatString="SuaSinhvienV3.aspx?masv={0}" Text="Sửa"  HeaderText="Sửa" ItemStyle-Width="80"  ItemStyle-HorizontalAlign="Center"/>
                
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>"
                SelectCommand="select masv ,hoten, diachi,dienthoai, anh,s.malop , l.tenlop from sinhvien s, lophoc l where s.malop = l.malop">
                <SelectParameters>
                    <asp:QueryStringParameter Name="malop" Type="Int16" QueryStringField="malop" />
                </SelectParameters>
            </asp:SqlDataSource>
      
</asp:Content>

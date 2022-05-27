<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Bai1.student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label {
            width: 120px;
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Student Registeration Form</h2>
            <p>
                <label>Name</label>
                <asp:TextBox ID="name" runat="server"/>
                <asp:RequiredFieldValidator runat="server"
                  ControlToValidate ="name"
                 ErrorMessage="Bạn Phải  nhập name"
                  ForeColor="Red" Display="Dynamic"/>

                 <asp:RegularExpressionValidator ID="vname2"   
                  ControlToValidate ="name"
                  runat="server"
                  ValidationExpression="[a-zA-Z][a-zA-Z0-9 ]+"
                  ErrorMessage="Bạn Phải  nhập name là các kí tự a-z, 0-9 không được bắt đầu bằng chữ số"
                  ForeColor="Red" Display="Dynamic"/>
            </p>
            <p>
                <label>Age</label>
                <asp:TextBox ID="age" runat="server"/>
                <asp:RangeValidator runat="server" ControlToValidate="age" ID="vage"
                   Type="Double" MinimumValue="18 " MaximumValue="30"
                    ErrorMessage="Bạn phải nhập tuổi từ 18 đến 30"
                    ForeColor="Red" Display="Dynamic"/>
            </p>
            <p>
                <label>Username</label>
                <asp:TextBox ID="user" runat="server"/>
                <asp:RegularExpressionValidator runat="server" ID="vuser" ControlToValidate="user"
                 ValidationExpression="[a-zA-Z][a-zA-Z0-z]{4,50}"
                  ErrorMessage="Bạn phải nhập user name tối thiểu 5 kí tự"
                 ForeColor="Red" Display="Dynamic"/>

            </p>
            <p>
                <label>Password </label>
                <asp:TextBox ID="pass1" runat="server" TextMode="Password"/>
                <asp:RegularExpressionValidator runat="server" ID="vpass1" ControlToValidate="pass1"
                 ControlToCompare="pass1"
                 ValidationExpression=".{6,}"
                  ErrorMessage="Bạn phải nhập pass word tối thiểu 5 kí tự"
                 ForeColor="Red" Display="Dynamic"/>

            </p>
            <p>
                <label>Re Password </label>
                <asp:TextBox ID="pass2" runat="server" TextMode="Password"/>
                <asp:RegularExpressionValidator  ID="vpass2" 
                  ControlToValidate="pass2"
                  ControlToCompare="pass1" runat="server"
                  ErrorMessage="Re password phải khớp với password"
                  ForeColor="Red" Display="Dynamic"/>
            </p>
             <p>
                <label>Phone </label>
                <asp:TextBox ID="phone" runat="server" />
                <asp:RegularExpressionValidator runat="server" ID="vphone" 
                  ControlToValidate="phone"
                  ValidationExpression="\d{3}-\d{3}-\d{4}"
                  ErrorMessage="Bạn phải nhập số điện thoại có 10 có dạng xxx-xxx-xxxx"
                  ForeColor="Red" Display="Dynamic"/>

            </p>
             <p>
                <label>Email </label>
                <asp:TextBox ID="email" runat="server"/>
                <asp:RegularExpressionValidator runat="server" ID="vemail" ControlToValidate="email"
                   ValidationExpression="\w+([-+.']\w)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                  ErrorMessage="Bạn phải nhập email đúng định dạng"
                 ForeColor="Red" Display="Dynamic"/>

            </p>
            <p>
                <asp:Button ID="b1" Text="Register" runat="server" PostBackUrl="Receive.aspx" />
                <input type="reset" value="Cancel"/>
            </p>
        </div>
    </form>
</body>
</html>

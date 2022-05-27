<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai1_1.aspx.cs" Inherits="Bai1.thu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label {
            width:120px;
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Information student </h2>
            <p>
                <label> Name</label>
                <asp:TextBox ID="name" runat="server" />
                <asp:RequiredFieldValidator ID="vname" runat="server" ControlToValidate="name"
                     ErrorMessage="Bạn Phải nhập name" ForeColor="Red" Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vname1" ControlToValidate="name" runat="server"
                    ValidationExpression="[a-zA-Z][a-zA-Z0-9 ]+"
                    ErrorMessage="Bạn phải nhập tên bắt đầu bằng chữ cái"
                    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </p>
            <p>
                <label>Age</label>
                <asp:TextBox ID="age" runat="server" />
                <asp:RequiredFieldValidator ID="age1" runat="server" ControlToValidate="age"
                     ErrorMessage="Bạn Phải nhập age" ForeColor="Red" Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="vage" runat="server" ControlToValidate="age"
                   Type="Integer" MinimumValue="18"  MaximumValue="90"
                    ErrorMessage="Bạn phải nhập tuổi từ 18 đến 90"
                   ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
            </p>
           <p>
                <label>Username</label>
            <asp:TextBox ID="user" runat="server" />
               <asp:RequiredFieldValidator ID="user1" runat="server" ControlToValidate="user"
                     ErrorMessage="Bạn Phải nhập tên User" ForeColor="Red" Display="Dynamic">
                </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="vuser" runat="server" ControlToValidate="user"
                 ValidationExpression="[a-zA-Z][a-zA-Z0-9]{4,50}"
                ErrorMessage="Bạn phải nhập ít nhất 5 kí tự"
                 ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>

           </p>
            <p>
                <label>Password</label>
                <asp:TextBox  ID="pass1" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="pass1_1" runat="server" ControlToValidate="pass1"
                     ErrorMessage="Bạn Phải nhập vào password" ForeColor="Red" Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vpass1" runat="server"
                    ControlToValidate="pass1" 
                    ValidationExpression=".{6,}"
                     ErrorMessage="Bạn phải nhập ít nhất 6 kí tự"
                     ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </p>
            <p>
                <label>Re password</label>
                <asp:TextBox ID="pass2" runat="server" TextMode="Password"/>
                <asp:CompareValidator ID="vpass2" ControlToValidate="pass2" runat="server"
                  ControlToCompare="pass1" ErrorMessage="Mật khẩu không khớp với password ban đầu" 
                     ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                 
            </p>
            <p>
                <label>Phone</label>
                <asp:TextBox ID="phone" runat="server" />
                <asp:RequiredFieldValidator ID="phone1" runat="server" ControlToValidate="phone"
                     ErrorMessage="Bạn hãy nhập vào Phone" ForeColor="Red" Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator  ID="vphone" runat="server" ControlToValidate="phone"
                    ErrorMessage="Nhập 10 chữ số theo định dạng xxx-xxx-xxxx" ForeColor="Red" ValidationExpression="\d{3}-\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </p>
            <p>
                <label>Email</label>
                <asp:TextBox ID="email" runat="server" />
                <asp:RequiredFieldValidator ID="email1" runat="server" ControlToValidate="email"
                     ErrorMessage="Bạn hãy nhập vào email" ForeColor="Red" Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vemail" runat="server"
                     ControlToValidate="email" ErrorMessage="Bạn phải nhập đúng định dạng email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Button ID="b1" Text="Register" runat="server" PostBackUrl="B1_Output.aspx"/>
                <input type="reset" value="Cancel" />
            </p>
        </div>
    </form>
</body>
</html>

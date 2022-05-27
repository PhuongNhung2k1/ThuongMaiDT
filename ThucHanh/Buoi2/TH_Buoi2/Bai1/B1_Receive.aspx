<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="B1_Receive.aspx.cs" Inherits="Bai1.Receive" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label {
            width:100px;
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             
             <lable>Name</lable><%= "name" %><br />
              <lable>Age</lable> <%= "age" %><br />
              <lable>User</lable> <%= "user" %><br />
              <lable>Passs</lable> <%= "pass1" %><br />
              <lable>Phone</lable> <%= "phone" %><br />
              <lable>Email</lable> <%= "email" %>
        </div>
    </form>
</body>
</html>

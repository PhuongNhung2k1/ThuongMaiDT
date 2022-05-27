<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayCookie2.aspx.cs" Inherits="Buoi3_Cookie_session_demo.displayCookie2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Display color text</h2>
            <asp:Label ID="msg" Text="This is Sample" runat="server">
                <%
                    string nen = Request.Form["maunen"];
                    Response.Write("Color:" );
                    %>
            </asp:Label>
        </div>
    </form>
</body>
</html>

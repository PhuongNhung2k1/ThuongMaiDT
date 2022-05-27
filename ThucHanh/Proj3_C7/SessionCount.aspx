<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionCount.aspx.cs" Inherits="Proj3_C7.SessionCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session Count</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Session ID: <%=Session.SessionID %> </h2>
            <%
                if (Session["count"] == null)
                {
                    Session["count"] = 0;
                }
                int c = (int)Session["count"];

                c++;

                Response.Write("Count is: " + c);

                Session["count"] = c;

                %>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dathang.aspx.cs" Inherits="baitap1_b3.Dathang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <table>
              <%
                  List<string> ds = (List<string>)Session["giohang"];
                  int sl = 0;
                  foreach (string item in ds)
                  {
                      sl++;
                  

              %>
              <tr>
                  <td><% = sl %></td>
                  <td><% = item %></td>

              </tr>
              <%} %>
          </table>
           <p> So luong ban da mua :<%=ds.Count %></p>
            <%
                Session.Remove("giohang");
                %>
           <p><a href="Hanghoa.aspx">Mua tiep gio hang khac</a></p>
        </div>
    </form>
</body>
</html>

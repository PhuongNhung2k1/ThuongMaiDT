<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muahang.aspx.cs" Inherits="baitap1_b3.Muahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h3> Ban da mua</h3>
            <%
                List<string> dshang;
              if(Session["giohang"] == null)
              {
                  dshang = new List<string>();
                  Session["giohang"] = dshang;
              }else
              {
                  dshang = (List<string>)Session["gio hang"];
              }
              string hanghoa = Request.Form["hanghoa"];
              if (hanghoa == null && dshang.Contains(hanghoa) == false)
              {
                  dshang.Add(hanghoa);
                  Session["giohang"] = dshang;
                  if(dshang.Count > 0)
                  {
                      foreach(string item in dshang)
                      {
                          Response.Write(item + "<br/>");
                      }
                  }
              }
                %>
            <asp:Button ID="b2" Text="Mua tiep" runat="server" PostBackUrl="~/Hanghoa.aspx" />
            <a href="Dathang.aspx">Dat hang</a>
        </div>
    </form>
</body>
</html>

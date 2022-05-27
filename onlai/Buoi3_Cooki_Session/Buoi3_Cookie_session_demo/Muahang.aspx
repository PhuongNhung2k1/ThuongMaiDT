<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muahang.aspx.cs" Inherits="Buoi3_Cookie_session_demo.Muahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Ban da mua</h2>
            <%
                List<string> ds = new List<string>();
                if (Request.Form["action"]== "add")
                {
                    ds = new List<string>();
                    if (Session["giohang"] == null)
                    {
                        Session["giohang"] = ds;
                    }
                    ds = (List<string>)Session["giohang"];
                    string h = Request.Form["hanghoa"];
                    if (h != null)
                    {
                        ds.Add(h);
                        Session["giohang"] = ds;
                    }else if(Request.Form["action"] == "del")
                    {
                        string tenHang = Request["tenhang"];
                        ds = (List<string>)Session["giohang"];
                        ds.Remove(tenHang);
                        Session["giohang"] = ds;

                    }

                }
                %>
           <table>
               <tr>
                   <th>Ten hang</th>
                   <th>Xoa</th>
               </tr>
                    <%
                        ds = (List<string>)Session["giohang"];
                        foreach (var item in ds)
                        {
                    %>
               <tr>
                   <td><%=item %></td>
                   <td><a href="xoahang.aspx">Xoa</a></td>
               </tr>
               <%} %>
           </table>
            
            <a href="Hanghoa.aspx">Mua tiep</a><br />
            <a href="Dathang.aspx">Dat hang</a><br />
            
        </div>
    </form>
</body>
</html>

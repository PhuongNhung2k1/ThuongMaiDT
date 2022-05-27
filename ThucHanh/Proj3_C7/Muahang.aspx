<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muahang.aspx.cs" Inherits="Proj3_C7.Muahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mua hang</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Các hàng hóa bạn đã chọn</h2>
            <%
                List<string> ds;
                if (Request["action"] == "add")
                {
                    ds = new List<string>();
                    if (Session["giohang"] == null)
                    {
                        Session["giohang"] = ds;
                    }
                    ds = (List<string>)Session["giohang"];

                    string h = Request.Form["hanghoa"];

                    if (h != null)
                        ds.Add(h);

                    Session["giohang"] = ds;
                }
                else if (Request["action"] == "del")
                {
                    string tenhang = Request["tenhang"];
                    ds = (List<string>)Session["giohang"];
                    ds.Remove(tenhang);
                    Session["giohang"] = ds;

                }
            %>
            <table style="width: 30%; border: 1px solid #808080">
                <tr>
                    <th>Ten hang</th>
                    <th>Xoa</th>
                </tr>
                <%   
                    ds = (List<string>)Session["giohang"];
                    foreach (var item in ds)
                    { %>
                <tr>
                    <td><%= item %></td>
                    <td><a href="Muahang.aspx?action=del&tenhang=<%= item %>" 
                        onclick="return confirm('Bạn có chắc xóa không')">Xoa</a></td>
                </tr>
                <% }
                %>
            </table>
            <br />
            <a href="Hanghoa.aspx">Mua tiep</a><br />
            <a href="Dathang.aspx">Dat hang</a><br />
            <%-- //Tao file Dathang: trong do hien len ds da mua, cung so luong sp.
            //Xoa session--%>
        </div>
    </form>
</body>
</html>

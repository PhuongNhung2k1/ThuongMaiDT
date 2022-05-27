<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muahang.aspx.cs" Inherits="Onthi_session.Muahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Đơn hàng đã mua: </h2>
            <%
                List<string> dshang;
                if (Request.Form["action"] == "add")
                {
                    dshang = new List<string>();
                    if (Session["giohang"] == null)
                    {
                        Session["giohang"] = dshang;
                    }
                    else
                    {
                        dshang = (List<string>)Session["giohang"];
                        string hh = Request.Form["hanghoa"];
                        if (hh != null)
                        {
                            dshang.Add(hh);
                            Session["giohang"] = dshang;
                        }else if(Request.Form["action"]== "del")
                        {
                            string tenhang = Request.Form["tenhang"];
                            dshang = (List<string>)Session["giohang"];
                            dshang.Remove(tenhang);
                            Session["giohang"] = dshang;
                        }

                    }

                }

                %>
        </div>
    </form>
</body>
</html>

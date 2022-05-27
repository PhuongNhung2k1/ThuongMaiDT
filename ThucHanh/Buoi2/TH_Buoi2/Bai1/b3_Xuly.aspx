<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b3_Xuly.aspx.cs" Inherits="Bai1.Xuly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Xử lý</h2>
            <%
                //string action = Request.Form["action"];//POST
                //if (action == null)
                //    action = Request.QueryString["action"];//GET
                string action = Request["action"];// kho chay qua form nưa, no chay truc tiep luon
                if (action == "add")
                {
                    string masv = Request.Form["masv"];
                    string hoten = Request.Form["hoten"];
                    string diachi = Request.Form["diachi"];

                    Response.Write("Id thêm vào :" + masv + " </br>");
                    Response.Write("Name thêm vào :" + hoten + " </br>");
                    Response.Write("Address thêm vào:" + diachi + " </br>");
                }

                else if (action == "delete")
                {
                    string masv = Request.Form["masv"];
                    Response.Write("ID đã xóa :" + masv + " </br>");

                }
                else if (action == "find")
                {
                    string hoten = Request.Form["hoten"];

                    Response.Write("Tên được tìm thấy:" + hoten + " </br>");
                }
                  %>
        </div>
    </form>
</body>
</html>

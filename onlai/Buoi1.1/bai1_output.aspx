<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1_output.aspx.cs" Inherits="Buoi1._1.bai1_output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Tính lương nhân viên</h2>
            <%
                //TextBox tmanv = (TextBox)PreviousPage.FindControl("manv");
                string manv = Request.Form["manv"];
                string hoten = Request.Form["hoten"];
                string gioitinh = Request.Form["gioitinh"];
                string nn = Request.Form["nn"];
                string chucvu = Request.Form["chucvu"];
                int bacluong = Convert.ToInt32(Request.Form["bacluong"]);
                float ngaycong = Convert.ToSingle(Request.Form["songayluong"]);
                float luongcoban = 800000;
                int phucap = 0;
                float tongluong;
                float thuong;
                
                /*RadioButtonList rgioitinh = (RadioButtonList)PreviousPage.FindControl("gioitinh");
                string gt = " ";
                foreach (ListItem item in rgioitinh.Items)
                {
                    if (item.Selected)
                    {
                        gt = gt + item.Text;
                    }
                }
                CheckBoxList cngoaingu = (CheckBoxList)PreviousPage.FindControl("ngoaingu");
                string nn = " ";
                foreach (ListItem item in cngoaingu.Items)
                {
                    if (item.Selected)
                    {
                        nn = nn + item.Text;
                    }
                }
                DropDownList dchucvu = (DropDownList)PreviousPage.FindControl("chucvu");
                string cv = " ";
                foreach (ListItem item in dchucvu.Items)
                {
                    if (item.Selected)
                    {
                        cv = cv + item.Text;
                    }
                } */
                if (ngaycong > 25)
                {
                    thuong = (ngaycong - 25) * 200000;
                    if (chucvu == "Trưởng phòng")
                    {
                        phucap = 500000;
                    } else if (chucvu == "Phó phòng")
                    {
                        phucap = 200000;
                    } else if (chucvu == "Nhân viên")
                    {
                        phucap = 100000;
                    }

                } else
                {
                    thuong = 0;
                }
                  tongluong = (luongcoban * bacluong) + (thuong) + (phucap);
                %>
            <table style="width: 400px">
                <tr>
                    <td>Mã nhân viên</td>
                    <td><%= manv %></td>
                </tr>
                <tr>
                    <td>Họ tên</td>
                    <td><%= hoten %></td>
                </tr>
                <tr>
                    <td>Giới tính</td>
                    <td><%= gioitinh %></td>
                </tr>
                <tr>
                    <td>Ngoại ngữ</td>
                    <td><%= nn %></td>
                </tr>
                <tr>
                    <td>Bậc lương</td>
                    <td><%= bacluong %></td>
                </tr>
                <tr>
                    <td>Lương cơ bản</td>
                    <td><%= luongcoban %></td>
                </tr>
                <tr>
                    <td>Ngày công</td>
                    <td><%= ngaycong %></td>
                </tr>
                <tr>
                    <td>Chức vụ</td>
                    <td><%= chucvu %></td>
                </tr>
                <tr>
                    <td>Phụ cấp</td>
                    <td><%= phucap %></td>
                </tr>
                <tr>
                    <td>Thưởng</td>
                    <td><%= thuong %></td>
                </tr>
                <tr>
                    <td>Tổng lương</td>
                    <td><%= tongluong %></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

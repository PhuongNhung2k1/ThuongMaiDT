<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b3_TaiNguyen.aspx.cs" Inherits="Bai1.TaiNguyen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>This is information</h2>
            <h3>Wellcome to <%= Request.Form["user"] %></h3>
            <p>
                Công nghệ thông tin, viết tắt CNTT,
                (tiếng Anh: Information technology hay là IT) 
                là một nhánh ngành kỹ thuật sử dụng máy tính và 
                phần mềm máy tính để chuyển đổi, lưu trữ, bảo vệ, xử lý, truyền tải và thu thập thông tin. Ở Việt Nam, khái niệm Công nghệ Thông tin được hiểu và định nghĩa trong Nghị quyết Chính phủ 49/CP ký ngày 4 tháng 8 năm 1993: "Công nghệ thông tin 
                là tập hợp các phương pháp khoa học, các phương tiện và côn…
            </p>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="lab01.DangKyThanhVien" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        /* Cố định form ở giữa màn hình */
        body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        .form-container {
            width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1000;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 132px;
            background-color: #e0e0e0; /* Thêm màu nền cho các ô */
            padding: 5px;
            text-align: left;
        }

        .auto-style3 {
            width: 260px;
            background-color: #f2f2f2; /* Thêm màu nền cho các trường TextBox */
            padding: 5px;
            border-radius: 4px;
            margin-bottom: 10px; /* Thêm khoảng cách dưới mỗi TextBox */
            transition: all 0.3s ease; /* Hiệu ứng mượt mà khi thay đổi */
        }

        .auto-style4 {
            text-align: center;
            background-color: #d1ecf1; /* Màu nền cho các tiêu đề */
            padding: 10px;
            font-weight: bold;
        }

        .auto-style5 {
            width: 132px;
            height: 23px;
        }

        .auto-style6 {
            width: 260px;
            height: 23px;
        }

        .auto-style7 {
            height: 23px;
        }

        .auto-style8 {
            width: 260px;
            text-align: center;
        }

        /* Thêm khoảng cách giữa các hàng */
        .auto-style2 {
            margin-bottom: 15px;
        }

        /* Thêm khoảng cách giữa các ô input */
        .text-box-spacing {
            margin-bottom: 15px;
        }

        /* Màu nền cho các ô input khi focus */
        .auto-style3:focus {
            background-color: #cce7ff; /* Màu nền sáng khi focus */
            border-color: #66afe9; /* Đổi màu viền khi focus */
            outline: none;
            box-shadow: 0 0 8px rgba(102, 175, 233, 0.6); /* Thêm bóng đổ khi focus */
        }

        /* Màu nền cho các ô tiêu đề khi hover */
        .auto-style4:hover {
            background-color: #b8d4e5; /* Thay đổi màu nền khi hover */
        }

        /* Hiệu ứng cho Button */
        .auto-style8 .btn {
            background-color: #007bff; /* Màu nền của button */
            color: white; /* Màu chữ */
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: all 0.3s ease; /* Hiệu ứng mượt mà khi thay đổi */
            cursor: pointer;
        }

        /* Hiệu ứng khi hover vào Button */
        .auto-style8 .btn:hover {
            background-color: #0056b3; /* Màu nền khi hover */
            transform: scale(1.05); /* Phóng to button khi hover */
        }

        /* Hiệu ứng khi button bị nhấn */
        .auto-style8 .btn:active {
            transform: scale(0.98); /* Thu nhỏ button khi nhấn */
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="3"><strong>Hồ sơ đăng ký</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">Thông tin đăng nhập</td>
                    <td class="auto-style4">Hồ sơ khách hàng</td>
                </tr>
                <tr>
                    <td class="auto-style2">Tên đăng nhập</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Mật khẩu</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập lại mật khẩu</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">Thông tin cá nhân</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Họ tên khách hàng</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Ngày sinh</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Thu nhập</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Giới tính</td>
                   <td class="auto-style3  text-box-spacing">
                        <asp:RadioButton ID="rdNam" runat="server" text="Nam" CssClass="form-check-inline" Checked="true" GroupName="GT" />
                        <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Địa chỉ</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Điện thoại</td>
                    <td class="auto-style3 text-box-spacing">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" Text="Đăng ký" CssClass="btn" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

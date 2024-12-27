<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangkythongtin.aspx.cs" Inherits="lab01.Dangkythongtin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<style type="text/css">
    .header {
        background-color: #0033cc;
        color: #FFFFFF;
        padding: 10px;
        text-align: center;
        font-size: 24px;
    }
    .content {
        background-color: #FFFFFF;
        color: #000000;
        padding: 20px;
        font-size: 16px;
        line-height: 1.6;
    }
    .highlight {
        background-color: #FF0000;
        color: #FFFFFF;
        padding: 10px;
        border-radius: 5px;
        width: 350px;
    }
    .form-control {
        display: block;
        width: 100%;
        padding: 0.375rem 0.75rem;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-color: #f8f9fa;
        background-clip: padding-box;
        border: 1px solid #ced4da;
        border-radius: 0.25rem;
        transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }
    .button {
        background-color: #yellow;
        color: #FFFFFF;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    .button:hover {
        background-color: #218838;
    }
</style>


</head>
<body style="width: 615px; height: 348px; margin-left: 133px">
    <form id="form1" runat="server">
        <div class="auto-style1" style="width: 62%; height: 408px">
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style6" colspan="2"><strong><span class="auto-style2">DANG KY THONG TIN</span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Ho va Ten</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Ngay sinh</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNgaySinh" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Gioi tinh</strong></td>
                    <td class="auto-style3">
                        <asp:RadioButton ID="rdNam" runat="server" text="Nam" CssClass="form-check-inline" Checked="true" GroupName="GT" />
                        <asp:RadioButton ID="rdNu" runat="server" Text="Nu" GroupName="GT"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Trinh do</strong></td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlTrinhDo" runat="server" CssClass="form-check">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Nghe nghiep</strong></td>
                    <td class="auto-style3">
                        <asp:ListBox ID="lstNgheNghiep" runat="server" CssClass="form-control"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Hinh anh</strong></td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="fulHinh" runat="server" CssClass="auto-style7" Width="213px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>So thich</strong></td>
                    <td class="auto-style3">
                        <asp:CheckBoxList ID="cklSoThich" runat="server" CssClass="form-select form-text">
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
            <strong>
            <asp:Button ID="btGui" runat="server"  Text="Gui" CssClass="btn btn-primary" OnClick="btGui_Click1" />
            </strong>
            <asp:Button ID="btNhap" runat="server" Text="Nhap lai" CssClass="btn btn-secondary" OnClick="btNhap_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table class="auto-style10">
                <tr>
                    <td class="auto-style9">
           
                    <asp:Label ID="lbKetQua" runat="server" ></asp:Label>
           
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
           
            <br />
              <tr>
                <td colspan="2" class="auto-style1">
                </td>
            </tr>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

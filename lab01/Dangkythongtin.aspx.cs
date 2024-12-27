using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab01
{
    public partial class Dangkythongtin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            KhoiTaoDuLieu();
        }
        private void KhoiTaoDuLieu()
        {
            //Khỏi tạo dữ liệu đlTrinhDo
            ddlTrinhDo.Items.Add("Trung cấp");
            ddlTrinhDo.Items.Add("Cao đẳng");
            ddlTrinhDo.Items.Add("Đại học");
            ddlTrinhDo.Items.Add("Sau đại học");

            //Khỏi tạo dữ liệu lstNgheNghiep
            lstNgheNghiep.Items.Add("Công nhân");
            lstNgheNghiep.Items.Add("Kỹ sư");
            lstNgheNghiep.Items.Add("Lập trình viên");
            lstNgheNghiep.Items.Add("Kế toán viên");
            lstNgheNghiep.Items.Add("Bác sĩ");

            //Khỏi tạo dữ liệu ckbSoThich
            cklSoThich.Items.Add("Xem phim");
            cklSoThich.Items.Add("Nằm dài");
            cklSoThich.Items.Add("Tiêu tiền");
            cklSoThich.Items.Add("Đi ăn");
            cklSoThich.Items.Add("Trúng số");
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btGui_Click1(object sender, EventArgs e)
        {
            //b1. thu nhập thông tin gửi từ client
            string kq = "<div class='h3 alert alert-info text-center mb-3'>KET QUA DANG KY</div>";
            kq += "<ul>";
            kq += "<li>Họ tên : <b> " + txtHoTen.Text + "</b>";
            kq += string.Format("<li> Ngày sinh <b> {0} </b>", txtNgaySinh.Text);
            if (rdNam.Checked)
            {
                kq += string.Format("<li> Giới tính: <b> {0} </b>", rdNam.Text);
            }
            else
            {
                kq += string.Format("<li> Giới tính: <b> {0} </b>", rdNu.Text);
            }

            kq += string.Format("<li> Trình độ: <b> {0} </b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghề nghiệp: <b> {0} </b>", lstNgheNghiep.SelectedItem.Text);

            if (fulHinh.HasFile)
            {
                //xử lsy upload file
                string path = Server.MapPath("~/Upload"); //lấy đường dẫn tuyệt đối của thư mục trên máy chủ
                string filename = fulHinh.FileName; //Lấy tên file
                fulHinh.SaveAs(path + "/" + filename);

                kq += string.Format("<li> Hình: <img src='/Upload/{0}'> 200px", filename);
            }

            kq += "<li> Sở thích: ";
            foreach (ListItem item in cklSoThich.Items)
            {
                if (item.Selected)
                {
                    kq += item.Text + ";";
                }
            }
            kq += "</ul>";
            //b2. gửi thông tin về client
            lbKetQua.Text = kq;
        }

        protected void btNhap_Click(object sender, EventArgs e)
        {
            txtHoTen.Text = "";
            txtNgaySinh.Text = "";
            ddlTrinhDo.SelectedIndex = 0;
            lstNgheNghiep.SelectedIndex = -1;
            foreach(ListItem item in cklSoThich.Items)
            {
                item.Selected = false;
            }
            lbKetQua.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FENGSYSTEM
{
    public partial class chitiet : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string mahang = Request.QueryString["mh"] + "";
            string sql = "select * from MATHANG where MaHang='" + mahang + "'";

            dl_chitiet.DataSource = ketnoi.docdulieu(sql);
            dl_chitiet.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap != "")
            {
                string mahang = ((Button)sender).CommandArgument;
                Button bt = (Button)sender;
                DataListItem item = (DataListItem)bt.NamingContainer;
                TextBox sl = (TextBox)item.FindControl("txtSoLuong");
                string soluong = sl.Text;

                string sql_dulieu = "select * from DONHANG where TenDangNhap='"
                    + tendangnhap + "' and MaHang=" + mahang;
                DataTable dt = ketnoi.docdulieu(sql_dulieu);
                string sql;
                if (dt.Rows.Count > 0)
                {
                    //update
                    sql = "update DONHANG set SoLuong= SoLuong+" + soluong +
                        " where TenDangNhap='" + tendangnhap + "' and MaHang=" + mahang;
                }
                else
                {
                    //insert
                    sql = "insert into DONHANG values('"
                    + tendangnhap + "'," + mahang + "," + soluong + ")";
                }
                int kq = ketnoi.CapNhat(sql);
                if (kq > 0) lbthongbao.Text = "Đã thêm vào giỏ hàng";
                else lbthongbao.Text = "Không thành công";
            }
            else
            {
                lbthongbao.Text = "Bạn cần phải đăng nhập";
            }
        }
    }
}
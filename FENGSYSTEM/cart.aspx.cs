using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FENGSYSTEM
{
    public partial class cart : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string tenDN = Session["username"] + "";
            if (tenDN == "") return;
            loadDL(tenDN);
        }
        protected void loadDL(string tenDN)
        {
            string sql = "select MATHANG.MaHang,Hinh, TenHang, MoTa, DonGia,  "
                + " SoLuong, SoLuong * DonGia As ThanhTien"
                + " from MATHANG, DONHANG"
                + " where MATHANG.MaHang = DONHANG.MaHang And TenDangNhap='" + tenDN + "'";

            GridView1.DataSource = ketnoi.docdulieu(sql);
            GridView1.DataBind();
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string tenDN = Session["username"] + "";
            if (tenDN == "") return;
            string mahang = ((LinkButton)sender).CommandArgument;
            string sql = "delete from DONHANG where TenDangNhap='"
                + tenDN + "' and MaHang=" + mahang;
            int kq = ketnoi.CapNhat(sql);
            loadDL(tenDN);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap == "") return;
            Button btn_sua = ((Button)sender);
            string mahang = btn_sua.CommandArgument;
            GridViewRow row = (GridViewRow)btn_sua.Parent.Parent;
            TextBox txtsoluong = (TextBox)row.FindControl("TextBox1");
            string soluong = txtsoluong.Text;
            string sql = "update DONHANG set SoLuong = " + soluong + " where TenDangNhap = '" + tendangnhap + "' and MaHang=" + mahang;
            int kq = ketnoi.CapNhat(sql);
            loadDL(tendangnhap);
        }
    }
}
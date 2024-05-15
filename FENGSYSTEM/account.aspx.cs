using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FENGSYSTEM
{
    public partial class account : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string tendangnhap = Login1.UserName;
            string matkhau = Login1.Password;

            string sql = "select * from KHACHHANG where TenDangNhap='" + tendangnhap + "' and MatKhau='" + matkhau + "'";
            DataTable dt = ketnoi.docdulieu(sql);
            if (dt.Rows.Count > 0)
            {
                Session["username"] = tendangnhap;
                Response.Redirect("default.aspx");
            }
            else
            {
                Login1.FailureText = "Đăng nhập không thành công";
            }
        }
    }
}
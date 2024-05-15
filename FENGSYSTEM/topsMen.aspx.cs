using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FENGSYSTEM
{
    public partial class topsMen : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string maloai = Request.QueryString["ml"] + "";
            string sql = "";
            if (maloai != "")
            {
                sql = "select * from MATHANG where MaLoai=" + maloai;
            }
            else
                sql = "select * from MATHANG where MaLoai=9";
            dl_new.DataSource = ketnoi.docdulieu(sql);
            dl_new.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string mahang = ((ImageButton)sender).CommandArgument;
            Response.Redirect("chitiet.aspx?mh=" + mahang);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string mahang = ((LinkButton)sender).CommandArgument;
            Response.Redirect("chitiet.aspx?mh=" + mahang);
        }
    }
}
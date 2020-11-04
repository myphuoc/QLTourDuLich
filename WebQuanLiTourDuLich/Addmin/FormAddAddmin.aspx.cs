using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;

namespace WebQuanLiTourDuLich.Addmin
{
    public partial class FormAddAddmin : System.Web.UI.Page
    {
        TaiKhoan tk = new TaiKhoan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string pass = tk.MaHoaMD5(txtpass1.Text);
            //nếu bạn muốn các chữ cái in thường thay vì in hoa thì bạn thay chữ "X" in hoa trong "X2" thành "x"
            if (tk.KtraTonTaiAddMin(txtusername1.Text) == false && tk.KtraTonTaiCustomer(txtusername1.Text)==false)
            {
                tk.AddTaiKhoan(txtusername1.Text, pass);
                Response.Redirect("FormLogin.aspx");
            }
            else
            {
                Response.Redirect("FormAddAddmin.aspx");
                txtusername1.Text = "";
                txtusername1.Focus();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormLogin.aspx");
        }
    }
}
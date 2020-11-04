using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BUS;
using System.Web.Security;

namespace WebQuanLiTourDuLich
{
    public partial class FormLogin : System.Web.UI.Page
    {
        TaiKhoan tk = new TaiKhoan();

        protected void Page_Load(object sender, EventArgs e)
        {
            TaiKhoan tk = new TaiKhoan();


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string xxx = tk.MaHoaMD5(txtMatKhau.Text);
            if (tk.KtraDangNhap(txtTaiKhoan.Text, xxx) == true)
            {
                Response.Redirect("View.aspx");
            }
            else if (tk.KtraDangNhapCus(txtTaiKhoan.Text, xxx) == true){
                Response.Redirect("/Customer/ViewCustomerSignIn.aspx");
            }
            else

            {
                Response.Redirect("FormLogin.aspx");
                txtTaiKhoan.Text = "";
                txtMatKhau.Text = "";
                txtTaiKhoan.Focus();
            }
        }
    }
}
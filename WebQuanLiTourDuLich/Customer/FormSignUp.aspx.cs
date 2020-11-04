using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;

namespace WebQuanLiTourDuLich.Customer
{
    public partial class FormSignUp : System.Web.UI.Page
    {
        TaiKhoan tk = new TaiKhoan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string pass = tk.MaHoaMD5(txtPass.Text);
            if (tk.KtraTonTaiCustomer(txtName.Text) == false && tk.KtraTonTaiAddMin(txtName.Text)==false){
                tk.AddTaiKhoanCus( pass, txtName.Text, Convert.ToInt16(txtTuoi.Text), txtEmail.Text, txtDiaChi.Text,txtSDT.Text, txtMatour.Text);
                Response.Redirect("FormSignIn.aspx");
            }
            else
            {
                Response.Redirect("FormSignUp.aspx");
                txtName.Text = "";
                txtName.Focus();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCustomer.aspx");
        }
    }
}
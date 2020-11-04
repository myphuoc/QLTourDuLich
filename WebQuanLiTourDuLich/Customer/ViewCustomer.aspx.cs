using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;

namespace WebQuanLiTourDuLich.Customer
{
    public partial class ViewCustomer : System.Web.UI.Page
    {

        TaiKhoan tk = new TaiKhoan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Addmin/FormLogin.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCustomer.aspx");
        }

        protected void btnSignUP_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Addmin/FormSignUp.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string s = @"Data Source=DESKTOP-0RP6AU8\SQLEXPRESS;Initial Catalog=QLDuLich;Integrated Security=True";
            //SqlConnection cnn = new SqlConnection(s);
            //string query = "Select*" +
            //               "from Tour";
            //SqlDataAdapter da = new SqlDataAdapter(query, cnn);
            //DataTable dt = new DataTable();
            //cnn.Open();
            //da.Fill(dt);
            //cnn.Close();

            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Redirect("/Addmin/FormLogin.aspx");
        }
    }
}
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
    public partial class ViewCustomerSignin : System.Web.UI.Page
    {
        TaiKhoan tk = new TaiKhoan();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();

            DropDownList1.DataSource = tk.GetAllTour();
            DropDownList1.DataValueField = "IdTour";
            DropDownList1.DataTextField = "TenTour";
            DropDownList1.DataBind();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCustomer.aspx");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCustomer.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("MessageBox.aspx");
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string s = DropDownList1.Items[DropDownList1.SelectedIndex].Value;
            GridView1.DataSource = tk.selectTourID(s);
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
 
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Redirect("MessageBox.aspx");
        }
    }
}
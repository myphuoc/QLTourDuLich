using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;

namespace WebQuanLiTourDuLich
{
    public partial class View : System.Web.UI.Page
    {
        TaiKhoan tk = new TaiKhoan();
        AddminTourDataContext atc = new AddminTourDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            TaiKhoan tk = new TaiKhoan();
            //GridView1.DataSource = tk.GetAllTour();
            //GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataSource = tk.GetAllTour();
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string dataKey = GridView1.DataKeys[e.RowIndex].Value.ToString();
            tk.Delete(dataKey);
            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();
        }


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string dataKey = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string name = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string hanhTrinh = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            int soNgay = Convert.ToInt16((GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text);
            double giaDiLai =Convert.ToDouble((GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text);
            double giaAno = Convert.ToDouble((GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text);
            string thongTin = (GridView1.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
            string trangThai = (GridView1.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
            DateTime ngayDi = Convert.ToDateTime((GridView1.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox).Text);
            DateTime ngayVe = Convert.ToDateTime((GridView1.Rows[e.RowIndex].Cells[10].Controls[0] as TextBox).Text);
            var s = tk.Update(dataKey);
            s.IdTour = ID;
            s.TenTour = name;
            s.HanhTrinh = hanhTrinh;
            s.SoNgay = soNgay;
            s.GiaDiLai = giaDiLai;
            s.GiaPhong = giaAno;
            s.ThongTin = thongTin;
            s.TrangThai = trangThai;
            s.NgayDi = ngayDi;
            s.NgayVe = ngayVe;
            tk.SubmitChange();
            GridView1.EditIndex = -1;
            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            string dataKey = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string name = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string hanhTrinh = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            int soNgay = Convert.ToInt16((GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text);
            double giaDiLai = Convert.ToDouble((GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text);
            double giaAno = Convert.ToDouble((GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text);
            string thongTin = (GridView1.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
            string trangThai = (GridView1.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
            DateTime ngayDi = Convert.ToDateTime((GridView1.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox).Text);
            DateTime ngayVe = Convert.ToDateTime((GridView1.Rows[e.RowIndex].Cells[10].Controls[0] as TextBox).Text);
            Tour s = tk.Update(dataKey);
            s.TenTour = name;
            s.HanhTrinh = hanhTrinh;
            s.SoNgay = soNgay;
            s.GiaDiLai = giaDiLai;
            s.GiaPhong = giaAno;
            s.ThongTin = thongTin;
            s.TrangThai = trangThai;
            s.NgayDi = ngayDi;
            s.NgayVe = ngayVe;
            tk.SubmitChange();
            GridView1.EditIndex = -1;
            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            GridView1.DataSource = tk.GetAllTour();
            GridView1.DataBind();
        }


        protected void addTour_Click(object sender, EventArgs e)
        {
            double phidilai = Convert.ToDouble(txtphidilai.Text);
            double phiano = Convert.ToDouble(txtphiano.Text);
            DateTime ngaydi = Convert.ToDateTime(txtngaydi.Text);
            DateTime ngayve = Convert.ToDateTime(txtngayve.Text);
            if (tk.KtraTonTai(txtid.Text))
            {
                tk.AddTour(txtid.Text, txtname.Text, txthanhtrinh.Text, Convert.ToInt16(txtsongay.Text), phidilai,
                    phiano, txtthongtin.Text, txttrangthai.Text, ngaydi, ngayve);
                Response.Redirect("View.aspx");
            }
            else
            {
                Response.Redirect("View.aspx");
                txtid.Text = "";
                txtid.Focus();
            }
        }
        
        protected void addTour_Click1(object sender, EventArgs e)
        {
            double phidilai = Convert.ToDouble(txtphidilai.Text);
            double phiano = Convert.ToDouble(txtphiano.Text);
            DateTime ngaydi = Convert.ToDateTime(txtngaydi.Text);
            DateTime ngayve = Convert.ToDateTime(txtngayve.Text);
            if (tk.KtraTonTai(txtid.Text)==false)
            {
                tk.AddTour(txtid.Text, txtname.Text, txthanhtrinh.Text, 
                    Convert.ToInt32(txtsongay.Text), phidilai, phiano, txtthongtin.Text, txttrangthai.Text, ngaydi, ngayve);
               GridView1.DataSource= tk.GetAllTour();
                GridView1.DataBind();
                Response.Redirect("View.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double phidilai = Convert.ToDouble(txtphidilai.Text);
            double phiano = Convert.ToDouble(txtphiano.Text);
            DateTime ngaydi = Convert.ToDateTime(txtngaydi.Text);
            DateTime ngayve = Convert.ToDateTime(txtngayve.Text);
            if (tk.KtraTonTai(txtid.Text) == false)
            {
                tk.AddTour(txtid.Text, txtname.Text, txthanhtrinh.Text,
                    Convert.ToInt32(txtsongay.Text), phidilai, phiano, txtthongtin.Text, txttrangthai.Text, ngaydi, ngayve);
                GridView1.DataSource = tk.GetAllTour();
                GridView1.DataBind();
                Response.Redirect("View.aspx");
            }
            else
                Response.Redirect("View.aspx");
            txtid.Text = " ";
            txtid.Focus();

            }



        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    string dataKey = GridView1.DataKeys[e.RowIndex].Value.ToString();
        //    string name = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        //}
    }
}
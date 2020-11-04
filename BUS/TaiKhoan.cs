using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

using System.Web.Security;
using System.Security.Cryptography;

namespace BUS
{
    public class TaiKhoan
    {
        LoginDataContext login = new LoginDataContext();
        AddminTourDataContext add = new AddminTourDataContext();

        public object GiaDiLai { get; private set; }


        public Boolean KtraDangNhap(string tenTaiKhoan, string matkhau)

        {
            int ck = login.Addmins.Where(p => p.UserName == tenTaiKhoan && p.Password == matkhau).Count();
            {
                if (ck == 1) return true;
                else return false;
            }
        }
        public IEnumerable<Tour> GetAllTour()
        {
            var list = add.Tours.Select(p => p);
            return list;
        }
        public void Delete(string ID)
        {
            var ordDetailQuery = add.Tours.Where(p => p.IdTour == ID).FirstOrDefault();

            add.Tours.DeleteOnSubmit(ordDetailQuery);
            add.SubmitChanges();
        }
        public Tour Update(string ID)
        {
            var s = add.Tours.Where(p => p.IdTour == ID).FirstOrDefault();
            return s;

        }
        public void SubmitChange()
        {
            add.SubmitChanges();
        }
        public bool KtraTonTai(string ID)
        {
            int tt = add.Tours.Where(p => p.IdTour == ID).Count();
            if (tt == 1) return true;
            else return false;
        }
        public bool KtraTonTaiAddMin(string user)
        {
            int tt = login.Addmins.Where(p => p.UserName == user).Count();
            if (tt == 1) return true;
            else return false;
        }
        public void AddTour(string id, string name, string hanhTrinh, int soNgay, double giaDiLai, double GiaPhong,
           string thongTin, string trangThai, DateTime ngayDi, DateTime ngayVe) {
            Tour at = new Tour();
            at.IdTour = id;
            at.TenTour = name;
            at.HanhTrinh = hanhTrinh;
            at.SoNgay = soNgay;
            at.GiaDiLai = giaDiLai;
            at.GiaPhong = GiaPhong;
            at.ThongTin = thongTin;
            at.TrangThai = trangThai;
            at.NgayDi = ngayDi;
            at.NgayVe = ngayVe;
            add.Tours.InsertOnSubmit(at);

            add.SubmitChanges();
        }

        public void AddTaiKhoan(string usename, string password)
        {
            Addmin am = new Addmin();
            am.UserName = usename;
            am.Password = password;
            login.Addmins.InsertOnSubmit(am);

            login.SubmitChanges();
        }
        // public void ThemTaiKhoan(string UserName,string Password,string DiaChi,string NgaySinh ,Sex
        public IEnumerable<Addmin> getAllAddmin()
        {
            var list = login.Addmins.Select(p => p);
            return list;
        }
        public Boolean KtraDangNhapCus(string tenTaiKhoan, string matkhau)

        {
            int ck = add.Customers.Where(p => p.TenCustomer == tenTaiKhoan && p.Idcustomer == matkhau).Count();
            {
                if (ck == 1) return true;
                else return false;
            }
        }
        public string MaHoaMD5(string id)
        { 
            MD5 mh = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(id);
            byte[] hash = mh.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }
        public void AddTaiKhoanCus(string password, string usename, int Tuoi, string Email, string DiaChi, string SDT, string MaTour)
        {
            Customer ctm = new Customer();
            ctm.Idcustomer = password;
            ctm.TenCustomer = usename;
            ctm.TuoiCustomer = Tuoi;
            ctm.Email = Email;
            ctm.DiaChi = DiaChi;
            ctm.SDT = SDT;
            ctm.MaTour = MaTour;

            add.Customers.InsertOnSubmit(ctm);

            add.SubmitChanges();
        }

        public bool KtraTonTaiCustomer(string user)
        {
            int tt = add.Customers.Where(p => p.TenCustomer == user).Count();
            if (tt == 1) return true;
            else return false;
        }
        public IEnumerable<Tour> load_Dropdl()
        {
            var list = add.Tours.OrderBy(p => p.TenTour);
            return list;
        }
        public IEnumerable<Tour> selectTourID(string id)
        {
            var list = add.Tours.Where(p => p.IdTour == id);
            return list;
        }
    }
}

﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="QLDuLich")]
	public partial class AddminTourDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertTour(Tour instance);
    partial void UpdateTour(Tour instance);
    partial void DeleteTour(Tour instance);
    partial void InsertCustomer(Customer instance);
    partial void UpdateCustomer(Customer instance);
    partial void DeleteCustomer(Customer instance);
    #endregion
		
		public AddminTourDataContext() : 
				base(global::DAL.Properties.Settings.Default.QLDuLichConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public AddminTourDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AddminTourDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AddminTourDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AddminTourDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Tour> Tours
		{
			get
			{
				return this.GetTable<Tour>();
			}
		}
		
		public System.Data.Linq.Table<Customer> Customers
		{
			get
			{
				return this.GetTable<Customer>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tour")]
	public partial class Tour : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _IdTour;
		
		private string _TenTour;
		
		private string _HanhTrinh;
		
		private System.Nullable<int> _SoNgay;
		
		private System.Nullable<double> _GiaDiLai;
		
		private System.Nullable<double> _GiaPhong;
		
		private string _ThongTin;
		
		private string _TrangThai;
		
		private System.Nullable<System.DateTime> _NgayDi;
		
		private System.Nullable<System.DateTime> _NgayVe;
		
		private EntitySet<Customer> _Customers;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdTourChanging(string value);
    partial void OnIdTourChanged();
    partial void OnTenTourChanging(string value);
    partial void OnTenTourChanged();
    partial void OnHanhTrinhChanging(string value);
    partial void OnHanhTrinhChanged();
    partial void OnSoNgayChanging(System.Nullable<int> value);
    partial void OnSoNgayChanged();
    partial void OnGiaDiLaiChanging(System.Nullable<double> value);
    partial void OnGiaDiLaiChanged();
    partial void OnGiaPhongChanging(System.Nullable<double> value);
    partial void OnGiaPhongChanged();
    partial void OnThongTinChanging(string value);
    partial void OnThongTinChanged();
    partial void OnTrangThaiChanging(string value);
    partial void OnTrangThaiChanged();
    partial void OnNgayDiChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayDiChanged();
    partial void OnNgayVeChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayVeChanged();
    #endregion
		
		public Tour()
		{
			this._Customers = new EntitySet<Customer>(new Action<Customer>(this.attach_Customers), new Action<Customer>(this.detach_Customers));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdTour", DbType="NVarChar(30) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string IdTour
		{
			get
			{
				return this._IdTour;
			}
			set
			{
				if ((this._IdTour != value))
				{
					this.OnIdTourChanging(value);
					this.SendPropertyChanging();
					this._IdTour = value;
					this.SendPropertyChanged("IdTour");
					this.OnIdTourChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenTour", DbType="NVarChar(100)")]
		public string TenTour
		{
			get
			{
				return this._TenTour;
			}
			set
			{
				if ((this._TenTour != value))
				{
					this.OnTenTourChanging(value);
					this.SendPropertyChanging();
					this._TenTour = value;
					this.SendPropertyChanged("TenTour");
					this.OnTenTourChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HanhTrinh", DbType="NVarChar(200)")]
		public string HanhTrinh
		{
			get
			{
				return this._HanhTrinh;
			}
			set
			{
				if ((this._HanhTrinh != value))
				{
					this.OnHanhTrinhChanging(value);
					this.SendPropertyChanging();
					this._HanhTrinh = value;
					this.SendPropertyChanged("HanhTrinh");
					this.OnHanhTrinhChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoNgay", DbType="Int")]
		public System.Nullable<int> SoNgay
		{
			get
			{
				return this._SoNgay;
			}
			set
			{
				if ((this._SoNgay != value))
				{
					this.OnSoNgayChanging(value);
					this.SendPropertyChanging();
					this._SoNgay = value;
					this.SendPropertyChanged("SoNgay");
					this.OnSoNgayChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GiaDiLai", DbType="Money")]
		public System.Nullable<double> GiaDiLai
		{
			get
			{
				return this._GiaDiLai;
			}
			set
			{
				if ((this._GiaDiLai != value))
				{
					this.OnGiaDiLaiChanging(value);
					this.SendPropertyChanging();
					this._GiaDiLai = value;
					this.SendPropertyChanged("GiaDiLai");
					this.OnGiaDiLaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GiaPhong", DbType="Money")]
		public System.Nullable<double> GiaPhong
		{
			get
			{
				return this._GiaPhong;
			}
			set
			{
				if ((this._GiaPhong != value))
				{
					this.OnGiaPhongChanging(value);
					this.SendPropertyChanging();
					this._GiaPhong = value;
					this.SendPropertyChanged("GiaPhong");
					this.OnGiaPhongChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ThongTin", DbType="NVarChar(1000)")]
		public string ThongTin
		{
			get
			{
				return this._ThongTin;
			}
			set
			{
				if ((this._ThongTin != value))
				{
					this.OnThongTinChanging(value);
					this.SendPropertyChanging();
					this._ThongTin = value;
					this.SendPropertyChanged("ThongTin");
					this.OnThongTinChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TrangThai", DbType="NVarChar(10)")]
		public string TrangThai
		{
			get
			{
				return this._TrangThai;
			}
			set
			{
				if ((this._TrangThai != value))
				{
					this.OnTrangThaiChanging(value);
					this.SendPropertyChanging();
					this._TrangThai = value;
					this.SendPropertyChanged("TrangThai");
					this.OnTrangThaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayDi", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayDi
		{
			get
			{
				return this._NgayDi;
			}
			set
			{
				if ((this._NgayDi != value))
				{
					this.OnNgayDiChanging(value);
					this.SendPropertyChanging();
					this._NgayDi = value;
					this.SendPropertyChanged("NgayDi");
					this.OnNgayDiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayVe", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayVe
		{
			get
			{
				return this._NgayVe;
			}
			set
			{
				if ((this._NgayVe != value))
				{
					this.OnNgayVeChanging(value);
					this.SendPropertyChanging();
					this._NgayVe = value;
					this.SendPropertyChanged("NgayVe");
					this.OnNgayVeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tour_Customer", Storage="_Customers", ThisKey="IdTour", OtherKey="MaTour")]
		public EntitySet<Customer> Customers
		{
			get
			{
				return this._Customers;
			}
			set
			{
				this._Customers.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Customers(Customer entity)
		{
			this.SendPropertyChanging();
			entity.Tour = this;
		}
		
		private void detach_Customers(Customer entity)
		{
			this.SendPropertyChanging();
			entity.Tour = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Customer")]
	public partial class Customer : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _Idcustomer;
		
		private string _TenCustomer;
		
		private System.Nullable<int> _TuoiCustomer;
		
		private string _Email;
		
		private string _DiaChi;
		
		private string _SDT;
		
		private string _MaTour;
		
		private EntityRef<Tour> _Tour;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdcustomerChanging(string value);
    partial void OnIdcustomerChanged();
    partial void OnTenCustomerChanging(string value);
    partial void OnTenCustomerChanged();
    partial void OnTuoiCustomerChanging(System.Nullable<int> value);
    partial void OnTuoiCustomerChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnDiaChiChanging(string value);
    partial void OnDiaChiChanged();
    partial void OnSDTChanging(string value);
    partial void OnSDTChanged();
    partial void OnMaTourChanging(string value);
    partial void OnMaTourChanged();
    #endregion
		
		public Customer()
		{
			this._Tour = default(EntityRef<Tour>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Idcustomer", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
		public string Idcustomer
		{
			get
			{
				return this._Idcustomer;
			}
			set
			{
				if ((this._Idcustomer != value))
				{
					this.OnIdcustomerChanging(value);
					this.SendPropertyChanging();
					this._Idcustomer = value;
					this.SendPropertyChanged("Idcustomer");
					this.OnIdcustomerChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenCustomer", DbType="NVarChar(100) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string TenCustomer
		{
			get
			{
				return this._TenCustomer;
			}
			set
			{
				if ((this._TenCustomer != value))
				{
					this.OnTenCustomerChanging(value);
					this.SendPropertyChanging();
					this._TenCustomer = value;
					this.SendPropertyChanged("TenCustomer");
					this.OnTenCustomerChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TuoiCustomer", DbType="Int")]
		public System.Nullable<int> TuoiCustomer
		{
			get
			{
				return this._TuoiCustomer;
			}
			set
			{
				if ((this._TuoiCustomer != value))
				{
					this.OnTuoiCustomerChanging(value);
					this.SendPropertyChanging();
					this._TuoiCustomer = value;
					this.SendPropertyChanged("TuoiCustomer");
					this.OnTuoiCustomerChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="NVarChar(100)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaChi", DbType="NVarChar(100)")]
		public string DiaChi
		{
			get
			{
				return this._DiaChi;
			}
			set
			{
				if ((this._DiaChi != value))
				{
					this.OnDiaChiChanging(value);
					this.SendPropertyChanging();
					this._DiaChi = value;
					this.SendPropertyChanged("DiaChi");
					this.OnDiaChiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SDT", DbType="VarChar(20)")]
		public string SDT
		{
			get
			{
				return this._SDT;
			}
			set
			{
				if ((this._SDT != value))
				{
					this.OnSDTChanging(value);
					this.SendPropertyChanging();
					this._SDT = value;
					this.SendPropertyChanged("SDT");
					this.OnSDTChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaTour", DbType="NVarChar(30)")]
		public string MaTour
		{
			get
			{
				return this._MaTour;
			}
			set
			{
				if ((this._MaTour != value))
				{
					if (this._Tour.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMaTourChanging(value);
					this.SendPropertyChanging();
					this._MaTour = value;
					this.SendPropertyChanged("MaTour");
					this.OnMaTourChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tour_Customer", Storage="_Tour", ThisKey="MaTour", OtherKey="IdTour", IsForeignKey=true)]
		public Tour Tour
		{
			get
			{
				return this._Tour.Entity;
			}
			set
			{
				Tour previousValue = this._Tour.Entity;
				if (((previousValue != value) 
							|| (this._Tour.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Tour.Entity = null;
						previousValue.Customers.Remove(this);
					}
					this._Tour.Entity = value;
					if ((value != null))
					{
						value.Customers.Add(this);
						this._MaTour = value.IdTour;
					}
					else
					{
						this._MaTour = default(string);
					}
					this.SendPropertyChanged("Tour");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591

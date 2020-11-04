create database QLDuLich

use QLDuLich
go

CREATE TABLE Tour (
    [IdTour]    NVARCHAR (30)   NOT NULL,
    [TenTour]   NVARCHAR (100)  NULL,
    [HanhTrinh] NVARCHAR (200)  NULL,
    [SoNgay]    INT             NULL,
    [GiaDiLai]  Money       NULL,
    [GiaPhong]  Money       NULL,
    [ThongTin]  NVARCHAR (1000) NULL,
    [TrangThai] NVARCHAR (10)   NULL,
    [NgayDi]    DATETIME        NULL,
    [NgayVe]    DATETIME        NULL,
    CONSTRAINT [pk_IdTour] PRIMARY KEY CLUSTERED ([IdTour] ASC)
);

CREATE TABLE Customer(
    Idcustomer   NVARCHAR (100) NOT NULL,
    TenCustomer NVARCHAR (100) NOT NULL,
    TuoiCustomer INT           NULL,
    Email        NVARCHAR (100) NULL,
    DiaChi      NVARCHAR (100) NULL,
    SDT         VARCHAR (20)  NULL,
    MaTour       NVARCHAR (30) NULL,
    CONSTRAINT pk_TenCustomer PRIMARY KEY (TenCustomer),
    CONSTRAINT [fk_MaTour] FOREIGN KEY ([MaTour]) REFERENCES [dbo].[Tour] ([IdTour])
);

CREATE TABLE Addmin(
    UserName nvarchar(50),
	Password nvarchar(50),
	PRIMARY KEY(Username)
	)
select * from Customer
select * from Addmin
select * from Tour
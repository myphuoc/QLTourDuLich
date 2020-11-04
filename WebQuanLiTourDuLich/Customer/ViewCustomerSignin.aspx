<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomerSignin.aspx.cs" Inherits="WebQuanLiTourDuLich.Customer.ViewCustomerSignin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="ISO-8859-1"/>
<title>HOME</title>
<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/css/mdb.min.css" rel="stylesheet"/>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        body {
	font-family: "Open Sans", sans-serif;
}

h2 {
	color: #000;
	font-size: 26px;
	font-weight: 300;
	text-align: center;
	text-transform: uppercase;
	position: relative;
	margin: 30px 0 80px;
}

h2 b {
	color: #ffc000;
}

h2::after {
	content: "";
	width: 100px;
	position: absolute;
	margin: 0 auto;
	height: 4px;
	background: rgba(0, 0, 0, 0.2);
	left: 0;
	right: 0;
	bottom: -20px;
}

.carousel {
	margin: 50px auto;
	padding: 0 70px;
}

.carousel .item {
	min-height: 330px;
	text-align: center;
	overflow: hidden;
}

.carousel .item .img-box {
	height: 160px;
	width: 100%;
	position: relative;
}

.carousel .item img {
	max-width: 100%;
	max-height: 100%;
	display: inline-block;
	position: absolute;
	bottom: 0;
	margin: 0 auto;
	left: 0;
	right: 0;
}

.carousel .item h4 {
	font-size: 18px;
	margin: 10px 0;
}

.carousel .item .btn {
	color: #333;
	border-radius: 0;
	font-size: 11px;
	text-transform: uppercase;
	font-weight: bold;
	background: none;
	border: 1px solid #ccc;
	padding: 5px 10px;
	margin-top: 5px;
	line-height: 16px;
}

.carousel .item .btn:hover, .carousel .item .btn:focus {
	color: #fff;
	background: #000;
	border-color: #000;
	box-shadow: none;
}

.carousel .item .btn i {
	font-size: 14px;
	font-weight: bold;
	margin-left: 5px;
}

.carousel .thumb-wrapper {
	text-align: center;
}

.carousel .thumb-content {
	padding: 15px;
}

.carousel .carousel-control {
	height: 100px;
	width: 40px;
	background: none;
	margin: auto 0;
	background: rgba(0, 0, 0, 0.2);
}

.carousel .carousel-control i {
	font-size: 30px;
	position: absolute;
	top: 50%;
	display: inline-block;
	margin: -16px 0 0 0;
	z-index: 5;
	left: 0;
	right: 0;
	color: rgba(0, 0, 0, 0.8);
	text-shadow: none;
	font-weight: bold;
}

.carousel .item-price {
	font-size: 13px;
	padding: 2px 0;
}

.carousel .item-price strike {
	color: #999;
	margin-right: 5px;
}

.carousel .item-price span {
	color: #86bd57;
	font-size: 110%;
}

.carousel .carousel-control.left i {
	margin-left: -3px;
}

.carousel .carousel-control.left i {
	margin-right: -3px;
}

.star-rating li {
	padding: 0;
}

.star-rating i {
	font-size: 14px;
	color: #ffc000;
}
.form{
    margin-left:10%;
    margin-right:10%;
}
.drop{
    margin-left: 20px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server" style="border:2px solid black;">
        <div style="height:150px;text-align:center;background-color:cadetblue; border:3px solid black">
            <a href="ViewCustomer.aspx" style="float:right;margin-right:10px;margin:40px;">
                <asp:Image ID="Image1" runat="server" style="width:30px;height:auto" ImageUrl="images/logout.png" />
            </a>
            <asp:Image ID="Image3" runat="server" ImageUrl="images/hearder.png" />
            <a href="ViewCustomer.aspx" style="float:left;margin-left:10px;margin-top:40px;">
                <asp:Image ID="Image2" runat="server" style="width:50px;height:auto" ImageUrl="images/home.png" />
            </a>
            
        </div>
        <br /><br />
        <div style="text-align:center">
         <h2><b style="text-align:center;color:brown;">ĐẶT TOUR DU LỊCH</b></h2>
          </div>
        <br />
        <div id="carouselExampleControls" class="carousel slide container"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="images/slide-home/1.jpg"
					alt="First slide" style="height: 500px; width: auto"/>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/slide-home/2.jpg"
					alt="Second slide" style="height: 500px; width: auto"/>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/slide-home/3.jpg"
					alt="Third slide" style="height: 500px; width: auto"/>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
        <br /><br />
        <div class="form">
            <asp:Label ID="Label1" runat="server" Text="Tên tour: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>

        </div>
        <br /><br />
        

        <br />
        <div class="form">
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" >
            <Columns>
                <asp:BoundField DataField="IdTour" HeaderText="ID Tour" />
                <asp:BoundField DataField="TenTour" HeaderText="Tên Tour" />
                <asp:BoundField DataField="HanhTrinh" HeaderText="Hành trình" />
                <asp:BoundField DataField="SoNgay" HeaderText="Số ngày" />
                <asp:BoundField DataField="GiaDiLai" HeaderText="Giá đi lại" />
                <asp:BoundField DataField="ThongTin" HeaderText="Thông tin" />
                <asp:BoundField DataField="TrangThai" HeaderText="Trạng thái" />
                <asp:BoundField DataField="NgayDi" HeaderText="Ngày đi" />
                <asp:BoundField DataField="NgayVe" HeaderText="Ngày về" />
                <asp:ButtonField CommandName="chon" Text="Đặt tour" />
            </Columns>
        </asp:GridView>
            <br /><br />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="WebQuanLiTourDuLich.Customer.ViewCustomer" %>

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
    background-color:burlywood;
    width:95%;
    border:2px solid black;
}
.btn1{
    margin-top:50px;
    margin-bottom:10px;
}

    </style>
</head>
<body style="margin-left:10%;">
    <form id="form1" runat="server" class="form">
        <div style="height:150px;text-align:center;background-color:cadetblue; border:3px solid black">
            <asp:Button  ID="btnSignIn" runat="server" CssClass="btn1" style="float: right;margin-right:20px" Text="SignIn" OnClick="btnSignIn_Click" />
            <asp:Image ID="Image1" runat="server" ImageUrl="images/hearder.png" />
            <asp:Button  ID="btnSignUP" runat="server" CssClass= "btn1" style="float: right;margin-right:20px" Text="SignUp" OnClick="btnSignUP_Click" />
            <a href="ViewCustomer.aspx" style="float:left;margin-left:10px;" class="btn1">
                <asp:Image ID="Image2" runat="server" style="width:50px;height:auto" ImageUrl="images/home.png" />
            </a>
        </div>
        <br /><br />
        <div style="text-align:center">
         <h2><b style="text-align:center;color:brown;">QUẢN LÍ TOUR DU LỊCH</b></h2>
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
	<!-- View product -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>
					Du lịch <b>Top 10 Việt Nam</b>
				</h2>
				<div id="myCarousel" class="carousel slide" data-ride="carousel"
					data-interval="0">
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
						<div class="item carousel-item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<a href="#"> <img src="images/dulich/1.jpg"
												class="img-responsive img-fluid" style="height:100px"/>
											</a>
										</div>
										<div class="thumb-content">
											<h4>Bà Nà Hill-Đà Nẵng</h4>
											<p class="item-price">
												<del>$400.00</del>
												<span>$912.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<a href="#"> <img src="images/dulich/2.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/>
											</a>
										</div>
										<div class="thumb-content">
											<h4>Phố cổ Hội An</h4>
											<p class="item-price">
												<del>$25.00</del>
												<span>$23.99</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										
										<a href="#">	<img src="images/dulich/3.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Vịnh Hạ Long</h4>
											<p class="item-price">
												<del>$899.00</del>
												<span>$649.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i
														class="fa fa-star-half-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
									<a href="#">		<img src="images/dulich/4.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Đảo Nam Du</h4>
											<p class="item-price">
												<del>$315.00</del>
												<span>$250.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item carousel-item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/5.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Đà Lạt</h4>
											<p class="item-price">
												<del>$289.00</del>
												<span>$269.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/6.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Cố đô Huế</h4>
											<p class="item-price">
												<del>$1099.00</del>
												<span>$869.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i
														class="fa fa-star-half-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/7.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Cầu Rồng-Đà Nẵng</h4>
											<p class="item-price">
												<del>$109.00</del>
												<span>$99.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/8.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Hà Giang</h4>
											<p class="item-price">
												<del>$599.00</del>
												<span>$569.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item carousel-item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/9.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Eo gió-Quy Nhơn</h4>
											<p class="item-price">
												<del>$369.00</del>
												<span>$349.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/10.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Hà Giang</h4>
											<p class="item-price">
												<del>$315.00</del>
												<span>$250.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/11.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/> </a>
										</div>
										<div class="thumb-content">
											<h4>Nha Trang</h4>
											<p class="item-price">
												<del>$450.00</del>
												<span>$418.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
										<a href="#">	<img src="images/dulich/12.jpg"
												class="img-responsive img-fluid" style="height:100px" alt=""/></a>
										</div>
										<div class="thumb-content">
											<h4>Đồi chè-Tây nguyên</h4>
											<p class="item-price">
												<del>$350.00</del>
												<span>$330.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">See more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Carousel controls -->
					<a class="carousel-control left carousel-control-prev"
						href="#myCarousel" data-slide="prev"> <i
						class="fa fa-angle-left"></i>
					</a> <a class="carousel-control right carousel-control-next"
						href="#myCarousel" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>
                <asp:Button ID="Button1" style="float:right;margin-right:200px;background-color:aqua" runat="server" Text="SellectAll" OnClick="Button1_Click" />

                <br /><br />
                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="chon" Text="Đặt tour" />
                    </Columns>
                </asp:GridView>
			</div>
		</div>
	</div>


    </form>
</body>
</html>

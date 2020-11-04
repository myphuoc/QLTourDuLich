<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormSignUp.aspx.cs" Inherits="WebQuanLiTourDuLich.Customer.FormSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title></title>
    <style>body{
	background: lightgreen;
	margin-left: 25%;
	margin-right: 25%;
}
.header{
	color: white;
	background: black;
	text-align: center;
	font-size: 1.5em;
	font-weight: bold;
	padding-top:10px;
	padding-bottom: 10px;
	border-radius: 10px 10px 0px 0px;
}
.div {
            background: white;
            border: 1px solid white;
            border-radius: 10px 10px 0px 0px;
            float: left;
            width: 100%;
            margin-right: 88px;
        }
form{
	padding-left: 5%;
	padding-right: 3%;
	width: 80%;
}
.div1{
	padding-left: 0px;
	padding-top: 30px;
}
label{
	width: 20%;
	float: left;
    height:30px;
}
.input{
	float: left;
	width: 70%;
	line-height: 20px;
	border-radius: 5px 5px;
    height:30px;
    margin-left: 20px;

}
.input_Name{
	float: left;
	width: 300px;
	line-height: 20px;
	border-radius: 5px 5px;
    height:30px;
}
.inputbtn{
	width: 100px;
	line-height: 20px;
	border-radius: 5px 5px;
    height:40px;
}
.margin_left{
	margin-left: 20px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div">
            <div class="header">
			ADD CUSTOMER
            </div>
            <div class="div1">
				<label>
					Tên tài khoản: 
				</label>
                <asp:TextBox ID="txtName" runat="server" class="input" placeholder="Username"></asp:TextBox>
			</div>
        <br /><br />
			<div class="div1">
				<label>
					Mật khẩu:
				</label>
				<asp:TextBox ID="txtPass" runat="server" class="input" placeholder="Password"></asp:TextBox>
			</div>
               <br /><br />
            <div class="div1">
				<label>
					Tuổi:
				</label>
				<asp:TextBox ID="txtTuoi" runat="server" class="input" placeholder="Password"></asp:TextBox>
			</div>
               <br /><br />
            <div class="div1">
				<label>
					Email:
				</label>
				<asp:TextBox ID="txtEmail" runat="server" class="input" placeholder="Password"></asp:TextBox>
			</div>
               <br /><br />
            <div class="div1">
				<label>
					Địa chỉ:
				</label>
				<asp:TextBox ID="txtDiaChi" runat="server" class="input" placeholder="Password"></asp:TextBox>
			</div>
               <br /><br />
            <div class="div1">
				<label>
					SĐT:
				</label>
				<asp:TextBox ID="txtSDT" runat="server" class="input" placeholder="Password"></asp:TextBox>
			</div>
               <br /><br />
            <div class="div1">
				<label>
					Mã tour:
				</label>
				<asp:TextBox ID="txtMatour" runat="server" class="input" placeholder="Password"></asp:TextBox>
			</div>
        <br /><br />
               <br /><br />
                    <asp:Button ID="Button2" runat="server" class="inputbtn" style="float:right; margin-right:20px;" Text="Add" OnClick="Button2_Click" />
           <br /><br />
        <hr />
            <asp:Button ID="Button1" runat="server" class="inputbtn" style="float:right; margin-right:20px;" Text="LogOut" OnClick="Button1_Click" />
        <br /><br />
        </div>
    </form>
</body>
</html>

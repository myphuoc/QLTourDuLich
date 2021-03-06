﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="WebQuanLiTourDuLich.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
	width: 12%;
	float: left;
    height:30px;
}
.input{
	float: left;
	width: 630px;
	line-height: 20px;
	border-radius: 5px 5px;
    height:30px;

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
    height:30px;
}
.margin_left{
	margin-left: 20px;
}
.margin_right{
    float: right;
    margin-right:300px;
    width:100px;
    border: 1px solid blue;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">
				<label>
					ID: 
				</label>
                <asp:TextBox ID="txtid" runat="server" class="input_Name" placeholder="Mã số tour"></asp:TextBox>
				<asp:TextBox ID="txtname" runat="server" class="input_Name margin_left" placeholder="Tên tour"></asp:TextBox>
			</div>
        <br /><br />
			<div class="div1">
				<label>
					Hành trình:
				</label>
				<asp:TextBox ID="txthanhtrinh" runat="server" class="input" placeholder="Hành trình"></asp:TextBox>
			</div>
        <br /><br />
			<div class="div1">
				<label>
					Số ngày:
				</label>
                <asp:TextBox ID="txtsongay" runat="server" class="input" placeholder="Số ngày"></asp:TextBox>
			</div>
        <br /><br />
            <div class="div1">
				<label>
					Giá: 
				</label>
				<asp:TextBox ID="txtphidilai" runat="server" class="input_Name" placeholder="Phí đi lại"/>
				<asp:TextBox ID="txtphiano" runat="server" class="input_Name margin_left" placeholder="Phí ăn ở"/>
			</div>
        <br /><br />
			<div class="div1">
				<label>
					Thông tin:
				</label>
                <asp:TextBox ID="txtthongtin" runat="server" class="input" placeholder="Thông tin"/>
			</div>
        <br /><br />
			<div class="div1">
				<label>
					Trạng thái:
				</label>
                <asp:TextBox ID="txttrangthai" runat="server" class="input" placeholder="Trạng thái"/>
			</div>
        <br /><br />
            <div class="div1">
				<label>
					Thời gian: 
				</label>
                <asp:TextBox ID="txtngaydi" runat="server" class="input_Name" placeholder="Ngày đi"></asp:TextBox>
				<asp:TextBox ID="txtngayve" runat="server" class="input_Name margin_left" placeholder="Ngày về"/>
			</div>
                    <br /><br />
        <asp:Button ID="Button2" runat="server" CssClass="margin_right" Text="ADD" OnClick="Button2_Click" />
        <br /><br /><br />
                <hr />
                    <a href="FormLogin.aspx" style="float:right;margin-right:100px;margin-top:40px;">
                <asp:Image ID="Image2" runat="server" style="width:40px;height:auto" ImageUrl="image/logout.png" />
            </a>
           <br /><br />
        <br /><br />

            <asp:Button ID="Button1" runat="server" class="inputbtn" style="float:left" Text="SelectAllTour" OnClick="Button1_Click1" />
        <br /><br /><br /><br />
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="IdTour" 
            AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True"
            OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
            OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating1">
           <EditRowStyle BorderColor="#3366FF" Font-Size="Larger" Font-Underline="False" />
        </asp:GridView>
            <br /><br />

    </form>
</body>
</html>

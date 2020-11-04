<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormLogin.aspx.cs" Inherits="WebQuanLiTourDuLich.FormLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Form Login </title>

</head>
<body style="background: lightgreen;">
    <form id="form1" runat="server" style="width: 30%;text-align:center;height:auto;background-color:aqua;margin-left: 25%;margin-right: 25%;" >
      <div  style="width:100%;height:300px;border-color:cadetblue;text-align:center;margin-top: 30px;">
        <div >
            <h3><asp:Image ID="Image1" runat="server" ImageUrl="image/login1.png" style="height:70px;width:auto" /></h3>
            <div style="float:left;width:100%">
                <asp:Label ID="Label1" runat="server" Text="Username" style="float:left;width:30%;height:30px;margin-top:10px;"></asp:Label>
                <asp:TextBox ID="txtTaiKhoan" runat="server" style="float:right;width:60%;margin-right:30px;height:30px"></asp:TextBox>
            </div>
            <br /><br /><br /><br />
            <div style="clear:left;float:left;width:100%">
                <asp:Label ID="Label2" runat="server" Text="Password" style="float:left;width:30%;height:30px;margin-top:10px;"></asp:Label>
                <asp:TextBox ID="txtMatKhau" type="password" runat="server" style="float:right;width:60%;margin-right:30px;height:30px"></asp:TextBox>
            </div>
            <br /><br />
                <asp:Button ID="Button1" runat="server" Text="Login" style="float:right;width:20%;margin-right:40px;margin-bottom: 10px;margin-top: 20px;height:30px" OnClick="Button1_Click1" />
                <br /><br /><br />
                <a href="FormAddAddmin.aspx">SignUp</a>
        </div>
          
            
    </div>    
    </form>
    
</body>
</html>

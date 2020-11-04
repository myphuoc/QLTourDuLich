<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageBox.aspx.cs" Inherits="WebQuanLiTourDuLich.Customer.MessageBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
        <body">
    <form id="form1" runat="server" style="background-color:aquamarine; width: 20%;text-align:center;height:200px;margin-left: 25%;margin-right: 25%; border:3px solid black" >
      <div  style="width:100%;height:300px;border-color:cadetblue;text-align:center;margin-top: 10px;">
            <div>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/x.png" style="width:15px;float:right;margin-right:5px;" OnClick="ImageButton1_Click" />

            </div>
          <br />
            <h3><asp:Image ID="Image1" runat="server" ImageUrl="images/ok.png" style="height:60px;width:auto" /></h3>
            <div style="float:left;width:100%">
                    <h2 style="color:red;">
                        Đặt tour thành công
                    </h2>
            </div>
          
            
    </div>    
    </form>
</body>
</html>

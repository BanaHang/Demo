<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Managerlogin.aspx.cs" Inherits="WebModel1.Managerlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
            td
        {
            padding:15px;
            border-color:#00E5EE; 
            border-style:solid;            
        }
            .td1
        {
            width:120px;
            text-align:left;
        }
            #TextBox1,#TextBox2
        {
            width:100%;
            height:30px;
            border-width:1px;
            border-style:solid;
            border-color:#EDEDED
        }
            #Button1
        {
            width:120px;
            height:40px;
            background-color:White;
            color:Black;     
            border-color:#00E5EE;
            border-width:2px;
            border-style:solid;
        }
        
        #Button1:hover
        {
            background-color:#00E5EE;
            color:White;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header" style="height:100px; padding:20px; background-color:#00C5CD">
        <center><a href="index.aspx"><img alt="" src="images\logo1.png" style="vertical-align:middle; height:70px" /></a></center>
    </div>

    <div id="div1" runat="server" style="margin:50px">
    <center>
       <table width="600px" style="border-color:#00E5EE; border-style:solid">
          <tr style="height:80px; background-color:#00E5EE">
             <td colspan="2" style="color:white; font-size:x-large; font-weight:bold; font-family:@微软雅黑; text-align:center">管理员登录</td>
          </tr>
          <tr>
             <td class="td1">用户名：</td>
             <td class="td2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="用户名不能为空！"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
             <td class="td1">密码：</td>
             <td class="td2"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空！"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
             <td colspan="2" align="center" class="style1">
                 <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" />
             </td>
          </tr>
       </table>
       </center>
    </div>

    <div class="footer" style="background-color:#00C5CD; padding:5px; position:relative; width:100%">
    <center><h5 style=" color:White">Copyright &copy; 2017.SHIHANG All rights reserved.</h5>
    <h5 style=" color:White">航哥 仅供学习交流 Email:819409731@qq.com</h5></center>
    </div>
    </form>
</body>
</html>

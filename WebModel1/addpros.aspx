<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addpros.aspx.cs" Inherits="WebModel1.addpros" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellspacing="5px">
    <tr>
       <td colspan="2" align="center"><strong>产品添加</strong></td>
    </tr>
    <tr>
       <td>产品名称：</td>
       <td><asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
       <td>价格：</td>
       <td><asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
       <td>图片：</td>
       <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
    </tr>
    <tr>
       <td>产品类别：</td>
       <td><asp:DropDownList ID="DropDownList1" runat="server">
           <asp:ListItem>衣服</asp:ListItem>
           <asp:ListItem>裤子</asp:ListItem>
           <asp:ListItem>鞋子</asp:ListItem>
           <asp:ListItem>包</asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
       <td>产品子品牌：</td>
       <td><asp:DropDownList ID="DropDownList2" runat="server">
           <asp:ListItem>Neo</asp:ListItem>
           <asp:ListItem>originals</asp:ListItem>
           <asp:ListItem>SMC</asp:ListItem>
           <asp:ListItem>athletic</asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
       <td>产品简介：</td>
       <td><asp:TextBox ID="TextBox4" runat="server" Height="150px" TextMode="MultiLine" 
               Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
    <td></td>
    <td><asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" /></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>

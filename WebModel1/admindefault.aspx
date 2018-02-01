<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindefault.aspx.cs" Inherits="WebModel1.admindefault" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        #div1
        {
            position:relative;
            left:0px;
            top:0px;
        }
        #div2
        {
            width:85%;
            position:relative;
            left:150px;
            top:-500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header" style="height:100px; padding:20px; background-color:#00C5CD">
    <center><a href="index.aspx"><img alt="" src="images\logo1.png" style="vertical-align:middle; height:70px" /></a></center>
    </div>
    
    <div id="div1">
        <asp:TreeView ID="TreeView1" runat="server" Height="500px" Width="100%">
        <NodeStyle HorizontalPadding="5px" VerticalPadding="5px" />
            <Nodes>
                <asp:TreeNode Text="后台管理" Value="后台管理">
                    <asp:TreeNode Text="产品管理" Value="产品管理">
                        <asp:TreeNode Text="产品管理" Value="产品管理" NavigateUrl="~/manpros.aspx" 
                            Target="iframe1"></asp:TreeNode>
                        <asp:TreeNode Text="产品添加" Value="产品添加" NavigateUrl="~/addpros.aspx" 
                            Target="iframe1"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="订单管理" Value="订单管理">
                        <asp:TreeNode Text="订单管理" Value="订单管理" NavigateUrl="~/manorder.aspx" 
                            Target="iframe1"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="用户管理" Value="用户管理">
                        <asp:TreeNode Text="用户管理" Value="用户管理" NavigateUrl="~/manuser.aspx" 
                            Target="iframe1"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>

    <div id="div2">
    <iframe id="iframe1" runat="server" src="about:blank" frameborder="0" 
            style="height:500px; width:100%" name="iframe1">
    </iframe>
    </div>
    </form>

    <div class="footer" style="background-color:#00C5CD; padding:5px; position:relative; top:-500px ;width:100%">
    <center><h5 style=" color:White">Copyright &copy; 2017.SHIHANG All rights reserved.</h5>
    <h5 style=" color:White">航哥 仅供学习交流 Email:819409731@qq.com</h5></center>
    </div>
</body>
</html>

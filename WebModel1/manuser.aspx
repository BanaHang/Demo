<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manuser.aspx.cs" Inherits="WebModel1.manuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="用户名" ReadOnly="True" />
                <asp:BoundField DataField="Upassword" HeaderText="用户密码" ReadOnly="True" />
                <asp:BoundField DataField="Urealname" HeaderText="真实姓名" ReadOnly="True" />
                <asp:BoundField DataField="Uphone" HeaderText="联系电话" ReadOnly="True" />
                <asp:BoundField DataField="Uaddress" HeaderText="用户地址" ReadOnly="True" />
                <asp:BoundField DataField="Upostcode" HeaderText="邮政编码" ReadOnly="True" />
                <asp:CheckBoxField HeaderText="是否管理员" ReadOnly="True" DataField="IsManager" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>

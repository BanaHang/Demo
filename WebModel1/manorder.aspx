<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manorder.aspx.cs" Inherits="WebModel1.manorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating">
            <Columns>
                <asp:BoundField DataField="Pid" HeaderText="产品流水号" ReadOnly="True" />
                <asp:BoundField DataField="OrderName" HeaderText="下单用户名" ReadOnly="True" />
                <asp:BoundField DataField="OrderNum" HeaderText="订购数量" ReadOnly="True" />
                <asp:BoundField DataField="OrderTime" HeaderText="下单日期" ReadOnly="True" />
                <asp:CheckBoxField Text="是否已处理" DataField="IsDealed" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>

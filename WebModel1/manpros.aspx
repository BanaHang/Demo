﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manpros.aspx.cs" Inherits="WebModel1.manpros" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
            AutoGenerateEditButton="True" onrowdeleting="GridView1_RowDeleting" 
            onrowediting="GridView1_RowEditing" 
            onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowupdating="GridView1_RowUpdating" >
            <Columns>
                <asp:BoundField HeaderText="产品名称" DataField="Pname" />
                <asp:BoundField HeaderText="产品价格" DataField="Pprice" />
                <asp:BoundField HeaderText="产品图片" DataField="Pimage" />
                <asp:BoundField HeaderText="产品类别1" DataField="Ptype" />
                <asp:BoundField HeaderText="产品类别2" DataField="Pbrand" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
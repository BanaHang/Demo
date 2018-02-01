<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="productdetails.aspx.cs" Inherits="WebModel1.productdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" >
    <ItemTemplate>
     <table id="table1" border="1px;" style="height:auto;margin:50px;position:relative;left:20%;border-collapse:collapse;border-style:solid;border-color:#E6E6FA">
     <tr>
        <td align="center" valign="middle" rowspan="4" style="width:400px;">
        <img alt="product" src='<%#DataBinder.Eval(Container.DataItem,"Pimage")%>' width="100%"/>
        </td>
        <td align="left" style="width:400px;padding:15px"><strong><%#DataBinder.Eval(Container.DataItem,"Pname")%></strong></td>
     </tr>
     <tr>
        <td align="left" style="width:400px;padding:15px;">价格： ￥<%#DataBinder.Eval(Container.DataItem,"Pprice")%>元</td>
     </tr>
     <tr>
        <td align="left" style="width:400px;padding:15px">
            数量：
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>            
            </asp:DropDownList>
        </td>
     </tr>
     <tr>
        <td align="center" valign="middle" style="width:300px;">
            <asp:Button ID="Button1" runat="server" Text="提交订单" OnClick="Button1_Click" BorderStyle="Solid" BorderWidth="2px" BorderColor="#00C5CD" Width="150px" Height="50px" BackColor="White" />
        </td>
     </tr>
     </table>
</ItemTemplate>
</asp:DataList>
<div class="details" style="padding:100px">
    <hr style="color:Gray" />
    <h3>商品详情：</h3>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>
</asp:Content>

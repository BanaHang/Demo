<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="showpros.aspx.cs" Inherits="WebModel1.showpros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    a.links
    {
        color:Black;
    }
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="product" style=" margin:2px; padding-top:0.5px;padding-bottom:0.5px;padding-left:50px;padding-right:50px; background-color:#00E5EE; color:White; margin-bottom: 0px">
<h4>产品展示：<asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" Font-Size="Larger"></asp:Label></h4>
</div>    
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">

     <ItemTemplate>
     <table border="0" cellpadding="5px" cellspacing="15px" style="position:relative; left:10%">
     <tr>
     <td align="center" rowspan="3" valign="middle">
         <a href='productdetails.aspx?id=<%#DataBinder.Eval(Container.DataItem,"pid") %>' class="links">
         <img alt="a" src='<%#DataBinder.Eval(Container.DataItem,"Pimage") %>' 
         style="border:none"/>
         </a>
     </td>
     </tr>
     <tr>
     <td align="left" valign="middle" style="width:150px">
         <a href='productdetails.aspx?id=<%#DataBinder.Eval(Container.DataItem,"pid") %>' class="links">
         <strong><%#DataBinder.Eval(Container.DataItem,"Pname")%></strong>
         <br /><br />
         </a>
         价格： ￥<%#DataBinder.Eval(Container.DataItem,"Pprice")%>元<br />
     </td>
     </tr>
     </table>
     </ItemTemplate>

     </asp:DataList>

     <center>
     当前页码为：[<asp:Label ID="LabelPage" runat="server" Text="1"></asp:Label>]
     总页码为：[<asp:Label ID="LabelTotalPage" runat="server" Text=""></asp:Label>]
    <asp:LinkButton ID="LinkButtonFirst" runat="server" 
    onclick="LinkButtonFirst_Click">首页</asp:LinkButton>
    <asp:LinkButton ID="LinkButtonPrev" runat="server" 
    onclick="LinkButtonPrev_Click">上一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButtonNext" runat="server" 
    onclick="LinkButtonNext_Click">下一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButtonLast" runat="server" 
    onclick="LinkButtonLast_Click">尾页</asp:LinkButton>
    </center>
</asp:Content>

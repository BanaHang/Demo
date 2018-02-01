<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebModel1.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="margin:30px; padding:15px">
      <h2 style="font-family:@微软雅黑; color:#00C5CD;">用户中心：</h2>
      
      <h3 style="font-family:@微软雅黑; color:#00C5CD">未处理的订单：</h3>
      
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
           onrowdeleting="GridView1_RowDeleting">
           <Columns>
               <asp:BoundField DataField="Pname" HeaderText="商品名称" ReadOnly="True" />
               <asp:BoundField DataField="OrderNum" HeaderText="订单数目" ReadOnly="True" />
               <asp:BoundField DataField="OrderTime" HeaderText="下单时间" ReadOnly="True" />
               <asp:CommandField ShowDeleteButton="True" />
           </Columns>
       </asp:GridView>

      <h3 style="font-family:@微软雅黑; color:#00C5CD">已处理的订单：</h3>

       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
           <Columns>
               <asp:BoundField DataField="Pname" HeaderText="商品名称" ReadOnly="True" />
               <asp:BoundField DataField="OrderNum" HeaderText="订单数目" ReadOnly="True" />
               <asp:BoundField DataField="OrderTime" HeaderText="下单时间" ReadOnly="True" />
               <asp:ButtonField ButtonType="Button" Text="取消" />
           </Columns>
       </asp:GridView>
       <br />
       <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">退出登录</asp:LinkButton>
   </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebModel1.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
   #demo {
   background: #FFF;
   overflow:hidden;
   border: 1px dashed #CCC;
   width: 100%;
   }
   #indemo {
   float: left;
   width: 800%;
   }
   #demo1 {
   float: left;
   }
   #demo2 {
   float: left;
   }
   
   .type
   {
       height:230px;
   }
   .typeimg
   {
       margin:30px;
       border:1px solid #ccc;
       color:Gray;
       width:180px;
   }
   .typeimg:hover
   {
       color:Black;
       border: 1px solid #777;
   }
   .typeimg img
   {
       padding:5px;
   }
   .description
   {
       font-family:@微软雅黑;
       font-weight:bold;
       font-size:larger;
       text-align:center;
       padding:15px;
   }
   
    a.links
    {
        color:Black;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!--------------banner------------------>
<center>
<div id="demo">
   <div id="indemo">
   <div id="demo1">
   <a href="#"><img src="images\banner1.jpg"  alt="Sport for Girls"/></a>
   <a href="#"><img src="images\banner2.jpg" alt="Fashion"/></a>
   <a href="#"><img src="images\banner3.jpg" alt="Sport for Men"/></a>
   <a href="#"><img src="images\banner4.jpg" alt="Have Fun"/></a>
   </div>
   <div id="demo2"></div>
   </div>
</div>
</center>

<script>
  <!--
   var speed=30;
   var tab=document.getElementById("demo");
   var tab1=document.getElementById("demo1");
   var tab2=document.getElementById("demo2");
   tab2.innerHTML=tab1.innerHTML;
   function Marquee(){
   if(tab2.offsetWidth-tab.scrollLeft<=0)
   tab.scrollLeft-=tab1.offsetWidth
   else{
   tab.scrollLeft++;
   }
   }
   var MyMar=setInterval(Marquee,speed);
   tab.onmouseover=function() {clearInterval(MyMar)};
   tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
   -->
   </script>

   <!-----------banner end--------------->

   <!-----------type--------------------->

   <div class="type">
   <div class="typeimg" style="position:absolute; left:10%">
        <a href="showpros.aspx?brand=originals" target="_blank">
        <img src="images\type1.jpg" alt="originals"/>
        </a>
        <div class="description">originals</div>
   </div>

      <div class="typeimg" style="position:absolute; left:30%">
        <a href="showpros.aspx?brand=Neo" target="_blank">
        <img src="images\type2.jpg" alt="adidas neo"/>
        </a>
        <div class="description">adidas neo</div>
   </div>

      <div class="typeimg" style="position:absolute; left:50%">
        <a href="showpros.aspx?brand=SMC" target="_blank">
        <img src="images\type3.jpg" alt="Stella McCartney"/>
        </a>
        <div class="description">Stella McCartney</div>
   </div>
 
      <div class="typeimg" style="position:absolute; left:70%">
        <a href="showpros.aspx?brand=athletic" target="_blank">
        <img src="images\type4.png" alt="adidas athletics"/>
        </a>
        <div class="description">adidas athletics</div>
   </div>
   </div>

   <!-----------type end---------------->

   <!-------------content---------------->

   <div class="bancont" style=" background:#00C5CD; padding:2.5px 50px; color:White">
      <h2>商品展示</h2>
   </div>

   <div class="content">
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
   </div>

</asp:Content>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace WebModel1
{
    public partial class ShoppingCart : System.Web.UI.Page
    {

        BaseClass baseclass1 = new BaseClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["name"]==null)
            {
                Response.Redirect("UserLogin.aspx");
            }

            if(!Page.IsPostBack)
            {
                Bind();
            }
        }

        protected void Bind()
        {
            string name = Session["name"].ToString();
            string strsql1 = "select * from [Order] where [IsDealed] = true and [OrderName]='" + name + "' order by Orderid";
            DataTable dt1 = baseclass1.ReadTable(strsql1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();

            string strsql2 = "select * from [Order] where [IsDealed] = false and [OrderName]='" + name + "' order by Orderid";
            DataTable dt2 = baseclass1.ReadTable(strsql2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string strsql = "delete from [Order] where [OrderName]='" + Session["name"] + "' and [Pname]='"+GridView1.SelectedRow.Cells[0].Text+"' ";
            baseclass1.exesql(strsql);
            Bind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            Response.Redirect("index.aspx");
        }




    }
}
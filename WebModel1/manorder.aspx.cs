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
    public partial class manorder : System.Web.UI.Page
    {

        BaseClass baseclass1 = new BaseClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"]==null)
            {
                Response.Redirect("Managerlogin.aspx");
            }

            if(!Page.IsPostBack)
            {
                Bind();
            }
        }

        protected void Bind()
        {
            string strsql = "select * from [Order] order by Orderid";
            DataTable dt = baseclass1.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string strsql = "delete from [Order] where [Orderid]='" + (int)GridView1.DataKeys[e.RowIndex].Value + "'";
            baseclass1.exesql(strsql);
            Bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string str;
            CheckBox ck=(CheckBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
            if (ck.Checked == true)
            {
                str = "true";
            }
            else
            {
                str = "false";
            }
            string sqlstr = "update [Order] set [IsDealed]= '" + str + "' where [Orderid] = '" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            baseclass1.exesql(sqlstr);
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind();
        }



    }
}
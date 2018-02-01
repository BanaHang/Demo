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
    public partial class manpros : System.Web.UI.Page
    {

        BaseClass baseclass1 = new BaseClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"]==null)
            {
                Response.Redirect("Managerlogin.aspx");
            }

            Bind();
        }

        protected void Bind()
        {
            string strsql = "select * from [Product] order by pid";
            DataTable dt = baseclass1.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string strsql = "delete from [Product] where [pid]='"+ (int)GridView1.DataKeys[e.RowIndex].Value + "'";
            baseclass1.exesql(strsql);
            Bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string strsql = "update [Product] set [Pname]='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim() + "',[Pprice]='"
            + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim() + "',[Pimage]='"
            + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim() + "',[Ptype]='"
            + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim() + "',[Pbrand]='"
            + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim() + "' where [id]='"
            + (int)GridView1.DataKeys[e.RowIndex].Value + "'";

            baseclass1.exesql(strsql);
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
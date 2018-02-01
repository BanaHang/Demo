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
    public partial class manuser : System.Web.UI.Page
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
            string strsql = "select * from [User] order by UserID";
            DataTable dt = baseclass1.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string strsql = "delete from [User] where [UserID]='" + (int)GridView1.DataKeys[e.RowIndex].Value + "'";
            baseclass1.exesql(strsql);
            Bind();
        }
    }
}
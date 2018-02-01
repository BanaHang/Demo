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
    public partial class Managerlogin : System.Web.UI.Page
    {
        BaseClass baseclass1 = new BaseClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql = "select * from [User] where [Username] = '"+TextBox1.Text+"' and [Upassword] = '"+TextBox2.Text+"'";
            DataTable dt = new DataTable();
            dt = baseclass1.ReadTable(strsql);
            if(dt.Rows.Count>0)
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("admindefault.aspx");
            }
        }
    }
}
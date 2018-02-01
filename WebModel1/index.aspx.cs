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
    public partial class index : System.Web.UI.Page
    {
        BaseClass baseclass1 = new BaseClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlstr = "select top 9 * from [Product] order by pid";
            DataTable dt = new DataTable();
            dt = baseclass1.ReadTable(sqlstr);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}
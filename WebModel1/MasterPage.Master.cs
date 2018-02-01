using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebModel1
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            div1.Visible = false;
            div2.Visible = false;
            if (Session["name"] != null)
            {
                Label1.Text ="Welcome," + Session["name"].ToString();
                div1.Visible = false;
                div2.Visible = true;
            }
            else
            {
                div1.Visible = true;
                div2.Visible = false;
            }
        }
    }
}
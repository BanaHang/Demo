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
    public partial class productdetails : System.Web.UI.Page
    {
        BaseClass baseclass1 = new BaseClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string sqlstr = "select * from [Product] where [pid] =" + Request.QueryString["id"];
                DataTable dt = baseclass1.ReadTable(sqlstr);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                Label1.Text=dt.Rows[0].ItemArray[6].ToString();
                
            }
        }

        protected void Button1_Click(object sender,EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Write("<script>alert(\"请先登录！\");</script>");
            }
            else
            {
                int pid = Convert.ToInt32(Request.QueryString["id"]);

                string strname = "select [Pname] from [Product] where [pid]=" + Request.QueryString["id"];
                DataTable dtname= baseclass1.ReadTable(strname);
                string pname = dtname.Rows[0].ItemArray[0].ToString();

                DropDownList dp = (DropDownList)this.DataList1.Items[0].FindControl("DropDownList1");
                string s = dp.SelectedValue.ToString();
                string strsql = "insert into [Order] ([Pid],[Pname],[OrderNum],[OrderName],[OrderTime]) values ('" + pid + "','"+pname+"'," +Convert.ToInt32(s) + ",'" + Session["name"].ToString() + "','" + DateTime.Today.ToShortDateString() + "')";
                //Response.Write("<script>alert(\"'" + s + "'\");</script>");
                baseclass1.exesql(strsql);
                Response.Write("<script>alert(\"订单提交成功，您还可以选购其他产品！\");</script>");
                Response.Redirect("showpros.aspx?id=%");
            }
        }
    }
}
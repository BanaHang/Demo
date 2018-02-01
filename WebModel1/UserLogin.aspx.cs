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
    public partial class UserLogin : System.Web.UI.Page
    {
        BaseClass baseclass1 = new BaseClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            div1.Visible = false;
            div2.Visible = false;
            if (!Page.IsPostBack)
            {
                ShowDiv();
            }
        }

        protected void ShowDiv()
        {
            if (Request.QueryString["id"].ToString() == "login")
            {
                div1.Visible = true;
                div2.Visible = false;
            }
            else
            {
                div1.Visible = false;
                div2.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlstr = "select * from [User] where [Username]='" + TextBox1.Text + "' and [Upassword]='" + TextBox2.Text + "'";
            DataSet ds = new DataSet();
            ds = baseclass1.GetDataSet(sqlstr,"username");
            if (ds.Tables["username"].Rows.Count == 0)
            {
                string alertstr = "alert('" + "用户名不存在或密码错误，请确认后再次登录！" + "')";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "warning", alertstr, true);
            }
            else
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("index.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(CustomValidator1.IsValid==true)
            {
                string strsql = "insert into [User] ([Username],[Upassword],[Urealname],[Uphone],[Uaddress],[Upostcode]) values ('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                baseclass1.exesql(strsql);
                Response.Write("<script>alert(\"注册成功！\");</script>");
                Session["name"] = TextBox3.Text;
                Response.Redirect("index.aspx");
            }
        }

        protected void CustomValidator1_ServeValidate(object source,ServerValidateEventArgs args)
        {
            string strsql = "select * from [User] where [Username] ='"+args.Value.ToString()+"'";
            DataSet ds = new DataSet();
            ds = baseclass1.GetDataSet(strsql,"username");
            if (ds.Tables["name"].Rows.Count > 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}
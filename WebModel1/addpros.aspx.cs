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
    public partial class addpros : System.Web.UI.Page
    {

        BaseClass baseclass1 = new BaseClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"]==null)
            {
                Response.Redirect("Managerlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string getpidstr = "select Max(pid) from [Product]";
            DataTable dt1=baseclass1.ReadTable(getpidstr);
            string forepid = dt1.Rows[0].ItemArray[0].ToString();

            int newpid = Convert.ToInt32(forepid)+1;

            string ins = "insert into [Product]([pid],[Pname],[Pprice],[Pimage],[Ptype],[Pbrand],[Pintroduction]) values ('"+
                newpid+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+FileUpload1.FileName+"','"+DropDownList1.SelectedValue+"','"+
                DropDownList2.SelectedValue+"','"+TextBox4.Text+"')";

            baseclass1.exesql(ins);
            
            if(FileUpload1.HasFile==true)
            {
                FileUpload1.SaveAs(Server.MapPath(("images/") + FileUpload1.FileName));
            }

            Response.Write("<script>alert(\"产品添加成功！\");</script>");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
        }


    }
}
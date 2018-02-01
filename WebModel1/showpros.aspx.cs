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
    public partial class showpros : System.Web.UI.Page
    {

        BaseClass BaseClass1 = new BaseClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) getGoods();
        }

        private void getGoods()
        {
            string strsql = "";
            if (Request.QueryString["id"] != null)
            {
                strsql = "select * from [Product] where [Ptype] like '" + Request.QueryString["id"].ToString() + "' order by pid";
                Label1.Text = Request.QueryString["id"].ToString();
            }
            else
            {
                strsql = "select * from [Product] where [Pbrand] like '" + Request.QueryString["brand"].ToString() + "' order by pid";
                Label1.Text = Request.QueryString["brand"].ToString();
            }

            DataTable dt = BaseClass1.ReadTable(strsql);


            //实现分页
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = dt.DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 9;
            int curpage = Convert.ToInt32(this.LabelPage.Text);
            pds.CurrentPageIndex = curpage - 1;
            if (pds.CurrentPageIndex < 0)
            {
                pds.CurrentPageIndex = 0;
            }
            if (pds.PageCount == 1)
            {
                LinkButtonPrev.Enabled = false;
                LinkButtonNext.Enabled = false;
            }
            else
            {
                if (curpage == 1)
                {
                    LinkButtonPrev.Enabled = false;
                    LinkButtonNext.Enabled = true;
                }
                if(curpage==pds.PageCount)
                {
                    LinkButtonPrev.Enabled = true;
                    LinkButtonNext.Enabled = false;
                }
            }
            this.LabelTotalPage.Text = Convert.ToString(pds.PageCount);
            DataList1.DataSource = pds;
            DataList1.DataBind();
        }

        protected void LinkButtonFirst_Click(object sender, EventArgs e)
        {
            this.LabelPage.Text = "1";
            getGoods();
        }

        protected void LinkButtonPrev_Click(object sender, EventArgs e)
        {
            this.LabelPage.Text = (Convert.ToInt32(this.LabelPage.Text) - 1).ToString();
            getGoods();
        }

        protected void LinkButtonNext_Click(object sender, EventArgs e)
        {
            this.LabelPage.Text = (Convert.ToInt32(this.LabelPage.Text) + 1).ToString();
            getGoods();
        }

        protected void LinkButtonLast_Click(object sender, EventArgs e)
        {
            this.LabelPage.Text = this.LabelTotalPage.Text;
            getGoods();
        }


    }
}
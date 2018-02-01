using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace WebModel1
{
    public class BaseClass:System.Web.UI.Page
    {
        string strconn;
        public BaseClass()
        {
            strconn = System.Configuration.ConfigurationManager.ConnectionStrings["WebModelDBConnectionString"].ConnectionString;
            
        }

        public DataTable ReadTable(string strsql) //读取数据，返回datatable
        {
            DataTable dt = new DataTable();
            OleDbConnection conn = new OleDbConnection(strconn);
            conn.Open();
            OleDbDataAdapter adp = new OleDbDataAdapter(strsql,conn);
            adp.Fill(dt);
            conn.Close();
            return dt;
        }

        public DataSet ReadDataset(string strsql) //读取数据，返回dataset
        {
            DataSet ds = new DataSet();
            OleDbConnection conn = new OleDbConnection(strconn);
            conn.Open();
            OleDbDataAdapter adp = new OleDbDataAdapter(strsql,conn);
            adp.Fill(ds);
            conn.Close();
            return ds;
        }

        public DataSet GetDataSet(string strsql,string tableName)  //读取数据，返回dataset，并给datatable赋名
        {
            DataSet ds = new DataSet();
            OleDbConnection conn = new OleDbConnection(strconn);
            conn.Open();
            OleDbDataAdapter adp = new OleDbDataAdapter(strsql,conn);
            adp.Fill(ds,tableName);
            conn.Close();
            return ds;
        }

        public OleDbDataReader readrow(string sql)  //执行sql查询，返回Reader
        {
            OleDbConnection conn = new OleDbConnection(strconn);
            conn.Open();
            OleDbCommand cmd = new OleDbCommand(sql,conn);
            OleDbDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                cmd.Dispose();
                return reader;
            }
            else
            {
                cmd.Dispose();
                return null;
            }
        }

        public string Readstr(string strsql,int flag)  //返回查询结果第一行第flag列的数据
        {
            DataSet ds = new DataSet();
            string str;
            OleDbConnection conn = new OleDbConnection(strconn);
            conn.Open();
            OleDbDataAdapter adp = new OleDbDataAdapter(strsql,conn);
            adp.Fill(ds);
            str = ds.Tables[0].Rows[0].ItemArray[flag].ToString();
            conn.Close();
            return str;
        }

        public void exesql(string strsql)  //用来执行sql更新语句(增删改)
        {
            OleDbConnection conn = new OleDbConnection(strconn);
            OleDbCommand cmd = new OleDbCommand(strsql,conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}
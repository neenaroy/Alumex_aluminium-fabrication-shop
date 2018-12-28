using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlClient;
using System.Configuration;

public partial class Guest_add_to_cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("modelid");
            dt.Columns.Add("modelname");
            dt.Columns.Add("modelimage");
            dt.Columns.Add("cost");
            dt.Columns.Add("totalcost");

            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {
                    Class1 obj = new Class1();
                    obj.getconnect();
                    SqlCommand cmd= new SqlCommand("spmodel", obj.con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@flag", 4);
                    cmd.Parameters.Add("@model_id", Request.QueryString["id"].ToString());
                    dr = dt.NewRow();
                   // Class1 obj = new Class1();
                  //  obj.getconnect();
                   // String filename = Path.Combine(Server.MapPath("~/Admin/images/"), FileUpload1.FileName);
                   // SqlCommand cmd = new SqlCommand("spcategory", obj.con);
                   // cmd.CommandType = CommandType.StoredProcedure;
                  //  String mycon = "Data Source=NEENA\\SQLEXPRESS;Initial Catalog=alumex;Integrated Security=True";
                  //  SqlConnection scon = new SqlConnection(mycon);
                  //  String myquery = "select * from  where modelid=" + Request.QueryString["id"];
                 // SqlCommand cmd = new SqlCommand();
                 
                  //  cmd.CommandText = myquery;
                 //   cmd.Connection = scon;
                  //  DataTable dt = new DataTable();
                  //  SqlDataAdapter adt = new SqlDataAdapter(cmd2);
                  //  adt.Fill(dt);


                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["modelid"] = ds.Tables[0].Rows[0]["model_id"].ToString();
                    dr["modelname"] = ds.Tables[0].Rows[0]["model_name"].ToString();
                    dr["modelimage"] = ds.Tables[0].Rows[0]["model_image"].ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    Class1 obj = new Class1();
                    obj.getconnect();
                    SqlCommand cmd = new SqlCommand("spmodel", obj.con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@flag", 4);
                    cmd.Parameters.Add("@model_id", Request.QueryString["id"].ToString());
                    dr = dt.NewRow();
                   // String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=haritiShopping;Integrated Security=True";
                   // SqlConnection scon = new SqlConnection(mycon);
                  //  String myquery = "select * from model_tb where modelid=" + Request.QueryString["id"];
                   // SqlCommand cmd = new SqlCommand();
                  //  cmd.CommandText = myquery;
                  //  cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["modelid"] = ds.Tables[0].Rows[0]["model_id"].ToString();
                    dr["modelname"] = ds.Tables[0].Rows[0]["model_name"].ToString();
                    dr["modelimage"] = ds.Tables[0].Rows[0]["model_image"].ToString();
                   // dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

        }
    }
   

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Markup;
using System.Net;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;

public partial class Guest_purchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["category"] != null)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource2;
            DataList1.DataBind();
        }
      /*  if (Request.QueryString["id"] != null)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource4;
            DataList1.DataBind();
        }*/
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase.aspx?category=103");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase.aspx?category=102");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase.aspx?category=106");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase.aspx?category=105");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase.aspx?category=104");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        DataList1.DataSource = SqlDataSource1;
        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spcart", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@mobile", Session["username"].ToString());
        cmd1.Parameters.Add("@model_id", Request.QueryString["id"].ToString());
        //  cmd1.Parameters.Add("@model_name", );

        cmd1.Parameters.Add("@status", 1);
        cmd1.Parameters.Add("@delivery", "not delivered");
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('Added to Your Wishlist')</script>");
    }
}
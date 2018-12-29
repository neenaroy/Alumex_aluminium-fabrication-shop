using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Windows.Markup;
using System.Net;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Text;

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
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase.aspx?category=103");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase.aspx?category=102");
     //   Response.Redirect("purchase.aspx?id=100");

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
       
         //   DataList1.DataSourceID = null;
         //   DataList1.DataSource = SqlDataSource4;
         //   DataList1.DataBind();

            Class1 obj = new Class1();
            obj.getconnect();
            if (Request.QueryString["id"] == null)
            {
                SqlCommand cmd2 = new SqlCommand("spmodel", obj.con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add("@flag", 1);
                cmd2.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd3 = new SqlCommand("spmodel", obj.con);
                cmd3.CommandType = CommandType.StoredProcedure;
                cmd3.Parameters.Add("@flag", 4);
                cmd3.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("spcart", obj.con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.Add("@flag", 0);
                cmd1.Parameters.Add("@mobile", Session["username"].ToString());
                cmd1.Parameters.Add("@model_id", Request.QueryString["id"].ToString());
                //    cmd1.Parameters.Add("@model_id", dt.Rows[0][1].ToString());

                cmd1.Parameters.Add("@status", 1);
                cmd1.Parameters.Add("@delivery", "not delivered");

                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Added to Your Wishlist')</script>");
            }
          /*  DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd2);
            adt.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Redirect("purchase.aspx?id=" + dt.Rows[0][1].ToString());

            }*/
            //throw new NotImplementedException();
            //   if (Request.QueryString["id"] != null)
            //  {
            //     for (int i = 0; i)
            //     {
           
            // }
     //   }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // Response.Redirect("purchase.aspx?id="+DataList1.SelectedValue.ToString());
      //  Response.Redirect("purchase.aspx?id=" + DataList1.SelectedIndex);
     //   int idx = DataList1.SelectedIndex;
     //   Label lbl = (Label)DataList1.Items[idx].FindControl("model_idLabel");
    //    int id = Convert.ToInt32(DataList1.SelectedValue);

    }
   
}
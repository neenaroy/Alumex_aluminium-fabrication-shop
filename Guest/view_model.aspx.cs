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


public partial class Guest_view_model : System.Web.UI.Page
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


    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        DataList1.DataSource = SqlDataSource1;
        DataList1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_model.aspx?category=Kitchen Remodeling ");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_model.aspx?category=Windows ");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_model.aspx?category=Roof tops ");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_model.aspx?category=Doors and curtains");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_model.aspx?category=Staircases ");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      Response.Redirect("add_to_cart.aspx");
       /* Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd1 = new SqlCommand("sp_booking", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 1);
        cmd1.Parameters.Add("@username", Session["username"].ToString());
        cmd1.Parameters.Add("@food_id", Request.QueryString["id"].ToString());
       // cmd1.Parameters.Add("@foodquantity", txtquantity.Text);
        cmd1.Parameters.Add("@status", 1);
        cmd1.Parameters.Add("@delivery", "not delivered");
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('Added to Your Wishlist')</script>");
      //  txtquantity.Text = "";
       // lbltamt.Text = "";*/
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {
            Response.Redirect("add_to_cart.aspx?id=" + e.CommandArgument.ToString());

        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      //  Response.Redirect("add_to_cart.aspx?id=" + DataList1.SelectedRow.Cells[0].Text);
    }
}
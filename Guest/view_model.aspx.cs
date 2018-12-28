using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
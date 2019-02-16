using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Guest_my_cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       // Response.Redirect("view_model.aspx?id="+<%# Eval("cat_id") %>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spbooking", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@mobile", Session["username"].ToString());
        cmd1.Parameters.Add("@model_id", Request.QueryString["model"].ToString());
        cmd1.Parameters.Add("@item_code", Request.QueryString["item"].ToString());
        cmd1.Parameters.Add("@status", 1);
        cmd1.Parameters.Add("@delivery", "not delivered");
        cmd1.ExecuteNonQuery();
        Response.Redirect("user_purchase.aspx");
        Response.Write("<script>alert('Order placed sucessfully')</script>");
    }
}
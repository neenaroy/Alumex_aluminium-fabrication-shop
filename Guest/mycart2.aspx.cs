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

public partial class Guest_mycart2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spbooking", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 7);
        cmd1.Parameters.Add("@model_id", Request.QueryString["id"].ToString());
        cmd1.Parameters.Add("@status"," 1");
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('booked sucessfully')</script>");
       Response.Redirect("my_cart.aspx");
    }
    
}
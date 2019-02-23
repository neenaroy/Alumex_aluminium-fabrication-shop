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


public partial class view_order_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnaprove_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spbooking", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 6);
        cmd1.Parameters.Add("@book_id", Request.QueryString["id"].ToString());
        cmd1.Parameters.Add("@delivery","approved");
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('approved sucessfully')</script>");
        Response.Redirect("view_order_customer.aspx");

    }
    protected void btnreject_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spbooking", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 6);
        cmd1.Parameters.Add("@book_id", Request.QueryString["id"].ToString());
        cmd1.Parameters.Add("@delivery", "rejected");
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('rejected sucessfully')</script>");
        Response.Redirect("view_order_customer.aspx");

    }
}
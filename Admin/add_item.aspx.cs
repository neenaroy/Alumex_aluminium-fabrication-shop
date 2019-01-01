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

public partial class Admin_add_item : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
        HttpContext.Current.Response.Cache.SetValidUntilExpires(false);
        HttpContext.Current.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoStore();
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("~/Guest/login.aspx");
        }
    }
    protected int get_id()
    {
        int id = 99;
        int a = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spitem", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            a = Int32.Parse(dt.Rows[i][0].ToString());
            if (a > id)
            {
                id = a;
            }
        }
        id = id + 1;
        return id;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spitem", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag",0);
        cmd1.Parameters.Add("@item_id", get_id());
        cmd1.Parameters.Add("@item_name", txtitem_name.Text); 
        cmd1.Parameters.Add("@item_code", txtitem_code.Text);
        
   
        SqlCommand cmd2 = new SqlCommand("spitem", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 3);
        cmd2.Parameters.Add("@item_name", txtitem_name.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd2);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Item already exist')</script>");

        }
        else
        {
            cmd1.ExecuteNonQuery();
            obj.closeconnect();
            Response.Write("<script>alert('Item added succesfully')</script>");
            clear();
        }      
          
    }
    protected void clear()
    {
        txtitem_name.Text = "";
        txtitem_code.Text = "";
    }
}
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

public partial class Admin_add_attendance : System.Web.UI.Page
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sValue1 = GridView1.SelectedRow.Cells[1].Text;
        string sValue2 = GridView1.SelectedRow.Cells[2].Text;
        string sValue3 = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sValue1 = GridView1.SelectedRow.Cells[1].Text;
        string sValue2 = GridView1.SelectedRow.Cells[2].Text;
        string sValue3 = GridView1.SelectedRow.Cells[3].Text;
         
       //If accessing TemplateField column then you can use FindControl method


     /*  SqlConnection conn = new SqlConnection("<Your database Connection String>");
       string sql = "INSERT INTO TableName (Column1,Column2,Column3) VALUES (@Val1,@Val2,@Val3)";
       try
       {
	   conn.Open();
           SqlCommand cmd = new SqlCommand(sql, conn);
           cmd.Parameters.AddWithValue("@Val1", sValue1);
           cmd.Parameters.AddWithValue("@Val2", sValue2);
           cmd.Parameters.AddWithValue("@Val3", sValue3);
           cmd.CommandType = CommandType.Text;
           cmd.ExecuteNonQuery();*/
        Class1 obj = new Class1();
        obj.getconnect();
    
        SqlCommand cmd1 = new SqlCommand("spattendance", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 1);
        cmd1.Parameters.Add("@att_id",4);
        cmd1.Parameters.Add("@emp_id", sValue1);
        cmd1.Parameters.Add("@emp_fname", sValue2);
        cmd1.Parameters.Add("@emp_mobile", sValue3);
        cmd1.Parameters.Add("@att_stsus", 4);

        cmd1.ExecuteNonQuery();
       // Label2.Text = "Data Has Been Saved Successfully";
    } 
}
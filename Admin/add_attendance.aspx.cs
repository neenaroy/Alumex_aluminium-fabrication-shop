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
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int Id = 0;
        List<string> idList = new List<string>();

        for (int i=0;i<GridView1.Rows.Count;i++)
        {

            var sample = "CheckBox" + (i + 1);
            var sample1 = GridView1.Rows[i].FindControl(sample);
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cb.Checked)
            {
                Id = Convert.ToInt32(GridView1.Rows[i].Cells[1].Text);
                idList.Add(Convert.ToString(Id));
            }
        }
        string joined = string.Join(",", idList);
        Class1 obj = new Class1();
        obj.getconnect();  
        SqlCommand cmd1 = new SqlCommand("spattendance", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@Emp_idlist", joined);
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert(' attendence added succesfully')</script>");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
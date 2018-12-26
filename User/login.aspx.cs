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

public partial class User_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("splogin", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 1);
        cmd1.Parameters.Add("@mobile", txtmobile.Text);
        cmd1.Parameters.Add("@password", txtpswd.Text);
        DataTable dt1 = new DataTable();
        SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
        adt1.Fill(dt1);

    if (dt1.Rows.Count > 0)
         {
            Session["username"] = txtmobile.Text;
                if (dt1.Rows[0][3].ToString().CompareTo("admin") == 0)
            {
                clear();
                Response.Redirect("~/Admin/admin_home.aspx");
            }
    else
            {
                Response.Redirect("~/User/userhome.aspx");
                Session.RemoveAll();
            }
        }
    else
        {
            Response.Write("<script>alert('incorrect password')</script>");
            
        }
    }
    protected void clear()
    {
        txtmobile.Text = "";
        txtpswd.Text = "";
    }
}
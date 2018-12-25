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

public partial class User_add_feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int get_id()
    {
        int id = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spfeedback", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            id = Int32.Parse(dt.Rows[i][0].ToString());

        }
        id = id + 1;
        return id;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spfeedback", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@fdbk_id", get_id());
        cmd.Parameters.Add("@feedback", txtfdbk.Text);
        cmd.Parameters.Add("@mobile", Session["username"].ToString());
        cmd.ExecuteNonQuery();
        obj.closeconnect();
        Response.Write("<script>alert('incorrect password')</script>");
        clear();
        }
    protected void clear()
    {
        txtfdbk.Text = "";
    }
}
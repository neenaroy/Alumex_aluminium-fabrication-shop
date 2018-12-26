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

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spattendance", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag",0);
         cmd1.Parameters.Add("@att_date",txtdoa.Text);
         cmd1.ExecuteNonQuery();
       //  cmd1.Parameters.Add("@att_status",);
       /*  cmd1.Parameters.Add("@emp_lname", txtlname.Text);
         cmd1.Parameters.Add("@emp_house", txthousename.Text);
         cmd1.Parameters.Add("@emp_email", txtemail.Text);
         cmd1.Parameters.Add("@emp_mobile", txtmobile.Text);
         cmd1.Parameters.Add("@emp_doj", txtdoj.Text);
         cmd1.Parameters.Add("@emp_loc", txtloc.Text);

         SqlCommand cmd2 = new SqlCommand("spemp", obj.con);
         cmd2.CommandType = CommandType.StoredProcedure;
         cmd2.Parameters.Add("@flag", 3);
         cmd2.Parameters.Add("@emp_mobile", txtmobile.Text);
         DataTable dt = new DataTable();
         SqlDataAdapter adt = new SqlDataAdapter(cmd2);
         adt.Fill(dt);
         if (dt.Rows.Count > 0)
           {
               Response.Write("<script>alert('Employee with same phone number already exist')</script>");

           }
         else
           {
              cmd1.ExecuteNonQuery();
              obj.closeconnect();
              Response.Write("<script>alert(' Employee added succesfully')</script>");
           
     }*/
    }
}
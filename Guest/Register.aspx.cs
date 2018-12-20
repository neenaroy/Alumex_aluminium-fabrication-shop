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

public partial class Guest_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int get_id()
    {
        int id = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("splogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag",4);
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
            SqlCommand cmd = new SqlCommand("splogin", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 0);
            cmd.Parameters.Add("@loginid", get_id());
            cmd.Parameters.Add("@mobile", txtmobile.Text);
            cmd.Parameters.Add("@password", txtpswd.Text);
            cmd.Parameters.Add("@usertype", "user");

            SqlCommand cmd1 = new SqlCommand("spregister", obj.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@flag", 0);
            cmd1.Parameters.Add("@reg_id", get_id());
            cmd1.Parameters.Add("@fname", txtfname.Text);
            cmd1.Parameters.Add("@lname", txtlname.Text);
            cmd1.Parameters.Add("@house", txthousename.Text);
            cmd1.Parameters.Add("@email", txtemail.Text);
            cmd1.Parameters.Add("@mobile", txtmobile.Text);
            cmd1.Parameters.Add("@location", txtloc.Text);
            cmd1.Parameters.Add("@password", txtpswd.Text);


            SqlCommand cmd2 = new SqlCommand("spregister", obj.con);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add("@flag", 3);
            cmd2.Parameters.Add("@mobile", txtmobile.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd2);
            adt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('User with same phone number already exist')</script>");

            }
            else
            {
                cmd.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Registerd succesfully')</script>");
                clear();
            }
    }
    protected void clear()
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txthousename.Text = "";
        txtemail.Text = "";
        txtmobile.Text = "";
        txtloc.Text = "";
        txtpswd.Text = "";
        txtrpswd.Text = "";

    }
}
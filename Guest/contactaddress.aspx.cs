﻿using System;
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


public partial class Guest_contactaddress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected int get_id()
    {
        int id = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spcontact", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 3);
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
            SqlCommand cmd1 = new SqlCommand("spcontact", obj.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@flag", 0);
            cmd1.Parameters.Add("@contact_id", get_id());
            cmd1.Parameters.Add("@fname", txtfname.Text);
            cmd1.Parameters.Add("@lname", txtlname.Text);
            cmd1.Parameters.Add("@house", txthouse.Text);
            cmd1.Parameters.Add("@email", txtemail.Text);
            cmd1.Parameters.Add("@mobile", Session["username"].ToString());
            cmd1.Parameters.Add("@location", txtlocation.Text);
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('Details added succesfully')</script>");
           clear();
            }
    protected void clear()
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txthouse.Text = "";
        txtemail.Text = "";
        txtlocation.Text = "";
    }
}
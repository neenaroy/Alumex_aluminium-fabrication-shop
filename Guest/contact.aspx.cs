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


public partial class Guest_contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spenquiry", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@phone", txtphone.Text);
        cmd1.Parameters.Add("@message", txtmsg.Text);
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('Send Your Message succesfully')</script>");
        obj.closeconnect();
        clear();
    }
    protected void clear()
    {
        txtphone.Text = "";
        txtmsg.Text = "";
    }
}
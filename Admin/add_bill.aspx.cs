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

public partial class Admin_add_bill : System.Web.UI.Page
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
    protected void ddlitem_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spbill", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@bill_no", txtbill_no.Text);
        cmd1.Parameters.Add("@username", DropDownList1.SelectedItem.Text);
        cmd1.Parameters.Add("@squarefeet", txtsquare.Text);
        cmd1.Parameters.Add("@amount",txtamount.Text);
        cmd1.Parameters.Add("@category", DropDownList2.SelectedItem.Text);
        cmd1.Parameters.Add("@item_code", ddlitem.SelectedItem.Text);
        
        cmd1.ExecuteNonQuery();
        obj.closeconnect();
        Response.Write("<script>alert(' Bill added succesfully')</script>");
        clear();
    }
    protected void clear()
    {
        txtbill_no.Text = "";
        txtsquare.Text = "";
        txtamount.Text = "";
       
    }
}
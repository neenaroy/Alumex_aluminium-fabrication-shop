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


public partial class Admin_add_category : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("spcategory", obj.con);
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filename = Path.Combine(Server.MapPath("~/Admin/images/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName).ToLower();
            if (strExtension == ".jpg" || strExtension == ".bmp" || strExtension == ".gif" || strExtension == ".png" || strExtension == ".jpeg")
            {
                FileUpload1.SaveAs(filename);
                Image1.ImageUrl = "~/Admin/images/" + FileUpload1.FileName;
                ViewState["filepath"] = Image1.ImageUrl;
            }    
            else
            {
                Response.Write("<script>alert('Select a valid image')</script>");
            }
        }
            else
            {
                Response.Write("<script>alert('Please choose image')</script>");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        String filename = Path.Combine(Server.MapPath("~/Admin/images/"), FileUpload1.FileName);
        SqlCommand cmd1 = new SqlCommand("spcategory", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@cat_id", get_id());
        cmd1.Parameters.Add("@cat_name", txtcatname.Text);
        cmd1.Parameters.Add("@cat_description", txtdes.Text);
        cmd1.Parameters.Add("@cat_image", ViewState["filepath"].ToString());
        SqlCommand cmd2 = new SqlCommand("spcategory", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 3);
        cmd2.Parameters.Add("@cat_name", txtcatname.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd2);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
          {
              Response.Write("<script>alert('Category already exist')</script>");

          }
        else
          {
             cmd1.ExecuteNonQuery();
             obj.closeconnect();
             Response.Write("<script>alert('category added succesfully')</script>");
            clear();
          }
    }
    protected void clear()
    {
        txtcatname.Text = "";
        txtdes.Text = "";
    }
}

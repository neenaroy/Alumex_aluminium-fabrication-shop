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


public partial class Admin_add_stock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int get_id()
    {
        int id = 99;
        int a = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spstock", obj.con);
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spstock", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag",0);
        cmd1.Parameters.Add("@stock_id",get_id());
        cmd1.Parameters.Add("@item_name",txtitemname.Text);
        cmd1.Parameters.Add("@item_code", txtitemcode.Text);
        cmd1.Parameters.Add("@item_price",txtitemprice.Text );
        cmd1.Parameters.Add("@quantity", txtqnty.Text);
        cmd1.Parameters.Add("@shop_name" , DropDownList1.Text);
        cmd1.Parameters.Add("@supply_place", txtsupply.Text);
        cmd1.Parameters.Add("@invoice_number", txtinvoice.Text);
        cmd1.Parameters.Add("@invoice_date", txtinvoicedate.Text);
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert(' Stock added succesfully')</script>");
        clear();
          
    }
    protected void clear()
    {
        txtitemname.Text = "";
        txtitemcode.Text = "";
        txtitemprice.Text = "";
        txtqnty.Text = "";
        txtsupply.Text = "";
        txtinvoice.Text = "";
        txtinvoicedate.Text = "";
    }
}
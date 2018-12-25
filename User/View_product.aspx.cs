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
using System.Web.UI.HtmlControls;

public partial class User_View_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddatalist();
        }
       
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    private void binddatalist()
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spcategory", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 4);
        DataTable dt2 = new DataTable();
        SqlDataAdapter adt2 = new SqlDataAdapter(cmd1);
        adt2.Fill(dt2);
        dt2= new DataTable();

     //   sqlda.Fill(dt);
     //   sqlda.Dispose();
        DataList2.DataSource = dt2;
        DataList2.DataBind();
        obj.closeconnect();
    }
}
    
    
       

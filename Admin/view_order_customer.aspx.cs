using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_order_customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
      protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
      protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
      {
         

      }
      protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
      {
          Response.Redirect("view_order_details.aspx?id=" + GridView1.SelectedRow.Cells[0].Text);

      }
}
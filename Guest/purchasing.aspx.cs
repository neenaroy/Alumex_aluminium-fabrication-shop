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


public partial class Guest_purchasing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int c = 0;

        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd2 = new SqlCommand("spcategory", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 2);
        DataTable dt2 = new DataTable();
        SqlDataAdapter adt2 = new SqlDataAdapter(cmd2);
        adt2.Fill(dt2);

        Panel1.Controls.Add(new LiteralControl("<table><tr>"));
        for (int j = 0; j < dt2.Rows.Count; j++)
        {
            if (c > 1)
            {
                Panel1.Controls.Add(new LiteralControl("</tr><tr>"));
                c = 0;
            } c++;
            SqlCommand cmd1 = new SqlCommand("spmodel", obj.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@flag", 5);
            cmd1.Parameters.Add("@cat_id", dt2.Rows[j][0].ToString());

            DataTable dt1 = new DataTable();
            SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
            adt1.Fill(dt1);
            Panel1.Controls.Add(new LiteralControl("<td><table><tr>"));
            Panel1.Controls.Add(new LiteralControl("<th><a href=purchase2.aspx?id=" + dt2.Rows[j][0].ToString() + ">" + dt2.Rows[j][2].ToString() + "<a></th></tr><tr>"));
            for (int i = 0; i < dt1.Rows.Count; i++)
            {

                HtmlImage img = new HtmlImage();
                img.Attributes.Add("class", "");
                img.Style.Add(HtmlTextWriterStyle.Display, "block");
                img.Style.Add(HtmlTextWriterStyle.Height, "166px");
                img.Style.Add(HtmlTextWriterStyle.Width, "278px");
                img.Src = dt2.Rows[i][3].ToString();
                Panel1.Controls.Add(new LiteralControl("<td><table runat=server>"));
                Panel1.Controls.Add(new LiteralControl("<tr><td>"));
                Panel1.Controls.Add(new LiteralControl("<a href=purchase2.aspx?id=" + dt2.Rows[i][0].ToString() + ">"));
                Panel1.Controls.Add(img);
                Panel1.Controls.Add(new LiteralControl("</a>"));
                Panel1.Controls.Add(new LiteralControl("</td></tr>"));
                Panel1.Controls.Add(new LiteralControl("<tr><td>" + dt2.Rows[i][2].ToString()));
                Panel1.Controls.Add(new LiteralControl("</td></tr>"));
                Panel1.Controls.Add(new LiteralControl("</table>"));
                Panel1.Controls.Add(new LiteralControl("</td>"));
            }
            Panel1.Controls.Add(new LiteralControl("</tr>"));
            Panel1.Controls.Add(new LiteralControl("</table>"));
        }
    }
}
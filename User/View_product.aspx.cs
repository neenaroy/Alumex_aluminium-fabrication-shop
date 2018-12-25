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
        disp_img();

    }
    protected void disp_img()
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spcategory", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 4);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            load_imag(dt.Rows[i][1].ToString(),dt.Rows[i][1].ToString());
        }
        }
    protected void load_imag(String type, string typeid)
    {
        HtmlGenericControl divModular = new HtmlGenericControl("div");
        divModular.Style.Add(HtmlTextWriterStyle.Margin, "0");
        divModular.Style.Add(HtmlTextWriterStyle.Padding, "0");
        divModular.Attributes.Add("style", "outline:0;font-size:100%;vertical-align:baseline");

        HtmlGenericControl divhead = new HtmlGenericControl("div");
        divhead.Attributes.Add("style", "font-size: 20px;color: #2d0443;font-stretch: narrower;width: 94%;height: 20px;font-family: Calibri;padding: 10px 0px 10px 0px;text-transform: uppercase;padding-left: 11px;background-color: #FFf;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;opacity: .8;filter: alpha(opacity=80);border-bottom: #666666 2px solid;");

        HtmlGenericControl divheadText = new HtmlGenericControl("div");
        divheadText.Attributes.Add("style", "font-size: 20px;color: #2d0443;font-stretch: narrower;width: 94%;height: 20px;font-family: Calibri;padding: 10px 0px 10px 0px;text-transform: uppercase;padding-left: 11px;background-color: #FFf;filter: alpha(opacity=80);");
        divheadText.InnerText = type;

        divModular.Controls.Add(divheadText);
        divModular.Controls.Add(divhead);

        HtmlGenericControl divRow = new HtmlGenericControl("div");
        divRow.Attributes.Add("style", "width: 100%;height: 100%;min-height: 100%;height: auto!important;display: table;padding-top: 8px;");

        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spcategory", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 4);
       // cmd.Parameters.Add("@intrtypeid", typeid);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            HtmlGenericControl divMainView = new HtmlGenericControl("div");
            divMainView.Attributes.Add("style", "width: 190px;height: 170px;float: left;padding-right: 7px;");

            divRow.Controls.Add(divMainView);

            HtmlGenericControl ul1 = new HtmlGenericControl("ul");
            ul1.Attributes.Add("style", "font-size: 100%;display: block;margin: 0;padding: 0;border: 0;outline: 0;vertical-align: baseline;list-style: none;-webkit-margin-before: 1em;-webkit-margin-after: 1em;-webkit-margin-start: 0px;-webkit-margin-end: 0px;-webkit-padding-start: 40px;");

            divMainView.Controls.Add(ul1);

            HtmlGenericControl li1 = new HtmlGenericControl("li");
            ul1.Controls.Add(li1);

            HtmlGenericControl divMainView1 = new HtmlGenericControl("div");
            divMainView1.Attributes.Add("style", "width: 190px;height: 170px;float: left;padding-right: 7px;");

            li1.Controls.Add(divMainView1);

            HyperLink a = new HyperLink();
            a.NavigateUrl = "javascript:popImage('http://localhost:64651" + dt.Rows[i][1].ToString() + "','Some Title')";

            HtmlImage img = new HtmlImage();
            img.Align = "left";
            img.Width = 188;
            img.Height = 119;
            img.Src = "~" + dt.Rows[i][1].ToString();

            a.Controls.Add(img);

            divMainView1.Controls.Add(a);
        }
        //end loop

        divModular.Controls.Add(divRow);

        Panel1.Controls.Add(divModular);
    }
}
    
       

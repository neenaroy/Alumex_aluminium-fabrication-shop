using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public SqlConnection con;
    public void getconnect()
    {
        //
        // TODO: Add constructor logic here
        //
        String str = ConfigurationManager.ConnectionStrings["alumexConnectionString"].ConnectionString;
        con = new SqlConnection(str);
        con.Open();
    }
    public void getclose()
    {
        con.Close();
    }
}
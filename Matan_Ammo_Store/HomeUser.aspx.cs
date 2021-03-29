using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Session["Username"].ToString()))
            {
                Response.Redirect("StartPage.aspx");
            }

            this.Welcome.InnerText = "Welcome " + Session["Username"].ToString(); //This is from JavaScript!

            string constring = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data/Database.accdb");
            OleDbConnection con = new OleDbConnection(constring);
            con.Open();

            string sql = string.Format("select * from [Products]");
            OleDbDataAdapter cmd = new OleDbDataAdapter(sql, con);

            DataTable dt = new DataTable();
            cmd.Fill(dt);
            con.Close();

            StoreTable.DataSource = dt;
            StoreTable.DataBind();
        }
        catch(Exception error)
        {
            Response.Redirect("StartPage.aspx");
        }
    }
}
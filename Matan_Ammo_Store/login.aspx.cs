using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        string constring = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data/Database.accdb");
        OleDbConnection con = new OleDbConnection(constring);
        DataTable dt = new DataTable();

        string username = this.Username.Text;
        string password = this.Password.Text;

        if(password.Contains("OR") || password.Contains("or") || password.Contains("Or") || password.Contains(" ") || username.Contains(" "))
        {
            this.Label1.Text = "Login Failed.";
            return;
        }

        con.Open();
        string sql = string.Format("select * from [Users] where [Username] = '{0}' and [Password] = '{1}'", username, password);
        OleDbDataAdapter cmd = new OleDbDataAdapter(sql, con);

        cmd.Fill(dt);

        if(dt.Rows.Count > 0)
        {
            Session["Username"] = dt.Rows[0][0].ToString();
            Session["Password"] = dt.Rows[0][1].ToString();
            Session["Email"] = dt.Rows[0][2].ToString();
            Session["Phone"] = dt.Rows[0][3].ToString();
            Session["Admin"] = dt.Rows[0][4].ToString();
            Session["Cart"] = string.Empty;

            Response.Redirect("HomeUser.aspx");
        }
        else
        {
            this.Label1.Text = "Login Failed.";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            string constring = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data/Database.accdb");
            OleDbConnection con = new OleDbConnection(constring);
            con.Open();

            string username = this.Username.Text;
            string password = this.Password.Text;
            string email = this.Email.Text;
            string phone = this.Phone.Text;

            if(username.Contains("<") || username.Contains(">") || username.Contains(" ") || username.Contains("/"))
            {
                this.Label1.Text = "Register Failed!";
                return;
            }

            string sql = string.Format("insert into [Users] ([Username], [Password], [Email], [Phone], [Admin]) values('{0}', '{1}', '{2}', '{3}', {4})", username, password, email, phone, false);
            OleDbCommand cmd = new OleDbCommand(sql, con);

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("login.aspx");
        }
        catch
        {
            this.Label1.Text = "This username is caught. Please try a different username.";
        }
    }
}
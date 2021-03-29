using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class buynow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Session["Username"].ToString()))
            {
                Response.Redirect("StartPage.aspx");
            }
        }
        catch(Exception error)
        {
            if (error.Message == "ההפניה לאובייקט לא הוגדרה למופע של אובייקט.")
            {
                Response.Redirect("StartPage.aspx");
            }
        }
    }

    protected void Buy_Click(object sender, EventArgs e)
    {
        try
        {
            string constring = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data/Database.accdb");
            string[] cart = Session["Cart"].ToString().Split(';');
            string sql1, sql2, item;

            string username = this.Username.Text;
            string password = this.Password.Text;
            string visa = this.VISA.Text;

            if (username != Session["Username"].ToString() || password != Session["Password"].ToString())
            {
                throw new System.ArgumentException("Username or Password incorrect!");
            }

            OleDbConnection con = new OleDbConnection(constring);
            OleDbCommand cmd2;
            OleDbDataAdapter cmd1;

            DataTable dt = new DataTable();
            con.Open();

            for (int i = 0; i < cart.Length; i++)
            {
                item = cart[i];
                sql1 = string.Format("select [Amout] from [Products] where [PName]='{0}'", item);
                cmd1 = new OleDbDataAdapter(sql1, con);
                cmd1.Fill(dt);

                if (dt.Rows[0][0].ToString() == "1")
                {
                    sql2 = string.Format("delete * from [Products] where [PName]='{0}'", item);
                }
                else
                {
                    sql2 = string.Format("update [Products] set [Amout]=[Amout]-1 where [PName]='{0}'", item);
                }

                cmd2 = new OleDbCommand(sql2, con);
                cmd2.ExecuteNonQuery();
            }

            this.Lable1.Text = "Thank you for purchasing!<br /><a href='HomeUser.aspx'>Return to the main page</a>";
            Session["Cart"] = string.Empty;
            con.Close();
        }
        catch(Exception error)
        {
            this.Lable1.Text = "Buying Failed!";
        }
    }
}
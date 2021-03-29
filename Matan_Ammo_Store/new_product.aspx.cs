using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class new_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(string.IsNullOrEmpty(Session["Username"].ToString()))
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

    protected void Upload_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(Session["Username"].ToString()))
        {
            Response.Redirect("StartPage.aspx");
        }

        try
        {
            string constring = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data/Database.accdb");
            OleDbConnection con = new OleDbConnection(constring);
            con.Open();

            string name = this.Name.Text;
            string seller = Session["Username"].ToString();
            string price = this.Price.Text;
            string amount = this.Amount.Text;

            if(name.Contains("<") || name.Contains(">") || name.Contains(" ") || name.Contains("/"))
            {
                this.Lable1.Text = "UpLoad Failed!";
            }

            string sql = string.Format("insert into [Products] ([Pname], [Seller], [Price], [Amout]) values('{0}', '{1}', '{2}', '{3}')", name, seller, price, amount);
            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Server.Transfer("HomeUser.aspx");
        }
        catch
        {
            this.Lable1.Text = "Upload Failed!";
        }
    }
}
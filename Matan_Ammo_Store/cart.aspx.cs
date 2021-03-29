using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(string.IsNullOrEmpty(Session["Username"].ToString()))
            {
                Response.Redirect("StartPage.aspx");
            }

            string constring = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data/Database.accdb");
            string pname = Request["pname"];
            string sql;
            string item;

            OleDbConnection con = new OleDbConnection(constring);
            con.Open();
            OleDbDataAdapter cmd;
            DataTable dt = new DataTable();

            Session["Cart"] += string.Format("{0};", pname);
            string[] cart = Session["Cart"].ToString().Split(';');

            if(cart.Length > 10)
            {
                throw new System.ArgumentException("Cart can't have more than 10 items!");
            }

            for (int i = 0; i < cart.Length; i++)
            {
                item = cart[i];
                sql = string.Format("select * from [Products] where [PName]='{0}'", item);
                cmd = new OleDbDataAdapter(sql, con);
                cmd.Fill(dt);
            }

            this.Cart.DataSource = dt;
            this.Cart.DataBind();
            con.Close();
        }
        catch(Exception error)
        {
            if (error.Message == "ההפניה לאובייקט לא הוגדרה למופע של אובייקט.")
            {
                Response.Redirect("StartPage.aspx");
            }
            else
            {
                this.pass1.InnerHtml = "Add to Cart Failed!"; //This is from JavaScript!
            }
        }
    }
}
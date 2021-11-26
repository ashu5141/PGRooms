using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Response.Redirect("~/Welcome.aspx");
        }

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        String query = "select count(*) from log_in where email_id='" + email.Text + "' and password_='" + password.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        String output = cmd.ExecuteScalar().ToString();

        if (output == "1")
        {
            Session["User"] = email.Text;
            Response.Redirect("~/Welcome.aspx");
        }

        else
        {
            Response.Write("Your Email Id and Password is wrong !");
        }

    }
}
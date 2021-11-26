using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class userlogin : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    public enum MessageType { Success, Error, Info, Warning };
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    

   
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from usersign where email=@email and pass=@pass", con);
        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox2.Text);

        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            Session["email"] = TextBox1.Text;
            Response.Redirect("~/index.aspx");
            
        }
        else
        {
           // ShowMessage("Incorrect LoginId/Password", MessageType.Error);
            //Response.Write("Incorrect EmailID/Password");
            Label3.ForeColor = Color.Red;
            Label3.Text = "Incorrect EmailID/Password";
        }
        con.Close();
         
    }
}
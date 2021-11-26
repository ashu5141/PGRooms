using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
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
        string LoginID = WebConfigurationManager.AppSettings["AdminLoginId"];
        string Password = WebConfigurationManager.AppSettings["AdminLoginPwd"];
        if (TextBox1.Text == LoginID && TextBox2.Text == Password)
        {
            Session["ReckonAdmin"] = "ReckonAdmin";
            Response.Redirect("~/admin/index.aspx");

        }

        else
        {
            //studentLogin();
            //ShowMessage("Incorrect LoginId/Password", MessageType.Error);

        }
    }
}
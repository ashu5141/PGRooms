
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

public partial class MasterPage : System.Web.UI.MasterPage
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



    

    public void studentLogin()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from sign where email=@email and pass=@pass", con);
        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox2.Text);

        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            Session["name"] = TextBox1.Text;
            Response.Redirect("~/pgowner/index.html");
        }
        else
        {
            ShowMessage("Incorrect LoginId/Password", MessageType.Error);
        }
        con.Close();

        //if (dt.Rows.Count > 0)
        //{
        //    Response.Redirect("~/student/dashboard.aspx");
        //}
        //else
        //{
        //    ShowMessage("Incorrect LoginId/Password", MessageType.Error);
        //}

        //SqlCommand com = new SqlCommand("CheckUser", con);
        //com.CommandType = CommandType.StoredProcedure;
        //SqlParameter p1 = new SqlParameter("username", TextBoxusername.Text);
        //SqlParameter p2 = new SqlParameter("password", TextBoxpassword.Text);
        //com.Parameters.Add(p1);
        //com.Parameters.Add(p2);
        //con.Open();
        //SqlDataReader rd = com.ExecuteReader();
        //if (rd.HasRows)
        //{
        //    rd.Read();
        //    Labelinfo.Text = "Login successful.";
        //}
        //else
        //{
        //    Labelinfo.Text = "Invalid username or password.";
        //}


    }

    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        string LoginID = WebConfigurationManager.AppSettings["AdminLoginId"];
        string Password = WebConfigurationManager.AppSettings["AdminLoginPwd"];
        if (TextBox1.Text == LoginID && TextBox2.Text == Password)
        {
            Session["ReckonAdmin"] = "ReckonAdmin";
            Response.Redirect("~/admin/index.html");

        }

        else
        {
            studentLogin();
            //ShowMessage("Incorrect LoginId/Password", MessageType.Error);

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}

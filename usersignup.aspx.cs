using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usersignup : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO usersign  (fname,lname,email,gender,address,phone,pass) VALUES (@fname,@lname,@email,@gender,@address,@phone,@pass)"))
            {
                cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                if (RadioMale.Checked)
                    cmd.Parameters.AddWithValue("@gender", "Male");
                else
                    cmd.Parameters.AddWithValue("@gender", "Female");
                cmd.Parameters.AddWithValue("@address", TextBox5.Text);
                cmd.Parameters.AddWithValue("@phone", TextBox6.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox7.Text);

                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Successfully Sign in");
            }
        }
    }
}
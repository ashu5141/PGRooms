using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class complaint : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO complaint (email,mobileno,subject,message) VALUES (@email,@mobileno,@subject,@message)"))
            {
                
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@mobileno", TextBox3.Text);
                cmd.Parameters.AddWithValue("@subject", TextBox1.Text);
                cmd.Parameters.AddWithValue("@message", textarea.InnerText);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Data Inserted");

            }
        }
    }
}
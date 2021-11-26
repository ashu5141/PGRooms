using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class booking : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO booking  (name,address,city,mobile,rent,paymentmode,email,startdate,expirydate) VALUES (@name,@address,@city,@mobile,@rent,@paymentmode,@email,@startdate,@expirydate)"))
            {
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@address", TextBox2.Text);
                cmd.Parameters.AddWithValue("@city", TextBox3.Text);
                cmd.Parameters.AddWithValue("@mobile", TextBox4.Text);
                cmd.Parameters.AddWithValue("@rent", TextBox5.Text);
                cmd.Parameters.AddWithValue("@paymentmode", TextBox6.Text);
                cmd.Parameters.AddWithValue("@email", TextBox7.Text);
                cmd.Parameters.AddWithValue("@expirydate", TextBox6.Text);
                cmd.Parameters.AddWithValue("@startdate", TextBox7.Text);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Your PG is Booked");
            }
        }
    }
    protected void Date_Selected(object sender, EventArgs e)
    {
        //TextBox6.Text = Calendar1.SelectedDate.ToShortDateString;
        //Calendar1.Visible = "false";

    }
    

}
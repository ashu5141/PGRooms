using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgowner_addPg2 : System.Web.UI.Page
{
     string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         using (System.Data.SqlClient.SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO pgDetails  (state,city,roomtype,noofbeds,rent,address,emailid,contactowner,powerbackup,parking,airconditioner,balcony,laundry,wifi,tv,security,foodavailable) VALUES (@state,@city,@roomtype,@noofbeds,@rent,@address,@emailid,@contactowner,@powerbackup,@parking,@airconditioner,@balcony,@laundry,@wifi,@tv,@security,@foodavailable)"))
            {
                cmd.Parameters.AddWithValue("@state", TextBox1.Text);
                cmd.Parameters.AddWithValue("@city", TextBox2.Text);
                cmd.Parameters.AddWithValue("@roomtype", TextBox3.Text);
                cmd.Parameters.AddWithValue("@noofbeds", TextBox4.Text);
                cmd.Parameters.AddWithValue("@rent", TextBox5.Text);
                cmd.Parameters.AddWithValue("@address", TextBox6.Text);
                cmd.Parameters.AddWithValue("@emailid", TextBox7.Text);
                cmd.Parameters.AddWithValue("@contactowner", TextBox9.Text);
                cmd.Parameters.AddWithValue("@powerbackup", TextBox10.Text);
                cmd.Parameters.AddWithValue("@parking", TextBox11.Text);
                cmd.Parameters.AddWithValue("@airconditioner", TextBox12.Text);
                cmd.Parameters.AddWithValue("@balcony", TextBox13.Text);
                cmd.Parameters.AddWithValue("@laundry", TextBox14.Text);
                cmd.Parameters.AddWithValue("@wifi", TextBox15.Text);
                cmd.Parameters.AddWithValue("@tv", TextBox16.Text);
                cmd.Parameters.AddWithValue("@security", TextBox18.Text);
                cmd.Parameters.AddWithValue("@foodavailable", TextBox17.Text);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Details Uploaded");
            }
        }
    }
    
}
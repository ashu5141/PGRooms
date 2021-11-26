using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Configuration;

public partial class userprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    int email;
    string strcon;
    
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["email"] != null)
        {
            string email = Session["email"].ToString();
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from usersign where email='" + Session["email"] + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            //PorductList.DataSource = dt;
            //PorductList.DataBind();

            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["fname"].ToString();
                TextBox2.Text = dt.Rows[0]["lname"].ToString();
                TextBox3.Text = dt.Rows[0]["email"].ToString();
                TextBox4.Text = dt.Rows[0]["address"].ToString();
                TextBox5.Text = dt.Rows[0]["phone"].ToString();
                Label1.Text = dt.Rows[0]["fname"].ToString();
                Label2.Text = dt.Rows[0]["lname"].ToString();
                TextBox6.Text = dt.Rows[0]["pass"].ToString();

                //noofbeds.Text = dt.Rows[0]["noofbeds"].ToString();
               // address.Text = dt.Rows[0]["address"].ToString();
               // emailid.Text = dt.Rows[0]["emailid"].ToString();
                //contactowner.Text = dt.Rows[0]["contactowner"].ToString();
                //powerbackup.Text = dt.Rows[0]["powerbackup"].ToString();
                //parking.Text = dt.Rows[0]["parking"].ToString();
                //airconditioner.Text = dt.Rows[0]["airconditioner"].ToString();
                //balcony.Text = dt.Rows[0]["balcony"].ToString();
                //laundry.Text = dt.Rows[0]["laundry"].ToString();
                //wifi.Text = dt.Rows[0]["wifi"].ToString();
                //tv.Text = dt.Rows[0]["tv"].ToString();
                //security.Text = dt.Rows[0]["security"].ToString();
                //foodavailable.Text = dt.Rows[0]["foodavailable"].ToString();
                //lblOfferPrice.Text = dt.Rows[0]["product_discont_price"].ToString();
                //lblProductprice.Text = dt.Rows[0]["product_price"].ToString();


                //  string proimg2 = dt.Rows[0]["product_images1"].ToString();



            }

        }
        else 
        { 


        }

    }




    // update! 
    protected void Button1_Click(object sender, EventArgs e)
    {
               //  con.Open();

       
        // SqlCommand cmd = new SqlCommand("update usersign Set  pass=@pass where email='" + Session["email"].ToString() + "'", con);  
               //cmd.Parameters.AddWithValue("@pass", TextBox6.Text);  
                
              // cmd.ExecuteNonQuery();  
            // cmd.Dispose();
             //  Response.Write("Successfully Updated......!");
        if (Session["email"].ToString() == "" || Session["email"] == null)
        {
            Response.Write("<script>alert('Session Expired Login Again');</script>");
            Response.Redirect("userlogin.aspx");
        }
        else
        {
            updateUserPersonalDetails();

        } 
    }

    void updateUserPersonalDetails()
    {

      //  string password = "";
      //  if (TextBox1.Text.Trim() == "")
      //  {
      //      password = TextBox6.Text.Trim();
      //  }
      //  else
      //  {
      //      password = TextBox1.Text.Trim();
      //  }
        try
        {
           // SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            SqlCommand cmd = new SqlCommand("update usersign set fname=@fname, lname=@lname, email=@email, address=@address, pass=@pass WHERE id='" + Session["email"].ToString().Trim() + "'", con);


            cmd.Parameters.AddWithValue("@fname", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@address", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@phone", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@pass", TextBox6.Text.Trim());
            
            

            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result > 0)
            {

                Response.Write("<script>alert('Your Details Updated Successfully');</script>");
              //  getUserPersonalDetails();
              //  getUserBookData();
            }
            else
            {
                Response.Write("<script>alert('Invaid entry');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }


    }

    
}
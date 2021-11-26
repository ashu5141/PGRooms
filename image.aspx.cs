using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

public partial class image : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //using (SqlConnection con = new SqlConnection(constr))
        //{
        //    using (SqlCommand cmd = new SqlCommand("INSERT INTO image  (pgname,image) VALUES (@pgname,@image)"))
        //    {
        //        cmd.Parameters.AddWithValue("@pgname", TextBox1.Text);
        //        if (FileUpload1.HasFile)
        //        {
        //            string strname = FileUpload1.FileName.ToString();
        //            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //            Label1.Visible = true;
        //            Label1.Text = "Image Uploaded successfully";
        //        }
        //        else
        //        {
        //            Label1.Visible = true;
        //            Label1.Text = "Plz upload the image!!!!";
        //        }
        //    }
        //}
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
            con.Open();
           
            string query = "Insert INTO image (image) Values (@p1)";
             
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@p1", strname);
 
            command.ExecuteNonQuery();
            con.Close();

            Label1.Visible = true;
            Label1.Text = "Image Uploaded successfully";
          //  txtname.Text = "";
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Plz upload the image!!!!";
        }  

    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text; 

public partial class receipt : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Request.Form["txnid"];
        //  Label3.Text = Request.Form["txnid"];
        CurrentTime.Text = DateTime.Now.ToString();
        Label2.Text = Request.Form["productinfo"];
        Label4.Text = Request.Form["amount"];
        string emailid = Request.Form["email"];
        string mob = Request.Form["mobile"];

        


        string query = "INSERT INTO buyers VALUES(@transactionid,@email,@mobile,@pgtitle,@rent)";
        string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {

                cmd.Parameters.AddWithValue("@transactionid", Label1.Text);
                cmd.Parameters.AddWithValue("@email", emailid);
                cmd.Parameters.AddWithValue("@mobile", mob);
                cmd.Parameters.AddWithValue("@pgtitle", Label2.Text);
                cmd.Parameters.AddWithValue("@rent", Label4.Text);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                sendEmailtoCust(emailid,Label1.Text,mob,Label2.Text,Label4.Text);
            }
        }



      
    }


    public void sendEmailtoCust(string emailid,string trid,string mob,string pgtitle,string rent){
        string to = emailid; //To address    
        string from = "choudharyashutosh5141@gmail.com"; //From address    
        MailMessage message = new MailMessage(from, to);

        string mailbody = "Order id : Txn4010 <br> Order Date : 14/04/2021 11:06:01 PM <br> PG Title : Alvi PG <br> Rent : 1.00 ";
        message.Subject = "Order Details";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        System.Net.NetworkCredential basicCredential1 = new
        System.Net.NetworkCredential("choudharyashutosh5141@gmail.com", "ashu@5141");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = basicCredential1;
        try
        {
            client.Send(message);
        }

        catch (Exception ex)
        {
            throw ex;
        }  

    }
}
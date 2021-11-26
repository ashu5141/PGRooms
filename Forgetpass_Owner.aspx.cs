using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class Forgetpass_Owner : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fname = string.Empty;
        string pass = string.Empty;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT fname, [pass] FROM sign WHERE email = @email"))
            {
                cmd.Parameters.AddWithValue("@email", emailid.Text.Trim());
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        fname = sdr["fname"].ToString();
                        pass = sdr["pass"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(pass))
        {
            MailMessage mm = new MailMessage("choudharyashutosh5141@gmail.com", emailid.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", fname, pass);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            smtp.Timeout = 3000000;
            smtp.ServicePoint.MaxIdleTime = System.Threading.Timeout.Infinite;//1;
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "choudharyashutosh5141@gmail.com";
            NetworkCred.Password = "ashu@5141";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lblMessage.ForeColor = Color.Green;
            lblMessage.Text = "Password has been sent to your email id.";
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "This email id does not match our records.";
        }
    }
}
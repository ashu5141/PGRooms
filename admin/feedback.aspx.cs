using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_feed : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            bookingcount();
            contactcount();
            totalreguser();
            totalregowner();
            FillEmployees();

        }
        //  lblMessage.Text = "";
    }

    private void FillEmployees()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = @"select * from feedback";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            lvEmployee.DataSource = ds.Tables[0];
            lvEmployee.DataBind();

            //   int aasds = lvEmployee.Items.Count;
            //   ttlEnqu.InnerText = Convert.ToString(aasds);

            con.Close();

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void lvEmployee_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {

        // Here 'e.ItemIndex' gets the index of the item being deleted.
        ListViewItem item = lvEmployee.Items[e.ItemIndex];
        HiddenField hfEmployeeID = (HiddenField)item.FindControl("hfEmployeeID");

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        SqlCommand cmd = new SqlCommand();
        // delete query.
        cmd.CommandText = @"delete from feedback where id = '" + hfEmployeeID.Value + "'";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        // Fill Employees
        FillEmployees();
        //    ShowMessage("Record Deleted", MessageType.Success);

    }

    public void bookingcount()
    {


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from booking");
        SqlDataAdapter ap = new SqlDataAdapter(cmd.CommandText, conn);
        DataSet ds = new DataSet();


        conn.Open();
        ap.Fill(ds);
        //  Label1.Text = ds.Tables[0].Rows.Count.ToString();
        conn.Close();


    }
    public void contactcount()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from Contact");
        SqlDataAdapter ap = new SqlDataAdapter(cmd.CommandText, conn);
        DataSet ds = new DataSet();


        conn.Open();
        ap.Fill(ds);
        //  Label2.Text = ds.Tables[0].Rows.Count.ToString();
        conn.Close();


    }
    public void totalreguser()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from pgDetails");
        SqlDataAdapter ap = new SqlDataAdapter(cmd.CommandText, conn);
        DataSet ds = new DataSet();


        conn.Open();
        ap.Fill(ds);
        //  Label3.Text = ds.Tables[0].Rows.Count.ToString();
        conn.Close();


    }
    public void totalregowner()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from pgDetails");
        SqlDataAdapter ap = new SqlDataAdapter(cmd.CommandText, conn);
        DataSet ds = new DataSet();


        conn.Open();
        ap.Fill(ds);
        //   Label4.Text = ds.Tables[0].Rows.Count.ToString();
        conn.Close();



    }

}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgowner_PGs2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {


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
            cmd.CommandText = @"select * from PG";
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


    // protected void lvEmployee_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    // {

    // Here 'e.ItemIndex' gets the index of the item being deleted.
    //    ListViewItem item = lvEmployee.Items[e.ItemIndex];
    //   HiddenField hfEmployeeID = (HiddenField)item.FindControl("hfEmployeeID");

    //   SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

    //   SqlCommand cmd = new SqlCommand();
    // delete query.
    //   cmd.CommandText = @"update from complaint where id = '" + hfEmployeeID.Value + "'";
    //  cmd.CommandType = CommandType.Text;
    //  cmd.Connection = con;

    // con.Open();
    // cmd.ExecuteNonQuery();
    // con.Close();

    // Fill Employees
    //FillEmployees();
    //    ShowMessage("Record Deleted", MessageType.Success);

    // }


    

    protected void btnEdit_Click(object sender, EventArgs e)
    {

        Response.Redirect("editpgdetails.aspx");
    }
}
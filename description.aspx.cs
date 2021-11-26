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
public partial class details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("productlist.aspx");
        }
        else
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from pgDetails  where id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            //PorductList.DataSource = dt;
            //PorductList.DataBind();

            if (dt.Rows.Count > 0)
            {

                rent.Text = dt.Rows[0]["rent"].ToString();
                state.Text = dt.Rows[0]["state"].ToString();
                city.Text = dt.Rows[0]["city"].ToString();
                roomtype.Text = dt.Rows[0]["roomtype"].ToString();
                noofbeds.Text = dt.Rows[0]["noofbeds"].ToString();
                address.Text = dt.Rows[0]["address"].ToString();
                emailid.Text = dt.Rows[0]["emailid"].ToString();
                contactowner.Text = dt.Rows[0]["contactowner"].ToString();
                powerbackup.Text = dt.Rows[0]["powerbackup"].ToString();
                parking.Text = dt.Rows[0]["parking"].ToString();
                airconditioner.Text = dt.Rows[0]["airconditioner"].ToString();
                balcony.Text = dt.Rows[0]["balcony"].ToString();
                laundry.Text = dt.Rows[0]["laundry"].ToString();
                wifi.Text = dt.Rows[0]["wifi"].ToString();
                tv.Text = dt.Rows[0]["tv"].ToString();
                security.Text = dt.Rows[0]["security"].ToString();
                foodavailable.Text = dt.Rows[0]["foodavailable"].ToString();
                //lblOfferPrice.Text = dt.Rows[0]["product_discont_price"].ToString();
                //lblProductprice.Text = dt.Rows[0]["product_price"].ToString();
                
                 
              //  string proimg2 = dt.Rows[0]["product_images1"].ToString();
               


            }

            

        }


    }


    

    protected void btnBuyNow_Click(object sender, EventArgs e)
    {
        //string prquername = HttpUtility.UrlEncode(Encrypt(lblProductName.Text.Trim()));
        //string prodprice = HttpUtility.UrlEncode(Encrypt(lblOfferPrice.Text.Trim()));
        //string prodimg = HttpUtility.UrlEncode(Encrypt(ImgurlPro.ImageUrl.Trim()));

        //Response.Redirect(string.Format("buyNow.aspx?prquername={0}&prodprice={1}&prodimg={2}", prquername, prodprice, prodimg));
    }

   

    protected void PorductList_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Label lblDate = (Label)e.Item.FindControl("Label1");
            Label lblruppes = (Label)e.Item.FindControl("ruppes");
            //Reference the Repeater Item.
            RepeaterItem item = e.Item;

            //Reference the Controls.
            string country = (item.FindControl("Label1") as Label).Text;
            int variable = Int32.Parse(country);
            if (variable == 0)
            {
                lblDate.Style.Add("display", "none");
                lblruppes.Style.Add("display", "none");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("booking.aspx");
    }
}
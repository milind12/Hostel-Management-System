using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class StartBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Registration.aspx");



            }
 
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            { }
            else
            { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {





            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();
            cmd = new SqlCommand("select * from room",con);
            SqlDataReader sdr=cmd.ExecuteReader();
            if (!sdr.Read()) { Session["msg"] = " Please Configure Room Settings First"; Response.Redirect("ConfigRoom.aspx"); }
            sdr.Close();
            cmd = new SqlCommand("Update roomfees set "+DropDownList1.SelectedItem.Text.ToString()+"='"+TextBox3.Text.ToString()+"' where roomtype like 'd%'" , con);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("Update roomfees set " + DropDownList1.SelectedItem.Text.ToString() + "='" + TextBox1.Text.ToString() + "' where roomtype like 'n%'", con);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("Update roomfees set " + DropDownList1.SelectedItem.Text.ToString() + "='" + TextBox2.Text.ToString() + "' where roomtype like 's%'", con);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("Update feedate set startdate='" + Calendar1.SelectedDate + "',enddate='"+Calendar2.SelectedDate+"' where phase='" + DropDownList1.SelectedItem.Text.ToString() + "'", con);
            cmd.ExecuteNonQuery();
           
            con.Close();
        
        }
    }
}
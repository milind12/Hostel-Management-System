using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class WelcomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Registration.aspx");



            }
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   DateTime dt=DateTime.Parse(Calendar1.SelectedDate.ToString());
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Insert into noticeboard (notice_details,date) values('"+TextBox1.Text.ToString()+"','"+dt+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        
        }

    

       
       
      
    }
}
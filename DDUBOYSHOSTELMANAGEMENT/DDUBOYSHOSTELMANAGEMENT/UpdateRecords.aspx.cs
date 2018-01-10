using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class UpdateRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Registration.aspx");



            }
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();

            StringBuilder html = new StringBuilder();
            html.Append("<table class='table ' style='color:darkcyan'>");
            cmd = new SqlCommand("select * from student",con);
            html.Append("<th>Collegeid</th><th>First Name</th><th>Surname</th><th>Guardian name</th><th>phone no.</th><th>Address</th><th>roomno.</th><th>branch</th><th>joindate</th><th>Left Hostel</th>");
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
               
                html.Append("<tr>");
                html.Append("<td align='center'>");
                html.Append(dr[0]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[1]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[2]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[3]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[4]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[5]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[6]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[8]);
                html.Append("</td>");
                html.Append("<td>");
                
                html.Append(dr[10]);
                html.Append("</td>");
                html.Append("<td>");
                
                html.Append(dr[11]);
                html.Append("</td>");


                html.Append("</tr>");
            }
            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            con.Close();
            dr.Close();
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();

            StringBuilder html = new StringBuilder();
            cmd = new SqlCommand("Delete from credentials where username in (Select collegeid from student where futureroomno=0)",con);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("update student set check_out_date=GETDATE() where futureroomno=0", con);
            cmd.ExecuteNonQuery();
            html.Append("Records updated successfully.....Students who have not booked rooms are removed from Hostel.<br />");
            html.Append("<table class='table' style='color:darkcyan'>");
            cmd = new SqlCommand("select * from student where futureroomno<>0", con);
            html.Append("<th>Collegeid</th><th>First Name</th><th>Surname</th><th>Guardian name</th><th>phone no.</th><th>Address</th><th>roomno.</th><th>branch</th>");
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                html.Append("<tr>");
                html.Append("<td align='center'>");
                html.Append(dr[0]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[1]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[2]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[3]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[4]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[5]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[6]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[8]);
                html.Append("</td>");


                html.Append("</tr>");
            }
            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            con.Close();
            dr.Close();
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();

            StringBuilder html = new StringBuilder();
            
            html.Append("<table class='table ' style='color:darkcyan'>");
            cmd = new SqlCommand("select * from student where check_out_date is null", con);
            html.Append("<th>Collegeid</th><th>First Name</th><th>Surname</th><th>Guardian name</th><th>phone no.</th><th>Address</th><th>roomno.</th><th>branch</th>");
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                html.Append("<tr>");
                html.Append("<td align='center'>");
                html.Append(dr[0]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[1]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[2]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[3]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[4]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[5]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[6]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[8]);
                html.Append("</td>");


                html.Append("</tr>");
            }
            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            con.Close();
            dr.Close();
          
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();

            StringBuilder html = new StringBuilder();

            html.Append("<table class='table ' style='color:darkcyan'>");
            cmd = new SqlCommand("select roomno,roomtype,vacancy,(3-vacancy) from room ", con);
            html.Append("<th>Room no.</th><th>Type</th><th>Vacancy</th><th>Booked by</th>");
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                html.Append("<tr>");
                html.Append("<td align='center'>");
                html.Append(dr[0]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[1]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[2]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(dr[3]);
                html.Append("</td>");
               
                html.Append("</tr>");
            }
            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            con.Close();
            dr.Close();
          
        }
    }
}
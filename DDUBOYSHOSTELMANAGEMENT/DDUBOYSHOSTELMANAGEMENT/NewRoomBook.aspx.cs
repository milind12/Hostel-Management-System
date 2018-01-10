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
    public partial class NewRoomBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;


            cmd = new SqlCommand("Select profilepic from student where Collegeid like '" + Session["cid"].ToString() + "' and profilepic is not null", con); con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                sdr.Close();

                string s2 = "<img height='50px' width='50px' id='imgLogoCompany' class='img-circle'   src='e.ashx?id=" + Session["cid"].ToString() + "' />";
                PlaceHolder6.Controls.Add(new Literal { Text = s2 });

            }
            else
            {
                string s2 = " <i  class='fa fa-user fa-1x'   aria-hidden='true'></i>"; sdr.Close();

                PlaceHolder6.Controls.Add(new Literal { Text = s2 });


            }
            con.Close();









            Label1.Visible = true;
            string a=Session["lnm"].ToString().ToUpper();
            char b = Session["fnm"].ToString()[0];
                b= b.ToString().ToUpper()[0];
            string c=Session["fnm"].ToString().Substring(1);
               
            Label1.Text = b+c + " " +a[0] ;
            if (!IsPostBack)
            {

                con.Open();
                cmd = new SqlCommand("Select * from feedate where phase='token'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    DateTime today = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy"));
                    DateTime startday = (DateTime)dr[1];
                    DateTime lastday = (DateTime)dr[2];
                    TimeSpan ts1 = today - startday;
                    TimeSpan ts2 = lastday - today;
                    if (ts1.TotalHours > 0 && ts2.TotalHours > 0)
                    {
                        dr.Close();
                        cmd = new SqlCommand("Select * from student where collegeid='"+Session["cid"].ToString()+"' and futureroomno='0'", con);
                        SqlDataReader d = cmd.ExecuteReader();
                        if (!d.Read())
                        {
                            Session["msg"] = "You have successfully Booked Room";
                            Response.Redirect("NotEnabled.aspx");
                        }
                    }
                    else
                    {
                        dr.Close();
                        Session["msg"] = "Booking has not been enabled yet";
                        Response.Redirect("NotEnabled.aspx");


                    }







                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();



            DropDownList3.Items.Clear();

            if (DropDownList1.SelectedIndex == 0)
                cmd = new SqlCommand("select * from room where vacancy>0 and  roomno  between 100 and 200   ", con);


            if (DropDownList1.SelectedIndex == 1)
                cmd = new SqlCommand("select * from room where vacancy>0 and  roomno  between 200 and 300   ", con);

            if (DropDownList1.SelectedIndex == 2)
                cmd = new SqlCommand("select * from room where vacancy>0 and  roomno  between 300 and 400   ", con);

            SqlDataReader dr = cmd.ExecuteReader();
            StringBuilder html = new StringBuilder();
            html.Append("<table class='table ' style='color:darkcyan;'>");
            html.Append("<th > Room No.<i class='fa fa-key' style='margin-left:2%' aria-hidden='true'></i></th><th> Type </th><th> Vacancy </th>");

            while (dr.Read())
            {
                DropDownList3.Items.Add(dr[0].ToString());
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


                html.Append("</tr>");
            }
            dr.Close();

            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });



            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();

            if (DropDownList2.SelectedIndex == 2)
            {

                if (DropDownList1.SelectedIndex == 0)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='deluxe' and roomno  between 100 and 200   ", con);


                if (DropDownList1.SelectedIndex == 1)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='deluxe' and roomno  between 200 and 300   ", con);

                if (DropDownList1.SelectedIndex == 2)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='deluxe' and roomno  between 300 and 400   ", con);
            }
            if (DropDownList2.SelectedIndex == 0)
            {


                if (DropDownList1.SelectedIndex == 0)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='nondeluxe' and roomno  between 100 and 200   ", con);


                if (DropDownList1.SelectedIndex == 1)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='nondeluxe' and roomno  between 200 and 300   ", con);

                if (DropDownList1.SelectedIndex == 2)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='nondeluxe' and roomno  between 300 and 400   ", con);
            }
            if (DropDownList2.SelectedIndex == 1)
            {

                if (DropDownList1.SelectedIndex == 0)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='semideluxe' and roomno  between 100 and 200   ", con);


                if (DropDownList1.SelectedIndex == 1)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='semideluxe' and roomno  between 200 and 300   ", con);

                if (DropDownList1.SelectedIndex == 2)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='semideluxe' and roomno  between 300 and 400   ", con);


            }
            DropDownList3.Items.Clear();
            StringBuilder html = new StringBuilder();
            html.Append("<table class='table ' style='color:darkcyan'>");
            html.Append("<th > Room No <i class='fa fa-key' style='margin-left:2%' aria-hidden='true'></i> </th><th> Type </th><th> Vacancy </th>");


            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList3.Items.Add(dr[0].ToString());
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


                html.Append("</tr>");
            }
            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });

            dr.Close();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
            }
            else
            {
                dr.Close();


                ph1.Controls.Add(new Literal { Text = "<b style='margin-left:5%;margin-top:10%'>No room available in this category</b>" });

            }

            con.Close();



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedItem != null)
            {
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
                SqlCommand cmd = null;
                con.Open();

                Session["roomno"] = DropDownList3.SelectedItem.Text.ToString();
                cmd = new SqlCommand("select * from room where roomno=" + DropDownList3.SelectedItem.Text.ToString(), con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                Session["roomtype"] = dr[1];
                Session["v"] = dr[2];
                dr.Close(); con.Close();
                Response.Redirect("Bill2.aspx");


            }


        }
    }
}

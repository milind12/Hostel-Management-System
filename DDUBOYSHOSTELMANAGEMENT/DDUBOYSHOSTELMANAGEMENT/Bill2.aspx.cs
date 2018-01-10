using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class Bill2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               

                 PlaceHolder1.Controls.Add(new Literal { Text=Session["fnm"].ToString()+ " "+Session["lnm"].ToString()});
                PlaceHolder2.Controls.Add(new Literal { Text = Session["address"].ToString() });
                PlaceHolder3.Controls.Add(new Literal { Text = Session["phono"].ToString() });
                PlaceHolder4.Controls.Add(new Literal { Text = Session["roomno"].ToString() });
               SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
                SqlCommand cmd = null;
                con.Open();
                cmd = new SqlCommand("Select * from roomfees where roomtype='" + Session["roomtype"] + "'", con);
                SqlDataReader dr = cmd.ExecuteReader(); dr.Read();
                   
                PlaceHolder5.Controls.Add(new Literal { Text = dr[2].ToString() });
          dr.Close();
                con.Close();
                
            }
        

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();
           
            cmd = new SqlCommand("Select vacancy from room where roomno =" + Session["roomno"].ToString(), con);

            if ((Int32)cmd.ExecuteScalar() == 0)
            {
                Session["msg"] = "<b>Room no. " + Session["roomno"].ToString() + " was booked just now.... No vacancy in this room</b>";

                Response.Redirect("NewRoomBook2.aspx");

            }
            else
            {
                cmd = new SqlCommand("update student set futureroomno=" + Session["roomno"].ToString() + "where collegeid='" + Session["cid"].ToString() + "'", con);
                cmd.ExecuteNonQuery();
                int x = (Int32)Session["v"]; x--;
                cmd = new SqlCommand("update room set vacancy=" + x + " where roomno=" + Session["roomno"].ToString(), con);
                cmd.ExecuteNonQuery();
                Session["msg"] = "You have successfully Booked Room";
                Response.Redirect("NewRoomBook.aspx");
            }
        }
    }
}
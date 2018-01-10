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
    public partial class NewRoomBook2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                ph1.Controls.Add(new Literal { Text="You havent selected any option."});

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();



            DropDownList3.Items.Clear();
            if(DropDownList1.SelectedIndex==0)
                cmd = new SqlCommand("select * from room where vacancy>0 and  roomno  between 0 and 100   ", con);

            if (DropDownList1.SelectedIndex == 1)
                cmd = new SqlCommand("select * from room where vacancy>0 and  roomno  between 100 and 200   ", con);


            if (DropDownList1.SelectedIndex == 2)
                cmd = new SqlCommand("select * from room where vacancy>0 and  roomno  between 200 and 300   ", con);

            if (DropDownList1.SelectedIndex == 3)
                cmd = new SqlCommand("select * from room where vacancy>0 and  roomno  between 300 and 400   ", con);

            SqlDataReader dr=cmd.ExecuteReader();
            StringBuilder html = new StringBuilder();
            html.Append("<table class='table ' style='color:white'>");
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

            if (DropDownList2.SelectedIndex == 2) { 
            if (DropDownList1.SelectedIndex == 0 )
                cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='deluxe' and roomno  between 0 and 100   ", con);

            if (DropDownList1.SelectedIndex == 1)
                cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='deluxe' and roomno  between 100 and 200   ", con);


            if (DropDownList1.SelectedIndex == 2)
                cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='deluxe' and roomno  between 200 and 300   ", con);

            if (DropDownList1.SelectedIndex == 3)
                cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='deluxe' and roomno  between 300 and 400   ", con);
        }
            if (DropDownList2.SelectedIndex == 0)
            {

                if (DropDownList1.SelectedIndex == 0)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='nondeluxe' and roomno  between 0 and 100   ", con);

                if (DropDownList1.SelectedIndex == 1)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='nondeluxe' and roomno  between 100 and 200   ", con);


                if (DropDownList1.SelectedIndex == 2)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='nondeluxe' and roomno  between 200 and 300   ", con);

                if (DropDownList1.SelectedIndex == 3)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='nondeluxe' and roomno  between 300 and 400   ", con);
            }
            if (DropDownList2.SelectedIndex == 1)
            {
                if (DropDownList1.SelectedIndex == 0)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='semideluxe' and roomno  between 0 and 100   ", con);

                if (DropDownList1.SelectedIndex == 1)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='semideluxe' and roomno  between 100 and 200   ", con);


                if (DropDownList1.SelectedIndex == 2)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='semideluxe' and roomno  between 200 and 300   ", con);

                if (DropDownList1.SelectedIndex == 3)
                    cmd = new SqlCommand("select * from room where vacancy>0 and LOWER(roomtype)='semideluxe' and roomno  between 300 and 400   ", con);

            
          }
            DropDownList3.Items.Clear();
            StringBuilder html = new StringBuilder();
            html.Append("<table class='table ' style='color:white'>");
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
                
        
                ph1.Controls.Add(new Literal { Text = "<b style='margin-left:5%;margin-top:10%'>No room available in this category</b>"});
              
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
 
             Session["roomno"]=DropDownList3.SelectedItem.Text.ToString();
             cmd = new SqlCommand("select * from room where roomno=" + DropDownList3.SelectedItem.Text.ToString(), con);
                SqlDataReader dr=cmd.ExecuteReader();
                dr.Read();
               Session["roomtype"]=dr[1];
               Session["v"] = dr[2];
               dr.Close(); con.Close();
             Response.Redirect("Bill.aspx");
            
            
            }
        }

       
    }
}
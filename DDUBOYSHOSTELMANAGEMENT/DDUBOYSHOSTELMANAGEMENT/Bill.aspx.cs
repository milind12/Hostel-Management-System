using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                PlaceHolder1.Controls.Add(new Literal { Text=Session["fnm"].ToString()+ " "+Session["lnm"].ToString()});
                PlaceHolder2.Controls.Add(new Literal { Text = Session["address"].ToString() });
                PlaceHolder3.Controls.Add(new Literal { Text = Session["gpn"].ToString() });
                PlaceHolder4.Controls.Add(new Literal { Text = Session["roomno"].ToString() });
               
               
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
                SqlCommand cmd = null;
                con.Open();
                cmd = new SqlCommand("Select * from roomfees where roomtype='"+Session["roomtype"]+"'",con);
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
             cmd = new SqlCommand("Select vacancy from room where roomno ="+Session["roomno"].ToString(),con);

             if ((Int32)cmd.ExecuteScalar() == 0) {
                 Session["msg"] = "<b>Room no. "+Session["roomno"].ToString()+" was booked just now.... No vacancy in this room</b>";

                 Response.Redirect("NewRoomBook.aspx");             
           
             }
             else { 
                 cmd = new SqlCommand(@"Insert into student (Collegeid,firstname,lastname,guardianname,phoneno,address,roomno,futureroomno,branch,guardianphoneno,admission_date) values('" + Session["cid"].ToString() + "','" + Session["fnm"].ToString() + "','" + Session["lnm"].ToString() + "','" + Session["gnm"].ToString() + "','" + Session["phno"].ToString() + "','" + Session["address"].ToString() + "','" + Session["roomno"].ToString() + "'," + "0,'" + Session["branch"].ToString() + "','" + Session["gpn"].ToString() + "','" + DateTime.Now.ToString("MM/dd/yyyy") + "' )", con);
            //   cmd = new SqlCommand(@"Insert into student (Collegeid,firstname,lastname,guardianname,phoneno,address,roomno,futureroomno,branch,guardianphoneno,admission_date)  values('14ceuog072','Mili','Ghiya','Nimish Ghiya','7600049714','202','13','0','ce','9825008052','" + DateTime.Now.ToString("MM/dd/yyyy") + "' )", con);
         
            cmd.ExecuteNonQuery();
         
            cmd = new SqlCommand("update room set vacancy=vacancy-1 where roomno="+Session["roomno"].ToString(),con);
            cmd.ExecuteNonQuery();
             
            
             cmd = new SqlCommand("Insert into credentials (username,password) values ('"+Session["cid"].ToString()+"','"+Session["cid"].ToString()+"')",con);
             cmd.ExecuteNonQuery();
            
            con.Close();
            

            Session["msg"] = "<b>Your payment was Successful.</b>";
            
            Response.Redirect("Registration.aspx");
             }
        }
    }
}
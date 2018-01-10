using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class ConfigRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Registration.aspx");



            }
 

            if (Session["msg"] != null)
            {
                PlaceHolder1.Controls.Add(new Literal { Text = Session["msg"].ToString() });
                Session["msg"] = null;
            }
        }

        private bool check(int a)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();
            cmd = new SqlCommand("Select * from student", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (a == Int32.Parse(dr["roomno"].ToString()))
                {
                    con.Close();    
                    return true;
                }
            }
            con.Close();
            return false;


        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            int i = Int32.Parse(TextBox1.Text.ToString());
            int j = Int32.Parse(TextBox2.Text.ToString());
            int k = Int32.Parse(TextBox3.Text.ToString());
            int l = Int32.Parse(TextBox4.Text.ToString());

            int m = Int32.Parse(TextBox5.Text.ToString());
            int n = Int32.Parse(TextBox6.Text.ToString());
            int o = Int32.Parse(TextBox7.Text.ToString());
            int p = Int32.Parse(TextBox8.Text.ToString());

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();
            try
            {
                for (int a = i; a < j; a++)
                {

                    cmd = new SqlCommand("Insert into room values('" + a + "','nonDeluxe',3)", con);
                    cmd.ExecuteNonQuery();
                    ListBox1.Items.Add(a.ToString());
                    ListBox3.Items.Add(a.ToString());
                }
                for (int a = k; a < l; a++)
                {

                    cmd = new SqlCommand("Insert into room values('" + a + "','nonDeluxe',3)", con);
                    cmd.ExecuteNonQuery();
                    ListBox1.Items.Add(a.ToString());
                    ListBox3.Items.Add(a.ToString());
                }
                for (int a = m; a < n; a++)
                {

                    cmd = new SqlCommand("Insert into room values('" + a + "','nonDeluxe',3)", con);
                    cmd.ExecuteNonQuery();
                    ListBox1.Items.Add(a.ToString());
                    ListBox3.Items.Add(a.ToString());
                }

                for (int a = o; a < p; a++)
                {
                    cmd = new SqlCommand("Insert into room values('" + a + "','nonDeluxe',3)", con);
                    cmd.ExecuteNonQuery();
                    ListBox1.Items.Add(a.ToString());
                    ListBox3.Items.Add(a.ToString());
                }
            }
            catch (Exception exc)
            { Session["msg"] = "reset configuration first";
                Response.Redirect("ConfigRoom.aspx"); }
            con.Close();
            Button2.Visible = true;
            Button3.Visible = true; Button4.Visible = true; Button5.Visible = true; Button6.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                ListBox2.Items.Add(ListBox1.SelectedItem.ToString());
                ListBox3.Items.Remove(ListBox1.SelectedItem);
                ListBox1.Items.Remove(ListBox1.SelectedItem);
            }
            catch (Exception o) { }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                ListBox3.Items.Add(ListBox2.SelectedItem);
                ListBox1.Items.Add(ListBox2.SelectedItem);
                ListBox2.Items.Remove(ListBox2.SelectedItem.ToString());

            }
            catch (Exception o) { }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ListBox4.Items.Add(ListBox3.SelectedItem.ToString());
            ListBox3.Items.Remove(ListBox3.SelectedItem);
            ListBox1.Items.Remove(ListBox3.SelectedItem);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ListBox3.Items.Add(ListBox4.SelectedItem);
            ListBox1.Items.Add(ListBox4.SelectedItem);
            ListBox4.Items.Remove(ListBox4.SelectedItem.ToString());

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();


    cmd = new SqlCommand("Select * from feedate ", con);
       
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                DateTime today = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy"));
                DateTime lastday = (DateTime)dr[2];
                dr.Read();
                DateTime startday = (DateTime)dr[1];
                
                TimeSpan ts1 = today - startday;
                TimeSpan ts2 = lastday - today;
                dr.Close();
                if (ts1.TotalHours < 0 || ts2.TotalHours < 0)
                {

                foreach (var items in ListBox2.Items)
                {
                    cmd = new SqlCommand("Update room set roomtype='deluxe' where roomno='" + items.ToString() + "'", con);
                    cmd.ExecuteNonQuery();



                }
                foreach (var items in ListBox4.Items)
                {
                    cmd = new SqlCommand("Update room set roomtype='semideluxe' where roomno='" + items.ToString() + "'", con);
                    cmd.ExecuteNonQuery();



                }
                con.Close();
                Session["msg"] = "Configuration saved";
                Response.Redirect("ConfigRoom.aspx");

            }
            else
            {
                con.Close();

                Session["msg"] = "Cannot  configure rooms in between Booking";
                Response.Redirect("ConfigRoom.aspx");

            
            
            }
        }
           
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);


            SqlCommand cmd = new SqlCommand("Select * from feedate", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
               
                DateTime today = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy"));
               DateTime lastday = (DateTime)dr[2];
               dr.Read();
               DateTime startday = (DateTime)dr[1];
               
                TimeSpan ts1 = today - startday;
                TimeSpan ts2 = lastday - today;
                dr.Close();
                if (ts1.TotalHours < 0 || ts2.TotalHours < 0)
                {
                    cmd = new SqlCommand("Delete from room where roomno >0 ", con);

                    ListBox1.Items.Clear();
                    ListBox2.Items.Clear();
                    ListBox3.Items.Clear();
                    ListBox4.Items.Clear();


                    cmd.ExecuteNonQuery();
                    con.Close();


                    Session["msg"] = "Configuartion reset complete....All Rooms are removed";
                    Response.Redirect("ConfigRoom.aspx");

                }
                else
                {
                    Session["msg"] = "Cannot reset configuration in between Booking";
                    Response.Redirect("ConfigRoom.aspx");

                
                
                
                }
            }


        }
    }
}
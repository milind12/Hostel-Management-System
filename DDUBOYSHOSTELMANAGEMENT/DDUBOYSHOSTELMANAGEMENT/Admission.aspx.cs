using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class Admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {



                  bool flag = false;
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
            SqlCommand cmd = null;
            con.Open();
            cmd = new SqlCommand("select * from room where roomno>0 and vacancy>0 ", con);
            SqlDataReader sdr = cmd.ExecuteReader(); int x = 0;
            if (sdr.Read())
            { flag = true; x = (Int32)sdr[0]; }
            sdr.Close();
            if (flag)
            {
                con.Close();




                con.Open();
                cmd = new SqlCommand("Select * from feedate where phase='newadmission'", con);
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


                        String s = TextBox1.Text;

                        string str = s[0].ToString();
                        str += s[1].ToString();
                        int i = Int32.Parse(str);
                        int j = Int32.Parse(s[s.Length - 1].ToString() + s[s.Length - 2].ToString() + s[s.Length - 3].ToString());
                        for (j = 2; j < 7; j++)
                        {
                            if ((s[j] > 'A' && s[j] < 'Z') || (s[j] > 'a' && s[j] < 'z'))
                            {

                            }
                            else { throw new Exception(); }
                        }

                        Label1.Text = "College Id is Valid";
                        Session["cid"] = TextBox1.Text.ToString();

                        Response.Redirect("Register.aspx");
                        dr.Close();


                    }
                    else
                    {
                        Label1.Text = "Admissions closed.";
                    }


                }

                con.Close();


                    
            
            
            
            
            
            
            
            
            
            }
            else
            { }







                     }
            catch(Exception o)
            {
                Label1.Text = "Please enter a valid college id"+o.Message;
            }
                    

        }

        protected void Button3_Click(object sender, EventArgs e)
        { }
    }
}
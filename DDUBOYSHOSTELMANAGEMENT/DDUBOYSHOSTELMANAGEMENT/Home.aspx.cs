using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
        SqlCommand cmd = null;
            if (!IsPostBack)
            {
                if (Session["cid"] == null)
                { 
                    Response.Redirect("Registration.aspx");



                }
                else
                {



                    
                      cmd = new SqlCommand("Select * from student where collegeid='"+Session["cid"].ToString()+"'",con)  ;
                       con.Open();
                       SqlDataReader dr=cmd.ExecuteReader();
                   if(dr.Read())
                   {
                      Session["fnm"]=dr["firstname"];
                       Session["lnm"]=dr["lastname"];

                       Session["gnm"]=dr["guardianname"];
Session["phono"]=dr["phoneno"];
Session["address"]=dr["address"];
Session["branch"]=dr["branch"];

                       Session["roomno"]=dr["roomno"];
                       dr.Close();
                   
                   }

                }
                
                
                Label1.Visible = true;
                string a = Session["lnm"].ToString().ToUpper();
                char b = Session["fnm"].ToString()[0];
                b = b.ToString().ToUpper()[0];
                string c = Session["fnm"].ToString().Substring(1);

                Label1.Text = b + c + " " + a[0];
 StringBuilder html = new StringBuilder();
                html.Append("<h2>NEWS FEED</h2>");
                html.Append("<table class='table'>");
                
               cmd = new SqlCommand("Select * from noticeboard", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                
                DataSet ds =new DataSet();

                da.Fill(ds, "noticeboard");
                con.Close();
                int i=1;
                html.Append("<th>No.</th><th>EVENT</th><th>DATE</th>");
                foreach(DataRow dr in ds.Tables["noticeboard"].Rows)
                {
                    html.Append("<tr>");
                    html.Append("<td align='center'>");
                    html.Append(i.ToString());
                    html.Append("</td>"); 
                    html.Append("<td>");
                    html.Append(dr[1]);
                    html.Append("</td>");
                    html.Append("<td>");
                    html.Append(dr[2]);
                    html.Append("</td>");


                    html.Append("</tr>");
                    i++;
                }
                html.Append("</Table>");
                PlaceHolder1.Controls.Add(new Literal { Text=html.ToString()});

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
            }

        }

    }
}
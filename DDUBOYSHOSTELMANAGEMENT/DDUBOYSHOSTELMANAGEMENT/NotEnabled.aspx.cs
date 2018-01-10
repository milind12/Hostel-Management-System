using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class NotEnabled : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["lnm"].ToString().ToUpper();
            char b = Session["fnm"].ToString()[0];
            b = b.ToString().ToUpper()[0];
            string c = Session["fnm"].ToString().Substring(1);

            Label2.Text = b + c + " " + a[0];
            if (Session["msg"]!= null)
            {
                Label1.Text = Session["msg"].ToString(); Session["msg"] = null;
               
            }
            
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Select profilepic from student where Collegeid like '" + Session["cid"].ToString() + "' and profilepic is not null", con); con.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            sdr.Close();

            string s2 = "<img height='50px' width='50px' id='imgLogoCompany' class='img-circle'  src='e.ashx?id=" + Session["cid"].ToString() + "' />";
            PlaceHolder6.Controls.Add(new Literal { Text=s2});

        }
        else
        {
            string s2 = " <h1 class='cover-heading'><i style='margin-left:2%' class='fa fa-user fa-1x'    aria-hidden='true'></i></h1>"; sdr.Close();
            
            PlaceHolder6.Controls.Add(new Literal { Text = s2 });

        
        }
        con.Close();
        }

        }
    }

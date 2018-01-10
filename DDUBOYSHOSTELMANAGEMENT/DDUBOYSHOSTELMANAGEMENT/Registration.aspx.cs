using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {  
                 if(Session["msg"]!=null){
                     Ph1.Controls.Add(new Literal { Text=Session["msg"].ToString()});Label1.Text = Session["msg"].ToString();
                     Session["msg"] = null;
                 }
                     ;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                String s2 = TextBox1.Text;
            String s = TextBox2.Text;
  
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
                SqlCommand cmd = null;
                con.Open();
                cmd = new SqlCommand("select * from credentials where username='"+TextBox1.Text.ToString()+"' and password='"+TextBox2.Text.ToString()+"'",con);

               
               SqlDataReader sdr= cmd.ExecuteReader();
                
                if (sdr.Read())
                {
                    String userid= sdr["userid"].ToString(); 
                    sdr.Close();
                     cmd = new SqlCommand("select * from roles where userid="+userid+" ",con);
                  sdr= cmd.ExecuteReader();
                    if(sdr.Read())
                    {
                        if (String.Compare(sdr["userrole"].ToString(),"admin")==0)
                        {
                            Session["admin"] = "admin";
                            Response.Redirect("WelcomeAdmin.aspx");
                   
                        
                        }
                        else if (String.Compare(sdr["userrole"].ToString(), "chiefwarden") == 0) 
                        {
                        
                        }

                        }
                    else{

                         Session["cid"] = TextBox1.Text.ToString();

                         Response.Redirect("Home.aspx");
               
                    }
                  
                
                
                
               
                
                
                
                }
                else
                {
                    Session["msg"] = "Invalid credentials";
                    Response.Redirect("Registration.aspx");
                }

                
            
    
            }
            catch(Exception o)
            {  
                Label1.Visible =true;
                Label1.Text = "Please enter valid college id" + o.Message; 
            }


            

           
        }
    }
}
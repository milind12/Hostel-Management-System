using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["msg"] != null) { Response.Write(Session["msg"].ToString()); Session["msg"] = null; }
            
            if(Session["cid"]!=null){

            
            PlaceHolder1.Controls.Add(new Literal { Text=Session["fnm"].ToString()+" "+Session["lnm"].ToString()});
            
            PlaceHolder2.Controls.Add(new Literal { Text=Session["cid"].ToString()});
            PlaceHolder3.Controls.Add(new Literal { Text=Session["roomno"].ToString()});
            PlaceHolder4.Controls.Add(new Literal { Text = Session["branch"].ToString() });
        }else{
        Response.Redirect("Registration.aspx");
           
        
        }


        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Select profilepic from student where Collegeid like '" + Session["cid"].ToString() + "' and profilepic is not null", con); con.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            sdr.Close();
            string s = "<img height='200px' width='200px' id='imgLogoCompany' class='img-circle' src='e.ashx?id=" + Session["cid"].ToString() + "' />";
            PlaceHolder5.Controls.Add(new Literal { Text = s });

            string s2 = "<img height='50px' width='50px' id='imgLogoCompany' class='img-circle' style='margin-bottom:10%;margin-top:5%'  src='e.ashx?id=" + Session["cid"].ToString() + "' />";
            PlaceHolder6.Controls.Add(new Literal { Text=s2});

        }
        else
        {
            string s = " <h1 class='cover-heading'><i style='margin-left:2%' class='fa fa-user  fa-3x' aria-hidden='true'></i></h1>"; sdr.Close();
            PlaceHolder5.Controls.Add(new Literal { Text = s });
            string s2 = " <h1 class='cover-heading'><i style='margin-left:2%' class='fa fa-user style='margin-bottom:10%;margin-top:5%' fa-2x' aria-hidden='true'></i></h1>"; sdr.Close();
            
            PlaceHolder6.Controls.Add(new Literal { Text = s2 });

        
        }
        con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        { try { 
            if (FileUpload1.HasFile)
            {
               
                int ifl = FileUpload1.PostedFile.ContentLength;
                if (ifl <= (5 * 1024 * 1024)&&(System.IO.Path.GetExtension(FileUpload1.FileName).Equals(".png")||System.IO.Path.GetExtension(FileUpload1.FileName).Equals(".jpg")))
                {
                    byte[] a = new byte[ifl];
                    HttpPostedFile image = FileUpload1.PostedFile;
                    image.InputStream.Read(a, 0, ifl);
                    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DDUConnectionString"].ConnectionString);

                    SqlCommand cmd = new SqlCommand("Update student set profilepic=@img where collegeid like '" + Session["cid"] + "'", con);

                    cmd.Parameters.AddWithValue("@img", SqlDbType.Image).Value = a;
                    con.Open(); cmd.ExecuteNonQuery();



                    con.Close();
                    Response.Redirect("Profile.aspx");
                }
                else
                {

                    Session["msg"] = "Picture  of .png or .jpg extension must be less than 5 mb" ;
                            Response.Redirect("Profile.aspx");
            
                }
                }
               
                }
        catch (HttpException o)
        {
          //  Session["msg"] = "Picture  of .png or .jpg extension must be less than 5 mb";
          //  Response.Redirect("Profile.aspx");
        }
                
        }
    }
}
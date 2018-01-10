using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDUBOYSHOSTELMANAGEMENT
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["cid"]==null)
            {
                Response.Redirect("Registration.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                //  cmd = new SqlCommand("Insert into student values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString()+"','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() +"','"+ x +"')", con);
                Session["fnm"] = TextBox1.Text.ToString();
                Session["lnm"] = TextBox2.Text.ToString();
               Session["phno"]  = TextBox3.Text.ToString();
               Session["gnm"] = TextBox4.Text.ToString();
                Session["gpn"] = TextBox5.Text.ToString();
                Session["address"] = TextBox6.Text.ToString();
                Session["branch"] = DropDownList1.SelectedItem.Text.ToString();


                Response.Redirect("NewRoomBook2.aspx");
            }
                         
            
            
        }
    }
}
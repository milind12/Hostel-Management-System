using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace DDUBOYSHOSTELMANAGEMENT
{
    /// <summary>
    /// Summary description for e
    /// </summary>
    public class e : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string dii = context.Request.QueryString["id"].ToString();
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DDUCOnnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("Select profilepic  from Student where collegeid= '" + dii+"'", con);
            con.Open();

            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            context.Response.BinaryWrite((Byte[])sdr[0]);
            context.Response.End();
        
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
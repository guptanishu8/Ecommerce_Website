using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Usedbookcafe
{
    public partial class forgotpawd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                
                string myquery = "update  [Registration] set [password]='" + pw + "' where uname='" + un + "'  and name='" + name +"' ";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                con.Open();
                
                Response.Redirect("Login.aspx");

            }

            catch
            {
                
            }
        }
    }
}

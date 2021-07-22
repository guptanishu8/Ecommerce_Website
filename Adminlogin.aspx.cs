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
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            string uname = TextBox1.Text;
            string pwd = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select name,password from Adminlogin where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label4.Text = "+ Login successfully !!";
                Response.Redirect("AHome.aspx");

            }
            else
            {
                Label4.Text = "+ Login failed. Kindly check username and password";
            }
            con.Close();
        }
        
        }
    }

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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


          protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            string uname = TextBox1.Text;
            string pwd = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select uname,password from Registration where uname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (Session["Button1"] == "yes")
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("PlaceOrder.aspx");
                }

                else
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("BuyBook.aspx");
                }

            }
            else
            {
                Label2.Text = "+ Login failed. Kindly check username and password";
            }

            if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
            {
                Response.Redirect("AHome.aspx");
            }

            con.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            TextBox1.Text = "";
            TextBox2.Text = "";
        }



        
    }
}
        
    

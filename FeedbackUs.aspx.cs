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
    public partial class FeedbackUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string insertQ = "insert into Feedback values( @email, @suggestion, @ratings)";
            SqlCommand cmd = new SqlCommand(insertQ, con);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@suggestion", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ratings", TextBox2.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup",
                    "alert('Thank you for your feedback !!');window.location='tyfeed.aspx';", true);

        }

    
    }
    }

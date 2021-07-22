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
    public partial class EditBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;


            string deleteSQL = "Delete from bookdetails where Id=" + TextBox1.Text;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(deleteSQL, con);
            int deleted = 0;
            try
            {
                con.Open();
                deleted = cmd.ExecuteNonQuery();
                Label2.Text = deleted.ToString() + "Record Deleted";
            }
            catch (Exception er)
            {
                Label2.Text = "Error deleting record ";
                Label2.Text += er.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
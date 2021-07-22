using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace Usedbookcafe
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string password;
            string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
                       
            string myquery = "select * from Registration where uname='" + TextBox1.Text + "' and email='" + TextBox2.Text + "'";
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                password = ds.Tables[0].Rows[0]["password"].ToString();
                sendpassword(password, TextBox2.Text);

                Label2.Text = "Your Password has been sent to Registered Email Address.     Check your Mail Inbox";

            }
            else
            {
                Label2.Text = "Your Username is not valid or email is not Registered";
            }
            con.Close();

        }
        private void sendpassword(String password, String email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("nishu.gupta8390@gmail.com", "nishugupta7*");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forget Password(USED BOOK CAFE)";
            msg.Body = "Dear  " + TextBox1.Text + ",Your Password is   " + password + "\n\nThanks & Regards\n\n Know Boisar Project";
            string toaddress = TextBox2.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Nishu Gupta<nishu.gupta8390@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
        }
    }
}

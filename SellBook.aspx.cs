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
    public partial class SellBook : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
            
            
             string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            
           
               /* string filename = f1.PostedFile.FileName;
                string filepath = "/bookimage/" + f1.FileName;
                f1.PostedFile.SaveAs(Server.MapPath("/bookimage/")+filename);*/
                string filepath="";
                 f1.SaveAs(Request.PhysicalApplicationPath+ "/bookimage/" +f1.FileName.ToString());
                filepath="bookimage/"+f1.FileName.ToString();
                con.Open();
                string insertQ = "insert into bookdetails values('" + book_name.Text + "','" + author_name.Text + "','" + description.Text + "','" + price.Text + "','" + filepath.ToString() + "','" + category.SelectedValue + "','" + quantity.SelectedValue + "')";
                SqlCommand cmd = new SqlCommand(insertQ, con);
                
                cmd.ExecuteNonQuery();
                Label9.Visible = true;
                Label9.Text = "Book Inserted Successfully!!";
                con.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            book_name.Text = "";
            author_name.Text = "";
            description.Text = "";
            description.Text = "";

            category.SelectedValue = "";
            quantity.SelectedValue = "";
        }

       
       

        
 
       
    }
}
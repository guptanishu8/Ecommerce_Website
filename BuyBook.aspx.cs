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
    public partial class BuyBook : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label7.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label7.Text = "0";
            }


            if (Request.QueryString["cat"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }    

        }

        
        
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Science");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Drama");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Action");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            Response.Redirect("BuyBook.aspx?cat=Mystery");
	

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Horrer");                
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Travel");    
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Children");
                                        

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Cook");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Health");

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Math");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


            if (e.CommandName == "addtocart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }
 
                            
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBook.aspx?cat=Other");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
   
        }


    }

}
  
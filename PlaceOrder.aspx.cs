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
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("book_name");
                dt.Columns.Add("author_name");
                dt.Columns.Add("description");
                dt.Columns.Add("price");
                dt.Columns.Add("book_image");
                dt.Columns.Add("category");
                dt.Columns.Add("quantity");
                dt.Columns.Add("totalprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
                        SqlConnection con = new SqlConnection(conStr);
                        con.Open();
           
                        
                        string myquery = "select * from bookdetails where id=" + Request.QueryString["id"];
                       
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["book_name"] = ds.Tables[0].Rows[0]["book_name"].ToString();
                        dr["author_name"] = ds.Tables[0].Rows[0]["author_name"].ToString();
                        dr["description"] = ds.Tables[0].Rows[0]["description"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["book_image"] = ds.Tables[0].Rows[0]["book_image"].ToString();
                        dr["category"] = ds.Tables[0].Rows[0]["category"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[7].Text = "Total Amount ";
                        GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
                        SqlConnection con = new SqlConnection(conStr);
                        con.Open();
           
                        
                        string myquery = "select * from bookdetails where id=" + Request.QueryString["id"];
                        
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["book_name"] = ds.Tables[0].Rows[0]["book_name"].ToString();
                        dr["author_name"] = ds.Tables[0].Rows[0]["author_name"].ToString();
                        dr["description"] = ds.Tables[0].Rows[0]["description"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();

                        dr["book_image"] = ds.Tables[0].Rows[0]["book_image"].ToString();
                        dr["category"] = ds.Tables[0].Rows[0]["category"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[7].Text = "Total Amount ";
                        GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[7].Text = "Total Amount ";
                        GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();
                    }
                }
                //Label1.Text = GridView1.Rows.Count.ToString();
            }
            Label3.Text = DateTime.Now.ToShortDateString();
            findorderid();

        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;

            }
            return gtotal;
        }

        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            Label2.Text = orderid;


        }

        public void saveaddress()
        {
            String updatepass = "insert into orderaddress1(orderid,address,mobilenumber) values('" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            
            
            
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            con.Close();
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];



            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into orderdetails1(orderid,sno,id,book_name,price,book_image,quantity,dateoforder) values('" + Label2.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["id"] + ",'" + dt.Rows[i]["book_name"] + "'," + dt.Rows[i]["price"] + ",'" + dt.Rows[i]["book_image"] + "'," + dt.Rows[i]["quantity"] + ",'" + Label3.Text + "')";
                string conStr = ConfigurationManager.ConnectionStrings["NProjectConnectionString4"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                con.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup",
                    "alert('Order has been placed Successfully !!..... Keep your total amount ready...');window.location='PlaceOrder.aspx';", true);

                con.Close();

            }
            saveaddress();

        }

      


        


    }
}
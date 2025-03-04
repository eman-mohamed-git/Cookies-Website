using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace CookiesWebsite2
{
    public partial class Makeorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";

            string strSelect = "SELECT Id, Title, Price, Count FROM Products WHERE Count > 0 ";
            SqlCommand cmdSelct = new SqlCommand(strSelect, conn);

            DataTable dt = new DataTable();
            conn.Open();
            dt.Load(cmdSelct.ExecuteReader());
            gdvProducts.DataSource = dt;
            gdvProducts.DataBind();
            

            if (!IsPostBack)
            {
          

                string username = "";
                if (Request.Cookies["CustomerInfo"] != null)
                {
                    username = Request.Cookies["CustomerInfo"].Values["Username"];
                }
                ViewState["userN"] = username;

                if (gdvProducts.Rows.Count == 0)
                {
                    Label3.Text = "No avaliable Cookies Now";
                    orderBtn.Visible = false;
                }
            }
       
        }

        protected void orderBtn_Click(object sender, EventArgs e)
        {
            if(gdvProducts.SelectedIndex != -1)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";

                string username = "";
                string email = "";

                if (Request.Cookies["CustomerInfo"] != null)
                {
                    username = Request.Cookies["CustomerInfo"].Values["Username"];
                    email = Request.Cookies["CustomerInfo"].Values["email"];
                }

                ViewState["userN"] = username;
                ViewState["userE"] = email;


                //getting selected cookie;

                string cookieId = gdvProducts.SelectedRow.Cells[1].Text;
                string cookieTitle = gdvProducts.SelectedRow.Cells[2].Text;
                string cookiePrice = gdvProducts.SelectedRow.Cells[3].Text;

                string strSelect = "SELECT MAX(OrderID) from Orders";
                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
                SqlDataReader reader;

                conn.Open();
                
                reader = cmdSelect.ExecuteReader();

                int orderId = 0;

                if (reader.Read())
                {
                    Console.WriteLine(reader.GetInt32(0));
                   orderId = reader.GetInt32(0);  
                    
                }
                reader.Close();
                conn.Close();

                Random rnd = new Random();

                int incr = rnd.Next(100, 1000);

                orderId = orderId + incr;

                string strInsert = string.Format("INSERT INTO Orders VALUES ({0},'{1}','{2}','{3}')",orderId, cookieTitle, txtClientName.Text, cookiePrice);

                SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

                conn.Open();
                cmdInsert.ExecuteNonQuery();

                conn.Close();

                //display current oreder
                gvOrder.Visible = true;

                conn.Close();
               
                sendEmail((string)ViewState["userE"], "Thanks for choosing our cookie business, Your order has been placed successfully");

                //updating count for cookies 
                string strUpdate = "UPDATE Products "
                    + " SET Count = Count - 1"
                    + " WHERE Id = '" + cookieId + "'";
                SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);
                conn.Open();
                cmdUpdate.ExecuteNonQuery();
                conn.Close();

                BindGridView();


            }


            else
            {
                noSelectBtn.Visible = true;
                noSelectBtn.Text = "No cookie is selected!!, select a cookie then click order";
            }
        }

        private void BindGridView()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";

            string strSelect = "SELECT Id, Title, Price, Count FROM Products WHERE Count > 0";
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            DataTable dt = new DataTable();
            conn.Open();
            dt.Load(cmdSelect.ExecuteReader());
            gdvProducts.DataSource = dt;
            gdvProducts.DataBind();
            conn.Close();
        }

        protected void sendEmail(string strEmail, string strMsg)
        {

            MailMessage msg = new MailMessage("CSCE4502@gmail.com", strEmail);
            msg.Subject = "Order Confirmation";
            msg.Body = strMsg;

            SmtpClient Sclient = new SmtpClient("smtp.gmail.com", 587);
            NetworkCredential auth = new NetworkCredential("farahashraf268f@gmail.com", "farah268@");

            Sclient.UseDefaultCredentials = false;
            Sclient.Credentials = auth;
            Sclient.EnableSsl = true;
            try
            {
                Sclient.Send(msg);
                msgEmail.Text = "A Message has been sent to your Email Address with details of your order!!";
                msgEmail.Visible = true;
            }
            catch (Exception ex)
            {
                msgEmail.Text = ex.Message;
            }

        }
    }
}
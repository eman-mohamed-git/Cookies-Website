using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace CookiesWebsite2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click1(object sender, EventArgs e)
        {
            try
            {
                //create connection string
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";

                //sql select statement
                string strSelect = "Select * From Customers Where Username = '"
                    + usernameLoginTextbox.Text + "'AND Password ='" + passwordLoginTextbox.Text + "'";


                //sql command
                SqlCommand cmdSelect = new SqlCommand(strSelect, connection);

                //create data reader object 
                SqlDataReader reader;


                //open connection
                connection.Open();

                //execute select command
                reader = cmdSelect.ExecuteReader();
                if (reader.Read())
                {

                    string fName = (string)reader.GetValue(1);
                    string lName = (string)reader.GetValue(2);
                    string email = (string)reader.GetValue(3);


                    HttpCookie cookie = new HttpCookie("CustomerInfo");
                    cookie.Values.Add("Username", usernameLoginTextbox.Text);
                    cookie.Values.Add("Password", passwordLoginTextbox.Text);
                    cookie.Values.Add("email", email);
                    cookie.Values.Add("Firstname", fName);
                    cookie.Values.Add("Lastname", lName);
                    cookie.Expires = DateTime.Now.AddDays(3);
                    Response.Cookies.Add(cookie);

                    if (usernameLoginTextbox.Text == "Admin")
                    {
                        Response.Redirect("~/HomeAdmin.aspx");

                    }
                    else
                    {
                        Response.Redirect("~/Home.aspx");

                    }

                }
                else
                {
                    msgLogin.Text = "Incorrect username and/or password !! ";
                }

                //close connecton
                connection.Close();
            }
            catch
            {
                msgLogin.Text = "Server error, please try again in another time.";
            }
        }
    }
}

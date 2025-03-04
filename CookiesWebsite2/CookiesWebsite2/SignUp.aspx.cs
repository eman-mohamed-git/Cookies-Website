using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace CookiesWebsite2
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Create a connection string:
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";

            //Create an insert statement:
            string insertData = "INSERT INTO Customers VALUES(@Username, @Firstname, @Lastname,@Email, @Phone,@Country, @Password )";

            //Create a sql command:
            SqlCommand InsertCommand = new SqlCommand(insertData, connection);
            InsertCommand.Parameters.AddWithValue("@Username", Textbox1.Text);
            InsertCommand.Parameters.AddWithValue("@Firstname", Textbox3.Text);
            InsertCommand.Parameters.AddWithValue("@Lastname", Textbox4.Text);
            InsertCommand.Parameters.AddWithValue("@Email", Textbox5.Text);
            InsertCommand.Parameters.AddWithValue("@Phone", Textbox6.Text);
            InsertCommand.Parameters.AddWithValue("@Country", CountryID.SelectedValue);
            Console.WriteLine("CountryID.SelectedValue: " + CountryID.SelectedValue);
;            InsertCommand.Parameters.AddWithValue("@Password", Textbox2.Text);


            try
            {
                //Open the connection:
                connection.Open();

                //Execute the command:
                InsertCommand.ExecuteNonQuery();


                //Close the connection:
                connection.Close();

                msgwelcome.Text = "Welcome " + Textbox3.Text + " to our website, we hope you find our cookies delicious!";
            }catch(SqlException err)
            {
                if (err.Number == 2627)
                {
                    msgwelcome.Text = "UserName already used!!, Please choose user-name unique like you";
                }
                else
                {
                    msgwelcome.Text = "Oops, something is going on in the universe, please try in another time";
                }
            }

        }

    }
}
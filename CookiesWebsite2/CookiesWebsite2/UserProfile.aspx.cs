using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesWebsite2
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                string username = "";
                if (Request.Cookies["CustomerInfo"] != null)
                {
                    username = Request.Cookies["CustomerInfo"].Values["Username"];
                }

                ViewState["userN"] = username;
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";
                string strSelect = "SELECT * FROM Customers WHERE Username ='" + username + "'";
                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

                SqlDataReader reader;
                conn.Open();
                reader = cmdSelect.ExecuteReader();

                if (reader.Read())
                {
                    fnametextbox.Text = (string)reader.GetValue(1);
                    lnametextbox.Text = (string)reader.GetValue(2);
                    emailtextbox.Text = (string)reader.GetValue(3);
                    phonetextbox.Text = (string)reader.GetValue(4);
                    ddlcountry.SelectedValue = (string)reader.GetValue(5);


                }

                reader.Close();
                conn.Close();
            }



        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            fnametextbox.Enabled = true;
            lnametextbox.Enabled = true;
            emailtextbox.Enabled = true;
            phonetextbox.Enabled = true;
            ddlcountry.Enabled = true;
            saveButton.Visible = true;



        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

            //Page.IsValid statement ensures that the code inside the block only runs if all the validation controls on the page report valid input.
            if (Page.IsValid)
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";
                string userName = "";
                userName = (string)ViewState["userN"];
                string strUpdate = "UPDATE Customers SET Firstname ='" + fnametextbox.Text + "'," + "Lastname = '" + lnametextbox.Text + "'," +
                    "Email = '" + emailtextbox.Text + "'," + "Country = '" + ddlcountry.SelectedValue + "'," + "Phone = '" + phonetextbox.Text + "' WHERE username='" + userName + "'";


                SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);
                conn.Open();

                int rowsAffected = cmdUpdate.ExecuteNonQuery();
                conn.Close();
                if (rowsAffected > 0)
                {
                    // Data saved successfully
                    // Disable editing controls
                    fnametextbox.Enabled = false;
                    lnametextbox.Enabled = false;
                    emailtextbox.Enabled = false;
                    phonetextbox.Enabled = false;
                    ddlcountry.Enabled = false;
                    saveButton.Visible = false;

                    // Display success message
                    LabelErr.Text = "Profile updated successfully.";
                }
                else
                {
                    // Failed to save data
                    LabelErr.Text = "Failed to update profile. Please try again.";

                }

            }










        }



    }
}
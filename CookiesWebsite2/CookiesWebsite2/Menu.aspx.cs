using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CookiesWebsite2
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //It's property of page class, it returns true: The page is being loaded in response to a client postback.
            // and return false: The page is being loaded and accessed for the first time.
            if (!IsPostBack)
            {
                BindProducts();
            }

        }

        private void BindProducts()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = |DataDirectory|CookiesShop.mdf; Integrated Security = True";

            string strSelect = "SELECT Title, Price, Count, imagePath FROM Products";
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            conn.Open();
            //ExecuteReader: This method sends the cmdSelect command to the database and returns a SqlDataReader object.
            SqlDataReader reader = cmdSelect.ExecuteReader();

            // Loading Data into a DataTable
            //: Using a DataTable allows you to manipulate the data (e.g., filtering, sorting) before binding it to the control. A SqlDataReader does not support these operations directly.
            DataTable dt = new DataTable();

            //dt.Load(reader);: This method loads the data from the SqlDataReader into the DataTable. The Load method fills the DataTable with the rows and schema from the SqlDataReader.
            dt.Load(reader);

            //ProductsRepeater is a control.The Repeater control is now aware of the data it needs to display.
            //The Repeater control is used to display repeated list items bound to the data.
            ProductsRepeater.DataSource = dt;
            //Data binding is the process of linking a data source (like a database, a list, or any collection of data) to a data-bound control (like a Repeater, GridView, or ListView). This allows the control to automatically display the data.
            //Look at the Data Source: Check what data has been set as its data source (ProductsRepeater.DataSource).
            // Generate HTML for Each Item: Go through each item in the data source and create the necessary HTML for each item based on the templates you’ve defined(like ItemTemplate, HeaderTemplate, etc.).
            ProductsRepeater.DataBind();
        }

        protected void ProductsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }


    }
}
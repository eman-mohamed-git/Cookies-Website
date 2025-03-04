using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CookiesWebsite2
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addSubmitProduct_Click(object sender, EventArgs e)
        {

         
            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CookiesShop.mdf;Integrated Security=True";

                string strPrice = addTextboxPrice.Text;
                int price = Convert.ToInt32(strPrice);

                string strCount = addtextboxCount.Text;
                int count = Convert.ToInt32(strCount);

                string strId = addTextboxId.Text;
                int id = Convert.ToInt32(strId);

                string strInsert = "INSERT INTO Products "
                    + " VALUES('" + addTextboxId.Text + "','"
                    + addTextboxTitle.Text + "','"
                    + addTextboxDesc.Text + "','"
                    + price + "','"
                    + count + "','"
                    + addtextboxImgPath.Text + "')";

                SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
                conn.Open();
                cmdInsert.ExecuteNonQuery();

                string strSelect = "SELECT Id, Title, Description, Price, Count, imagePath FROM Products "
                    + " WHERE Id = '" + id + "'";

                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

                DataTable tb = new DataTable();

                tb.Load(cmdSelect.ExecuteReader());

                gdViewAdd.DataSource = tb;
                gdViewAdd.DataBind();

                conn.Close();
            }catch(SqlException err)
            {
                if (err.Number == 2627)
                {
                    addProductlabelMsg.Text = "Product id is already used!!";
                }

            }
            catch
            {
                addProductlabelMsg.Text = "Something went wrong, please try in another time";
            }
          



        }


    }
}
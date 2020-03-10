using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicShop.Forms
{
    public partial class ClientStock : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void addToCart_Click(object sender, EventArgs e)
        {
            String stockName = shop.SelectedRow.Cells[5].Text;
            int amount = int.Parse(shopAmount.Text);
            decimal price = Decimal.Parse(shop.SelectedRow.Cells[6].Text) * amount;

            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Sklep_MuzycznyConnectionString"].ConnectionString);

            myConnection.Open();

            String sql = "INSERT INTO KOSZYK (Nazwa, Ilosc, Cena) VALUES (@stockName,  @amount, @price)";

            SqlCommand insertCommand = new SqlCommand(sql, myConnection);

            insertCommand.Parameters.AddWithValue("@stockName", stockName);
            insertCommand.Parameters.AddWithValue("@amount", amount);
            insertCommand.Parameters.AddWithValue("@price", price);
            insertCommand.ExecuteNonQuery();
            myConnection.Close();
        }

        protected void shopButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientStock.aspx");
        }

        protected void cartButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCart.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void shop_SelectedIndexChanged(object sender, EventArgs e)
        {
            shopAmount.Text = "1";
        }
    }
}
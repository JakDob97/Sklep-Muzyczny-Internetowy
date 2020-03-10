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
    public partial class ClientCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Sklep_MuzycznyConnectionString"].ConnectionString);
            String sql = "SELECT SUM(Cena) FROM KOSZYK";

            myConnection.Open();
            SqlCommand command = new SqlCommand(sql, myConnection);

            orderFullPrice.Text = command.ExecuteScalar().ToString();

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

        protected void orderPlace_Click(object sender, EventArgs e)
        { 
        


            decimal allPrice = Decimal.Parse(orderFullPrice.Text);

            String name = clientName.Text;
            String surname = clientSurname.Text;
            String clientCity = city.Text;
            String clientStreet = street.Text;
            String clientPostcode = postcode.Text;
            String orderDate = DateTime.Now.ToString("yyyy-MM-dd");
            decimal fullPrice = Decimal.Parse(orderFullPrice.Text);
            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Sklep_MuzycznyConnectionString"].ConnectionString);

            myConnection.Open();

            String sql = "BEGIN " +
                "IF NOT EXISTS (SELECT * FROM KLIENCI " +
                "WHERE IMIE_KLIENTA = @name " +
                "AND NAZWISKO_KLIENTA = @surname) " +
                "BEGIN " +
                "Insert into KLIENCI (IMIE_KLIENTA, NAZWISKO_KLIENTA) Values(@name, @surname)" +
                "END " +
                "END " +
                "BEGIN " +
                "DECLARE @IDKlienta int;" +
                "SET @IDKlienta = (SELECT ID_KLIENTA FROM KLIENCI " +
                "WHERE IMIE_KLIENTA = @name AND NAZWISKO_KLIENTA = @surname); " +
                "IF NOT EXISTS (SELECT * FROM ADRESY_KLIENTOW " +
                "WHERE ID_KLIENTA = @IDKlienta " +
                "AND MIASTO = @city " +
                "AND ULICA = @street " +
                "AND KOD = @postcode) " +
                "BEGIN " +
                "INSERT INTO ADRESY_KLIENTOW (ID_KLIENTA, MIASTO, ULICA, KOD) " +
                "VALUES (@IDKlienta, @city, @street, @postcode) " +
                "END " +
                "END " +
                "BEGIN " +
                "INSERT INTO ZAMOWIENIA (ID_KLIENTA, ID_PRACOWNIKA, NAZWA_ZAMOWIENIA, DATA_ZAMOWIENIA, DATA_REALIZACJI, CENA_ZAMOWIENIA) " +
                "VALUES (@IDKlienta, 1, 'NoweZamówienie', @orderDate, '0000-00-00', @fullPrice) " +
                "END " +
                "BEGIN " +
                "DELETE FROM KOSZYK " +
                "END";

            SqlCommand insertCommand = new SqlCommand(sql, myConnection);
            insertCommand.Parameters.AddWithValue("@name", name);
            insertCommand.Parameters.AddWithValue("@surname", surname);
            insertCommand.Parameters.AddWithValue("@city", clientCity);
            insertCommand.Parameters.AddWithValue("@street", clientStreet);
            insertCommand.Parameters.AddWithValue("@postcode", clientPostcode);
            insertCommand.Parameters.AddWithValue("@orderDate", orderDate);
            insertCommand.Parameters.AddWithValue("@fullPrice", fullPrice);
            insertCommand.ExecuteNonQuery();

            foreach (GridViewRow row in shoppingCart.Rows)
            {
                string stockName = row.Cells[2].Text;
                int stockAmount = int.Parse(row.Cells[3].Text);
                Decimal stockPrice = Decimal.Parse(row.Cells[4].Text);

                String sql2 = "BEGIN " +
                    "DECLARE @IDZamowienia int, @IDTowaru int;" +
                    "SET @IDZamowienia = (SELECT MAX(ID_ZAMOWIENIA) FROM ZAMOWIENIA); " +
                    "SET @IDTowaru = (SELECT ID_TOWARU FROM TOWARY " +
                    "WHERE NAZWA_TOWARU = @stockName); " +
                    "BEGIN " +
                    "INSERT INTO ILOSC_ZAMOWIONEGO_TOWARU (ID_ZAMOWIENIA, ID_TOWARU, CENA_ZAKUPU, ILOSC_NA_ZAMOWIENIE) " +
                    "VALUES (@IDZamowienia, @IDTowaru, @stockPrice, @stockAmount) " +
                    "END " +
                    "END";

                SqlCommand insertCommand2 = new SqlCommand(sql2, myConnection);
                insertCommand2.Parameters.AddWithValue("@stockName", stockName);
                insertCommand2.Parameters.AddWithValue("@stockPrice", stockPrice);
                insertCommand2.Parameters.AddWithValue("@stockAmount", stockAmount);
                insertCommand2.ExecuteNonQuery();
            }
            myConnection.Close();
            Response.Write("<script language=javascript>alert('Zamówienie zostało złożone pomyślnie!')</script>");
        }
    }
}
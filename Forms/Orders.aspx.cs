using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicShop.Forms
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void stockButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stock.aspx");
        }

        protected void ordersButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Orders.aspx");
        }

        protected void clientsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clients.aspx");
        }

        protected void workersButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Workers.aspx");
        }

        protected void detailsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Details.aspx");
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void tableOrder_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void completeOrder_Click(object sender, EventArgs e)
        {
            int orderID = int.Parse(tableOrder.SelectedRow.Cells[1].Text);
            String completeDate = DateTime.Now.ToString("yyyy-MM-dd");

            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Sklep_MuzycznyConnectionString"].ConnectionString);

            myConnection.Open();

            String sql = "UPDATE ZAMOWIENIA SET DATA_REALIZACJI = @completeDate WHERE ID_ZAMOWIENIA = @orderID";


            SqlCommand updateCommand = new SqlCommand(sql, myConnection);
            updateCommand.Parameters.AddWithValue("@completeDate", completeDate);
            updateCommand.Parameters.AddWithValue("@orderID", orderID);
         
            updateCommand.ExecuteNonQuery();
            myConnection.Close();

            tableOrder.DataBind();
        }
    }
}
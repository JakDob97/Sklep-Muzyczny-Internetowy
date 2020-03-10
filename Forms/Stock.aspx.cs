using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicShop.Forms
{
    public partial class Stock : System.Web.UI.Page
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addStock_Click(object sender, EventArgs e)
        {
            Towary.Insert();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicShop.Forms
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void loadClient(object sender, EventArgs e)
        {
            Response.Redirect("ClientStock.aspx");
        }


        protected void loadShop(object sender, EventArgs e)
        {
            var loginText = login.Text;
            var passText = password.Text;
            if(loginText == "musicShop" && passText == "ShopProject1")
            {
                Response.Redirect("Stock.aspx");
            }
        }
    }
}
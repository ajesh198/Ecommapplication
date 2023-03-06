using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ca = "select * from cart where regid=" + Session["userid"] + "";
            DataSet cart = connection.Fun_dataadapter(ca);
            GridView1.DataSource = cart;
            GridView1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class orderpage : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["userid"]);
            string op = "select * from order_table where regid = "+id+ " and status='pending'";
            SqlDataReader dr = connection.Fun_datareader(op);
            while (dr.Read())
            {
                Label3.Text = dr["orderno"].ToString();
                Label4.Text = dr["totalammount"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Ecommservice.ServiceClient obj = new Ecommservice.ServiceClient();
            string s = obj.status();
            Label5.Text = s;
            //string upd = "update order_table set status='completed'";
            //int u = connection.Fun_nonquery(upd);
            //string car = "update cart set status='completed'";
            //int c = connection.Fun_nonquery(car);
            //Response.Redirect("sucesspage.aspx");
        }
    }
}
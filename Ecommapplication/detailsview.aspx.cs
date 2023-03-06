using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class detailsview : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string pro = "select * from product where proid=" + Session["proid"] + "";
                SqlDataReader dr = connection.Fun_datareader(pro);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["image"].ToString();
                    Label1.Text = dr["name"].ToString();
                    Label2.Text = dr["description"].ToString();
                    Label4.Text = dr["price"].ToString();
                    Label6.Text = dr["stock"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ca = "insert into cart values("+Session["proid"]+","+TextBox1.Text+","+Label4.Text+ ",'pending',"+Session["userid"]+")";
            int c = connection.Fun_nonquery(ca);
            if (c != 0)
            {
                Response.Redirect("cartpage.aspx");
            }
        }
    }
}
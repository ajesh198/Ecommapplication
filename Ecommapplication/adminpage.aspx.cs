using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class adminpage : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string grid = "select * from category";
            DataSet gr = connection.Fun_dataadapter(grid);
            GridView1.DataSource = gr;
            GridView1.DataBind();

            string grid2 = "select * from product";
            DataSet gr2 = connection.Fun_dataadapter(grid2);
            GridView2.DataSource = gr2;
            GridView2.DataBind();
        }
    }
}
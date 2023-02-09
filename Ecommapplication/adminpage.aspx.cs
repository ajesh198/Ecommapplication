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
            if (!IsPostBack)
            {
                string grid = "select * from category";
                DataSet gr = connection.Fun_dataadapter(grid);
                GridView1.DataSource = gr;
                GridView1.DataBind();


                string drop = "select catid,name from category";
                DataSet dr = connection.Fun_dataadapter(drop);
                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "catid";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0,"--Select--");

                string grid2 = "select * from product";
                DataSet gr2 = connection.Fun_dataadapter(grid2);
                GridView2.DataSource = gr2;
                GridView2.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string grid2 = "select * from product where catid='"+DropDownList1.SelectedItem.Value+"'";
            DataSet gr2 = connection.Fun_dataadapter(grid2);
            GridView2.DataSource = gr2;
            GridView2.DataBind();
        }

    }
}
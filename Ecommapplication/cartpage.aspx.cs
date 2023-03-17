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
       public void Bind_grid()
        {
            string ca = "select * from cart where regid=" + Session["userid"] + "";
            DataSet cart = connection.Fun_dataadapter(ca);
            GridView1.DataSource = cart;
            GridView1.DataBind();
            GridView1.FooterRow.Cells[2].Text = "Total Amount";
            double totalSalary = 0;
            foreach (DataRow dr in cart.Tables[0].Rows)
            {
                totalSalary += Convert.ToDouble(dr["totalprice"]);
            }
            GridView1.FooterRow.Cells[3].Text = totalSalary.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_grid();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from cart where cartid="+id+"";
            int d = connection.Fun_nonquery(del);

            Bind_grid();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtquantity = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];


            //string upd = "update cart set quantity="+txtquantity+", totalprice="
        }
    }
}
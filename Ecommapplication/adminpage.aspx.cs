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

                bind_grid2();
            }
        }

        public void bind_grid2()
        {
            string grid2 = "select * from product";
            DataSet gr2 = connection.Fun_dataadapter(grid2);
            GridView2.DataSource = gr2;
            GridView2.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string grid2 = "select * from product where catid='"+DropDownList1.SelectedItem.Value+"'";
            DataSet gr2 = connection.Fun_dataadapter(grid2);
            GridView2.DataSource = gr2;
            GridView2.DataBind();
        }


        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView2.DataKeys[i].Value);
            String del = "delete from product where proid="+id+"";
            int d = connection.Fun_nonquery(del);
            bind_grid2();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            bind_grid2();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            bind_grid2();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView2.DataKeys[i].Value);

            TextBox txtname = (TextBox)GridView2.Rows[i].Cells[1].Controls[0];
            String upd = "update product set name='" + txtname.Text + "' where proid="+id+"";
            int u = connection.Fun_nonquery(upd);

            GridView2.EditIndex = -1;
            bind_grid2();
        }
    }
}
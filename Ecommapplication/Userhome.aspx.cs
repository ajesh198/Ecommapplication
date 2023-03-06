using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class Userhome : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string cat = "select * from category";
                DataSet ca = connection.Fun_dataadapter(cat);
                DataList1.DataSource = ca;
                DataList1.DataBind();
            }

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "productview")
            {
                Label cat_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("catlabel");
                string catid = cat_id.Text;
                Session["catid"] = catid;

                Response.Redirect("productview.aspx");
            }
        }
    }
}
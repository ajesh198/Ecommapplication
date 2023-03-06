using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class productview : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string pro = "select * from product where catid=" +Session["catid"]+"";
                DataSet pr = connection.Fun_dataadapter(pro);
                DataList1.DataSource = pr;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "detailview")
            {
                Label pro_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("label5");
                string proid = pro_id.Text;
                Session["proid"] = proid;

                Response.Redirect("detailsview.aspx");
            }
        }
    }
}
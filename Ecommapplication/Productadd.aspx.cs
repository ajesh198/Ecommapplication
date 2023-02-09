using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class Productadd : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                string drop = "select catid,name from category";
                DataSet dr = connection.Fun_dataadapter(drop);
                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "catid";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--Select--");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String img = "~/PHS/" + imgup.FileName;
            imgup.SaveAs(MapPath(img));
            string ins = "insert into  product values(" + DropDownList1.SelectedItem.Value + ",'" + nametxt.Text + "','" + img + "','" + pricetxt.Text + "','" + desctxt.Text + "','active'," + stocktxt.Text + ")";
            int i = connection.Fun_nonquery(ins);
            if (i != 0)
            {
                msglbl.Text = "Product added sucessfully";
                msglbl.Visible = true;
            }
        }
    }
}
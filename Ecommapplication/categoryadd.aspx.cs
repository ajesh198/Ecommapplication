using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class categoryadd : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String img = "~/PHS/" + imageup.FileName;
            imageup.SaveAs(MapPath(img));
            string ins = "insert into  category values('" + nametxt.Text + "','" + img + "','" + desctxt.Text + "','active')";
            int i = connection.Fun_nonquery(ins);
            if (i != 0)
            {
                msglbl.Text = "Category added sucessfully";
                msglbl.Visible = true;
            }
        }
    }
}
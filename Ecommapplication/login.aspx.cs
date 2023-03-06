using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class login : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string log = "select count(regid) from login where username='" + usertxt.Text + "' and password='" + pwdtxt.Text + "'";
            string cid = connection.Fun_scalar(log);
            int cid1 = Convert.ToInt32(cid);
            if(cid1 == 1)
            {
                string log1 = "select regid from login where username='" + usertxt.Text + "' and password='" + pwdtxt.Text + "'";
                string uid = connection.Fun_scalar(log1);
                Session["userid"] = uid;

                string utype = "select logtype from login where username='" + usertxt.Text + "' and password='" + pwdtxt.Text + "'";
                string logtype = connection.Fun_scalar(utype);
                if(logtype == "Admin")
                {
                    Response.Redirect("adminpage.aspx");
                }
                else
                {
                    Response.Redirect("Userhome.aspx");
                }
            }
            else
            {
                errmsg.Text = "incorrect username or password";
                errmsg.Visible = true;
            }

        }
    }
}
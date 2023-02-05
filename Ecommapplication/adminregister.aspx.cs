using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommapplication
{
    public partial class adminlogin : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string che = "select count(username) from login where username='"+unametxt.Text+"'";
            string ch = connection.Fun_scalar(che);
            int ch1 = Convert.ToInt32(ch);
            if (ch1 != 0)
            {
                msgtxt.Text = "username already taken";
                msgtxt.Visible = true;
            }
            else
            {
                string sel = "select max(regid) from login";
                string reg_id = connection.Fun_scalar(sel);
                int regid = 0;
                if (reg_id == "")
                {
                    regid = 1;
                }
                else
                {
                    int newregid = Convert.ToInt32(reg_id);
                    regid = newregid + 1;
                }
                string ins = "insert into  admin values(" + regid + ",'" + nametxt.Text + "','" + addresstxt.Text + "','" + phonetxt.Text + "','" + emailtxt.Text + "')";
                int i = connection.Fun_nonquery(ins);
                string log = "insert into  login values(" + regid + ",'" + unametxt.Text + "'," + cpwdtxt.Text + ",'admin','active')";
                int j = connection.Fun_nonquery(log);
                if (i != 0 && j != 0)
                {
                    Response.Redirect("adminregister.aspx");
                }
            }
        }
    }
}
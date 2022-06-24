using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace collegeManagementSystem
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 1;
            if (Session["Email"] == null)
            {
                Response.Write("<script>('session timeout')</script>");
                Response.Redirect("adminloginpage.aspx");
            }
        }

        protected void Button1_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("addteacher.aspx");
        }

        protected void Button2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("manageteacher.aspx");
        }

        protected void Button3_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("adminmanagestud.aspx");
        }
    }
}
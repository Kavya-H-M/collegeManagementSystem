using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace collegeManagementSystem
{
    public partial class teacherlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 1;
            if (Session["temail"] == null)
            {
                Response.Write("<script>('session timeout')</script>");
                Response.Redirect("teacherloginpage.aspx");
            }
        }

        protected void addstudent_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("addstudent.aspx");
        }

        protected void managestudent_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("managestud.aspx");
        }
    }
}
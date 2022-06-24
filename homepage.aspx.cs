using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace collegeManagementSystem
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Admin_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("adminloginpage.aspx");
        }

        protected void Teacher_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("teacherloginpage.aspx");
        }
    }
}
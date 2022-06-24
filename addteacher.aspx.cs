using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace collegeManagementSystem
{
    public partial class addteacher : System.Web.UI.Page
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

        

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            var ID = tid.Value;
            var Name = tname.Value;
            var Email = temail.Value;
            var Pass = tpswd.Value;
            var Dept = tdepartment.Value;
            var Sem = tsem.Value;
            var Gender = tgnd.Value;

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Kavya\Documents\collegeManagementSystem.mdf;Integrated Security=True;Connect Timeout=30");
            try
            {
                con.Open();
                string query = "insert into teacher values('" + tid.Value + "','" + tname.Value + "','" + temail.Value + "','" + tpswd.Value + "','" + tdepartment.Value + "','" + tsem.Value + "','" + tgnd.Value + "') ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('added successfully')</script>");
                Response.Redirect("manageteacher.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('adding unsuccessfull')</script>");
            }
            finally
            {
                con.Close();
            }

        }
    }
}
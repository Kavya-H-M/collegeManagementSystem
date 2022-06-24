using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace collegeManagementSystem
{
    public partial class addstudent : System.Web.UI.Page
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

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            var Name = sname.Value;
            var Email = semail.Value;
            var Sdept = sdepartment.Value;
            var Sem = ssem.Value;
            var Sgender = sgnd.Value;
            var addedby = Session["temail"].ToString();


            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Kavya\Documents\collegeManagementSystem.mdf;Integrated Security=True;Connect Timeout=30");
            Random r = new Random();
            string u = r.Next(111, 999).ToString();
            try
            {
                con.Open();
                string query = "insert into student values('" + sname.Value + "','" + semail.Value + "','" + sdepartment.Value + "','" + ssem.Value + "','" + sgnd.Value + "' , '" + addedby + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('added successfully')</script>");
                Response.Redirect("managestud.aspx");

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;


namespace collegeManagementSystem
{
    public partial class teacherloginpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Kavya\Documents\collegeManagementSystem.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            try
            {

                con.Open();

                string query = "select * from teacher where temail= '" + temail.Value + "' and tpswd ='" + tpswd.Value + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string tpd = dr.GetValue(3).ToString();
                        string email = dr.GetValue(2).ToString();
                        {
                            Session["temail"] = email;
                            Session["tpswd"] = tpd;
                            Response.Redirect("teacherlogin.aspx");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('invalid user!')</script>");
                }
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace collegeManagementSystem
{
    public partial class adminloginpage : System.Web.UI.Page
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

                string query = "select * from admin where Email= '" + aemail.Value + "' and Password ='" + apswd.Value + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string apd = dr.GetValue(1).ToString();
                        string amail = dr.GetValue(0).ToString();
                        {
                            Session["Email"] = amail;
                            Session["Password"] = apd;
                            Response.Redirect("adminlogin.aspx");
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
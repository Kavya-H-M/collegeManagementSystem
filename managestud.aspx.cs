
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace collegeManagementSystem
{
    public partial class managestud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 1;
            if (Session["temail"] == null)
            {
                Response.Write("<script>('session timeout')</script>");
                Response.Redirect("teacherloginpage.aspx");
            }
            if (!this.IsPostBack)
            {
                gvbind();
            }

        }
        private void gvbind()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Kavya\Documents\collegeManagementSystem.mdf;Integrated Security=True;Connect Timeout=30");
            {
                var a = Session["temail"].ToString();
                string query = "select * from student where addedby= '" + a + "' ";
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        SqlCommand cmd = new SqlCommand(query, con);
                        sda.SelectCommand = cmd;
                        using (DataSet dt = new DataSet())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Kavya\Documents\collegeManagementSystem.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            string query = "delete from student where semail='" + row.Cells[2].Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
            Response.Redirect("managestud.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament
{
    public partial class login : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPassword.Text != "")
            {
                getcon();
                cmd = new SqlCommand(
                    "SELECT * FROM Users WHERE Email='" + txtUsername.Text + "' AND Password='" + txtPassword.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if(dr.Read())
{
                    Session["UserID"] = dr["UserID"].ToString();       
                    Session["UserEmail"] = dr["Email"].ToString();
                    Session["unm"] = dr["FullName"].ToString();
                    Session["Role"] = dr["Role"].ToString().ToLower();

                    string role = dr["Role"].ToString().ToLower();

                    if (role == "admin")
                    {
                        Response.Redirect("~/Admin/AdminDashboard.aspx");
                    }
                    else if (role == "user")
                    {
                        Response.Redirect("~/User/index.aspx");
                    }
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Unknown role.";
                    }
                }

            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter email and password.";
            }
        }
    }
}
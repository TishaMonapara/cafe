using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.User
{
    public partial class register : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String lnm;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void getcon()
        {
            conn = new SqlConnection(s);
            conn.Open();
        }

        void clear()
        {
            txtFullName.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("insert into users (FullName, Username, Email, Phone, Password, Gender) values ('" + txtFullName.Text + "','" + txtUsername.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "', '" + txtPassword.Text + "','" + rdgen.Text + "')", conn);
            cmd.ExecuteNonQuery();
            clear();
            Response.Redirect("../login.aspx");
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
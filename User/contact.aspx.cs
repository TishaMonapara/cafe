using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Cafe_Managament.User
{
    public partial class contact : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;

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
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtMessage.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                getcon();
                cmd = new SqlCommand("INSERT INTO ContactUs (Name, Email, Phone, Message, CreatedDate) VALUES ('"
                                      + txtName.Text + "','"
                                      + txtEmail.Text + "','"
                                      + txtPhone.Text + "','"
                                      + txtMessage.Text + "','"
                                      + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')", conn);

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    lblMsg.Text = "✅ Your message has been sent successfully!";
                }
                clear();
            }
            catch (Exception ex)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Error: " + ex.Message;
            }
        }
    }
}

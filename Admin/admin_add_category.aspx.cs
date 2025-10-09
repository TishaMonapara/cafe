using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.Admin
{
    public partial class admin_add_category : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        DataSet ds;
        SqlCommand cmd;
        SqlDataAdapter da; 
        String fnm;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            TextBox1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("insert into add_cat(CategoryName) values('" + TextBox1.Text + "')", con);

            da = new SqlDataAdapter(cmd); 
            ds = new DataSet();

            da.Fill(ds); 
            clear();
        }
    }
}

using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Cafe_Managament.Admin
{
    public partial class AddItem : System.Web.UI.Page
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
            dlct.SelectedIndex = 0;
            txtnm.Text = "";
            txtps.Text = "";
            RadioButtonList1.ClearSelection();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("INSERT INTO MenuItem (Category, ItemName, Price, ItemType) VALUES ('"
                                 + dlct.SelectedItem.Text + "','"
                                 + txtnm.Text + "',"
                                 + txtps.Text + ",'"
                                 + RadioButtonList1.SelectedItem.Text + "')", conn);

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "✅ Item added successfully!";
            }
            
            clear();
        }
    }
}

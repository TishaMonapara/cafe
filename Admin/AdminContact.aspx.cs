using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.Admin
{
    public partial class AdminContact : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                string query = "SELECT Name, Email, Phone, Message, CreatedDate FROM ContactUs ORDER BY CreatedDate DESC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvContacts.DataSource = dt;
                gvContacts.DataBind();

            }
        }

        protected void gvContacts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvContacts.PageIndex = e.NewPageIndex;
            BindGrid();
        }
    }
}
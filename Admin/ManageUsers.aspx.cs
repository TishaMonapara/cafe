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
    public partial class ManageUsers : System.Web.UI.Page
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
                string query = "SELECT  UserID,FullName, Username, Email, Phone, Password ,Gender FROM Users";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;   // ✅ ab sahi ID use ho rahi hai
                GridView1.DataBind();
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Example: selected row ka Id nikalna
            string id = (GridView1.SelectedRow.FindControl("Label1") as Label).Text;
            Response.Write("Selected UserID = " + id);
        }
    }
}
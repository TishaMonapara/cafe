using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.User
{
    public partial class cart : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Fix compilation warning — no logic needed
        }

        void fillgrid()
        {
            // 🔹 Remove login redirect check (since login already required globally)
            // if (Session["user_email"] == null)
            // {
            //     Response.Redirect("~/login.aspx");
            // }

            getcon();

            // ✅ If session exists (always true after login)
            string email = Session["UserEmail"]?.ToString();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Email='" + email + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int uid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);

                getcon();
                da = new SqlDataAdapter("SELECT *, (Prod_Price * Prod_Quantity) AS Total FROM cart_tbl WHERE UserID = " + uid, con);
                ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                decimal finalTotal = 0;
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    if (dr["Total"] != DBNull.Value)
                        finalTotal += Convert.ToDecimal(dr["Total"]);
                }

                Lblfinaltotal.Text = "Final Total: ₹" + finalTotal.ToString();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
                Lblfinaltotal.Text = "Final Total: ₹0.00";
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                cmd = new SqlCommand("DELETE FROM cart_tbl WHERE CartID = " + id, con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Email='" + Session["user_email"].ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int uid = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);

                foreach (GridViewRow row in GridView1.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow && row.RowIndex < GridView1.DataKeys.Count)
                    {
                        int prodcartid = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                        TextBox txtQty = (TextBox)row.FindControl("txtQuantity");

                        int quantity;
                        int.TryParse(txtQty.Text, out quantity);
                        if (quantity < 1) quantity = 1;

                        cmd = new SqlCommand("UPDATE cart_tbl SET Prod_Quantity = " + quantity +
                                             " WHERE UserID = " + uid + " AND Prod_Cart_Id = " + prodcartid, con);
                        cmd.ExecuteNonQuery();
                    }
                }

                fillgrid();
            }
        }
    }
}

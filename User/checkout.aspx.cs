using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.User
{
    public partial class checkout : System.Web.UI.Page
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
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {
                fillUser();
                fillgrid();
            }
        }

        void fillUser()
        {
            getcon();
            string email = Session["UserEmail"].ToString();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Email='" + email + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                // change column name if needed (e.g. Username or FullName)
                txtName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
            }
        }

        void fillgrid()
        {
            getcon();
            string email = Session["UserEmail"].ToString();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Email='" + email + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int uid = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);

                da = new SqlDataAdapter("SELECT *, (Prod_Price * Prod_Quantity) AS Total FROM cart_tbl WHERE UserID=" + uid, con);
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

                Lblfinaltotal.Text = "Final Total: ₹" + finalTotal.ToString("0.00");
                ViewState["total"] = finalTotal;
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
                Lblfinaltotal.Text = "Final Total: ₹0.00";
            }
        }

        protected void BtnConfirm_Click(object sender, EventArgs e)
        {
            getcon();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Email='" + Session["UserEmail"].ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int uid = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);
                string name = txtName.Text;
                string address = txtAddress.Text;
                string payment = ddlPayment.SelectedValue;
                decimal total = Convert.ToDecimal(ViewState["total"]);

                cmd = new SqlCommand("INSERT INTO order_tbl(UserID, Name, Address, Payment_Method, Total_Amount, Order_Date) VALUES (" +
                                     uid + ", '" + name + "', '" + address + "', '" + payment + "', '" + total + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')", con);
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("DELETE FROM cart_tbl WHERE UserID=" + uid, con);
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('✅ Order Placed Successfully!');window.location='index.aspx';", true);
            }
        }
    }
}
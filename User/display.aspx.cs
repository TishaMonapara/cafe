using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.User
{
    public partial class display : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        PagedDataSource pg = new PagedDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["pid"] = 0;
                filllist();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            if (con.State != ConnectionState.Open)
                con.Open();
        }

        void filllist()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_prod", con);
            ds = new DataSet();
            da.Fill(ds);

            pg.DataSource = ds.Tables[0].DefaultView;
            pg.AllowPaging = true;
            pg.PageSize = 2;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);

            lnkprev.Enabled = !pg.IsFirstPage;
            lnknxt.Enabled = !pg.IsLastPage;

            DataList1.DataSource = pg;
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int currentpage = Convert.ToInt32(ViewState["pid"]);
            if (currentpage > 0)
            {
                currentpage--;
                ViewState["pid"] = currentpage;
                filllist();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int currentpage = Convert.ToInt32(ViewState["pid"]);
            currentpage++;
            ViewState["pid"] = currentpage;
            filllist();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            // 🟢 View button
            if (e.CommandName == "cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ViewDetails.aspx?id=" + id);
            }

            // 🟢 Add to Cart button
            else if (e.CommandName == "cmd_cart")
            {
                getcon();

                // ✅ Check login session
                if (Session["UserEmail"] == null || Session["UserID"] == null)
                {
                    Response.Write("<script>alert('Please login first!'); window.location='../../login.aspx';</script>");
                    return;
                }

                int uid = Convert.ToInt32(Session["UserID"]);
                int pid = Convert.ToInt32(e.CommandArgument);

                // ✅ 1. Check if product already in cart
                da = new SqlDataAdapter("SELECT * FROM cart_tbl WHERE UserID=" + uid + " AND Prod_Cart_Id=" + pid, con);
                DataSet dsCart = new DataSet();
                da.Fill(dsCart);

                if (dsCart.Tables[0].Rows.Count > 0)
                {
                    // Already in cart → increase quantity
                    cmd = new SqlCommand("UPDATE cart_tbl SET Prod_Quantity = Prod_Quantity + 1 WHERE UserID=" + uid + " AND Prod_Cart_Id=" + pid, con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    // ✅ 2. Add new item to cart
                    cmd = new SqlCommand("INSERT INTO cart_tbl (UserID, Prod_Cart_Id, Prod_Name, Prod_Price, Prod_Quantity, Prod_Image, Created_At) " +
                                         "SELECT " + uid + ", Id, Name, Price, 1, Image, GETDATE() FROM add_prod WHERE Id=" + pid, con);
                    cmd.ExecuteNonQuery();
                }

                // ✅ 3. Redirect to cart page
                Response.Redirect("cart.aspx");
            }
        }
    }
}

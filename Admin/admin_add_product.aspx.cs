using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.Admin
{
    public partial class admin_add_product : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string fnm;
        int i;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                fillcategory();
                BindGridView();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillcategory()
        {
            da = new SqlDataAdapter("SELECT * FROM add_cat", con);
            ds = new DataSet();
            da.Fill(ds);

            drpct.Items.Clear();
            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpct.Items.Add(ds.Tables[0].Rows[i]["CategoryName"].ToString());
            }
        }

        
        void uploadImg()
        {
            if (flpimg.HasFile)
            {
                fnm = "../images/" + flpimg.FileName;
                flpimg.SaveAs(Server.MapPath(fnm));
            }
            else
            {
                fnm = ""; 
            }
        }

        void clear()
        {
            txtnm.Text = "";
            Txtds.Text = "";
            txtprice.Text = "";
            drpct.SelectedIndex = 0;
            drpct2.SelectedIndex = 0;
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            uploadImg();

            cmd = new SqlCommand("INSERT INTO add_prod (Name, Category, Price, Description, Image, Availability) VALUES ('"
                + txtnm.Text + "','"
                + drpct.SelectedItem.Text + "','"
                + txtprice.Text + "','"
                + Txtds.Text + "','"
                + fnm + "','"
                + drpct2.SelectedItem.Text + "')", con);

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Product added successfully!');</script>");
            clear();
            BindGridView();
        }

        void BindGridView()
        {
            da = new SqlDataAdapter("SELECT * FROM add_prod", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGridView();
        }

        
        protected void drpct_SelectedIndexChanged(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM add_cat WHERE CategoryName='" + drpct.SelectedItem.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ViewState["cid"] = Convert.ToInt32(ds.Tables[0].Rows[0]["Id"].ToString());
            }
        }
    }
}

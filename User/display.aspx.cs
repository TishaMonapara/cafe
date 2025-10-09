using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managament.User
{
    public partial class display : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
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
            if (e.CommandName == "cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ViewDetails.aspx?id=" + id);
            }
        }
    }
}
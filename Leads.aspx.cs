using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reiborn_Landing_Page
{
	public partial class Leads : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                if (Request.Cookies["username"] == null || Request.Cookies["username"].Equals(""))
                {
                    Response.Redirect("Index.aspx");
                }
                //1. Create connection string
                string query = "SELECT * FROM leads ORDER BY id DESC";
                string constr = "Data Source=localhost;Database=lp_dyp_b;User ID=root;";
                //1. Create connection object
                MySqlConnection con = new MySqlConnection(constr);
                DataTable dataTable = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(query, con);
                da.Fill(dataTable);
                gvData.DataSource = dataTable;
                gvData.DataBind();
            }

        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1); // Expire the cookie
            Response.Cookies["username"].Value = string.Empty; // Clear the value

            Response.Cookies["usertype"].Expires = DateTime.Now.AddDays(-1); // Expire the cookie
            Response.Cookies["usertype"].Value = string.Empty; // Clear the value
            Response.Redirect("Index.aspx");
        }
    }
}
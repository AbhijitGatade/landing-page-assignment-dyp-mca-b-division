using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Reiborn_Landing_Page
{
	public partial class Index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobileno = txtMobileNo.Text.Trim();
            if(name.Equals(""))
            {
                lblMessage.Text = "Please enter name.";
            }
            else if (email.Equals(""))
            {
                lblMessage.Text = "Please enter email.";
            }
            else if (mobileno.Equals(""))
            {
                lblMessage.Text = "Please enter mobile no.";
            }
            string query = "INSERT INTO leads(name, email, mobileno, createdon) ";
            query += "VALUES('" + name + "', '" + email + "', '" + mobileno + "', NOW());";

            string constr = "Data Source=localhost;Database=lp_dyp_b;User ID=root;";

            //1. Create connection object
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            //2. Create command object
            MySqlCommand cmd = new MySqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ThankYou.aspx");
        }
    }
}
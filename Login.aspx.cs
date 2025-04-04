using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reiborn_Landing_Page
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void ibtnLogin_Click(object sender, ImageClickEventArgs e)
        {
			string username = txtUsername.Text;
			string password = txtPassword.Text;
            if (username.Equals("admin") && password.Equals("admin"))
			{
                Response.Cookies.Add(new HttpCookie("username", username));
                Response.Cookies.Add(new HttpCookie("usertype", "Admin"));
                Response.Redirect("Leads.aspx");
            }
            else
            {
                ltrMessage.Text = "<div class='alert'>Invalid username or password</div>";
            }
        }
    }
}
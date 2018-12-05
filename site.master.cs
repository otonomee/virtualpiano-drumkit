using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Windows;
using System.Web.Services;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // If user is logged out, display a login button - and vice versa
        if (Session["Sid"] == null)
        {
            loginItem.Visible = true;
            logoutItem.Visible = false;
        }
        else
        {
            loginItem.Visible = false;
            logoutItem.Visible = true;
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Sid"] = null;
        Response.Write("<script>alert('You have been successfully logged out!');document.location='LoginPage.aspx'</script>");
        //Response.Redirect("LoginPage.aspx");
    }
}

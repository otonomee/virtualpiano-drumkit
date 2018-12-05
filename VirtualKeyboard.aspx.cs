using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MusicApp1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Redirects to login page if user is not logged in
        if (Session["Sid"] == null)
        {
            Response.Write("<script>alert('You  must be logged in to access a game!');window.location='LoginPage.aspx';</script>");
        }
    }
}
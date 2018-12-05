using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Web.SessionState;

public partial class LoginPage : System.Web.UI.Page
{

    SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string doesUserExist = @"SELECT COUNT(*)
                                FROM [userInfo] WHERE Username = '" + usernameTxt.Text + "' AND Password = '" + passwordTxt.Text + "' ";
            SqlCommand command = new SqlCommand(doesUserExist, connection);
            connection.Open();

            int count = Convert.ToInt32(command.ExecuteScalar()); // Checks to see if there is a unique user from above query
            connection.Close();

            if (count == 1)
            {
                Response.Write("<script>alert('Login Successful!');window.location='default.aspx';</script>");
                Session["Sid"] = Session.SessionID;
            }
            else
            {
                errorMessage.Text = "No user found! Have you registered an account?";
            }
        }
    }

}
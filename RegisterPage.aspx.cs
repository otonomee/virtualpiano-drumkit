using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.SessionState;

public partial class RegisterPage : System.Web.UI.Page
{

    // Create the connection to the Register.mdf database in Server Explorer
    SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click(object sender, EventArgs e)
    {

        if (usernameTxt.Text.Length > 0 && passwordTxt.Text.Length > 0)
        {
            // Query for creating a new user
            string createUser = @"INSERT INTO [userInfo](Username, Password) 
                    VALUES('" + usernameTxt.Text + "', '" + passwordTxt.Text + "')";

            // Query for checking to see if user exists
            string doesUserExist = @"SELECT COUNT(*)
                                FROM[userInfo] WHERE Username = '" + usernameTxt.Text + "' AND Password = '" + passwordTxt.Text + "' ";


            SqlCommand commandCheckUser = new SqlCommand(doesUserExist, connection); // Define SQL command to execute query
            connection.Open();
            int isThereUser = Convert.ToInt32(commandCheckUser.ExecuteScalar()); // Execute SQL query
            connection.Close();
            if (isThereUser == 1)
            {
                Response.Write("<script>alert('An account already exists with those credentials!');window.location='RegisterPage.aspx';</script>");
            }
            else
            {
                SqlCommand commandCreateUser = new SqlCommand(createUser, connection); // Define SQL command to execute query
                connection.Open();
                commandCreateUser.ExecuteNonQuery(); // Execute SQL query
                connection.Close();
                Response.Write("<script>alert('Registration Successful!');window.location='default.aspx';</script>");
                Session["Sid"] = Session.SessionID;
            }
            //Response.Write("<script>alert('Registration Successful!');window.location='default.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('You must fill out both fields!');window.location='RegisterPage.aspx';</script>");
        }

    }
}
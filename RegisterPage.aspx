<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">

    <script src="login-register.js"></script>

    <div class="login-register-page-container border-1 rounded-1">
        <div>
            <h1 class="page-heading">Register</h1>
            <h3 class="page-sub-heading" style="text-align: center;">Register an account to play</h3>
        </div>

        <div class="register-container">

            <div class="register-label">User Name</div>
            <asp:TextBox ID="usernameTxt" class="register-txtbox" runat="server"></asp:TextBox>

            <span class="register-label">Password</span>
            <asp:TextBox ID="passwordTxt" class="register-txtbox" runat="server"></asp:TextBox>

            <asp:Button ID="registerButton" CssClass="register-button" runat="server" Text="Register" OnClick="registerButton_Click" />

            <br />
            <div style="margin-top: 10px;">Already have an account? <a href="LoginPage.aspx">Visit the login page</a></div>
        </div>
    </div>

</asp:Content>


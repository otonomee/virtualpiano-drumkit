<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">

    <script src="login-register.js"></script>

    <div class="login-register-page-container border-1 rounded-1">
        <div class="login-header-container">
            <h1 class="page-heading">Login</h1>
            <h3 class="page-sub-heading" style="text-align: center;">You must login to play</h3>
        </div>



        <div class="login-container">
            <asp:Label runat="server" ID="errorMessage" Style="text-align: center; color: red; display: block; margin-bottom: 20px; font-weight: 500;" />

            <div class="login-label">User Name</div>
            <asp:TextBox ID="usernameTxt" class="login-txtbox" runat="server" UseSubmitBehavior="False" AutoPostBack="False"></asp:TextBox>

            <span class="login-label">Password</span>
            <asp:TextBox ID="passwordTxt" class="login-txtbox" runat="server" UseSubmitBehavior="False" AutoPostBack="False"></asp:TextBox>

            <asp:Button ID="loginButton" CssClass="login-button" runat="server" Text="Login" OnClick="loginButton_Click" UseSubmitBehavior="False" AutoPostBack="False" />


            <asp:HyperLink ID="loadRegisterPage" runat="server" Style="display: block; margin-top: 10px;" NavigateUrl="~/RegisterPage.aspx">Register New Account</asp:HyperLink>

        </div>
    </div>
</asp:Content>


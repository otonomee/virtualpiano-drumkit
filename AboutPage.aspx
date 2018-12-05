<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="AboutPage.aspx.cs" Inherits="AboutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="card text-center">
        <div class="card-header">
            About
        </div>
        <div class="card-body">
            <h5 class="card-title">Independent study project for Dr. Mandy Yan Dang's ISM 330 class. </h5>
            <p class="card-text">The site offers 4 different musical games/activities to choose from - have fun!</p>
            <img src="images/NAU-FCB.jpg" style="display: inline-block;"/>
            <a href="default.aspx" class="btn btn-primary" style="display:block; width:300px; margin:0 auto;">Browse Games</a>
        </div>
        <div class="card-footer text-muted">
            Created by Austin Allen, Fall 2018
        </div>
    </div>

</asp:Content>


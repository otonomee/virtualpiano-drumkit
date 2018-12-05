<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainContent" runat="Server">

    <div>
        <h1 class="page-heading">Select A Musical Activity</h1>
        <h3 class="page-sub-heading" style="text-align: center;"></h3>
    </div>

    <div class="item-container">
        <div class="row" style="justify-content: center; margin-bottom: 40px; margin-top: 80px;">
            <div class="col-sm-4" style="margin-right: 80px;">
                <div class="card">
                    <img class="card-img-top" src="/images/home-page/piano.jpg" alt="Card image" style="height: 248px; width: 248px; margin-left: 64px;">
                    <div class="card-body" style="text-align: center;">
                        <h4 class="card-title">Virtual Piano</h4>
                        <p class="card-text">Play the piano with your keyboard!</p>
                        <a href="VirtualKeyboard.aspx" class="btn btn-primary">Play Virtual Piano</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <img class="card-img-top" src="images/home-page/drums.jpg" alt="Card image" style="height: 248px;">
                    <div class="card-body" style="text-align: center;">
                        <h4 class="card-title">Virtual Drummer</h4>
                        <p class="card-text">Play the drums with your keyboard!</p>
                        <a href="VirtualDrummer.aspx" class="btn btn-primary">Play Virtual Drummer</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="justify-content: center; margin-bottom: 70px;">
            <div class="col-sm-4" style="margin-right: 80px;">
                <div class="card">
                    <img class="card-img-top" src="images/home-page/pitch-difference.jpg" alt="Card image" style="height: 248px;">
                    <div class="card-body" style="text-align: center;">
                        <h4 class="card-title">Pitch Difference Test</h4>
                        <p class="card-text">Test your pitch recognition capabilities!</p>
                        <a href="PitchDiffTest.aspx" class="btn btn-primary">Take The Pitch Difference Test</a>
                    </div>
                </div>
            </div>


            <div class="col-sm-4">
                <div class="card">
                    <img class="card-img-top note-played-image" src="images/home-page/which-note.png" alt="Card image" style="height: 225px;">
                    <div class="card-body" style="text-align: center;">
                        <h4 class="card-title">Identify The Note Played</h4>
                        <p class="card-text">Think you have perfect pitch? Identify the notes played!</p>
                        <a href="IdentifyNotePlayed.aspx" class="btn btn-primary">Play Identify The Note</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>




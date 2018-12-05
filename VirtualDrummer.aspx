<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="VirtualDrummer.aspx.cs" Inherits="MusicApp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">

    <script src="js/drummer.js"></script>



    <div>
        <h1 class="page-heading">Virtual Drummer</h1>
        <h3 class="page-sub-heading" style="text-align: center;">Play The Drums With Your Keyboard</h3>
        <h5 class="page-sub-sub-heading">(Keys 1-7)</h5>
    </div>

    <div class="drum-kit-container">

        <!-- 1 -->
        <img src="images/drum-kit/hi-hat.png" class="drum-hit" data-key="49" style="height: 461px; margin-left: -51px;" class="drum-component" />


        <!-- 2 -->
        <img src="images/drum-kit/crash.png" class="drum-hit" data-key="50" style="height: 317px; margin-left: -65px; margin-top: -126px;" class="drum-component" />


        <!-- 3 -->
        <img src="images/drum-kit/snare-drum.png" class="drum-hit" data-key="51" style="height: 279px; margin-left: -62px; margin-top: 160px;" class="drum-component" />


        <!-- 4 -->
        <img src="images/drum-kit/rack-tom.png" class="drum-hit" data-key="52" style="height: 165px; margin-left: -49px; margin-top: -175px;" class="drum-component" />


        <!-- 5 -->
        <img src="images/drum-kit/kick-drum.png" class="drum-hit" data-key="53" style="height: 303px; margin-left: -182px; margin-top: 197px;" class="drum-component" />


        <!-- 6 -->
        <img src="images/drum-kit/floor-tom.png" class="drum-hit" data-key="54" style="height: 265px; margin-left: -86px; margin-top: 281px; margin-bottom: 193px;" class="drum-component" />


        <!-- 7 -->
        <img src="images/drum-kit/ride.png" class="drum-hit" data-key="55" style="height: 400px; margin-left: -65px; margin-top: -48px;" class="drum-component">
    </div>

    <audio data-key="49" src="sounds/drummer/hihat.wav"></audio>
    <audio data-key="50" src="sounds/drummer/crash.wav"></audio>
    <audio data-key="51" src="sounds/drummer/snare.wav"></audio>
    <audio data-key="52" src="sounds/drummer/rack-tom.wav"></audio>
    <audio data-key="53" src="sounds/drummer/kick.wav"></audio>
    <audio data-key="54" src="sounds/drummer/floor-tom.wav"></audio>
    <audio data-key="55" src="sounds/drummer/ride.wav"></audio>

</asp:Content>


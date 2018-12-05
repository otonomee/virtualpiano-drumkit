<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="PitchDiffTest.aspx.cs" Inherits="MusicApp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">

    <script src="js/pitchdiff.js">

   

    </script>

    <div>
        <h1 class="page-heading">Pitch Difference Recognition</h1>
        <h3 class="page-sub-heading" style="text-align: center; margin-bottom: 30px;">Is the 2nd tone <strong>higher</strong> or <strong>lower</strong> in pitch?</h3>
    </div>

    <div id="errorMessage" style="text-align: center;"></div>

    <div class="game-container border-1 rounded-1" id="gameContainer">
        <div id="gameOverMessage"></div>
        <input type="button" value="Play Again" onclick="resetGame()" id="resetButton" style="text-align: center; display: none;" />

        <div id="roundDisplay">
            Round:
            <div id="round">1</div>
        </div>

        <div class="pitch-diff-container" id="gameButtons">

            <a href="javascript:void(0)" onclick="userSelection('lower'); buttonPressDown('red');">
                <img src="images/pitch-diff/redBtnUnpressed.png" id="redBtn" class="pitch-diff-image" border="0" /></a>

            <a href="javascript:void(0)" onclick="generateTones('first'); animateButtons('playButton');">
                <img src="images/pitch-diff/play-button.png" id="playButton" class="pitch-diff-image" style="height: 140px;" /></a>

            <a href="javascript:void(0)" onclick="generateTones('again'); animateButtons('playAgainButton');">
                <img src="images/pitch-diff/play-again-button.png" id="playAgainButton" class="pitch-diff-image" style="height: 160px;" /></a>

            <a href="javascript:void(0)" onclick="userSelection('higher'); buttonPressDown('green');">
                <img src="images/pitch-diff/GreenBtnUnpressed.png" id="greenBtn" class="pitch-diff-image" border="0" /></a>

        </div>

        <div class="diff-results" style="text-align: center; font-size: 23px;">
            <div id="answerDisplay">
                <div id="answer"></div>
            </div>
            <br />
            <div id="finalScore" style="display: none;">
                Your Final Score: 
                <div id="score"></div>
            </div>

        </div>
    </div>


</asp:Content>


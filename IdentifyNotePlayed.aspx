<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="IdentifyNotePlayed.aspx.cs" Inherits="MusicApp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">


    <script src="jquery-1.7.1.min.js"></script>
    <script src="js/identify-keys.js"></script>

    <div>
        <h1 class="page-heading">Identify The Note Played</h1>
        <h3 class="page-sub-heading" style="text-align: center; font-size: 18px;">Press the button to play a note and select the correct
            <br />
            note played on the keyboard below.</h3>
    </div>

    <div class="diff-results" style="text-align: center; font-size: 23px;">
        <div class="identifyNoteAnswerDisplay">
            <div id="answer"></div>
        </div>

    </div>

    <div class="playBtnSection">

        <a href="javascript:void(0)" onclick="playNote();">
            <img src="images/identifyNotePlayed/PurpleBtnUnpressed.png" id="playBtn" class="identifyNotePlayBtn" border="0" /></a>

    </div>

    <div class="identify-keys">
        <div id="c2" class="identify-key" tabindex="0" data-key="81" onclick="noteSelection('c3');playPianoKeyFromMouse(81);">
            <div class="note-names">C</div>
        </div>

        <div id="c#2" class="identify-black-key black-key-group-1" tabindex="0" data-key="65" onclick="noteSelection('c#3');playPianoKeyFromMouse(65);">
            <div class="black-note-names" style="color: white;">C#</div>
        </div>

        <div id="d2" class="identify-key" tabindex="0" data-key="87" onclick="noteSelection('d3');playPianoKeyFromMouse(87);">
            <div class="note-names">D</div>
        </div>

        <div id="d#2" class="identify-black-key black-key-group-1" tabindex="0" data-key="83" onclick="noteSelection('d#3');playPianoKeyFromMouse(83);">
            <div class="black-note-names" style="color: white;">D#</div>
        </div>

        <div id="e2" class="identify-key" tabindex="0" data-key="69" onclick="noteSelection('e3');playPianoKeyFromMouse(69);">
            <div class="note-names">E</div>
        </div>

        <div id="f2" class="identify-key" tabindex="0" data-key="68" onclick="noteSelection('f3');playPianoKeyFromMouse(68);">
            <div class="note-names">F</div>
        </div>

        <div id="f#2" class="identify-black-key black-key-group-2" tabindex="0" data-key="82" onclick="noteSelection('f#3');playPianoKeyFromMouse(82);">
            <div class="black-note-names" style="color: white;">F#</div>
        </div>

        <div id="g2" class="identify-key" tabindex="0" data-key="70" onclick="noteSelection('g3');playPianoKeyFromMouse(70);">
            <div class="note-names">G</div>
        </div>

        <div id="g#2" class="identify-black-key black-key-group-2" tabindex="0" data-key="84" onclick="noteSelection('g#3');playPianoKeyFromMouse(84);">
            <div class="black-note-names" style="color: white;">G#</div>
        </div>

        <div id="a3" class="identify-key" tabindex="0" data-key="71" onclick="noteSelection('a4');playPianoKeyFromMouse(71);">
            <div class="note-names">A</div>
        </div>

        <div id="a#3" class="identify-black-key black-key-group-2" tabindex="0" data-key="89" onclick="noteSelection('a#4');playPianoKeyFromMouse(89);">
            <div class="black-note-names" style="color: white;">A#</div>
        </div>

        <div id="b3" class="identify-key" tabindex="0" data-key="72" onclick="noteSelection('b4');playPianoKeyFromMouse(72);">
            <div class="note-names">B</div>
        </div>
    </div>

    <audio data-key="81" src="sounds/identify-notes/c3.mp3"></audio>
    <audio data-key="65" src="sounds/identify-notes/c-3.mp3"></audio>
    <audio data-key="87" src="sounds/identify-notes/d3.mp3"></audio>
    <audio data-key="83" src="sounds/identify-notes/d-3.mp3"></audio>
    <audio data-key="69" src="sounds/identify-notes/e3.mp3"></audio>
    <audio data-key="68" src="sounds/identify-notes/f3.mp3"></audio>
    <audio data-key="82" src="sounds/identify-notes/f-3.mp3"></audio>
    <audio data-key="70" src="sounds/identify-notes/g3.mp3"></audio>
    <audio data-key="84" src="sounds/identify-notes/g-3.mp3"></audio>
    <audio data-key="71" src="sounds/identify-notes/a4.mp3"></audio>
    <audio data-key="89" src="sounds/identify-notes/a-4.mp3"></audio>
    <audio data-key="72" src="sounds/identify-notes/b4.mp3"></audio>

</asp:Content>


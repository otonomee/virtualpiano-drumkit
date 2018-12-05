<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="VirtualKeyboard.aspx.cs" Inherits="MusicApp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">

    <script src="jquery-1.7.1.min.js"></script>
    <script src="js/piano.js"></script>

    <div>
        <h1 class="page-heading">Virtual Piano</h1>
        <h3 class="page-sub-heading" style="text-align: center;">Play With Your Keyboard</h3>
    </div>

    <div class="keys">
        <div id="c2" class="key" tabindex="0" data-key="81" onclick="playPianoKeyFromMouse(81)">
        </div>

        <div id="c#2" class="black-key black-key-group-1" tabindex="0" data-key="65" onclick="playPianoKeyFromMouse(65)">
        </div>

        <div id="d2" class="key" tabindex="0" data-key="87" onclick="playPianoKeyFromMouse(87)">
        </div>

        <div id="d#2" class="black-key black-key-group-1" tabindex="0" data-key="83" onclick="playPianoKeyFromMouse(83)">
        </div>

        <div id="e2" class="key" tabindex="0" data-key="69" onclick="playPianoKeyFromMouse(69)">
        </div>

        <div id="f2" class="key" tabindex="0" data-key="68" onclick="playPianoKeyFromMouse(68)">
        </div>

        <div id="f#2" class="black-key black-key-group-2" tabindex="0" data-key="82" onclick="playPianoKeyFromMouse(82)">
        </div>

        <div id="g2" class="key" tabindex="0" data-key="70" onclick="playPianoKeyFromMouse(70)">
        </div>

        <div id="g#2" class="black-key black-key-group-2" tabindex="0" data-key="84" onclick="playPianoKeyFromMouse(84)">
        </div>

        <div id="a3" class="key" tabindex="0" data-key="71" onclick="playPianoKeyFromMouse(71)">
        </div>

        <div id="a#3" class="black-key black-key-group-2" tabindex="0" data-key="89" onclick="playPianoKeyFromMouse(89)">
        </div>

        <div id="b3" class="key" tabindex="0" data-key="72" onclick="playPianoKeyFromMouse(72)">
        </div>

        <div id="c3" class="key" tabindex="0" data-key="85" onclick="playPianoKeyFromMouse(85)">
        </div>

        <div id="c#3" class="black-key black-key-group-3" tabindex="0" data-key="74" onclick="playPianoKeyFromMouse(74)">
        </div>

        <div id="d3" class="key" tabindex="0" data-key="73" onclick="playPianoKeyFromMouse(73)">
        </div>

        <div id="d#3" class="black-key black-key-group-3" tabindex="0" data-key="75" onclick="playPianoKeyFromMouse(75)">
        </div>

        <div id="e3" class="key" tabindex="0" data-key="79" onclick="playPianoKeyFromMouse(79)">
        </div>

        <div id="f3" class="key" tabindex="0" data-key="76" onclick="playPianoKeyFromMouse(76)">
        </div>

        <div id="f#3" class="black-key black-key-group-4" tabindex="0" data-key="80" onclick="playPianoKeyFromMouse(80)">
        </div>

        <div id="g3" class="key" tabindex="0" data-key="186" onclick="playPianoKeyFromMouse(186)">
        </div>

        <div id="g#3" class="black-key black-key-group-4" tabindex="0" data-key="219" onclick="playPianoKeyFromMouse(219)">
        </div>

        <div id="a4" class="key" tabindex="0" data-key="222" onclick="playPianoKeyFromMouse(222)">
        </div>

        <div id="a#4" class="black-key black-key-group-4" tabindex="0" data-key="221" onclick="playPianoKeyFromMouse(221)">
        </div>

        <div id="b4" class="key" tabindex="0" data-key="220" onclick="playPianoKeyFromMouse(220)">
        </div>
    </div>

    <!-- Associates each of the keyboard keys with their respective sounds -->
    <audio data-key="81" src="sounds/piano/c3.mp3"></audio>
    <audio data-key="65" src="sounds/piano/c-3.mp3"></audio>
    <audio data-key="87" src="sounds/piano/d3.mp3"></audio>
    <audio data-key="83" src="sounds/piano/d-3.mp3"></audio>
    <audio data-key="69" src="sounds/piano/e3.mp3"></audio>
    <audio data-key="68" src="sounds/piano/f3.mp3"></audio>
    <audio data-key="82" src="sounds/piano/f-3.mp3"></audio>
    <audio data-key="70" src="sounds/piano/g3.mp3"></audio>
    <audio data-key="84" src="sounds/piano/g-3.mp3"></audio>
    <audio data-key="71" src="sounds/piano/a4.mp3"></audio>
    <audio data-key="89" src="sounds/piano/a-4.mp3"></audio>
    <audio data-key="72" src="sounds/piano/b4.mp3"></audio>
    <audio data-key="85" src="sounds/piano/c4.mp3"></audio>
    <audio data-key="74" src="sounds/piano/c-4.mp3"></audio>
    <audio data-key="73" src="sounds/piano/d4.mp3"></audio>
    <audio data-key="75" src="sounds/piano/d-4.mp3"></audio>
    <audio data-key="79" src="sounds/piano/e4.mp3"></audio>
    <audio data-key="76" src="sounds/piano/f4.mp3"></audio>
    <audio data-key="80" src="sounds/piano/f-4.mp3"></audio>
    <audio data-key="186" src="sounds/piano/g4.mp3"></audio>
    <audio data-key="219" src="sounds/piano/g-4.mp3"></audio>
    <audio data-key="222" src="sounds/piano/a5.mp3"></audio>
    <audio data-key="221" src="sounds/piano/a-5.mp3"></audio>
    <audio data-key="220" src="sounds/piano/b5.mp3"></audio>

</asp:Content>


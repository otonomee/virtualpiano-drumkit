var whichNote;

function keyPressGraphic() {
    setTimeout(function () {
        document.getElementById('playBtn').src = 'images/identifyNotePlayed/PurpleBtnPressed.png';
    }, 0)

    setTimeout(function () {
        document.getElementById('playBtn').src = 'images/identifyNotePlayed/PurpleBtnUnpressed.png';
    }, 250)

    var results = document.getElementById("answer");
    results.innerHTML = "";
}

function playNote() {
    keyPressGraphic();
    var randomNum = Math.floor(Math.random() * 12); // random number between 0 and 11. Will use to index noteSamples array

    var noteOptions = ['c3', 'c#3', 'd3', 'd#3', 'e3', 'f3', 'f#3', 'g3', 'g#3', 'a4', 'a#4', 'b4']

    // 12 total notes
    var noteSamples = {'c3' : 'sounds/identify-notes/c3.mp3', 
        'c#3': 'sounds/identify-notes/c-3.mp3',
        'd3': 'sounds/identify-notes/d3.mp3',
        'd#3': 'sounds/identify-notes/d-3.mp3',
        'e3': 'sounds/identify-notes/e3.mp3',
        'f3': 'sounds/identify-notes/f3.mp3',
        'f#3': 'sounds/identify-notes/f-3.mp3',
        'g3': 'sounds/identify-notes/g3.mp3',
        'g#3': 'sounds/identify-notes/g-3.mp3',
        'a4': 'sounds/identify-notes/a4.mp3',
        'a#4': 'sounds/identify-notes/a-4.mp3',
        'b4': 'sounds/identify-notes/b4.mp3'
    };

    whichNote = noteOptions[randomNum]; //picks the random note to be played

    console.log(whichNote);

    var noteToPlay = new Audio(noteSamples[whichNote]);
    noteToPlay.play();
}

function noteSelection(noteEntered) {

    var results = document.getElementById("answer");

    var noteFormatting = {
        'c3': 'C',
        'c#3': 'C#',
        'd3': 'D',
        'd#3': 'D#',
        'e3': 'E',
        'f3': 'F',
        'f#3': 'F#',
        'g3': 'G',
        'g#3': 'G#',
        'a4': 'A',
        'a#4': 'A#',
        'b4': 'B'
    }

    if (noteEntered == whichNote) {
        results.innerHTML = "<div style='color:green'>Correct! The note played was <strong>" + noteFormatting[whichNote] + "</strong>!";
    } else {
        results.innerHTML = "<div style='color:red'>Oops! The note played was <strong>" + noteFormatting[whichNote] + "</strong> and you entered <strong>" + noteFormatting[noteEntered] + "</strong>. Try again?";
    }
}

function playPianoKeyFromMouse(key) {
    const audio = document.querySelector(`audio[data-key="${key}"]`);
    audio.play();
}

//function playNote() {

   
//        setTimeout(function () {
//            document.getElementById('playBtn').src = 'images/identifyNotePlayed/PurpleBtnPressed.png';
//        }, 0)

//        setTimeout(function () {
//            document.getElementById('playBtn').src = 'images/identifyNotePlayed/PurpleBtnUnpressed.png';
//        }, 250)

//    } 
   
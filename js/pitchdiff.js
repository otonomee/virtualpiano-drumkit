var frequenciesPlayed = [];
var scoreCount = 0;
var counter = 0;

var hasPlayed = false;
var hasSelected = false;

function generateTones(whichButton) {

    
    var whichButton = whichButton;

    var frequencyFirst = Math.random() * (600 - 590) + 590;
    var frequencySecond = Math.random() * (600 - 590) + 590;

    var audioCtx = new AudioContext;

    var oscillatorFirst = audioCtx.createOscillator();
    var oscillatorSecond = audioCtx.createOscillator();

    oscillatorFirst.frequency.value = frequencyFirst;
    oscillatorSecond.frequency.value = frequencySecond;

    oscillatorFirst.connect(audioCtx.destination);
    oscillatorSecond.connect(audioCtx.destination);

    if (!hasPlayed) {

        setTimeout(function () {
            oscillatorFirst.start()
        }, 0)

        setTimeout(function () {
            oscillatorFirst.stop()
        }, 500)

        setTimeout(function () {
            oscillatorSecond.start()
        }, 1000)

        setTimeout(function () {
            oscillatorSecond.stop()
        }, 1500)

        hasPlayed = true;
        hasSelected = false;

        storeScore(frequencyFirst, frequencySecond);

        document.getElementById('answer').innerHTML = "";
        document.getElementById('errorMessage').innerHTML = "";
    } else if (whichButton == 'again') {
        setTimeout(function () {
            oscillatorFirst.start()
        }, 0)

        setTimeout(function () {
            oscillatorFirst.stop()
        }, 500)

        setTimeout(function () {
            oscillatorSecond.start()
        }, 1000)

        setTimeout(function () {
            oscillatorSecond.stop()
        }, 1500)
    }

    showPlayAgainBtn();

    document.getElementById('round').innerText = counter + 1;
}

function showPlayAgainBtn() {
    var playAgainButton = document.getElementById('playAgainButton');
    var playButton = document.getElementById('playButton');

    playButton.classList.add('hide-play-btn');
    playAgainButton.classList.remove('playAgainButton');
    playAgainButton.classList.add('show-play-again-btn');

}

function storeScore(freq1, freq2) {

    if (hasPlayed) {
        frequenciesPlayed.push([freq1, freq2]);
    }
}

function userSelection(selection) {

    if (hasSelected) {
        errorMessage.innerHTML = "<h5>You've already made a selection for this round.</h5>";
    } else {
        if (frequenciesPlayed.length) {
            var userSelection = selection;
            var correctAnswer;
            var isUserCorrect = false;

            hasPlayed = false;

            if (counter < 10) {
                if (counter == 9) {
                    counter += 1;
                    var firstFrequency = frequenciesPlayed[counter - 1][0];
                    var secondFrequency = frequenciesPlayed[counter - 1][1];

                    if (firstFrequency < secondFrequency) {
                        correctAnswer = 'higher';
                        if (userSelection == correctAnswer) {
                            answer.innerHTML = "Well done! The second note was <strong>higher!</strong>";
                        } else {
                            answer.innerHTML = "Oops! The second note was actually <strong>higher!</strong>";
                        }

                    } else {
                        correctAnswer = 'lower';
                        if (userSelection == correctAnswer) {
                            answer.innerHTML = "Well done! The second note was <strong>lower!</strong>";
                        } else {
                            answer.innerHTML = "Oops! The second note was <strong>lower!</strong>";
                        }
                    }


                    if (userSelection === correctAnswer) {
                        scoreCount += 1;
                        score.innerHTML = "<strong>" + (scoreCount / counter * 100) + "% (" + scoreCount + "/" + counter + ")</strong>";
                        answer.innerHTML += " You are <strong>correct.</strong>"
                        hasSelected = true;
                    } else if (userSelection !== correctAnswer) {
                        score.innerHTML = "<strong>" + (scoreCount / counter * 100).toFixed(2) + "% (" + scoreCount + "/" + counter + ")</strong>";
                        answer.innerHTML += " You are <strong>incorrect.</strong>";
                        hasSelected = true;
                    }

                    gameOver();
                }

                else {
                    counter += 1;
                    var firstFrequency = frequenciesPlayed[counter - 1][0];
                    var secondFrequency = frequenciesPlayed[counter - 1][1];

                    if (firstFrequency < secondFrequency) {
                        correctAnswer = 'higher';
                        if (userSelection == correctAnswer) {
                            answer.innerHTML = "Well done! The second note was <strong>higher!</strong>";
                        } else {
                            answer.innerHTML = "Oops! The second note was <strong>higher!</strong>";
                        }

                    } else {
                        correctAnswer = 'lower';
                        if (userSelection == correctAnswer) {
                            answer.innerHTML = "Well done! The second note was <strong>lower!</strong>";
                        } else {
                            answer.innerHTML = "Oops! The second note was <strong>lower!</strong>";
                        }
                    }

                    if (userSelection === correctAnswer) {
                        scoreCount += 1;
                        score.innerHTML = "<strong>" + scoreCount + "/" + counter + "</strong>";
                        answer.innerHTML += " You are <strong>correct.</strong>"
                        hasSelected = true;
                    } else if (userSelection !== correctAnswer) {
                        score.innerHTML = "<strong>" + scoreCount + "/" + counter + "</strong>";
                        answer.innerHTML += " You are <strong>incorrect.</strong>";
                        hasSelected = true;
                    }
                }
            }
        } else {
            errorMessage.innerHTML = "<h5>You must play the round before making a selection.</h5>";
        }
    }
}

function animateButtons(whichButton) {

    const buttonPressed = whichButton;
    const button = document.querySelector('#' + buttonPressed);

    var height = button.offsetHeight;
    var newHeight = height - 25;
    button.style.height = newHeight + 'px';

    setTimeout(function () {
        height = button.offsetHeight;
        newHeight = height + 25;
        button.style.height = newHeight + 'px';
    }, 250);
}

function buttonPressDown(whichButton) {

    if (whichButton == 'red') {
        setTimeout(function () {
            document.getElementById('redBtn').src = 'images/pitch-diff/redBtnPressed.png';
        }, 0)

        setTimeout(function () {
            document.getElementById('redBtn').src = 'images/pitch-diff/redBtnUnpressed.png';
        }, 250)

    } else {
        setTimeout(function () {
            document.getElementById('greenBtn').src = 'images/pitch-diff/GreenBtnPressed.png';
        }, 0)

        setTimeout(function () {
            document.getElementById('greenBtn').src = 'images/pitch-diff/GreenBtnUnpressed.png';
        }, 250)
    }
}

function gameOver() {
    console.log("Game Over");
    counter = 0;
    scoreCount = 0;
    document.getElementById('gameOverMessage').innerText = 'Game Over!';
    document.getElementById('resetButton').style = 'display: inherit; margin: 0 auto;';
    document.getElementById('gameButtons').style = 'display: none;';
    document.getElementById('finalScore').style = 'display: initial;';
    document.getElementById('roundDisplay').style = 'display: none;';
    document.getElementById('answerDisplay').style = 'display: none;';
    document.getElementById('gameContainer').style = 'width: 589px;margin: 0 auto;background: rgba(240, 248, 255, 0.8);height: 313px;';
}

function resetGame() {
    document.getElementById('gameOverMessage').innerText = '';
    document.getElementById('resetButton').style = 'display: none';
    document.getElementById('gameButtons').style = 'display: inherit;';
    document.getElementById('finalScore').style = 'display: none;';
    document.getElementById('roundDisplay').style = 'display: inherit;';
    document.getElementById('round').innerText = 1;
    document.getElementById('answer').style = 'display: initial;';
    document.getElementById('answer').innerText = '';
    document.getElementById('answerDisplay').style = 'display: inherit;';
    document.getElementById('gameContainer').style = 'width:max-content;margin:0 auto;background:rgba(240,248,255,0.8);';
    frequenciesPlayed = [];
    hasSelected = false;
}
function playPianoKeyFromKeyboard(e) {
    const audio = document.querySelector(`audio[data-key="${e.keyCode}"]`);  //Finds the certain key that was pressed. The ` inserts the keycode
    audio.currentTime = 0; //Allows note to sound repetitively 
    audio.play(); //Plays that respective audio note associated with the key pressed   
    const key = document.querySelector(`.key[data-key="${e.keyCode}"]`);
    const blackKey = document.querySelector(`.black-key[data-key="${e.keyCode}"]`);


    $(key).addClass('key-pressed');
    $(blackKey).addClass('key-pressed');


    setTimeout(function () {
        $(key).removeClass('key-pressed');
        $(blackKey).removeClass('key-pressed');
    }, 350);

    //$(key).removeClass('key-pressed');

    //keys.forEach(key => key.addEventListener('transitionend', removeKeyPress));
}
window.addEventListener('keydown', playPianoKeyFromKeyboard);

function playPianoKeyFromMouse(key) {    
    const audio = document.querySelector(`audio[data-key="${key}"]`);
    audio.play();
}

function playDrumSample(e) {
    const audio = document.querySelector(`audio[data-key="${e.keyCode}"]`);  //Finds the certain key that was pressed. The ` inserts the keycode
    audio.currentTime = 0; //Allows note to sound repetitively 
    audio.play(); //Plays that respective audio note associated with the key pressed   
    const drumHit = document.querySelector(`.drum-hit[data-key="${e.keyCode}"]`);

    //$(drumHit).addClass('drum-pressed');

    var height = drumHit.offsetHeight;
    var newHeight = height + 30;
    drumHit.style.height = newHeight + 'px';

    setTimeout(function () {
        //$(drumHit).removeClass('drum-pressed');
        height = drumHit.offsetHeight;
        newHeight = height - 30;
        drumHit.style.height = newHeight + 'px';
    }, 350);

    
}
window.addEventListener('keydown', playDrumSample);
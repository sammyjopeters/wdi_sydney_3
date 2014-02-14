var word = {
  secretWord: "",
  wordList: ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database', 'amazeballs', 'barbeque', 'machete', 'honorificabilitudinitatibus', 'floccinaucinihilipilification'],
  wordProgress: [],
  secretWordArray: [],
  totalMisses: [],

  // Selects a random word from the word list sets the secret word
  setSecretWord: function(){
    this.secretWord = new String(_.sample(this.wordList, [1]));  //this.wordList[Math.floor(Math.random() * this.wordList.length)];
    this.secretWordArray = this.secretWord.split('');
    
    for (i = 0; i < this.secretWordArray.length; i = i + 1){
      this.wordProgress.push("_");
    }

  },

  // Takes an array of letters as input and returns an array of two items:
  // 1) A string with the parts of the secret word that have been guessed correctly and underscore for the parts that haven't
  // 2) An array of all the guessed letters that were not in the secret word
  checkLetters: function(letter){
    if (_.contains(this.secretWordArray,letter)){
      for (i = 0; i < this.secretWordArray.length; i = i + 1){
        if (this.secretWordArray[i] === letter) {
          this.wordProgress[i] = letter;
        }

      }
    } else {
      this.totalMisses.push(letter);
    }

    
 
  }
};


var player = {
  MAX_GUESSES: 8,
  guessedLetters: [],


  // Takes the clean letter from checkInput() and adds to the current list of guesses
  makeGuess: function(letter){
    this.guessedLetters.push(letter);
    word.checkLetters(letter);
    this.checkLose();
    this.checkWin();
  },
    

  // Check if the player has won and end the game if so
  checkWin: function(wordString){

    if (_.contains(word.wordProgress,"_")){
      return false;
    } else {
      alert('Ermagherd You WON LOLLLLL');
    }

  },

  // Check if the player has lost and end the game if so
  checkLose: function(wrongLetters){
    if (word.totalMisses.length >= this.MAX_GUESSES){
      alert('YOU LOSE LOLLLL KABOOM');
    }

  }
};

var game = {
  // Resets the game
  resetGame: function(){},

  // Reveals the answer to the secret word and ends the game
  giveUp: function(){},

  // Update the display with the parts of the secret word guessed, the letters guessed, and the guesses remaining
  updateDisplay: function(secretWordWithBlanks, guessedLetters, guessesLeft){}
};


function checkInput(input){
  currentGuess = "";


    //if the value of the box is one character
    if (input.length === 1){
        // now check that it's only got characters, no number or symbols...
        if (input.match(/[^a-z]/)) {
          updateError("symbols");
        }else{
          currentGuess = input;
          player.makeGuess(currentGuess);
          letterField.value = null;
        }
    } else {
      //there's more than one character here. freak out!
      updateError("tooManyChars");
    }   

}

function updateError(errorKey){
  var errorDiv = document.getElementById('errors');
  if (errorKey === "tooManyChars"){
  errorDiv.innerHTML = "You can only enter one character!"
  } else if (errorKey === "symbols"){
  errorDiv.innerHTML = "Numbers and symbols not allowed!"
  }
}

window.onload = function(){
  //declare the variables you get off the HTML here, KTHX
  var resetButton = document.getElementById('resetButton');
  var giveUpButton = document.getElementById('resetButton');
  var letterField = document.getElementById('letterField');



  // Start a new game
  word.setSecretWord();
  // Add event listener to the letter input field to grab letters that are guessed
  //only execute the function if enter is pressed, though!
  letterField.addEventListener('keyup', function(e) {
    if (e.keyCode === 13){
    checkInput(letterField.value);
    }
  });
  // Add event listener to the reset button to reset the game when clicked
  giveUpButton.addEventListener('click', game.resetGame);
  // Add event listener to the give up button to give up when clicked
  giveUpButton.addEventListener('click', game.giveUp);
};
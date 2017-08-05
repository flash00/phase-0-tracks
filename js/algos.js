/* PSEUDOCODE
Function to find longest word in list
  input: ordered list of words
  steps:
  loop through list
    compare length of current word against others in list
  output: longest word in list */

function longestWord(wordArray) {
  var longest = 0;
  var longestStr = "";
  for (var i = 1; i < wordArray.length; i += 1) {
    if (wordArray[i].length > longest) {
      longest = wordArray[i].length;
      longestStr = wordArray[i];
    }
  }
    return longestStr;
}


// ************************************

/* PSEUDOCODE
Function to identify matching key value pair
  input: two separate lists of key value pairs
  steps:
    loop through two separate lists
    comparing the lists' pairs looking for a matching key value pair
  output: true or false depending on whether match found

function matchObjectPair(object1, object2) {
  for (var prop in object1){
    if (object1[prop] === object2[prop]) {
      return true;
    }
  }
  for (var prop in object2) {
    if (object1[prop] === object2[prop]) {
      return true;
    }
  }
  return false;
}

// ************************************

/* PSEUDOCODE
Function builds an array of strings of given length
  input: number representing length of array
  steps:
    create an empty structure for the random word
    create empty data structure for group of words
    create an alphabet variable
    set up loop to create word group that ends when number reached
    set up subloop to create random length words to add to group
  output: group of random words 1-10 letters in lenth, group size matches input number   */

// function randomWords(numOfWords) {
//   var wordList = [];
//   var letters = "abcdefghijklmnopqrstuvwxyz";
//   for (var i = 1; i <= numOfWords; i ++) {
//     var word = "";
//     var wordLength = Math.round(Math.random() * 10);
//     for (var j = 0; j <= wordLength; j++){
//       var letter = letters[Math.round(Math.random() * 26).toString()];
//       word += letter;
//     }
//   wordList.push(word);
//   }
//   return wordList;
// }

// DRIVER CODE
// **********************************
// for (var i = 1; i <= 10; i += 1) {
// var wordArray1 = randomWords(4);
// console.log(wordArray1);
// console.log(longestWord(wordArray1));
// }
// **********************************
var petsArray = ["kitty", "bunny", "turtle", "slug"];
var colorsArray = ["blue", "red", "pink", "orange"];
var phrasesArray = ["raindrops on roses", "whiskers on kittens", "bright copper kettles", "warm woolen mittens"];
console.log(longestWord(colorsArray));
console.log(longestWord(petsArray));
console.log(longestWord(phrasesArray));

// **********************************
// console.log("expect true");
// console.log(matchObjectPair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// console.log("expect true");
// console.log(matchObjectPair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log("expect false");
// console.log(matchObjectPair({name: "Steven", age: 24}, {name: "Tamir", age: 54}));
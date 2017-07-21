/* PSEUDOCODE
input: ordered list of words as parameter
write function longestWord which loops through the list comparing the length of each word against the rest in the list until the longest one is found
output: longest word in list */

function longestWord(wordArray) {
  for (var i = 0; i <= wordArray.length; i += 1) {
    if (wordArray[i].length < wordArray[i + 1].length) {
      wordArray[i] = wordArray[i + 1];
        }
      if (wordArray[wordArray.length-1].length > wordArray[i].length) {
        wordArray[i] = wordArray[wordArray.length-1]
      }
    return wordArray[i];
  }
}

// ************************************

/* PSEUDOCODE
input: two separate lists made of key value pairs
write function "match" which loops through the separate lists comparing the lists' pairs looking for at least one matching key value pair
output: true or false depending on whether match found */

// function matchObjectPair(object1, object2) {
//   for (var prop in object1){
//     if (object1[prop] === object2[prop]) {
//         return true;
//       }
//   }
//   for (var prop in object2){
//     if (object1[prop] === object2[prop]) {
//         return true;
//       }
//   }
//   return false;
// }
// ************************************

/* PSEUDOCODE
input: number representing number of words to create
write function randomWords
create an empty structure for the random word and a structure for the group of words
create an alphabet variable
set up loop to create group that ends when number reached
set up subloop to create words of random length to add to group
output: a group of random words with 1-10 letters, the size of the group matches the input number   */

function randomWords(numOfWords) {
  var wordList = [];
  var letters = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 1; i <= numOfWords; i ++) {
    var word = "";
    var wordLength = Math.round(Math.random() * 10);
    for (var j = 0; j <= wordLength; j++){
      var letter = letters[Math.round(Math.random() * 26).toString()];
      word += letter;
    }
  wordList.push(word);
  }
  return wordList;
}


// DRIVER CODE
// **********************************
for (var i = 1; i <= 10; i += 1) {
var wordArray1 = randomWords(4);
console.log(wordArray1);
console.log(longestWord(wordArray1));
}

// **********************************
// var petsArray = ["kitty", "bunny", "turtle", "slug"]
// var colorsArray = ["blue", "red", "pink", "orange"]
// var phrasesArray = ["raindrops on roses", "whiskers on kittens", "bright copper kettles", "warm woolen mittens"]
// console.log(longestWord(colorsArray));
// console.log(longestWord(petsArray));
// console.log(longestWord(phrasesArray));
// **********************************
// console.log("expect true");
// console.log(matchObjectPair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// console.log("expect true");
// console.log(matchObjectPair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log("expect false");
// console.log(matchObjectPair({name: "Steven", age: 24}, {name: "Tamir", age: 54}));
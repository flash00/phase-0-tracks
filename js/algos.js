/* PSEUDOCODE
input: ordered list of words as parameter
write function longestWord which loops through the list comparing the length of each word against the rest in the list until the longest one is found
output: longest word in list */

function longestWord(wordList) {
  for (var i = 0; i <= wordList.length; i += 1) {
    if (wordList[i].length < wordList[i + 1].length) {
      wordList[i] = wordList[i + 1];
      if (wordList[wordList.length-1].length > wordList[i].length) {
        wordList[i] = wordList[wordList.length-1]
      }
    return wordList[i];
    }
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
  var wordLength = Math.round(Math.random() * (10))
  var wordList = [];
  var word = "";
  var letters = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 1; i < numOfWords; i ++){
    // for (var j = 0; j <= wordLength; j++){
    //   letter = Math.round(Math.random() * letters.length);
    //   word += letters.substring(letter, letter+1);
    //   wordList.push(word);

    }
  }
    return wordList;
}



// DRIVER CODE
// **********************************
// console.log(longestWord(randomWords(1)));
// console.log(longestWord(randomWords(2)));
console.log(randomWords(5));
// console.log(longestWord(randomWords(4)));
// console.log(longestWord(randomWords(5)));
// console.log(longestWord(randomWords(6)));
// console.log(longestWord(randomWords(7)));
// console.log(longestWord(randomWords(8)));
// console.log(longestWord(randomWords(9)));
// console.log(longestWord(randomWords(10)));

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
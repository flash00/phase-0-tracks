/* PSEUDOCODE
input: ordered list of words as parameter
write function longestWord which loops through the list comparing the length of each word against the rest in the list until the longest one is found
output: longest word in list */

// function longestWord(wordList) {
//   for (var i = 0; i <= wordList.length; i += 1) {
//     if (wordList[i].length < wordList[i + 1].length) {
//       wordList[i] = wordList[i + 1];
//       if (wordList[wordList.length-1].length > wordList[i].length) {
//         wordList[i] = wordList[wordList.length-1]
//       }
//     return wordList[i];
//     }
//   }
// }

// ************************************

/* PSEUDOCODE
input: two separate lists made of key value pairs
write function "match" which loops through the separate lists comparing the lists' pairs looking for at least one matching key value pair
output: true or false depending on whether match found */

function match(object1, object2) {
  for (var prop in object1){
    if (object1[prop] === object2[prop]) {
        return true;
      }
  }
  for (var prop in object2){
    if (object1[prop] === object2[prop]) {
        return true;
      }
  }
  return false;
}

**********************************
console.log("expect true");
console.log(match({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log("expect true");
console.log(match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log("expect false");
console.log(match({name: "Steven", age: 24}, {name: "Tamir", age: 54}));
// **********************************
// var petsArray = ["kitty", "bunny", "turtle", "slug"]
// var colorsArray = ["blue", "red", "pink", "orange"]
// var phrasesArray = ["raindrops on roses", "whiskers on kittens", "bright copper kettles", "warm woolen mittens"]
// console.log(longestWord(colorsArray));
// console.log(longestWord(petsArray));
// console.log(longestWord(phrasesArray));
// **********************************
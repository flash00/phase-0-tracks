// create a function longestWord that accepts an array of words, compares the words lengths, and returns the longest word of the array.

function longestWord(array){
  var longest = 0;
  var longestWord = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest) {
      longest = array[i].length;
      longestWord = array[i];
      }
  }
  return longestWord;
}

// Create the function matchObject that compares the data in two separate objects. If after comparing all the pairs in the two objects, at least one pair of data matches, the function will return true. Otherwise the function returns false.


function matchObject(object1, object2) {
  for (var property in object1){
    if (object1[property] !== object2[property]) {
    return false;
    }
  }
  for (var property in object2){
    if (object1[property] !== object2[property]) {
    return false;
    }
}
    return true;
}

// Create a function that accepts a number which indicates the number of randomly generated words. The function then generates random words of random lengths from 1 to 10 letters long.

function randomWords(integer) {
  var wordsArr = [];
  var word = "";
  var letters = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 1; i <= integer; i ++){
  for (var j = 0; j < Math.random(1, 11); j++){
    word = letters.Math.random(1, 11).toString;
    wordsArr.push(word);
  }
  }
}


// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));
// console.log(longestWord(randomWords(3)));

// console.log(matchObject ({name: "Steven", age: 54}, {name: "Tamirn", age: 54}));
// console.log(matchObject ({animal: "dog", legs: 4}, {animal: "dog", legs: 3}))


// console.log(longestWord(["fun", "book", "sushi"]));
// console.log(longestWord(["sparkle", "shine", "glow"]));
// console.log(longestWord(["dirt", "muck", "grime"]));
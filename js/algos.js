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

var petsArray = ["kitty", "bunny", "turtle", "slug"]
var colorsArray = ["blue", "red", "pink", "orange"]
var phrasesArray = ["raindrops on roses", "whiskers on kittens", "bright copper kettles", "warm woolen mittens"]
console.log(longestWord(colorsArray));
console.log(longestWord(petsArray));
console.log(longestWord(phrasesArray));
// create a function longestWord that accepts 3 words, compares their lengths, and returns the longest of the three.

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

console.log(longestWord(["fun", "book", "sushi"]));
console.log(longestWord(["sparkle", "shine", "glow"]));
console.log(longestWord(["dirt", "muck", "grime"]));
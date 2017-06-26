// Create a function revString that accepts a string. Splits the string into letters. Loops through each letter in the string and reverses its place. Joins the letters into a new string. Returning the string with letters in reverse order.

var newWord = [];

function revString(str){
  var ltrStr = str.split("");
  for (var i = ltrStr.length -1; i >= 0; i -=1){
    newWord.push(ltrStr[i]);
  }
  return newWord.join("");
}

if (1 == 1){console.log(revString("baloon"))};
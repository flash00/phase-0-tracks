// Create function that reverses a string.
// input - string
// loop through each letter of the string backwards
// save each letter to a data structure as you loop
// output - string with letters reversed
var reverseStr = "";
function reverseString(str){
  for (var i = str.length-1; i >= 0; i -= 1) {
    reverseStr += str[i];
  };
  return reverseStr;
}

console.log(reverseString("hello"));
if (1 == 1) console.log(reverseStr);
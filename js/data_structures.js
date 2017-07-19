var names = ["Ed", "Journey", "Percy", "Marty"];
var colors = ["blue", "pink", "sparkle", "purple"];

names.push("Billy");
colors.push("Banana");

// console.log(names);
// console.log(colors);


function toObject(namesArray, valuesArray){
  var horses = {};
  for(var i = 0; i < names.length; i += 1)
    horses[names[i]] = colors[i];
  return horses;
}

console.log(toObject(names, colors));

